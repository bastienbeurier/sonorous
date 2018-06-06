//
//  ViewController.swift
//  sonorous
//
//  Created by Bastien Beurier on 6/4/18.
//  Copyright © 2018 Bastien Beurier. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    let sampler = Sampler()
    var currentNote = Sampler.middleC

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func upButtonTapped(_ sender: UIButton) {
        if currentNote < Sampler.maxNote { self.currentNote += 1 }
        sampler.play(note:self.currentNote)
    }
    
    @IBAction func downButtonTapped(_ sender: Any) {
        if currentNote > Sampler.minNote { self.currentNote -= 1 }
        sampler.play(note:self.currentNote)
    }
    
}


