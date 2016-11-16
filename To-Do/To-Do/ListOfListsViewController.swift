//
//  ViewController.swift
//  To-Do
//
//  Created by Alex Senf on 11/15/16.
//  Copyright © 2016 Alex Senf. All rights reserved.
//

import UIKit

class ListOfListsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

   
   @IBOutlet weak var ListOfListsTableView: UITableView!
   
   @IBOutlet weak var newListTextOutlet: UITextField!
   
   @IBAction func addNewListAction(_ sender: UIButton) {
   
   let newList = List(title: newListTextOutlet.text!)
      
      lists.append(newList)
      ListOfListsTableView.reloadData()
      
      newListTextOutlet.resignFirstResponder()
   }
   
   
   
   func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      return lists.count
   }
   
   func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      let listOfListsCell = tableView.dequeueReusableCell(withIdentifier: "listOfListsCell") as! ListOfListsTableViewCell
      listOfListsCell.listOfListsLabel.text = lists[indexPath.row].title
      return listOfListsCell
   }
   
   func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
      if editingStyle == .delete {
         lists.remove(at: indexPath.row)
         ListOfListsTableView.reloadData()
      }
   }
   
   override func viewDidLoad() {
      super.viewDidLoad()
   }

   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      let listOfItemsViewController = segue.destination as! ListOfItemsViewController
      listOfItemsViewController.selectedListIndex = ListOfListsTableView.indexPathForSelectedRow?.row
   }

}

