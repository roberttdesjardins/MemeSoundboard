//
//  Screen4VC.swift
//  MemeSoundboard
//
//  Created by Robert Desjardins on 2018-02-22.
//  Copyright © 2018 Robert Desjardins. All rights reserved.
//

import UIKit
import AVFoundation
import GoogleMobileAds

class Screen4VC: UIViewController, GADBannerViewDelegate {
    var player: AVAudioPlayer!
    
    @IBOutlet weak var bannerView: GADBannerView!
    @IBOutlet weak var damnson: UIButton!
    @IBOutlet weak var dream: UIButton!
    @IBOutlet weak var recorder: UIButton!
    @IBOutlet weak var slap: UIButton!
    @IBOutlet weak var triple: UIButton!
    @IBOutlet weak var violin: UIButton!
    @IBOutlet weak var wombocombo: UIButton!
    @IBOutlet weak var wow: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bannerView.adUnitID = "ca-app-pub-3940256099942544/2934735716"
        bannerView.rootViewController = self
        bannerView.load(GADRequest())
        //Test ads is ca-app-pub-3940256099942544/2934735716
        bannerView.delegate = self
        
        makeBorderImage(button: damnson)
        makeBorderImage(button: dream)
        makeBorderImage(button: recorder)
        makeBorderImage(button: slap)
        makeBorderImage(button: triple)
        makeBorderImage(button: violin)
        makeBorderImage(button: wombocombo)
        makeBorderImage(button: wow)
    }
    
    @IBAction func damnsonBtnPressed(_ sender: Any) {
        let path = Bundle.main.path(forResource: "damnson", ofType: "wav")!
        let url = URL(fileURLWithPath: path)
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player.prepareToPlay()
        } catch let error as NSError {
            print(error.description)
        }
        player.play()
    }
    @IBAction func dreamBtnPressed(_ sender: Any) {
        let path = Bundle.main.path(forResource: "dream", ofType: "wav")!
        let url = URL(fileURLWithPath: path)
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player.prepareToPlay()
        } catch let error as NSError {
            print(error.description)
        }
        player.play()
    }
    @IBAction func recorderBtnPressed(_ sender: Any) {
        let path = Bundle.main.path(forResource: "recorder", ofType: "wav")!
        let url = URL(fileURLWithPath: path)
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player.prepareToPlay()
        } catch let error as NSError {
            print(error.description)
        }
        player.play()
    }
    @IBAction func slapBtnPressed(_ sender: Any) {
        let path = Bundle.main.path(forResource: "slap", ofType: "wav")!
        let url = URL(fileURLWithPath: path)
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player.prepareToPlay()
        } catch let error as NSError {
            print(error.description)
        }
        player.play()
    }
    @IBAction func tripleBtnPressed(_ sender: Any) {
        let path = Bundle.main.path(forResource: "triple", ofType: "wav")!
        let url = URL(fileURLWithPath: path)
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player.prepareToPlay()
        } catch let error as NSError {
            print(error.description)
        }
        player.play()
    }
    @IBAction func violinBtnPressed(_ sender: Any) {
        let path = Bundle.main.path(forResource: "violin", ofType: "wav")!
        let url = URL(fileURLWithPath: path)
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player.prepareToPlay()
        } catch let error as NSError {
            print(error.description)
        }
        player.play()
    }
    @IBAction func womboBtnPressed(_ sender: Any) {
        let path = Bundle.main.path(forResource: "wombo", ofType: "wav")!
        let url = URL(fileURLWithPath: path)
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player.prepareToPlay()
        } catch let error as NSError {
            print(error.description)
        }
        player.play()
    }
    @IBAction func wowBtnPressed(_ sender: Any) {
        let path = Bundle.main.path(forResource: "wow", ofType: "wav")!
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
