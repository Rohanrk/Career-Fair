//
//  Company.swift
//  Career Fair
//
//  Created by Rohan Rk on 2/12/17.
//  Copyright © 2017 Rohan Rk. All rights reserved.
//

import Foundation
public class Company {
    
    var name: String
    var description: String
    var url: NSURL
    var table: Int
    
    init(name: String, description: String, url: NSURL, table: Int) {
        self.name = name
        self.description = description
        self.url = url
        self.table = table
    }
}
