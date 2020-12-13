//
//  InitialCourse.swift
//  Cooklah
//
//  Created by I Dewa Agung Ary Aditya Wibawa on 13/12/20.
//

import UIKit

class InitialCourse: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func startCourse(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "FirstChallenge")
        nextViewController.modalPresentationStyle = .overCurrentContext
        self.present(nextViewController, animated:true, completion:nil)
    }


}
