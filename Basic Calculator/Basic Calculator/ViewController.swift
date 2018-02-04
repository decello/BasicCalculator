//
//  ViewController.swift
//  Basic Calculator
//
//  Created by Tuğkan Boz on 30.01.2018.
//  Copyright © 2018 Tuğkan Boz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var text1: UITextField!
    @IBOutlet weak var text2: UITextField!
    @IBOutlet weak var sonuc: UILabel!
    var result = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sonuc.text="" //başlangıçta boş göster
    }

    @IBAction func toplama(_ sender: Any) {
        if let firstNumber = Int(text1.text!) //text1in kesin int olduğunu sorgular
        {
            if let secondNumber = Int(text2.text!)
            {
                result = firstNumber + secondNumber
                sonuc.text = String(result)//Int değerini stringe çevir
            }
        }
    }
    
    @IBAction func cikarma(_ sender: Any) {
        if let firstNumber = Int(text1.text!)
        {
            if let secondNumber = Int(text2.text!)
            {
                result = firstNumber - secondNumber
                sonuc.text = String(result)
            }
        }
    }
    
    @IBAction func carpma(_ sender: Any) {
        if let firstNumber = Int(text1.text!)
        {
            if let secondNumber = Int(text2.text!)
            {
                result = firstNumber * secondNumber
                sonuc.text = String(result)
            }
        }
    }
    
    @IBAction func bolme(_ sender: Any) {
        if let firstNumber = Int(text1.text!)
        {
            if let secondNumber = Int(text2.text!)
            {
                result = firstNumber / secondNumber
                sonuc.text = String(result)
            }
        }
    }
    
}

