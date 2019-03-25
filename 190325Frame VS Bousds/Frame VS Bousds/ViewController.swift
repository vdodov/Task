import UIKit


class ViewController : UIViewController {
    
    let aView = UIView()
    let bView = UIView()
    let cView = UIView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //aView
        aView.frame = CGRect(x: 30, y: 30, width: view.frame.width - 60, height: view.frame.height - 60)
        aView.backgroundColor = .blue
        
        //bView
        bView.frame = CGRect(x: 30, y: 30, width: aView.frame.width - 60, height: aView.frame.height - 60)
        bView.backgroundColor = .red
        
        //cView
        cView.frame = CGRect(x: 30, y: 30, width: bView.frame.width - 60, height: bView.frame.height - 60)
        cView.backgroundColor = .green

        view.addSubview(aView)   //view에 aView올림
        aView.addSubview(bView) //aView에 bView올림
        bView.addSubview(cView) //bView에 cView올림
        
    }
    
}
