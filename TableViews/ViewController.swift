//
//  ViewController.swift
//  TableViews
//
//  Created by Crypto on 04/10/2021.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate { // once we ere trying to avoid having an empty textfield

    
    @IBOutlet weak var numbersTableView: UITableView!

    @IBOutlet weak var buttonSaveOutlet: UIButton!
    
    @IBOutlet weak var textFieldData: UITextField!
    
    var dataArray = ["Ghaidaa", "Ghadeer", "Zahra", "Ghassan"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        textFieldData.delegate = self
        
//        numbersTableView.delegate = self
//        numbersTableView.dataSource = self
        
        
//        for i in 0...array.count {
//            print(array[i])
//        }
    }

//    func textFieldDidEndEditing(_ textField: UITextField) {
//        if !textField.hasText || textField.text == "" {
//
//            buttonSaveOutlet.isEnabled = false
//        }
//        else {
//            buttonSaveOutlet.isEnabled = true
//
//        }
//
//        self.view.endEditing(true)
//    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let numberDetailsVC = segue.destination as! NumberDetailsViewController
        numberDetailsVC.number = sender as? Int
//        numberDetailsVC.number as? sender
    }

    
    @IBAction func buttonSaveAction(_ sender: Any) {
//        guard textFieldData.hasText || textFieldData.text == "" else {
//            return
//        }
        
        
        dataArray.insert(textFieldData.text!, at: 0)
//        dataArray.append(textFieldData.text!)
//        print("Working!!")
        DispatchQueue.main.async {
            self.numbersTableView.reloadData()
        }
    }
    
}

//MARK: - Table view methods
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
//        let cell = numbersTableView.dequeueReusableCell(withIdentifier: <#T##String#>, for: <#T##IndexPath#>)
//        let cell = UITableViewCell()
//
//        cell.textLabel?.text = "\(array[indexPath.row])"
//        print(indexPath.row)
//        return cell
        
        
        
        let cell = numbersTableView.dequeueReusableCell(withIdentifier: "Cell") as! Cell
        cell.lblText.text = "\(dataArray[indexPath.row])"
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    
        performSegue(withIdentifier: "viewNumberDetails", sender: dataArray[indexPath.row])
    }
}
