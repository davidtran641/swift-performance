//
//  Item.swift
//  SwiftPerformance
//
//  Created by Tran Duc on 10/24/19.
//  Copyright © 2019 David. All rights reserved.
//

import Foundation

protocol ItemProtocol {
  func toStringProtocol() -> String
}

final class ItemClass {
  var id: Int
  var title: String
  init(id: Int, title: String) {
    self.id = id
    self.title = title
  }

  func toString() -> String {
    return "\(title)"
  }

  func getIdString() -> String {
    return "\(id)"
  }

}

extension ItemClass {
  func toStringExtension() -> String {
    return "\(title)"
  }
}

extension ItemClass: ItemProtocol {
  func toStringProtocol() -> String {
    return "\(title)"
  }
}

struct ItemStruct {
  var id: Int
  var title: String

  init(id: Int, title: String) {
    self.id = id
    self.title = title
  }

  func toString() -> String {
    return "\(title)"
  }

  func getIdString() -> String {
    return "\(id)"
  }
}

extension ItemStruct {
  func toStringExtension() -> String {
    return "\(title)"
  }
}

extension ItemStruct: ItemProtocol {
  func toStringProtocol() -> String {
    return "\(title)"
  }
}

struct ItemGenericStruct<T> {
  var id: T
  var title: String
  init(id: T, title: String) {
    self.id = id
    self.title = title
  }

  func toString() -> String {
    return "\(title)"
  }

  func getIdString() -> String {
    return "\(id)"
  }
}

class ItemGenericClass<T> {
  var id: T
  var title: String
  init(id: T, title: String) {
    self.id = id
    self.title = title
  }

  func toString() -> String {
    return "\(title)"
  }

  func getIdString() -> String {
    return "\(id)"
  }
}


