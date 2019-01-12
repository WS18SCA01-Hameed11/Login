//
//  DetailsViewController.swift
//  Login
//
//  Created by Hameed Abdullah on 1/11/19.
//  Copyright © 2019 Hameed Abdullah. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
    
    var age: Int?
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let age: Int = age {
            label.text = "You are \(age) welcome to the party "
        }
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
