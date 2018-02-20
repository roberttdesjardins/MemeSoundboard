//
//  Screen3VC.swift
//  MemeSoundboard
//
//  Created by Robert Desjardins on 2018-01-29.
//  Copyright © 2018 Robert Desjardins. All rights reserved.
//

import UIKit
import AVFoundation
import GoogleMobileAds

class Screen3VC: UIViewController, GADBannerViewDelegate {
    var player: AVAudioPlayer!
    
    @IBOutlet weak var bannerView: GADBannerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bannerView.adUnitID = "ca-app-pub-3940256099942544/2934735716"
        bannerView.rootViewController = self
        bannerView.load(GADRequest())
        //Test ads is ca-app-pub-3940256099942544/2934735716
        bannerView.delegate = self
    }
    
    @IBAction func ohshitBtnPressed(_ sender: Any) {
        let path = Bundle.main.path(forResource: "ohshit", ofType: "wav")!
        let url = URL(fileURLWithPath: path)
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player.prepareToPlay()
        } catch let error as NSError {
            print(error.description)
        }
        player.play()
    }
    @IBAction func noiceBtnPressed(_ sender: Any) {
        let path = Bundle.main.path(forResource: "noice", ofType: "wav")!
        let url = URL(fileURLWithPath: path)
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player.prepareToPlay()
        } catch let error as NSError {
            print(error.description)
        }
        player.play()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        player?.stop()
    }
    
 
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
