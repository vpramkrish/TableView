//
//  ViewController.swift
//  SampleApp
//
//  Created by Ram on 18/07/17.
//  Copyright © 2017 Ram. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate,UICollectionViewDataSource,UICollectionViewDelegate {

    
    var catExpense = ["Revenue","Expense","Savings"]
    var catAmount = ["$890.30","$267.89","$138"]
    var catPercent = ["0.60%","0.50%","0.50%"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("cank")
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return catExpense.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CollectionViewCell
       
        if (indexPath.row == 0) {
        cell.backgroundColor = UIColor.green
        cell.expenses.text = catExpense[indexPath.row]
        cell.amounts.text = catAmount[indexPath.row]
        cell.percent.text = catPercent[indexPath.row]
        return cell
        }
        else if (indexPath.row == 1) {
            cell.backgroundColor = UIColor.blue
            cell.expenses.text = catExpense[indexPath.row]
            cell.amounts.text = catAmount[indexPath.row]
            cell.percent.text = catPercent[indexPath.row]
            return cell
        }
        else if (indexPath.row == 2) {
            cell.backgroundColor = UIColor.gray
            cell.expenses.text = catExpense[indexPath.row]
            cell.amounts.text = catAmount[indexPath.row]
            cell.percent.text = catPercent[indexPath.row]
            return cell
        }

        return cell
}
    var tableArray = ["iTunes Gift Card #22338","Self Deposit ING BANK","PayPal Transfer","Self Deposit ING BANK"]
    var tableDate = ["Today, 13:45","July 23, 2016","July 23, 2016","January 18, 2016"]
    var tableAmt = ["-$198.25","-$260.00","$140.20","+$160.00"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableArray.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableCell", for: indexPath) as! TableViewCell
        cell.itemLbl.text = tableArray[indexPath.row]
        cell.dateLbl.text = tableDate[indexPath.row]
        cell.amtLbl.text = tableAmt[indexPath.row]
        return cell
    }
}
