//
//  ViewController.swift
//  CafeMiniAppActual
//
//  Created by JAXON SCHRAUT on 9/13/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var adminPWField: UITextField!
    @IBOutlet weak var adminMenuEditField: UITextField!
    @IBOutlet weak var itemSearchField: UITextField!
    
    @IBOutlet weak var PWStackView: UIStackView!
    @IBOutlet weak var changesStackView: UIStackView!
    
    @IBOutlet weak var menuLabel: UILabel!
    
    @IBOutlet weak var cartTextView: UITextView!
    @IBOutlet weak var totalPriceLabel: UILabel!
    
    var menuItems: [String:Double] = ["Coffee" : 1.99, "Tea" : 1.99, "Muffin" : 1.99, "Sandwich" : 4.99,  "Croissant" : 1.99]
    var menuText = "Menu:"
    var total = 0.0
    var cartText = "Cart:"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        for (cafeItem, itemPrice) in menuItems{
            menuText = "\(menuText)\n\(cafeItem): $\(itemPrice)"
        }
        menuLabel.text=menuText
        
        PWStackView.isHidden=true
        changesStackView.isHidden=true
    }

    @IBAction func addItemToCartButton(_ sender: UIButton) {
        let temp = menuItems[itemSearchField.text!]
        if (temp == nil){
            itemSearchField.text = "Not Available"
        } else {
            if (menuItems[itemSearchField.text!] != nil){
                total = total + menuItems[itemSearchField.text!]!
            }
            cartText = cartText + "\n\(itemSearchField.text!)"
            cartTextView.text = cartText
            total = round(total*1000)/1000
            totalPriceLabel.text = "Total Price: $\(total)"
        }
    }
    
    @IBAction func adminPopup(_ sender: UIButton) {
        if(PWStackView.isHidden == false){
            PWStackView.isHidden=true
        } else {
            PWStackView.isHidden=false
        }
    }
}

