//
//  LarkyProdApp.swift
//  LarkyProd
//
//  Created by Dana Haukoos on 1/11/23.
//

import SwiftUI
import AppBase
import UIViews

@main
struct UITemplateApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            ContentView("larkyProd")
        }
    }
}
