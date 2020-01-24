//
//  SecondViewController.swift
//  DataTransferThroughAppDelegate
//
//  Created by Marni Anuradha on 11/26/19.
//  Copyright © 2019 Marni Anuradha. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var nameLbl: UILabel!
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var mobileNumberLbl: UILabel!
    
    @IBOutlet weak var mobileNumberTextField: UITextField!
    var appDelegateRef:AppDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        appDelegateRef = UIApplication.shared.delegate as! AppDelegate
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onSubmitBtnTap(_ sender: UIButton) {
        var value = [String:String]()
        
        value["name"] = nameTextField.text!
        value["mobile"] = mobileNumberTextField.text!
        appDelegateRef.dataDict.append(value)
        dismiss(animated: true, completion: nil)
        
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
