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
    @State private var isMenuVisible: Bool = false // State to track the menu visibility
    
    init() {
        let navAppearance = UINavigationBarAppearance()
        navAppearance.backgroundColor = UIColor(Color("colour-navigationbar"))
        navAppearance.titleTextAttributes = [.foregroundColor: UIColor(Color("colour-black"))]
        navAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor(Color("colour-black"))]
        UINavigationBar.appearance().standardAppearance = navAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = navAppearance
    }
    
    var body: some View {
        ZStack {
            // Main NavigationView content
            NavigationView {
                ZStack {
                    // Main content with TabView
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
                    VStack {
                        Spacer() // Ensure the TabView is always at the bottom
                        CustomTabView(tabSelection: $tabBarSelection)
                            .padding(.bottom, 10)
                            .background(Color("colour-tabbar"))
                    }
                }
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    CustomNavigationBar(title: $navBarTitle,
                                        menuAction: {
                                            withAnimation {
                                                isMenuVisible.toggle()
                                            }
                                        },
                                        searchAction: { showAlertWithMessage("Search tapped") })
                }
                .alert(isPresented: $showAlert) {
                    Alert(title: Text("Action"), message: Text(alertMessage), dismissButton: .default(Text("OK")))
                }
            }
            .background(Color.blue.opacity(0.2))
            .accentColor(Color("colour-black")) // 네비게이션 바 백버튼 색 변경

            // Side menu and dimmed background outside of NavigationView
            if isMenuVisible {
                // Dimmed background
                Color.black.opacity(0.4)
                    .edgesIgnoringSafeArea(.all)
                    .onTapGesture {
                        withAnimation(.easeInOut(duration: 0.3)) { // 애니메이션 속도 조정 (0.3초)
                            isMenuVisible = false // 배경을 클릭하면 메뉴 닫기
                        }
                    }
                    .zIndex(1)
                
                // 사이드 메뉴
                SideMenuView(tabBarSelection: $tabBarSelection, isMenuVisible: $isMenuVisible)
                    .frame(width: UIScreen.main.bounds.width * 0.7)
                    .background(Color("colour-navigationbar"))
                    .offset(x: isMenuVisible ? 0 - ((UIScreen.main.bounds.width  * 0.3) / 2) : -UIScreen.main.bounds.width * 0.7) // Offsets the menu off-screen
                    .animation(.easeInOut(duration: 0.3), value: isMenuVisible) // 애니메이션 속도 조정 (0.3초)
                    .transition(.move(edge: .leading))
                    .zIndex(2) // Ensure the SideMenu is above everything
                
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
