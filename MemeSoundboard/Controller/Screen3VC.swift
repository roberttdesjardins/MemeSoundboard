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
    @IBOutlet weak var ohshit: UIButton!
    @IBOutlet weak var snoop: UIButton!
    @IBOutlet weak var omae: UIButton!
    @IBOutlet weak var nani: UIButton!
    @IBOutlet weak var weed: UIButton!
    @IBOutlet weak var thuglife: UIButton!
    @IBOutlet weak var vandarkholme: UIButton!
    @IBOutlet weak var doit: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bannerView.adUnitID = "ca-app-pub-3940256099942544/2934735716"
        bannerView.rootViewController = self
        bannerView.load(GADRequest())
        //Test ads is ca-app-pub-3940256099942544/2934735716
        bannerView.delegate = self
        makeBorderText(button: ohshit)
        makeBorderImage(button: snoop)
        makeBorderImage(button: omae)
        makeBorderImage(button: nani)
        makeBorderImage(button: weed)
        makeBorderImage(button: thuglife)
        makeBorderImage(button: vandarkholme)
        makeBorderImage(button: doit)
        
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

    
    @IBAction func smokeWeedBtnPressed(_ sender: Any) {
        let path = Bundle.main.path(forResource: "smokeweed", ofType: "wav")!
        let url = URL(fileURLWithPath: path)
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player.prepareToPlay()
        } catch let error as NSError {
            print(error.description)
        }
        player.play()
    }
    
    @IBAction func thugLifeBtnPressed(_ sender: Any) {
        let path = Bundle.main.path(forResource: "thuglife", ofType: "wav")!
        let url = URL(fileURLWithPath: path)
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player.prepareToPlay()
        } catch let error as NSError {
            print(error.description)
        }
        player.play()
    }
    
    @IBAction func omaeBtnPressed(_ sender: Any) {
        let path = Bundle.main.path(forResource: "omae", ofType: "wav")!
        let url = URL(fileURLWithPath: path)
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player.prepareToPlay()
        } catch let error as NSError {
            print(error.description)
        }
        player.play()
    }
    
    @IBAction func naniBtnPressed(_ sender: Any) {
        let path = Bundle.main.path(forResource: "nani", ofType: "wav")!
        let url = URL(fileURLWithPath: path)
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player.prepareToPlay()
        } catch let error as NSError {
            print(error.description)
        }
        player.play()
    }
    
    @IBAction func snoopDogBtnPressed(_ sender: Any) {
        let path = Bundle.main.path(forResource: "holdup", ofType: "wav")!
        let url = URL(fileURLWithPath: path)
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player.prepareToPlay()
        } catch let error as NSError {
            print(error.description)
        }
        player.play()
    }
    @IBAction func vandarkholmeBtnPressed(_ sender: Any) {
        let path = Bundle.main.path(forResource: "vandarkholme", ofType: "wav")!
        let url = URL(fileURLWithPath: path)
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player.prepareToPlay()
        } catch let error as NSError {
            print(error.description)
        }
        player.play()
    }
    
    @IBAction func doitBtnPressed(_ sender: Any) {
        let path = Bundle.main.path(forResource: "doit", ofType: "wav")!
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
