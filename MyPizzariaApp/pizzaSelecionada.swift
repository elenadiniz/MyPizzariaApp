//
//  pizzaSelecionada.swift
//  MyPizzariaApp
//
//  Created by Elena Diniz on 24/05/21.
//

import UIKit

class pizzaSelecionada: UIViewController {
    
    var name: String?
    
    var arraySmallPrice:[String] = ["35,00", "33,00", "41,00", "40,00", "45,00", "36,00", "39,00", "41,33"]
    
    var arrayMediumPrice:[String] = ["40,00", "39,00", "45,00", "45,00", "50,00", "40,00", "45,00", "54,99"]
    
    var arrayLargePrice:[String] = ["48,00", "46,00", "51,99", "53,49", "56,99", "46,00", "48,99", "61,11"]

    @IBOutlet weak var pizzaImageView: UIImageView!
    
    @IBOutlet weak var pizzaNameField: UITextField!

    @IBOutlet weak var sizeTextField: UITextField!
    
    @IBOutlet weak var sizeSegment: UISegmentedControl!
    
    @IBOutlet weak var priceTextField: UILabel!
    
    @IBOutlet weak var buyButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.pizzaNameField.text = name
        self.pizzaImageView.image = UIImage(named: name ?? "")
        self.sizeSegment.selectedSegmentIndex = -1
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

    }
    
    @IBAction func showWhenTapped(_ sender: UISegmentedControl) {
        
        if sender.selectedSegmentIndex == 0 {
            self.mostraPrecoPequeno()
        }else if sender.selectedSegmentIndex == 1 {
            self.mostraPrecoMedio()
        } else {
            self.mostraPrecoGrande()
        }
    }
    @IBAction func buyButton(_ sender: Any) {
        
        self.performSegue(withIdentifier: "checkoutPizza", sender: nil)
    }
    
    func mostraPrecoPequeno() {
        
        for value in arraySmallPrice {
            
            print(value)
        
            priceTextField.text = "R$ \(value)"}
    }
    
    func mostraPrecoMedio() {
        
        for value2 in arrayMediumPrice {
            
            print(value2)
        
            priceTextField.text = "R$ \(value2)"}
    }
    
    func mostraPrecoGrande() {
        
        for value3 in arrayLargePrice {
            
            print(value3)
        
            priceTextField.text = "R$ \(value3)"}
    }
    
}
