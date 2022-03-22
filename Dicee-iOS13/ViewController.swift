//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //pripojeni prvni kostky z Interface Builder Outlet
    @IBOutlet weak var diceImageView1: UIImageView!
    //pripojeni druhe kostky z Interface Builder Outlet
    @IBOutlet weak var diceImageView2: UIImageView!
    
    //pripojeni tlacitka roll jako Interface Builder Action
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
    //Konstanta diceArray se sklada z sesti images
        let extractedExpr = #imageLiteral(resourceName: "DiceFour")
        let diceArray = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), extractedExpr, #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
        
    //Zobraz v prvnim obrazku konstantu, ktera se rovna diceArray ale s nahodnym elementem
        diceImageView1.image = diceArray.randomElement()
        
    //Zobraz v druhem obrazku konstantu, ktera se rovna diceArray ale s nahodnym elementem
        diceImageView2.image = diceArray.randomElement()
    }
    
}

