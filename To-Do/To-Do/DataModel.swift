//
//  DataModel.swift
//  To-Do
//
//  Created by Alex Senf on 11/15/16.
//  Copyright © 2016 Alex Senf. All rights reserved.
//

import Foundation



var lists = [List]()


class List {
   var title: String
   var items = [Item]()
   init(title: String) {
      self.title = title
   }
   

}

class Item {
   var title: String
   var description = ""
   init(title: String) {
      self.title = title
   }
   
}



