//
//  ViewController.swift
//  Registration Sampkle
//
//  Created by Pulkit Vora on 02/04/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtConfirmPassword: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var txtSurName: UITextField!
    @IBOutlet weak var txtName: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func submitForm(_ sender: UIButton) {
        if isValidInput(){
            
        }else{
            print("Validation failed")
        }
    }
    
    //MARK -
    private func isValidInput()->Bool{
        var flagValidatedInput = false
        
        //Blank Check
        if !txtName.text!.isEmpty{
            if !txtSurName.text!.isEmpty{
                if !txtPassword.text!.isEmpty{
                    if !txtConfirmPassword.text!.isEmpty{
                        
                        //String comparison
                        if txtPassword.text! == txtConfirmPassword.text!{
                            flagValidatedInput = true
                        }
                    }
                }
            }
        }
        
        return flagValidatedInput
    }
    
}

