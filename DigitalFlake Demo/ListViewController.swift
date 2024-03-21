//
//  ListViewController.swift
//  DigitalFlake Demo
//
//  Created by Prajyot Patle on 21/03/24.
//

import UIKit

class ListViewController: UIViewController {
    
    static let fruits = ["Mango", "Banana", "Apple", "Guava", "Strawberry", "Orange", "Peach", "Lichi", "Pomegranate", "Green Apple"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func btnTouched(_ sender: UIButton) {
        let fruit = ListViewController.fruits[sender.tag]
        let alert =  UIAlertController.init(title: fruit, message: fruit, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Dismiss", style: .cancel, handler: nil))
        present(alert, animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension ListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "alertcell") as! TableViewCell
        
        cell.btnItem.tag = indexPath.row
        cell.btnItem.setTitle(ListViewController.fruits[indexPath.row], for: .normal)
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ListViewController.fruits.count
    }
    
}
