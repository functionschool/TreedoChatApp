//
//  Message.swift
//  Treedo
//
//  Created by Юрий Истомин on 25/06/2018.
//  Copyright © 2018 Yuri Istomin. All rights reserved.
//

import UIKit
import Firebase

class Message: NSObject {
  var fromId: String?
  var toId: String?
  var text: String?
  var timestamp: NSNumber?
  
  func chatPartnerId() -> String? {
    return fromId == Auth.auth().currentUser?.uid ? toId : fromId
  }
  
  init(withDictinary dict: [String: AnyObject]) {
    fromId = dict["fromId"] as? String
    toId = dict["toId"] as? String
    text = dict["text"] as? String
    timestamp = dict["timestamp"] as? NSNumber
  }
}
