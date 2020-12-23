//
//  ViewController.swift
//  VendingMachine
//
//  Created by Arizal Pratama Tanu Andara on 23/12/20.
//

import UIKit

class ViewController: UIViewController {

    var priceItems = 0.0
    var yourMoney = 0.0
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    @IBOutlet weak var priceOfItem: UILabel!
    @IBOutlet weak var totalOfYourMoney: UILabel!
    
    @IBAction func duaRibu(_ sender: UIButton) {
        self.yourMoney = self.yourMoney + 2000
                let brokenNumber = round(100 * yourMoney) / 100
                self.totalOfYourMoney.text =  String(brokenNumber)
    }
    
    @IBAction func limaRibu(_ sender: UIButton) {
        self.yourMoney = self.yourMoney + 5000
                let brokenNumber = round(100 * yourMoney) / 100
                self.totalOfYourMoney.text =  String(brokenNumber)
    }
    
    @IBAction func sepuluhRibu(_ sender: UIButton) {
        self.yourMoney = self.yourMoney + 10000
                let brokenNumber = round(100 * yourMoney) / 100
                self.totalOfYourMoney.text =  String(brokenNumber)
    }
    
    
    @IBAction func duaPuluhRibu(_ sender: UIButton) {
        self.yourMoney = self.yourMoney + 20000
                let brokenNumber = round(100 * yourMoney) / 100
                self.totalOfYourMoney.text =  String(brokenNumber)
    }
    
    @IBAction func limaPuluhRibu(_ sender: UIButton) {
        self.yourMoney = self.yourMoney + 50000
                let brokenNumber = round(100 * yourMoney) / 100
                self.totalOfYourMoney.text =  String(brokenNumber)
    }
    
    func myAlert(showMessage:String){
           let alertt = UIAlertController(title: "", message: showMessage, preferredStyle: .alert)
           let actionn = UIAlertAction(title: "OK", style: .default) { (action) in
               alertt.dismiss(animated: true, completion: nil)
           }
           alertt.addAction(actionn)
           self.present(alertt, animated: true, completion: nil)
           
       }
    
    
    @IBAction func biscuit(_ sender: UIButton) {
        self.priceOfItem.text = "Rp.6000"
            priceItems = 6000
    }
    
    @IBAction func chips(_ sender: UIButton) {
        self.priceOfItem.text = "Rp.8000"
            priceItems = 8000
    }
    
    @IBAction func oreo(_ sender: UIButton) {
        self.priceOfItem.text = "Rp.10000"
            priceItems = 10000
    }
    
    @IBAction func tango(_ sender: UIButton) {
        self.priceOfItem.text = "Rp.12000"
            priceItems = 12000
    }
    
    @IBAction func coklat(_ sender: UIButton) {
        self.priceOfItem.text = "Rp.15000"
            priceItems = 15000
    }
    
    @IBAction func bayar(_ sender: UIButton) {
        if yourMoney > priceItems {
                    print(yourMoney)
                    print(priceOfItem)
                   let changes = yourMoney - priceItems
                   let brokenNumber = round(100 * changes) / 100
                 
              
                 
                  self.myAlert(showMessage: "Kamu mendapat kembalian   \(brokenNumber) dari membeli item ini")
                  self.priceOfItem.text = ""
                  self.totalOfYourMoney.text = ""
                    
                    yourMoney = 0.0
                    
                }
                else {
                  
                    let changes =   priceItems - yourMoney
                    let brokenNumber = round(100 * changes) / 100
                    self.myAlert(showMessage: "Uang kamu kurang \(brokenNumber) Uang kamu kurang untuk membeli item ini ")
                    self.priceOfItem.text = ""
                    self.totalOfYourMoney.text = ""
                    
                    yourMoney = 0.0
                }
    }
    
    
    
    
}

