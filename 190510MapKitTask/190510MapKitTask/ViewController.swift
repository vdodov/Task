//
//  ViewController.swift
//  190510MapKitTask
//
//  Created by 차수연 on 10/05/2019.
//  Copyright © 2019 차수연. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {
  let topView = UIView()
  let textField = UITextField()
  let mapView = MKMapView()
  var num: Int = 0
  var temp: CLLocationCoordinate2D!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    textField.delegate = self
    addSubview()
    configure()
    autoLayout()
    
  }

  
  func addSubview() {
    view.addSubview(topView)
    topView.addSubview(textField)
    
    view.addSubview(mapView)
  }
  
  func configure() {
    topView.backgroundColor = #colorLiteral(red: 0.9328724742, green: 0.9328724742, blue: 0.9328724742, alpha: 1)
    
    textField.placeholder = " 주소를 입력하세요."
    textField.backgroundColor = .white
    textField.layer.borderWidth = 1
    textField.layer.borderColor = #colorLiteral(red: 0.921431005, green: 0.9214526415, blue: 0.9214410186, alpha: 1)
    textField.layer.cornerRadius = 10
    
    
    
  }
  
  func autoLayout() {
    let guide = view.safeAreaLayoutGuide
    topView.translatesAutoresizingMaskIntoConstraints = false
    topView.topAnchor.constraint(equalTo: guide.topAnchor).isActive = true
    topView.leadingAnchor.constraint(equalTo: guide.leadingAnchor).isActive = true
    topView.trailingAnchor.constraint(equalTo: guide.trailingAnchor).isActive = true
    topView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05).isActive = true
    
    textField.translatesAutoresizingMaskIntoConstraints = false
    textField.centerYAnchor.constraint(equalTo: topView.centerYAnchor).isActive = true
    textField.leadingAnchor.constraint(equalTo: topView.leadingAnchor, constant: 10).isActive = true
    textField.trailingAnchor.constraint(equalTo: topView.trailingAnchor, constant: -10).isActive = true
    textField.heightAnchor.constraint(equalTo: topView.heightAnchor, multiplier: 0.7).isActive = true
    
    mapView.translatesAutoresizingMaskIntoConstraints = false
    mapView.topAnchor.constraint(equalTo: topView.bottomAnchor).isActive = true
    mapView.leadingAnchor.constraint(equalTo: guide.leadingAnchor).isActive = true
    mapView.trailingAnchor.constraint(equalTo: guide.trailingAnchor).isActive = true
    mapView.bottomAnchor.constraint(equalTo: guide.bottomAnchor).isActive = true

  }

}


extension ViewController: UITextFieldDelegate {
  func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    
    //주소 받아오기
    print(textField.text!)
    let geocoder = CLGeocoder()
    geocoder.geocodeAddressString(textField.text!, completionHandler: { (placeMark, error) in
      guard let placeMark = placeMark?.first else { return }
      print(placeMark.location!.coordinate.latitude)
      print(placeMark.location!.coordinate.longitude)
      
      //위치 찍기
      self.num += 1
      let destination = MKPointAnnotation()
      destination.title = "\(self.num)번째 행선지"
      destination.coordinate = CLLocationCoordinate2DMake(placeMark.location!.coordinate.latitude, placeMark.location!.coordinate.longitude)
      
      let span = MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
      let region = MKCoordinateRegion(center: placeMark.location!.coordinate, span: span)
      self.mapView.setRegion(region, animated: true)
      
      self.mapView.addAnnotation(destination)
      
    

      self.mapView.delegate = self
      

      //선 그리기
      if self.num == 1 {
        
      } else {

        let point1 = self.temp!
        let point2 = placeMark.location!.coordinate
        
        let points: [CLLocationCoordinate2D] = [point1, point2]
        let polyline = MKPolyline(coordinates: points, count: points.count)
        self.mapView.addOverlay(polyline)
        
        
      }
      
      //사각형 그리기
      let center = placeMark.location!.coordinate
      self.temp = center
      
      var point1 = center; point1.longitude -= 0.0035;   point1.latitude += 0.0025
      var point2 = center; point2.longitude += 0.0035;   point2.latitude += 0.0025
      var point3 = center; point3.longitude += 0.0035;  point3.latitude -= 0.0025
      var point4 = center; point4.longitude -= 0.0035;  point4.latitude -= 0.0025
      
      let points: [CLLocationCoordinate2D] = [point1, point2, point3, point4, point1]
      let polyline = MKPolyline(coordinates: points, count: points.count)
      self.mapView.addOverlay(polyline)
      

    })
    textField.resignFirstResponder()
    return true
  }
}

extension ViewController: MKMapViewDelegate {
  func mapView(_ mapView: MKMapView, rendererFor overlay: MKOverlay) -> MKOverlayRenderer {
    
    if let polyline = overlay as? MKPolyline {
      let renderer = MKPolylineRenderer(polyline: polyline)
      renderer.strokeColor = .red
      renderer.lineWidth = 2
      return renderer

    }
    
    return MKOverlayRenderer(overlay: overlay)
  }
}

