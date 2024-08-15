//
//  HomeView.swift
//  BaseTab
//
//  Created by Taesan Kim on 15/8/2024.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        
        VStack {
            
            Text("Home View")
                .padding()
                .background(Color("colour-white")) // Background color for the entire view
                .foregroundColor(Color("colour-black")) // Text color
                .edgesIgnoringSafeArea(.bottom)
        }
    }
}


struct HomeView_Preview: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
