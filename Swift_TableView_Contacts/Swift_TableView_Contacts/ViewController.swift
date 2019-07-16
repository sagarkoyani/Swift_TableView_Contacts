//
//  ViewController.swift
//  Swift_TableView_Contacts
//
//  Created by Apple on 17/05/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var tableview: UITableView!
    
    var btn:UIButton!
    
    let names=["Amy","Blue","White"]
    
    //let twoDimensionalArray=["A":["Amy","Apple","Ana","Akhrot","Anjir","Auckland"],"B":["Boy","Bath","Bunty","Bed","Bottle","Bag"],"C":["Cat","Cow","Coin","CrocoDial","Carpanter","Car"],"D":["Dog","Donky","Deaseas","Dirty","DJ","Diku"]]

    var twoDimensionalArray=[   ["Amy","Apple","Ana","Akhrot","Anjir","Auckland"],["Boy","Bath","Bunty","Bed","Bottle","Bag"],["Cat","Cow","Coin","CrocoDial","Carpanter","Car"],["Dog","Donky","Deaseas","Dirty","DJ","Diku"]]
    
    let sectionArray=["A","B","C","D"]
    var showIndexPaths = false
    
@IBAction func btnReload(_ sender: UIButton) {
    
    print("Attempting reload animation of indexpaths ...")
    
       var indexPathToReload=[IndexPath]()
    
for section in twoDimensionalArray.indices{

for row in twoDimensionalArray[section].indices
{
        print(section,row)
        let indexpath = IndexPath(row: row, section: section)
        indexPathToReload.append(indexpath)
}
    }
       
  tableview.reloadRows(at: indexPathToReload, with: .right)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableview.delegate=self;
        tableview.dataSource=self;
       
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
       btn=UIButton(type: .system)
        btn.setTitle("Close", for: .normal)
        //137,218,89
        btn.setTitleColor(UIColor.init(red: 137.0/255.0, green: 218.0/255.0, blue: 89.0/255.0, alpha: 1.0), for: .normal)
        btn.titleLabel?.font=UIFont.boldSystemFont(ofSize: 25.0)
        btn.backgroundColor=UIColor.brown
        btn.tag=section
        btn.addTarget(self, action: #selector(handleExpand), for: .touchUpInside)
        return btn
        
        /*  let lbl=UILabel()
        lbl.text=sectionArray[section]
        lbl.backgroundColor=UIColor.red
        lbl.textAlignment = .center
        lbl.layer.cornerRadius=15.0
        lbl.layer.masksToBounds=true
        return lbl */
    }
    
    @objc func handleExpand(button:UIButton){
        print("Trying to expand collaspe sections")
        print("buttonTag:\(button.tag)")
        
        //FOR HIDE THE SECTION ROWS WE WILL DELETE THE ROWS FROM THE SECTION.
        
        var indexPaths=[IndexPath]()
        for row in twoDimensionalArray[button.tag].indices {
            
            let indexpath=IndexPath(row: row, section: button.tag)
            indexPaths.append(indexpath)
        }
       button
        .setTitle("Open", for: .normal)
        twoDimensionalArray[button.tag].removeAll()
        tableview.deleteRows(at: indexPaths, with: .fade)
        
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 35
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return twoDimensionalArray.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return twoDimensionalArray[section].count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell=tableView.dequeueReusableCell(withIdentifier:"cell", for: indexPath)
        var lbl:UILabel=cell.viewWithTag(101) as! UILabel
        lbl.text=twoDimensionalArray[indexPath.section][indexPath.row]// + "          Section:\(indexPath.section) Row:\(indexPath.row)"
        return cell
    }
    
}

