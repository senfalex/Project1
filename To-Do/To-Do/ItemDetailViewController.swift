//
//  ItemDetailViewController.swift
//  To-Do
//
//  Created by Alex Senf on 11/15/16.
//  Copyright © 2016 Alex Senf. All rights reserved.
//

import UIKit

class ItemDetailViewController: UIViewController {

   
   @IBOutlet weak var itemLabel: UILabel!
   
   
   @IBOutlet weak var itemDetail: UITextView!
   
   

   
   var selectedListIndex: Int!
   
   var selectedItemIndex: Int!
   
   var saveItem: Item!
   
    override func viewDidLoad() {
        super.viewDidLoad()

      
      itemLabel.text = lists[selectedListIndex].items[selectedItemIndex].title
      
      saveItem = lists[selectedListIndex].items[selectedItemIndex]

      
      itemLabel.text = saveItem.title
      itemDetail.text = saveItem.description
   }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   override func viewWillDisappear(_ animated: Bool) {
      saveItem.title = itemLabel.text!
      saveItem.description = itemDetail.text
   }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
