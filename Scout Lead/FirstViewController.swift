//
//  FirstViewController.swift
//  Scout Lead
//
//  Created by Sankalp Agrawal on 3/12/16.
//  Copyright © 2016 Sankalp Agrawal. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet var matchNo: UITextField!
    @IBOutlet var alliance: UISegmentedControl!
    @IBOutlet var T3: UITextField!
    @IBOutlet var T2: UITextField!
    @IBOutlet var T1: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        T1.keyboardType = UIKeyboardType.NumberPad
        T2.keyboardType = UIKeyboardType.NumberPad
        T3.keyboardType = UIKeyboardType.NumberPad
        matchNo.keyboardType = UIKeyboardType.NumberPad
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "dismissKeyboard")
        view.addGestureRecognizer(tap)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendData(sender: AnyObject) {
        let data = "\(T1.text!)|\(T2.text!)|\(T3.text!)|\(matchNo.text!)|\(alliance.selectedSegmentIndex)"
        
        let controller = UIActivityViewController(activityItems: [data], applicationActivities: nil)
        controller.excludedActivityTypes = [UIActivityTypePostToFacebook, UIActivityTypePostToTwitter, UIActivityTypePostToWeibo, UIActivityTypePrint, UIActivityTypeCopyToPasteboard, UIActivityTypeAssignToContact, UIActivityTypeSaveToCameraRoll, UIActivityTypePostToFlickr, UIActivityTypePostToTencentWeibo, UIActivityTypeMail]
        
        self.presentViewController(controller, animated: true, completion: nil)
    }
    
    func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }

}

