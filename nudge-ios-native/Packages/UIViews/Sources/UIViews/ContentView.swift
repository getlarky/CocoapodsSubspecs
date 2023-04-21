//
//  ContentView.swift
//  UITemplate
//
//  Created by Dana Haukoos on 1/3/23.
//

import SwiftUI

public struct ContentView: View {
    @EnvironmentObject var viewModel: ViewModel

    public var vm: ViewModel
    
    public init() {
        vm = ViewModel()
    }
    
    public var body: some View {
        ZStack {
            Color.blue.edgesIgnoringSafeArea(.all)
            VStack {
                Text("Larky Test")
                    .font(.title)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ViewModel())
    }
}

    
