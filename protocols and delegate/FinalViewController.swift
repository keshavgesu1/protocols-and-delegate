//
//  FinalViewController.swift
//  protocols and delegate
//
//  Created by Keshav Raj Kashyap on 11/02/22.
//

import UIKit
protocol dataPass{
    func data(name:String,email:String,Phone:String,country:String)
}

class FinalViewController: UIViewController {

    
    @IBOutlet weak var countryTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var phonetextFieldf: UITextField!
    var delegate:dataPass?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btn(_ sender: Any) {
        delegate?.data(name: nameTextField.text ?? "", email: emailTextField.text ?? "", Phone: phonetextFieldf.text ?? "", country: countryTextField.text ?? "")
        self.navigationController?.popViewController(animated: true)
    }
    
    

}
