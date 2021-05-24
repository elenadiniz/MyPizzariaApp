//
//  checkoutPizza.swift
//  MyPizzariaApp
//
//  Created by Elena Diniz on 24/05/21.
//

import UIKit

class checkoutPizza: UIViewController {

    @IBOutlet weak var finalTextField: UILabel!
    @IBOutlet weak var checkImageView: UIImageView!
    
    var TextField = "Compra efetuada com sucesso!"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.finalTextField.text = self.TextField
        self.checkImageView.image = UIImage (named: "done")
        
        // Do any additional setup after loading the view.
    }
}
