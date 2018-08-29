//
//  LinkedList.swift
//  Testing
//
//  Created by Legendary Wicho on 8/29/18.
//  Copyright © 2018 Luis Santiago. All rights reserved.
//

class LinkedList {
    var head : Node?
    init(head : Node?) {
        self.head = head
    }
    
    func append(_ node : Node){
        guard head != nil else {
            head = node
            return
        }
        let temp = head
        node.next = temp
        head = node
    }
    
    
    func showAllNodes(){
        var currentNode = head
        while let node = currentNode{
            node.displayNode()
            currentNode = node.next
        }
    }
    
    func getNode(atPosition : Int)-> Node?{
        //Return nil if the position isn't found
        //Check if the there is something
        var position = 0;
        var current : Node? = nil;
        
        guard head != nil else{
            print("The list is empty")
            return nil;
        }
        
        if(atPosition == position){
            return head
        }
        
        current = head
        while let nodeToFind = current{
            if(position == atPosition){
                current = current?.next
                return nodeToFind
            }
            position += 1
            current = current?.next
        }
        return current
    }
    
    func insertNodeAt(_ at : Int) -> Node?{
        return nil
    }
    
}


class Node {
    var value : Int
    var next : Node?
    init(value : Int){
        self.value = value
    }
    
    func displayNode(){
        print("Displaying self node : \(self.value)")
    }
}


