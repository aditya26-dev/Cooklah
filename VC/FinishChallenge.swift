//
//  FinishChallenge.swift
//  Cooklah
//
//  Created by I Dewa Agung Ary Aditya Wibawa on 13/12/20.
//

import UIKit

class FinishChallenge: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var proofImage: UIButton!
    @IBOutlet weak var backHome: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        backHome.isEnabled = false
        // Do any additional setup after loading the view.
    }
    
    @IBAction func uploadImage(_ sender: Any) {
        var myPickerController = UIImagePickerController()
        myPickerController.delegate = self;
        myPickerController.sourceType = UIImagePickerController.SourceType.photoLibrary
        self.present(myPickerController, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        proofImage.setBackgroundImage(info[UIImagePickerController.InfoKey.originalImage] as? UIImage, for: .normal)
        picker.dismiss(animated: true, completion: nil)
        backHome.isEnabled = true
    }
    
    @IBAction func returnHome(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "CourseFinished")
        nextViewController.modalPresentationStyle = .overCurrentContext
        self.present(nextViewController, animated:true, completion:nil)

    }
    
}
