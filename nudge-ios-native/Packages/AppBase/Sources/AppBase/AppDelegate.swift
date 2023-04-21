//
//  AppDelegate.swift
//  UITemplate
//
//  Created by Dana Haukoos on 1/4/23.
//

import UIKit
import nudgeBase

public class AppDelegate: NSObject, UIApplicationDelegate {
    
    open func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        print("App didFinishLaunching")
        // Override point for customization after application launch.
        
        nudgeBase.init()
        
        print(" -------- App didFinishLaunching returning --------------- ")
        return true
    }
}
