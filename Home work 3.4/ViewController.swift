//
//  ViewController.swift
//  Home work 3.4
//
//  Created by Айбек Шакиров on 30/11/22.
//

import UIKit


/*Создать класс AdressModel c параметрами имя адреса и цена. Создать пустое окно с кнопкой плюсика. По нажатию открывать алерт в которое вводится имя адреса, цену заполнять рандомно. После подтверждения имя адреса должно добавляться в tableView. Каждое добавление адреса должно добавлять имя адреса в таблицу, а ценна должна прибавляться на все предыдущие. Общую сумму выводить в отдельном label в самом низу экрана. (Представьте что делаете приложение заказа такси)
*/
class ViewController: UIViewController {
    
    
    var secondVC = UIViewController()
    
    
    @IBAction func goToTableViewVC(_ sender: Any) {
        print("go to tab")
        secondVC = storyboard?.instantiateViewController(withIdentifier: "second_vc") as! SecondViewController

        
        
        navigationController?.pushViewController(secondVC, animated: true)
    }
    
    
    
    @IBAction func buttonplus(_ sender: Any) {
        let alert = UIAlertController(title: "new", message: "adres", preferredStyle: .alert)
        var addressTextField = UITextField()
        
        var costTextFeild = UITextField()
        


        alert.addTextField { textfield in
            addressTextField = textfield
            addressTextField.placeholder = "Add new address"
        }
        alert.addTextField { textfield in
            costTextFeild = textfield
            costTextFeild.placeholder = "Add cost"
            
        }
        
        let okAction = UIAlertAction(title: "YES", style: .cancel) { action in()
            let newAddress = Address(address: addressTextField.text!, cost: costTextFeild.text!)
            addresses.append(newAddress)
        }
        
        
          let noAction = UIAlertAction(title: "NO", style: .destructive) { action in
              ()
          }
        
        alert.addAction(okAction)
        alert.addAction(noAction) 
        
        present(alert, animated: true)
    }
    

    
        override func viewDidLoad() {
            super.viewDidLoad()
            
            secondVC = storyboard?.instantiateViewController(withIdentifier: "second_vc") as! SecondViewController
        }
        
        
    }
    

