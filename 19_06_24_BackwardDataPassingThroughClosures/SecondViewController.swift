//
//  SecondViewController.swift
//  19_06_24_BackwardDataPassingThroughClosures
//
//  Created by Vishal Jagtap on 10/07/24.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    //way 2
    var passDataUsingClosure : ((User)->Void)?
    
    //way 1
//    var passData : ((String,String,String)->Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func btnBack(_ sender: Any) {
        
        //way 2
        guard let passData1 = passDataUsingClosure else { return }
        
        let extractedName = self.nameTextField.text
        let extractedLastName = self.lastNameTextField.text
        let extractedPassword = self.passwordTextField.text
        
        let user = User(name: extractedName!, lastName: extractedLastName!, password: extractedPassword!)
        
        passData1(user)
        
        
          //way 1
        
//        guard let passDataClosure = passData else { return }
//
//        let extractedName = self.nameTextField.text
//        let extractedLastName = self.lastNameTextField.text
//        let extractedPassword = self.passwordTextField.text
//
//        passDataClosure(extractedName!,extractedLastName!,extractedPassword!)
//
        self.navigationController?.popViewController(animated: true)
    }
}
