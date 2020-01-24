//
//  ViewController.swift
//  DataTransferThroughAppDelegate
//
//  Created by Marni Anuradha on 11/26/19.
//  Copyright © 2019 Marni Anuradha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
   // @IBOutlet weak var contactsLabel: UILabel!
    @IBOutlet weak var contactsLabel: UILabel!
   
    var appDelegateRef:AppDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        contactsLabel.numberOfLines = 0
        appDelegateRef=UIApplication.shared.delegate as! AppDelegate
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func addContactBtnTap(_ sender: UIButton) {
        var secondVC = storyboard?.instantiateViewController(withIdentifier: "SecondVC") as! SecondViewController
     
        present(secondVC, animated: true, completion: nil)
    }
    override func viewWillAppear(_ animated: Bool) {
        
        var completeString = String()
        for x in appDelegateRef.dataDict
        {
            completeString += x["name"]! + "\n" + x["mobile"]! + "\n\n"
        }
        
        contactsLabel.text! = completeString
    }
    
}

