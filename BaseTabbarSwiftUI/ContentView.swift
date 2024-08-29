//
//  ContentView.swift
//  BaseTabbarSwiftUI
//
//  Created by Taesan Kim on 15/8/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var tabBarSelection = 1
    @State private var navBarTitle = "Home" // Default title
    @State private var showAlert = false
    @State private var alertMessage = ""
    
    init() {
        let navAppearance = UINavigationBarAppearance()
        navAppearance.backgroundColor = UIColor(Color("colour-navigationbar"))
        navAppearance.titleTextAttributes = [.foregroundColor: UIColor(Color("colour-black"))]
        navAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor(Color("colour-black"))]
        UINavigationBar.appearance().standardAppearance = navAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = navAppearance
    }
    
    var body: some View {
        NavigationView {
            ZStack {
                TabView(selection: $tabBarSelection) {
                    HomeView()
                        .tag(1)
                        .onAppear {
                            navBarTitle = "Home"
                        }
                    ListView()
                        .tag(2)
                        .onAppear {
                            navBarTitle = "Item List"
                        }
                    SettingView()
                        .tag(3)
                        .onAppear {
                            navBarTitle = "Setting"
                        }
                }
                
                // Custom TabView overlay
                .overlay(alignment: .bottom) {
                    CustomTabView(tabSelection: $tabBarSelection)
                        .padding(.bottom, 10) // Add padding to avoid overlapping with safe area
                        .background(Color("colour-tabbar")) // Background color for the tab bar
                        .edgesIgnoringSafeArea(.bottom) // Ensure it extends to the bottom edge
                }
            }
            .navigationBarTitleDisplayMode(.inline) // Keep the title centered
            .toolbar {
                CustomNavigationBar(title: $navBarTitle,
                                    menuAction: { showAlertWithMessage("Menu tapped") },
                                    searchAction: { showAlertWithMessage("Search tapped") })
            }
            .alert(isPresented: $showAlert) {
                Alert(title: Text("Action"), message: Text(alertMessage), dismissButton: .default(Text("OK")))
            }
        }
    }
    
    private func showAlertWithMessage(_ message: String) {
        alertMessage = message
        showAlert = true
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
