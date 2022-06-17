//
//  ViewController.swift
//  DiceIOS13
//
//  Created by เมญาดา สายสัญ on 17/6/2565 BE.
//

import UIKit

extension UIButton {
    func roundCorners(corners: UIRectCorner, radius: Int = 8) {
        let maskPath1 = UIBezierPath(roundedRect: bounds,
                                     byRoundingCorners: corners,
                                     cornerRadii: CGSize(width: radius, height: radius))
        let maskLayer1 = CAShapeLayer()
        maskLayer1.frame = bounds
        maskLayer1.path = maskPath1.cgPath
        layer.mask = maskLayer1
    }
}


class ViewController: UIViewController {

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    
    
    var leftDiceNumber = 1
    var rightDiceNumber = 5
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        diceImageView1.image = [ UIImage(named: "DiceOne"), UIImage(named: "DiceTwo"), UIImage(named: "DiceThree"), UIImage(named: "DiceFour"), UIImage(named: "DiceFive"), UIImage(named: "DiceSix") ][leftDiceNumber]
        diceImageView1.layer.cornerRadius = diceImageView1.frame.size.width / 5
        diceImageView1.clipsToBounds = true
        
        
        diceImageView2.image = [ UIImage(named: "DiceOne"), UIImage(named: "DiceTwo"), UIImage(named: "DiceThree"), UIImage(named: "DiceFour"), UIImage(named: "DiceFive"), UIImage(named: "DiceSix") ][rightDiceNumber]
        diceImageView2.layer.cornerRadius = diceImageView2.frame.size.width / 5
        diceImageView2.clipsToBounds = true
        
        leftDiceNumber = leftDiceNumber + 1
        rightDiceNumber = rightDiceNumber - 1
        
        print(rightDiceNumber)
        print(leftDiceNumber)
        
    }
}


