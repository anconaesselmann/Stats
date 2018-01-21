//  Created by Axel Ancona Esselmann on 1/20/18.
//  Copyright © 2018 Axel Ancona Esselmann. All rights reserved.
//

import Foundation

open class Stats {
    static func median(_ array: [Double]) -> Double? {
        guard !array.isEmpty else { return nil }
        let sorted = array.sorted()
        print(sorted)
        if sorted.count % 2 == 0 {
            let upper = Int(ceil(Double(sorted.count) / 2.0))
            let lower = Int(floor(Double(sorted.count) / 2.0))
            return (sorted[upper] + sorted[lower]) / 2.0
        } else {
            return sorted[Int(floor(Double(sorted.count) / 2.0) + 1)]
        }
    }
    
    static func average(_ array: [Double]) -> Double? {
        guard !array.isEmpty, let sum = self.sum(array) else { return nil }
        return sum / Double(array.count)
    }
    
    static func sum(_ array: [Double]) -> Double? {
        guard !array.isEmpty else { return nil }
        return array.reduce(0, +)
    }
    
}
