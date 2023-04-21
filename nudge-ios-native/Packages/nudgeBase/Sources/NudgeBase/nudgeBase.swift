//
//  Constants.swift
//
//  Created by Evan Snyder on 8/1/18.
//

import Foundation
import EnvironmentUtils
import KeyValueStore


public class nudgeBase {

    public init() {
        print("Hello nudgeBase")
        EnvironmentUtils.printEUHello(greeting: "EnvironmentUtils")
        KeyValueStore.printKVHello(greeting: "KeyValueStore")
    }
    
}
