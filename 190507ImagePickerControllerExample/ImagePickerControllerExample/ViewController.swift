//
//  ViewController.swift
//  ImagePickerControllerExample
//
//  Created by giftbot on 2019. 5. 3..
//  Copyright © 2019년 giftbot. All rights reserved.
//

import MobileCoreServices
import UIKit


final class ViewController: UIViewController {

  @IBOutlet private weak var imageView: UIImageView!
  private let imagePickerController = UIImagePickerController()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    imagePickerController.delegate = self
  }
  
  @IBAction private func pickImage(_ sender: Any) {
    print("\n---------- [ pickImage ] ----------\n")
    imagePickerController.allowsEditing = true
    imagePickerController.sourceType = .savedPhotosAlbum
    present(imagePickerController, animated: true)
  }
  
  
  @IBAction private func takePicture(_ sender: Any) {
    print("\n---------- [ takePicture ] ----------\n")
    guard UIImagePickerController.isSourceTypeAvailable(.camera) else { return }
    imagePickerController.sourceType = .camera
    print(imagePickerController.mediaTypes)

    imagePickerController.mediaTypes = [kUTTypeImage as String]
//    imagePickerController.mediaTypes = ["public.image"]
    
//    let mediaTypes = UIImagePickerController.availableMediaTypes(for: .camera)
//    imagePickerController.mediaTypes = mediaTypes ?? []
    
    present(imagePickerController, animated: true)
  }
  
  @IBAction private func takePictureWithDelay(_ sender: Any) {
    print("\n---------- [ takePictureWithDelay ] ----------\n")
    guard UIImagePickerController.isSourceTypeAvailable(.camera) else { return }
    imagePickerController.sourceType = .camera
    imagePickerController.mediaTypes = [kUTTypeImage as String]
    present(imagePickerController, animated: true) {
//        self.imagePickerController.takePicture()
        DispatchQueue.main.asyncAfter(deadline: .now() + 2, execute: {
            self.imagePickerController.takePicture()
        })
    }
  }
  
  
  @IBAction private func recordingVideo(_ sender: Any) {
    print("\n---------- [ recordingVideo ] ----------\n")
    guard UIImagePickerController.isSourceTypeAvailable(.camera) else { return }
    imagePickerController.sourceType = .camera
    
    print(imagePickerController.mediaTypes)
//    imagePickerController.mediaTypes = [kUTTypeMovie as String]
//    imagePickerController.mediaTypes = "public.movie"

//    imagePickerController.cameraDevice = .front
    
    let mediaTypes = UIImagePickerController.availableMediaTypes(for: .camera)
    imagePickerController.mediaTypes = mediaTypes ?? []
    
    imagePickerController.cameraCaptureMode = .video
    
    present(imagePickerController, animated: true)
    
//    imagePickerController.startVideoCapture()
//    imagePickerController.stopVideoCapture()
  }

  @IBAction private func toggleAllowsEditing(_ sender: Any) {
    print("\n---------- [ toggleAllowsEditing ] ----------\n")
    imagePickerController.allowsEditing.toggle()
  }
}

extension ViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        print("didFinishPickingMediaWithInfo")
        
        let mediaType = info[.mediaType] as! NSString
        if UTTypeEqual(mediaType, kUTTypeImage) {
            let origianlImage = info[.originalImage] as! UIImage
            let editedImage = info[.editedImage] as? UIImage
            let selectedImage = editedImage ?? origianlImage
            imageView.image = selectedImage
            
            if picker.sourceType == .camera {
            UIImageWriteToSavedPhotosAlbum(selectedImage, nil, nil, nil)
            }
        }else if UTTypeEqual(mediaType, kUTTypeMovie) {
            print("Video info: ", info)
            if let mediaPath = (info[.mediaURL] as? NSURL)?.path,
                UIVideoAtPathIsCompatibleWithSavedPhotosAlbum(mediaPath){
                UISaveVideoAtPathToSavedPhotosAlbum(mediaPath, nil, nil, nil)
            }
        }
        picker.dismiss(animated: true)
        
//        if info.keys.contains(.editedImage) {
//            let originalImage = info[.editedImage] as! UIImage
//            imageView.image = originalImage
//
//            picker.dismiss(animated: true)
//        }else {
//            let originalImage = info[.originalImage] as! UIImage
//            imageView.image = originalImage
//
//            picker.dismiss(animated: true)
//        }
    }
}
