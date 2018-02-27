//
//  Screen6VC.swift
//  MemeSoundboard
//
//  Created by Robert Desjardins on 2018-02-24.
//  Copyright © 2018 Robert Desjardins. All rights reserved.
//

import UIKit
import AVFoundation
import GoogleMobileAds

class Screen6VC: UIViewController, GADBannerViewDelegate {
    var player: AVAudioPlayer!
    
    @IBOutlet weak var bannerView: GADBannerView!
    @IBOutlet weak var pokemon: UIButton!
    @IBOutlet weak var ohmygosh: UIButton!
    @IBOutlet weak var johncena: UIButton!
    @IBOutlet weak var losinghorn: UIButton!
    @IBOutlet weak var curb: UIButton!
    @IBOutlet weak var seinfeld: UIButton!
    @IBOutlet weak var hellomf: UIButton!
    @IBOutlet weak var rocky: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bannerView.adUnitID = "ca-app-pub-3940256099942544/2934735716"
        bannerView.rootViewController = self
        bannerView.load(GADRequest())
        //Test ads is ca-app-pub-3940256099942544/2934735716
        bannerView.delegate = self
        
        makeBorderImage(button: pokemon)
        makeBorderText(button: ohmygosh)
        makeBorderImage(button: johncena)
        makeBorderImage(button: losinghorn)
        makeBorderText(button: curb)
        makeBorderImage(button: seinfeld)
        makeBorderImage(button: hellomf)
        makeBorderImage(button: rocky)
    }
    
    @IBAction func pokemonBtnPressed(_ sender: Any) {
        let path = Bundle.main.path(forResource: "pokemon", ofType: "wav")!
        let url = URL(fileURLWithPath: path)
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player.prepareToPlay()
        } catch let error as NSError {
            print(error.description)
        }
        player.play()
    }
    @IBAction func ohmygoshBtnPressed(_ sender: Any) {
        let path = Bundle.main.path(forResource: "ohmygosh", ofType: "wav")!
        let url = URL(fileURLWithPath: path)
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player.prepareToPlay()
        } catch let error as NSError {
            print(error.description)
        }
        player.play()
    }
    @IBAction func johncenaBtnPressed(_ sender: Any) {
        let path = Bundle.main.path(forResource: "johncena", ofType: "wav")!
        let url = URL(fileURLWithPath: path)
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player.prepareToPlay()
        } catch let error as NSError {
            print(error.description)
        }
        player.play()
    }
    @IBAction func losinghornBtnPressed(_ sender: Any) {
        let path = Bundle.main.path(forResource: "losinghorn", ofType: "wav")!
        let url = URL(fileURLWithPath: path)
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player.prepareToPlay()
        } catch let error as NSError {
            print(error.description)
        }
        player.play()
    }
    @IBAction func curbBtnPressed(_ sender: Any) {
        let path = Bundle.main.path(forResource: "curb", ofType: "wav")!
        let url = URL(fileURLWithPath: path)
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player.prepareToPlay()
        } catch let error as NSError {
            print(error.description)
        }
        player.play()
    }
    @IBAction func seinfeldBtnPressed(_ sender: Any) {
        let path = Bundle.main.path(forResource: "seinfeld", ofType: "wav")!
        let url = URL(fileURLWithPath: path)
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player.prepareToPlay()
        } catch let error as NSError {
            print(error.description)
        }
        player.play()
    }
    @IBAction func hellomfBtnPressed(_ sender: Any) {
        let path = Bundle.main.path(forResource: "hellomf", ofType: "wav")!
        let url = URL(fileURLWithPath: path)
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player.prepareToPlay()
        } catch let error as NSError {
            print(error.description)
        }
        player.play()
    }
    @IBAction func rockyBtnPressed(_ sender: Any) {
        let path = Bundle.main.path(forResource: "rocky", ofType: "wav")!
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

