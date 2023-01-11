//
//  ViewController.swift
//  AnimationAppSpring
//
//  Created by Дмитрий on 11.01.2023.
//

import SpringAnimation
import UIKit


class AnimationViewController: UIViewController {

    @IBOutlet weak var springView: SpringView!
    @IBOutlet weak var presentLabel: UILabel!
    @IBOutlet weak var curveLabel: UILabel!
    @IBOutlet weak var forceLabel: UILabel!
    @IBOutlet weak var durationLabel: UILabel!
    @IBOutlet weak var delayLabel: UILabel!
    
    let data = Animation.getAnimation()
    
    private var index = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setDescriptionAnimation()
    }

    @IBAction func runAnimation() {
        if index > data.count {
            setAnimation()
            index += 1
            
            if index >= data.count {
                index = 0
            }
            setDescriptionAnimation()
        }
    }
    
    private func setDescriptionAnimation() {
           presentLabel.text = "Animation: \(data[index].animation)"
           curveLabel.text = "Curve: \(data[index].curve)"
           forceLabel.text = String(format: "Force: %.1f", data[index].force)
           durationLabel.text = String(format: "Duration: %.1f", data[index].duration)
           delayLabel.text = String(format: "Delay: %.1f", data[index].delay)
           
       }
       
       private func setAnimation() {
           springView.animation = data[index].animation
           springView.curve = data[index].curve
           springView.force = CGFloat(data[index].force)
           springView.duration = CGFloat(data[index].duration)
           springView.delay = CGFloat(data[index].delay)

           springView.animate()
       }
    

}

