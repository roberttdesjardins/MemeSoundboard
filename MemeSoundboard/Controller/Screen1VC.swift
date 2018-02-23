//
//  ViewController.swift
//  MemeSoundboard
//
//  Created by Robert Desjardins on 2018-01-17.
//  Copyright © 2018 Robert Desjardins. All rights reserved.
//

import UIKit
import AVFoundation
import GoogleMobileAds

class Screen1VC: UIViewController, GADBannerViewDelegate {
    var player: AVAudioPlayer!
    
    @IBOutlet weak var bannerView: GADBannerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bannerView.adUnitID = "ca-app-pub-3719313346160193/1926630270"
        bannerView.rootViewController = self
        bannerView.load(GADRequest())
        //Test ads is ca-app-pub-3940256099942544/2934735716
        bannerView.delegate = self
    }
    func adViewDidReceiveAd(_ bannerView: GADBannerView) {
        print("adViewDidReceiveAd")
    }
    func adView(_ bannerView: GADBannerView,
                didFailToReceiveAdWithError error: GADRequestError) {
        print("adView:didFailToReceiveAdWithError: \(error.localizedDescription)")
    }

    
    @IBAction func doYouKnowDaWaeBtnPressed(_ sender: Any) {
        let path = Bundle.main.path(forResource: "doyouknowdawae", ofType: "wav")!
        let url = URL(fileURLWithPath: path)
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player.prepareToPlay()
        } catch let error as NSError {
            print(error.description)
        }
        player.play()
    }
    
    
    @IBAction func illuminatiBtnPressed(_ sender: Any) {
        let path = Bundle.main.path(forResource: "illuminati", ofType: "wav")!
        let url = URL(fileURLWithPath: path)
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player.prepareToPlay()
        } catch let error as NSError {
            print(error.description)
        }
        player.play()
    }
    

    
    @IBAction func prankedBtnPressed(_ sender: Any) {
        let path = Bundle.main.path(forResource: "pranked", ofType: "wav")!
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
    
    @IBAction func wednesdayBtnPressed(_ sender: Any) {
        let path = Bundle.main.path(forResource: "wednesday", ofType: "wav")!
        let url = URL(fileURLWithPath: path)
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player.prepareToPlay()
        } catch let error as NSError {
            print(error.description)
        }
        player.play()
    }
    
    @IBAction func okayBtnPressed(_ sender: Any) {
        let path = Bundle.main.path(forResource: "okay", ofType: "wav")!
        let url = URL(fileURLWithPath: path)
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player.prepareToPlay()
        } catch let error as NSError {
            print(error.description)
        }
        player.play()
    }
    
    @IBAction func hitmarkerBtnPressed(_ sender: Any) {
        let path = Bundle.main.path(forResource: "hitmarker", ofType: "wav")!
        let url = URL(fileURLWithPath: path)
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player.prepareToPlay()
        } catch let error as NSError {
            print(error.description)
        }
        player.play()
    }
    
    @IBAction func airhornBtnPressed(_ sender: Any) {
        let path = Bundle.main.path(forResource: "airhorn", ofType: "wav")!
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

