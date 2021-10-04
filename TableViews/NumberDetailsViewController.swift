//
//  NumberDetailsViewController.swift
//  TableViews
//
//  Created by Crypto on 04/10/2021.
//

import UIKit

class NumberDetailsViewController: UIViewController {

    var number: Int?
    
    @IBOutlet weak var lblNumber: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lblNumber.text = "\(number ?? 0)"
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
