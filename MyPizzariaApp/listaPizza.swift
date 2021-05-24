//
//  listaPizza.swift
//  MyPizzariaApp
//
//  Created by Elena Diniz on 24/05/21.
//

import UIKit

class listaPizza: UIViewController {

    @IBOutlet weak var chooseLabel: UILabel!
    @IBOutlet weak var listaPizzaTab: UITableView!
    
    var labelText = "Escolha seu sabor favorito:"
    
    private var arrayPizzas:[String] = ["Mussarela", "Calabresa", "Peperoni", "Margerita", "Portuguesa", "Atum", "Toscana", "4 Queijos"]
    
    private var arrayPrice:[String] = ["35,00", "33,00", "41,00", "40,00", "45,00", "36,00", "39,00", "41,33"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.chooseLabel.text = labelText.self
        self.listaPizzaTab.register(UINib(nibName: "pizzaCell", bundle: nil), forCellReuseIdentifier: "pizzaCell")
        
        self.listaPizzaTab.delegate = self
        self.listaPizzaTab.dataSource = self
        self.listaPizzaTab.tableFooterView = UIView()
        

        // Do any additional setup after loading the view.
    }

}

extension listaPizza: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.arrayPizzas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell: pizzaCell? = tableView.dequeueReusableCell(withIdentifier: "pizzaCell", for: indexPath) as? pizzaCell
        
        cell?.pizzaImageView.image = UIImage(named: self.arrayPizzas[indexPath.row])
        cell?.titleTextField.text = self.arrayPizzas[indexPath.row]
        cell?.priceTextField1.text = "A partir de:"
        cell?.priceTextField2.text = self.arrayPrice[indexPath.row]
        cell?.delegate = self
    
        return cell ?? UITableViewCell()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let vc: pizzaSelecionada? = segue.destination as? pizzaSelecionada
        
        vc?.name = sender as? String
    }
}


extension listaPizza: UITableViewDelegate {
    
}

extension listaPizza: pizzaCellDelegate {
    
    func proximaTelaButton(value: String?) {
        
        self.performSegue(withIdentifier: "pizzaSelecionada", sender: value)
    }
}
