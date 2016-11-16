//
//  ListOfItemsViewController.swift
//  To-Do
//
//  Created by Alex Senf on 11/15/16.
//  Copyright © 2016 Alex Senf. All rights reserved.
//

import UIKit

class ListOfItemsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
   
   
   @IBOutlet weak var ListOfItemsViewController: UITableView!
   
   @IBOutlet weak var newItemTextOutlet: UITextField!
   
   var selectedListIndex: Int!
   
   @IBAction func addNewItemAction(_ sender: UIButton) {
   
   let newTask = Item(title: newItemTextOutlet.text!)
   
   lists[selectedListIndex].items.append(newTask)
      ListOfItemsViewController.reloadData()
      
      newItemTextOutlet.resignFirstResponder()
   
   }
   
   
   
   func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      return lists[selectedListIndex].items.count
   }
   
   func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      let listOfItemsCell = tableView.dequeueReusableCell(withIdentifier: "listOfItemsCell") as! ListOfItemsTableViewCell
      
      listOfItemsCell.itemInList.text = lists[selectedListIndex].items[indexPath.row].title

      return listOfItemsCell
   }

   func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
      if editingStyle == .delete {
         lists[selectedListIndex].items.remove(at: indexPath.row)
         ListOfItemsViewController.reloadData()
      }
   }
   
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      let itemDetail = segue.destination as! ItemDetailViewController
      itemDetail.selectedItemIndex = ListOfItemsViewController.indexPathForSelectedRow?.row
      itemDetail.selectedListIndex = selectedListIndex
      
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
   }

}
