//
//  ViewController.swift
//  TestFallFirst
//
//  Created by Alexsander Khitev on 9/5/16.
//  Copyright © 2016 Alexsander Khitev. All rights reserved.
//

import UIKit


class TableViewController: UITableViewController {
    
    // MARK: - Data
    private var digitArray = [Int]()

    // MARK: - Controllers 
    private let numberConverter = NumberConverter()
    
    // MARK: - TableView identifiers 
    private let tableViewCellReuseIdentifier = "tableViewCellReuseIdentifier"
    
    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        // table 
        registerCells()
        // settigns
        setupSettings()
        // data
        createArray()
    }


    // MARK: - Settings functions 
    private func setupSettings() {
        definesPresentationContext = true
    }
    
    // MARK: - Functions 
    private func createArray() {
        while digitArray.count != 100 {
            let digit = randomInt(0, max: 100)
            digitArray.append(digit)
        }
        
        print("digit array count", digitArray.count, digitArray)
    }
    
    private func randomInt(min: Int, max: Int) -> Int {
        return min + Int(arc4random_uniform(UInt32(max - min + 1)))
    }
    
    // MARK: - TableView functions
    private func registerCells() {
        tableView.registerClass(TableViewCell.self, forCellReuseIdentifier: tableViewCellReuseIdentifier)
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1 ?? 0
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return digitArray.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(tableViewCellReuseIdentifier, forIndexPath: indexPath) as! TableViewCell
        let digit = digitArray[indexPath.row]
        cell.textLabel?.text = numberConverter.convert(digit)
        return cell
    }
}

