//
//  HomeDetailView.swift
//  BaseTabbarSwiftUI
//
//  Created by Taesan Kim on 27/9/2024.
//


import SwiftUICore
import SwiftUI

struct HomeDetailView: View {
    var body: some View {
        VStack {
            Text("Home Detail View")
                .padding()
                .edgesIgnoringSafeArea(.bottom)
        }
        .navigationBarTitle("Home Detail", displayMode: .inline) // 상단에 뒤로가기 버튼 자동 생성
    }
}

struct HomeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            HomeDetailView()
        }
    }
}
