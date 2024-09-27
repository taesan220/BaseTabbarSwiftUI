//
//  HomeView.swift
//  BaseTab
//
//  Created by Taesan Kim on 15/8/2024.
//

import SwiftUI

struct HomeView: View {
    @State private var showDetail = false // State to control navigation to HomeDetailView

    var body: some View {
        VStack {
            
            // Text with padding 40 from the top and 20 from the left
            Text("Home View")
                .padding(.top, 40) // 40 points from the top
                .padding(.leading, 20) // 20 points from the left
                .frame(maxWidth: .infinity, alignment: .leading) // Align to the left
                .background(Color("colour-white")) // Background color
                .foregroundColor(Color("colour-black")) // Text color
            
            Spacer() // Push the button to the center
            
            // Button at the center
            Button(action: {
               showDetail = true // Navigate to HomeDetailView
            }) {
               Text("Go to Home Detail")
                   .padding()
                   .background(Color.blue) // Background color for the button
                   .foregroundColor(.white) // Button text color
                   .cornerRadius(10) // Rounded corners
            }
            .background(
               NavigationLink(destination: HomeDetailView(), isActive: $showDetail) {
                   EmptyView() // 빈 뷰로 NavigationLink를 보이지 않게 함
               }
               .hidden() // 숨김 처리
            )
            
            Spacer() // Pushes the button to center vertically
        }
        .edgesIgnoringSafeArea(.bottom) // Avoids the bottom safe area
    }
}


struct HomeView_Preview: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
