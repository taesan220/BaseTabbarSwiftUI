//
//  ContentView.swift
//  BaseTabbarSwiftUI
//
//  Created by Taesan Kim on 15/8/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var tabBarSelection = 1
    
    var body: some View {
        ZStack {
            TabView(selection: $tabBarSelection) {
                HomeView()
                    .tag(1)
                ListView()
                    .tag(2)
                SettingView()
                    .tag(3)
            }
            
            // Custom TabView overlay
            .overlay(alignment: .bottom) {
                CustomTabView(tabSelection: $tabBarSelection)
                    .padding(.bottom, 10) // Add padding to avoid overlapping with safe area
                    .background(Color("colour-tabbar")) // Background color for the tab bar
                    .edgesIgnoringSafeArea(.bottom) // Ensure it extends to the bottom edge
            }
        }
    }
}
