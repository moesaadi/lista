//
//  Category.swift
//  lista
//
//  Created by Moe Saadi on 05/05/2018.
//  Copyright © 2018 Moe Saadi. All rights reserved.
//

import Foundation
import RealmSwift

class Category: Object {
    @objc dynamic var name: String = ""
    let items = List<Item>()
}
