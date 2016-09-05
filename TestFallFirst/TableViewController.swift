//
//  ViewController.swift
//  TestFallFirst
//
//  Created by Alexsander Khitev on 9/5/16.
//  Copyright © 2016 Alexsander Khitev. All rights reserved.
//

import UIKit


class TableViewController: UITableViewController {

    // MARK: - Controllers 
    private let numberConverter = NumberConverter()
    
    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let value = numberConverter.convert(100)
        print("TableViewController", value)
    }


}

