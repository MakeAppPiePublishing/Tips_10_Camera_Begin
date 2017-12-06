//:# My Playground Camera
//: A demonstration of UIImagePickerController on iPad Playgrounds.


import UIKit
import PlaygroundSupport

class CameraViewController:UIViewController{
    var imageView = UIImageView()
    var shootButton = UIButton()
    
    @IBAction func shootPhoto(sender:UIButton){
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    func setup(){
        //Set background color to light gray
        view.backgroundColor = UIColor(white: 0.85, alpha: 1.0)
        // Set up the image view as a background
        imageView.contentMode = .scaleAspectFit
        imageView.frame = view.frame
        view.addSubview(imageView)
        
        //Set up the camera start. 
        shootButton.setTitle("Shoot Photo", for: .normal)
        shootButton.titleLabel?.font = UIFont(name: "Avenir Next", size: 32)
        shootButton.addTarget(self, action: #selector(shootPhoto(sender:)), for: .touchUpInside)
        shootButton.backgroundColor = UIColor(white: 0.1, alpha: 0.3)
        var shootFrame = view.frame
        shootFrame.size = CGSize(width: shootFrame.width, height: shootFrame.height * 0.1)
        shootButton.frame = shootFrame
        view.addSubview(shootButton)
        
    }
    
    // Delegates
}

let cameraVC = CameraViewController()
PlaygroundPage.current.liveView = cameraVC
