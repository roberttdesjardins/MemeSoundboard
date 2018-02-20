//
//  Screen2VC.swift
//  MemeSoundboard
//
//  Created by Robert Desjardins on 2018-01-28.
//  Copyright © 2018 Robert Desjardins. All rights reserved.
//

import UIKit
import AVFoundation
import GoogleMobileAds

class Screen2VC: UIViewController, GADBannerViewDelegate {
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
    
    
    
    @IBAction func kimkardashianBtnPressed(_ sender: Any) {
        let path = Bundle.main.path(forResource: "kimkardashian", ofType: "wav")!
        let url = URL(fileURLWithPath: path)
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player.prepareToPlay()
        } catch let error as NSError {
            print(error.description)
        }
        player.play()
    }
    
    @IBAction func fineBtnPressed(_ sender: Any) {
        let path = Bundle.main.path(forResource: "fine", ofType: "wav")!
        let url = URL(fileURLWithPath: path)
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player.prepareToPlay()
        } catch let error as NSError {
            print(error.description)
        }
        player.play()
    }
    
    
    @IBAction func gotchaBtnPressed(_ sender: Any) {
        let path = Bundle.main.path(forResource: "gotcha", ofType: "wav")!
        let url = URL(fileURLWithPath: path)
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player.prepareToPlay()
        } catch let error as NSError {
            print(error.description)
        }
        player.play()
    }
    
    @IBAction func runBtnPressed(_ sender: Any) {
        let path = Bundle.main.path(forResource: "run", ofType: "wav")!
        let url = URL(fileURLWithPath: path)
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player.prepareToPlay()
        } catch let error as NSError {
            print(error.description)
        }
        player.play()
    }
    @IBAction func fallenBtnPressed(_ sender: Any) {
        let path = Bundle.main.path(forResource: "fallen", ofType: "wav")!
        let url = URL(fileURLWithPath: path)
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player.prepareToPlay()
        } catch let error as NSError {
            print(error.description)
        }
        player.play()
    }
    @IBAction func yeahBtnPressed(_ sender: Any) {
        let path = Bundle.main.path(forResource: "yeah", ofType: "wav")!
        let url = URL(fileURLWithPath: path)
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player.prepareToPlay()
        } catch let error as NSError {
            print(error.description)
        }
        player.play()
    }
    @IBAction func stopitBtnPressed(_ sender: Any) {
        let path = Bundle.main.path(forResource: "stopit", ofType: "wav")!
        let url = URL(fileURLWithPath: path)
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player.prepareToPlay()
        } catch let error as NSError {
            print(error.description)
        }
        player.play()
    }
    @IBAction func heffBtnPressed(_ sender: Any) {
        let path = Bundle.main.path(forResource: "heff", ofType: "wav")!
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
