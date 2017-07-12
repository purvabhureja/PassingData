//
//  DetailViewController.swift
//  PassingData
//
//  Created by Purva on 12/7/17.
//  Copyright © 2017 Purva. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var lblFirstName: UILabel!
    @IBOutlet weak var lblLastName: UILabel!
    @IBOutlet weak var lblAddress: UILabel!
    @IBOutlet weak var lblEmailid: UILabel!
    @IBOutlet weak var lblPhoneNumber: UILabel!

    var strFirstName:String = "";
    var strLastName:String = "";
    var strAddress:String = "";
    var strEmailId:String="";
    var strPhoneNumber:String="";

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.lblFirstName.text = strFirstName
        self.lblLastName.text = strLastName
        self.lblAddress.text = strAddress
        self.lblEmailid.text = strEmailId
        self.lblPhoneNumber.text = strPhoneNumber
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

