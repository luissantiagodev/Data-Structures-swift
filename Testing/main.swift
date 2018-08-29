//
//  main.swift
//  Testing
//
//  Created by Legendary Wicho on 8/29/18.
//  Copyright © 2018 Luis Santiago. All rights reserved.
//

var list = LinkedList(head: nil)
list.append(Node(value: 5))
list.append(Node(value: 9))
var item = list.getNode(atPosition: 1)
print(item?.value)

