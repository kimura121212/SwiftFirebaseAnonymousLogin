//
//  ViewController.swift
//  Swift5FirebaseAnonymousLogin
//
//  Created by 木村友紀 on 2020/05/01.
//  Copyright © 2020 木村友紀. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func login(_ sender: Any) {
        Auth.auth().signInAnonymously { (authResult, error) in
            let user = authResult?.user
            print(user)
            
            let inputVC = self.storyboard?.instantiateViewController(identifier: "inputVC") as! InputViewController
            
            self.navigationController?.pushViewController(inputVC, animated: true)
            
        }
    }
    

}

