//
//  ExploreItem.swift
//  LetsEat
//
//  Created by Remi Tobias on 26/12/2017.
//  Copyright © 2017 Remi Tobias. All rights reserved.
//

import Foundation

struct ExploreItem {
    var name: String?
    var image: String?
}

extension ExploreItem {
    init(dict:[String:AnyObject]) {
        self.name = dict["name"] as? String
        self.image = dict["image"] as? String
    }
}
