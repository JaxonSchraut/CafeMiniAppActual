//
//  ViewController.swift
//  CafeMiniAppActual
//
//  Created by JAXON SCHRAUT on 9/13/22.
//

import UIKit

class ViewController: UIViewController {
    
//  admin menu opens
    @IBOutlet weak var adminPWField: UITextField!
//  editing menu
    @IBOutlet weak var adminMenuEditField: UITextField!
    @IBOutlet weak var adminPriceAddField: UITextField!
//  add to cart
    @IBOutlet weak var itemSearchField: UITextField!
//  press to enter password
    @IBOutlet weak var passwordButton: UIButton!
    
//  admin menu visibility
    @IBOutlet weak var PWStackView: UIStackView!
    @IBOutlet weak var changesStackView: UIStackView!
    
//  text displaying
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
    
    
    @IBAction func passwordEnter(_ sender: UIButton) {
        let password = "cafe"
        if(adminPWField.text == nil){}
        else if(changesStackView.isHidden == true){
            if(adminPWField.text! == password){
                changesStackView.isHidden=false
                passwordButton.setTitle("Close", for: .normal)
            }
        } else {
            passwordButton.setTitle("Enter", for: .normal)
            changesStackView.isHidden=true
            PWStackView.isHidden=true
        }
    }
    
    
    @IBAction func addItem(_ sender: UIButton) {
        if (adminMenuEditField.text != nil && adminPriceAddField.text != nil){
            menuItems[adminMenuEditField.text!] = Double(adminPriceAddField.text!)
            menuText="Menu:"
            for (cafeItem, itemPrice) in menuItems{
                menuText = "\(menuText)\n\(cafeItem): $\(itemPrice)"
            }
        }
        menuLabel.text=menuText
    }
    
    @IBAction func removeItem(_ sender: UIButton) {
        if(adminMenuEditField.text != nil){
            let change = adminMenuEditField.text!
            menuItems.removeValue(forKey: change)
            menuText="Menu:"
            for (cafeItem, itemPrice) in menuItems{
                menuText = "\(menuText)\n\(cafeItem): $\(itemPrice)"
            }
            menuLabel.text=menuText
        }
    }
    
    
    
    
}

