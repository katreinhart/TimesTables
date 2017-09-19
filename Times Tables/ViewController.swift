//
//  ViewController.swift
//  Times Tables
//
//  Created by Katherine Reinhart on 9/18/17.
//  Copyright © 2017 reinhart.digital. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var mySelection: Int = 0
    
    @IBOutlet var sliderValue: UISlider!
    @IBOutlet var sliderValueOutput: UILabel!
    
    @IBOutlet var table: UITableView!
    
    @IBAction func sliderChanged(_ sender: Any) {
        print(sliderValue.value)
        mySelection = Int(sliderValue.value)
        sliderValueOutput.text = String(mySelection)
        table.reloadData()
        
    }
    

    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "Cell")
        
        let cellContentString = String(indexPath.row) + " * " + String(mySelection) + " = "
        
        cell.textLabel?.text = cellContentString + String(mySelection * indexPath.row)
        
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

