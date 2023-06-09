//
//  ViewController.swift
//  CheckList
//
//  Created by Ricardo Roman Landeros on 14/03/23.
//

import UIKit

class CheckListViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChecklistItem", for: indexPath)
        
        
        let label = cell.viewWithTag(1000) as! UILabel
        
        if indexPath.row  == 0 {
            label.text = "Walk the dog"
        } else if indexPath.row == 1 {
            label.text = "Brush my teeth"
        }  else if indexPath.row == 2 {
            label.text = "Learn iOS development"
        }  else if indexPath.row == 3 {
            label.text = "Soccer practice"
        }  else if indexPath.row == 4 {
            label.text = "Eat ice cream"
        }
        
        
        return cell
    }
    
    //este metodo se ejecuta cada ves que presionamos uan celda
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //cuál es la celda en esta indexPath que me has dado
        //como devuelve un condicional podemos lo envolvemos en un if
        if let cell = tableView.cellForRow(at: indexPath){
            if cell.accessoryType == .none {
                cell.accessoryType = .checkmark
            } else {
                cell.accessoryType = .none
            }
        }
        
        
        //este metodo hace que la celda se deseleccione
        tableView.deselectRow(at: indexPath, animated: true)
    }

}

