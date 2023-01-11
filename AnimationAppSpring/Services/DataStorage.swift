//
//  DataStorage.swift
//  AnimationAppSpring
//
//  Created by Дмитрий on 11.01.2023.
//

import Foundation

class DataManager {
    static let shared = DataManager()
    
    let animation = ["shake", "pop", "morph", "squeeze", "wobble", "swing",
                     "fall", "squeezeLeft", "slideLeft", "fadeIn"]
    
    let curve = ["spring", "linear", "easeIn", "easeOut", "easeInOut"]
    
    private init() {}
    
}
