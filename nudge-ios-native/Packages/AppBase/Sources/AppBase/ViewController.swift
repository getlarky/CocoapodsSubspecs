//
//  ViewController.swift
//  UITemplate
//
//  Created by Dana Haukoos on 1/4/23.
//

import UIKit
import Foundation
import nudgeBase
import EnvironmentUtils
import UIViews
import KeyValueStore

class ViewController: ViewModel {
    
    let isNudgeEnabledKey: String = "containerIsNudgeEnabled"
    var nudge: nudgeBase!

    init(_ orgLabel: String) {
        super.init()
    }
    override init() {
        super.init()
    }

}

extension ContentView {
        public init(_ orgLabel: String) {
            self.init()
            vm = ViewController(orgLabel)
        }
}

