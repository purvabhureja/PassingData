//
//  ViewController.swift
//  PassingData
//
//  Created by Purva on 12/7/17.
//  Copyright © 2017 Purva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var txtFirstName: UITextField!
    @IBOutlet weak var txtLastName: UITextField!
    @IBOutlet weak var txtAddress: UITextField!
    @IBOutlet weak var txtEmailId: UITextField!
    @IBOutlet weak var txtPhoneNumber: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnSubmitClick(_ sender: Any) {
        //Validation
        if ((self.txtFirstName.text?.isEmpty)! || (self.txtLastName.text?.isEmpty)! || (self.txtAddress.text?.isEmpty)! || (self.txtPhoneNumber.text?.isEmpty)! || (self.txtEmailId.text?.isEmpty)!) {
            let alert = UIAlertController(title: "Error", message: "Fill all the details", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        else
        {
            let detailViewController = self.storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
            detailViewController.strFirstName = self.txtFirstName.text!
            detailViewController.strLastName = self.txtLastName.text!
            detailViewController.strAddress = self.txtAddress.text!
            detailViewController.strEmailId = self.txtEmailId.text!
            detailViewController.strPhoneNumber = self.txtPhoneNumber.text!
            self.navigationController?.pushViewController(detailViewController, animated: true)
        }
    }
}

