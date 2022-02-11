//
//  ViewController.swift
//  protocols and delegate
//
//  Created by Keshav Raj Kashyap on 11/02/22.
//

import UIKit

class InitialViewController: UIViewController, dataPass {
    
    
    @IBOutlet weak var countryTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var phonetextFieldf: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btn(_ sender: Any) {
        if let nextVc = self.storyboard?.instantiateViewController(withIdentifier: "FinalViewController")as? FinalViewController{
            nextVc.delegate = self
            self.navigationController?.pushViewController(nextVc, animated: true)
        }        
    }
    func data(name: String, email: String, Phone: String, country: String) {
        nameTextField.text = name
        emailTextField.text = email
        phonetextFieldf.text = Phone
        countryTextField.text = country
    }
}

