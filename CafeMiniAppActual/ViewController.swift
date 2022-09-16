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
    
    var menuItems = ["Coffee" : 1.99, "Muffin" : 1.99, "Sandwich" : 4.99]
    var menuText = "Menu:"
    var total = 0.0
    
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
        if (itemSearchField.text=="" || itemSearchField.text == "nil"){
            itemSearchField.text = "You Stupid"
        } else {
            
        }
    }
    
    @IBAction func adminPopup(_ sender: UIButton) {
        PWStackView.isHidden=false
    }
}

