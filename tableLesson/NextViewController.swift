//
//  NextViewController.swift
//  tableLesson
//
//  Created by Sergey on 25.11.2022.
//

import UIKit

class NextViewController: UIViewController {
    
    
    @IBOutlet var userNameLabel: UILabel!
    
    // посредники для перехода nil label
    var userName: String!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        userNameLabel.text = userName
    }
    
    
    //выгрузка из памяти 
    deinit {
        print("closed")
    }
    
    
    
}
