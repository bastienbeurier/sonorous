//
//  Sampler.swift
//  sonorous
//
//  Created by Bastien Beurier on 6/6/18.
//  Copyright © 2018 Bastien Beurier. All rights reserved.
//

import UIKit

import AudioKit

class Sampler: NSObject {
    
    static let minNote = 0
    static let maxNote = 87
    static let middleC = 39
    
    private let MIDINoteOffset = 60
    private let fileName = "Assets/Samples/piano"
    
    func play(note: Int) {
        if note < Sampler.minNote || note > Sampler.maxNote {
            return
        }
        
        let sampler = AKAppleSampler()
        AudioKit.output = sampler
        let sampleIndex: Int = note / 3
        
        do {
            print(fileName + String(sampleIndex))
            try sampler.loadWav(fileName + String(sampleIndex))
            try AudioKit.start()
            try sampler.play(noteNumber: MIDINoteNumber(MIDINoteOffset + note % 3))
        } catch {
            print(error)
        }
    }
    
}
