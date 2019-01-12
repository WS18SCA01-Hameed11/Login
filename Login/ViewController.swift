//
//  ViewController.swift
//  Login
//
//  Created by Hameed Abdullah on 1/10/19.
//  Copyright © 2019 Hameed Abdullah. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var forgotUserNameButton: UIButton!
    @IBOutlet weak var forgotPasswordButton: UIButton!
    @IBOutlet weak var ageTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let detailsviewController: DetailsViewController = segue.destination as? DetailsViewController {
            if let text: String = usernameTextField.text, let age: Int = Int((ageTextField?.text)!)  {
                detailsviewController.navigationItem.title = text
                detailsviewController.age = age
            }
        }

        
//       guard let sender = sender as? UIButton else { return}
//
//        if sender == forgotPasswordButton {
//            segue.destination.navigationItem.title = "Forgot Password"
//        } else if sender == forgotUserNameButton {
//            segue.destination.navigationItem.title = "Forgot Username"
//        } else {
//            segue.destination.navigationItem.title = usernameTextField.text
//        }
    }
    
    @IBAction func forgotUserNameButtonTapped(_ sender: UIButton) {
        //performSegue(withIdentifier: "LoginSegue",  sender: forgotUserNameButton)
    }
    
    @IBAction func forgotPasswordButtonTapped(_ sender: UIButton) {
        //performSegue(withIdentifier: "LoginSegue", sender: forgotPasswordButton)
    }
    
    
    @IBAction func loginButtonPressed(_ sender: UIButton) {

//        guard let name: String = usernameTextField.text else {
//            return
//        }
        guard let age: Int = Int((ageTextField?.text)!) else { return}
        
        if age >= 18 {
            performSegue(withIdentifier: "LoginSegue", sender: loginButtonPressed)
        } else {
            
            let alert: UIAlertController = UIAlertController(title: " ", message: "You Must be 18 or older to proceed", preferredStyle: .actionSheet)
            
            let action: UIAlertAction = UIAlertAction(title: "Cancel", style: .destructive, handler: nil)
            
            alert.addAction(action)
            present(alert, animated: true, completion: nil)
        }
        
    }
    
    
    
}

