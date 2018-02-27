//
//  Screen5VC.swift
//  MemeSoundboard
//
//  Created by Robert Desjardins on 2018-02-24.
//  Copyright © 2018 Robert Desjardins. All rights reserved.
//

import UIKit
import AVFoundation
import GoogleMobileAds

class Screen5VC: UIViewController, GADBannerViewDelegate {
    var player: AVAudioPlayer!
    
    @IBOutlet weak var bannerView: GADBannerView!
    
    @IBOutlet weak var donethis: UIButton!
    @IBOutlet weak var donethat: UIButton!
    @IBOutlet weak var nope: UIButton!
    @IBOutlet weak var trombone: UIButton!
    @IBOutlet weak var wrongnumber: UIButton!
    @IBOutlet weak var bradberry: UIButton!
    @IBOutlet weak var crickets: UIButton!
    @IBOutlet weak var spaghet: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bannerView.adUnitID = "ca-app-pub-3940256099942544/2934735716"
        bannerView.rootViewController = self
        bannerView.load(GADRequest())
        //Test ads is ca-app-pub-3940256099942544/2934735716
        bannerView.delegate = self
        makeBorderText(button: donethis)
        makeBorderImage(button: donethat)
        makeBorderImage(button: nope)
        makeBorderImage(button: trombone)
        makeBorderImage(button: wrongnumber)
        makeBorderImage(button: bradberry)
        makeBorderImage(button: crickets)
        makeBorderImage(button: spaghet)
    }
    
    @IBAction func donethisBtnPressed(_ sender: Any) {
        let path = Bundle.main.path(forResource: "donethis", ofType: "wav")!
        let url = URL(fileURLWithPath: path)
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player.prepareToPlay()
        } catch let error as NSError {
            print(error.description)
        }
        player.play()
    }
    @IBAction func donethatBtnPressed(_ sender: Any) {
        let path = Bundle.main.path(forResource: "donethat", ofType: "wav")!
        let url = URL(fileURLWithPath: path)
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player.prepareToPlay()
        } catch let error as NSError {
            print(error.description)
        }
        player.play()
    }
    @IBAction func nopeBtnPressed(_ sender: Any) {
        let path = Bundle.main.path(forResource: "nope", ofType: "wav")!
        let url = URL(fileURLWithPath: path)
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player.prepareToPlay()
        } catch let error as NSError {
            print(error.description)
        }
        player.play()
    }
    @IBAction func tromboneBtnPressed(_ sender: Any) {
        let path = Bundle.main.path(forResource: "trombone", ofType: "wav")!
        let url = URL(fileURLWithPath: path)
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player.prepareToPlay()
        } catch let error as NSError {
            print(error.description)
        }
        player.play()
    }
    @IBAction func wrongnumberBtnPressed(_ sender: Any) {
        let path = Bundle.main.path(forResource: "wrongnumber", ofType: "wav")!
        let url = URL(fileURLWithPath: path)
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player.prepareToPlay()
        } catch let error as NSError {
            print(error.description)
        }
        player.play()
    }
    @IBAction func bradberryBtnPressed(_ sender: Any) {
        let path = Bundle.main.path(forResource: "bradberry", ofType: "wav")!
        let url = URL(fileURLWithPath: path)
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player.prepareToPlay()
        } catch let error as NSError {
            print(error.description)
        }
        player.play()
    }
    @IBAction func cricketsBtnPressed(_ sender: Any) {
        let path = Bundle.main.path(forResource: "crickets", ofType: "wav")!
        let url = URL(fileURLWithPath: path)
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player.prepareToPlay()
        } catch let error as NSError {
            print(error.description)
        }
        player.play()
    }
    @IBAction func spaghetBtnPressed(_ sender: Any) {
        let path = Bundle.main.path(forResource: "spaghet", ofType: "wav")!
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
