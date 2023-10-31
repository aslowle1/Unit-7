//
//  JSONConverter.swift
//  Unit 7
//
//  Created by Andros Slowley on 10/24/23.
//

import Foundation


class JSONConverter {
    static func getData() -> Data? {
        guard let path = Bundle.main.url(forResource: "MyJSON", withExtension: ".json")?.absoluteURL else {
            return nil
        }
        
        guard let jsonData = NSData.init(contentsOf: path) else {
            return nil
        }
        
        return jsonData as Data
    }
}
