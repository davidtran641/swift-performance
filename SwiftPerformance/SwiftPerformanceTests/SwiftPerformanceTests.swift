//
//  SwiftPerformanceTests.swift
//  SwiftPerformanceTests
//
//  Created by Tran Duc on 10/24/19.
//  Copyright © 2019 David. All rights reserved.
//

import XCTest
@testable import SwiftPerformance

class SwiftPerformanceTests: XCTestCase {
  var count: Int = 1000 * 1000

  // MARK - Initialization
  func testPerformanceStructInit() {
    self.measure {
      for i in 0..<count {
        _ = ItemStruct(id: i, title: "title")
      }
    }
  }

  func testPerformanceClassInit() {
    self.measure {
      for i in 0..<count {
        _ = ItemClass(id: i, title: "title")
      }
    }
  }

  func testPerformanceGenericStructInit() {
    self.measure {
      for i in 0..<count {
        _ = ItemGenericStruct<Int>(id: i, title: "title")
      }
    }
  }

  func testPerformanceGenericClassInit() {
    self.measure {
      for i in 0..<count {
        _ = ItemGenericClass<Int>(id: i, title: "title")
      }
    }
  }

  // MARK: - Copy
  func testPerformanceStructAssign() {
    let item = ItemStruct(id: 0, title: "title")
    var list: [ItemStruct] = []
    self.measure {
      for _ in 0..<count {
        list.append(item)
      }
    }
  }

  func testPerformanceAssign() {
    let item = ItemClass(id: 0, title: "title")
    var list: [ItemClass] = []
    self.measure {
      for _ in 0..<count {
        list.append(item)
      }
    }
  }

  // MARK: - Function call
  func testPerformanceStructCallFunc() {
    let item = ItemStruct(id: 0, title: "title")
    self.measure {
      for _ in 0..<count {
        _ = item.toString()
      }
    }
  }

  func testPerformanceClassCallFunc() {
    let item = ItemClass(id: 0, title: "title")

    self.measure {
      for _ in 0..<count {
        _ = item.toString()
      }
    }
  }

  func testPerformanceGenericStructCallFunc() {
    let item = ItemGenericStruct(id: 0, title: "title")
    self.measure {
      for _ in 0..<count {
        _ = item.toString()
      }
    }
  }

  func testPerformanceGenericClassCallFunc() {
    let item = ItemGenericClass(id: 0, title: "title")
    self.measure {
      for _ in 0..<count {
        _ = item.toString()
      }
    }
  }

  func testPerformanceStructCallExtension() {
    let item = ItemStruct(id: 0, title: "title")
    self.measure {
      for _ in 0..<count {
        _ = item.toStringExtension()
      }
    }
  }

  func testPerformanceClassCallExtension() {
    let item = ItemClass(id: 0, title: "title")
    self.measure {
      for _ in 0..<count {
        _ = item.toStringExtension()
      }
    }
  }

  func testPerformanceStructCallProtocol() {
    let item = ItemStruct(id: 0, title: "title")
    self.measure {
      for _ in 0..<count {
        _ = item.toStringProtocol()
      }
    }
  }

  func testPerformanceClassCallProtocol() {
    let item = ItemClass(id: 0, title: "title")
    self.measure {
      for _ in 0..<count {
        _ = item.toStringProtocol()
      }
    }
  }

  // MARK: - Array
  func testArrayOfItemsStruct() {
    self.measure {
      var list: [ItemStruct] = []
      for i in 0..<count {
        list.append(ItemStruct(id: i, title: "title"))
      }
    }
  }

  func testArrayOfItemsClass() {
    self.measure {
      var list: [ItemClass] = []
      for i in 0..<count {
        list.append(ItemClass(id: i, title: "title"))
      }
    }
  }

  func testArrayOfItemsStructToString() {
    var list: [ItemStruct] = []
    for i in 0..<count {
      list.append(ItemStruct(id: i, title: "title"))
    }

    self.measure {
      _ = list.map { $0.toString() }
    }
  }

  func testArrayOfItemsClassToString() {
    var list: [ItemClass] = []
    for i in 0..<count {
      list.append(ItemClass(id: i, title: "title"))
    }

    self.measure {
      _ = list.map { $0.toString() }
    }
  }

  // MARK: - Generic function
  func testPerformanceStructGetIdString() {
    let item = ItemStruct(id: 0, title: "title")
    self.measure {
      for _ in 0..<count {
        _ = item.getIdString()
      }
    }
  }

  func testPerformanceGenericStructGetIdString() {
    let item = ItemGenericStruct(id: 0, title: "title")
    self.measure {
      for _ in 0..<count {
        _ = item.getIdString()
      }
    }
  }

  func testPerformanceClassGetIdString() {
    let item = ItemClass(id: 0, title: "title")
    self.measure {
      for _ in 0..<count {
        _ = item.getIdString()
      }
    }
  }

  func testPerformanceGenericClassGetIdString() {
    let item = ItemGenericClass(id: 0, title: "title")
    self.measure {
      for _ in 0..<count {
        _ = item.getIdString()
      }
    }
  }

}
