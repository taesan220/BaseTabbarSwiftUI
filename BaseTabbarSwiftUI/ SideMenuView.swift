//
//  MenuView.swift
//  BaseTabbarSwiftUI
//
//  Created by Taesan Kim on 29/8/2024.
//

import SwiftUI

struct SideMenuView: View {
    @Binding var tabBarSelection: Int  // 탭 선택 상태를 바인딩
    @Binding var isMenuVisible: Bool   // 메뉴 표시 상태를 바인딩
    
    var body: some View {
        VStack {
            Spacer()
                .frame(height: UIApplication.shared.windows.first?.safeAreaInsets.top)
            
            // 각 메뉴 항목을 클릭하면 해당 탭으로 이동하고 메뉴 닫기
            Button(action: {
                tabBarSelection = 1 // Home 탭으로 이동
                withAnimation(.easeInOut(duration: 0.3)) { // 애니메이션 속도 조정 (0.3초)
                    isMenuVisible = false // 메뉴 닫기
                }
            }) {
                Text("Home")
                    .padding()
                    .foregroundColor(Color("colour-black")) // 버튼 텍스트 색상을 검정색으로 변경

            }
            
            Button(action: {
                tabBarSelection = 2 // Item List 탭으로 이동
                withAnimation(.easeInOut(duration: 0.3)) { // 애니메이션 속도 조정 (0.3초)
                    isMenuVisible = false // 메뉴 닫기
                }
            }) {
                Text("Item List")
                    .padding()
                    .foregroundColor(Color("colour-black")) // 버튼 텍스트 색상을 검정색으로 변경

            }
            
            Button(action: {
                tabBarSelection = 3 // Setting 탭으로 이동
                withAnimation(.easeInOut(duration: 0.3)) { // 애니메이션 속도 조정 (0.3초)
                    isMenuVisible = false // 메뉴 닫기
                }
            }) {
                Text("Setting")
                    .padding()
                    .foregroundColor(Color("colour-black")) // 버튼 텍스트 색상을 검정색으로 변경

            }
            
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity) // 전체 화면을 차지하도록 설정
        .background(Color("colour-navigationbar"))
    }
}


struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
