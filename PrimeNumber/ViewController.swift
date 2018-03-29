//
//  ViewController.swift
//  PrimeNumber
//
//  Created by 정순우 on 2018. 3. 29..
//  Copyright © 2018년 정순우. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var lblR: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBOutlet weak var txt: UITextField!
    @IBAction func btnC(_ sender: Any) {
        var num = Int(txt.text!)
        var pri = true
        
        if num == 1 {
            pri = false
        }
        
        if num != 2 && num != 1 {
            for i in 2 ..< num! {
                //print(i)
                if num! % i == 0{
                    pri = false
                }
            }
        }
        
        if pri == true {
            lblR.text = ("소수")
        } else {
            lblR.text = ("소수아님")
        }
        

    }
    @IBAction func btnR(_ sender: Any) {
        txt.text = ""
        lblR.text = ""
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

