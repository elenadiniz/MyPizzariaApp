//
//  pizzaCell.swift
//  MyPizzariaApp
//
//  Created by Elena Diniz on 24/05/21.
//

import UIKit

protocol pizzaCellDelegate: class {
    
    func proximaTelaButton(value: String?)

}

class pizzaCell: UITableViewCell {

    @IBOutlet weak var pizzaImageView: UIImageView!
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var priceTextField1: UILabel!
    @IBOutlet weak var priceTextField2: UILabel!
    @IBOutlet weak var iWantButton: UIButton!
    
    
    weak var delegate: pizzaCellDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func nextScreenButton(_ sender: Any) {
        
        self.delegate?.proximaTelaButton(value: self.titleTextField.text)
    }
}
