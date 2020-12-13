//
//  HomePage.swift
//  Cooklah
//
//  Created by I Dewa Agung Ary Aditya Wibawa on 13/12/20.
//

import UIKit
import AVKit

class HomePage: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func eggsCourse(_ sender: Any) {
    }
    
    @IBAction func steakCourse(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "InitialCourse")
        nextViewController.modalPresentationStyle = .overCurrentContext
        self.present(nextViewController, animated:true, completion:nil)
    }
    
    @IBAction func courseVideo(_ sender: Any) {
        if let path = Bundle.main.path(forResource: "video", ofType: "mp4"){
            let video = AVPlayer(url: URL(fileURLWithPath: path))
            let videoPlayer = AVPlayerViewController()
            videoPlayer.player = video
            
            present(videoPlayer, animated: true, completion: {
                video.play()
            })
        }
    }
    
    
}
