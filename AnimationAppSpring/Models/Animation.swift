//
//  Animation.swift
//  AnimationAppSpring
//
//  Created by Дмитрий on 11.01.2023.
//

import Foundation

struct Animation {
    let animation: String
    let curve: String
    var force: Float {
        Float.random(in: 0.5...2.0)
    }
    var duration: Float {
        Float.random(in: 0.5...1.0)
    }
    var delay: Float {
        Float.random(in: 0...1.4)
    }
    
    
    static func getAnimation() -> [Animation] {
        var animations: [Animation] = []
        
        let animation = DataManager.shared.animation.shuffled()
        let curve = DataManager.shared.curve.shuffled()
        
        for index in 0..<DataManager.shared.animation.count {
            animations.append(
                Animation(
                    animation: animation[index],
                    curve: curve.randomElement() ?? "")
            )
        }
        return animations
        
    }
}
