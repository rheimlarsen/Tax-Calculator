//
//  ViewController.swift
//  Tax Calculator
//
//  Created by Rheim on 8/7/17.
//  Copyright © 2017 Rheim. All rights reserved.
//

import UIKit

//Adding a comment

class ViewController: UIViewController {

    
//MARK: Variables and Buttons
    
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var taxLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
   
    
    var price: String = "000"
    var taxRate: Double = 0.06
    
//MARK: Setup
    func setGradientBackground() {
        let colorTop =  UIColor(red: 255.0/255.0, green: 149.0/255.0, blue: 0.0/255.0, alpha: 1.0).cgColor
        let colorBottom = UIColor(red: 255.0/255.0, green: 94.0/255.0, blue: 58.0/255.0, alpha: 1.0).cgColor
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [ colorTop, colorBottom]
        gradientLayer.locations = [ 0.0, 1.0]
        gradientLayer.frame = self.view.bounds
        
        self.view.layer.insertSublayer(gradientLayer, at: 0)
    }
    
    
//MARK: Change Label Info

    
    func updatePrice(){
        print("Got to updatePrice")

        var tempPrice = price
        let wholeNumber = String(tempPrice.characters.dropLast(2))
        print("Got to 1")

        let decimal = String(tempPrice.characters.suffix(2))
        print(decimal)
        print("Got to 2")
        
        tempPrice = wholeNumber + "." + decimal
        print("Got to 3")
        print("tempPrice is: \(tempPrice)")
        
        let priceDouble: Double = Double(tempPrice)!
        print("Got to 4")
        
        totalLabel.text = String(format: "%.2f", priceDouble)
        taxLabel.text = String(format: "%.2f", (priceDouble * taxRate))
        priceLabel.text =  String(format: "%.2f", (priceDouble + (taxRate * priceDouble)))

    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setGradientBackground()
        updatePrice()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//MARK: Actions when numbers pressed
    @IBAction func number1(_ sender: Any) {
        price.append("1")
        print("Adding 1")
        updatePrice()
    }
    
    @IBAction func number2(_ sender: Any) {
        price.append("2")
        print("Adding 2")
        updatePrice()
    }
    
    @IBAction func number3(_ sender: Any) {
        price.append("3")
        print("Adding 3")
        updatePrice()
    }
    
    
    @IBAction func number4(_ sender: Any) {
        price.append("4")
        print("Adding 4")
        updatePrice()
    }
    
    @IBAction func number5(_ sender: Any) {
        price.append("5")
        print("Adding 5")
        updatePrice()
    }
  
    @IBAction func number6(_ sender: Any) {
        price.append("6")
        print("Adding 6")
        updatePrice()
    }
    
    @IBAction func number7(_ sender: Any) {
        price.append("7")
        print("Adding 7")
        updatePrice()
    }
    
    @IBAction func number(_ sender: Any) {
        price.append("8")
        print("Adding 8")
        updatePrice()
    }
    
    
    @IBAction func number9(_ sender: Any) {
        price.append("9")
        print("Adding 9")
        updatePrice()
    }
    
    
    @IBAction func number00(_ sender: Any) {
        price.append("00")
        print("Adding 00")
        updatePrice()
    }
    
    @IBAction func number0(_ sender: Any) {
        price.append("0")
        print("Adding 0")
        updatePrice()
    }
    
    
    @IBAction func deleteKey(_ sender: Any) {
        if (price.characters.count > 1){
            price =  String(price.characters.dropLast())
            updatePrice()
        } else {
            price = "000"
            updatePrice()
        }
        
    }
    
    @IBAction func allClearButton(_ sender: Any) {
        price = "000"
        updatePrice()
    }
    
}

