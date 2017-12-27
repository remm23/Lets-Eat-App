//
//  ExploreDataManager.swift
//  LetsEat
//
//  Created by Remi Tobias on 27/12/2017.
//  Copyright © 2017 Remi Tobias. All rights reserved.
//

import Foundation

class ExploreDataManager {
    
    fileprivate var items:[ExploreItem] = []
    
    func fetch() {
        for data in loadData() {
            items.append(ExploreItem(dict: data))
        }
    }
    
    func numberOfItems() -> Int {
        // for updating the total number of items in collection view
        return items.count
    }
    
    func explore(at index:IndexPath) -> ExploreItem {
        //used to pass data to the cell (name and image)
        return items[index.item]
    }
    
    fileprivate func loadData() -> [[String:AnyObject]] {
        guard let path = Bundle.main.path(forResource: "ExploreData", ofType: "plist"), let items = NSArray(contentsOfFile: path) else {
            return [[:]]
        }
        return items as! [[String:AnyObject]]
    }
}
