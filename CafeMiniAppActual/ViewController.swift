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
    
    @IBOutlet weak var changesStackView: UIStackView!
    
    @IBOutlet weak var menuLabel: UILabel!
    
    @IBOutlet weak var cartTextView: UITextView!
    @IBOutlet weak var totalPriceLabel: UILabel!
    
    var menuItems = ["Coffee" : 1.99, "Muffin" : 1.99, "Sandwich" : 4.99]
    var menuText = "Menu:\nCoffee: $1.99\nMuffin: $1.99\nSandwich: $4.99"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        menuLabel.text=menuText
        changesStackView.isHidden=true
    }

    @IBAction func addItemToCartButton(_ sender: UIButton) {
        
    }
    
}

