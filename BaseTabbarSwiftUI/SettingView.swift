//
//  SettingView.swift
//  BaseTab
//
//  Created by Taesan Kim on 15/8/2024.
//

import SwiftUI

struct SettingView: View {
    var body: some View {
        
        VStack {
            
            Text("Setting View")
                .padding()
                .background(Color("colour-white")) // Background color for the entire view
                .foregroundColor(Color("colour-black")) // Text color
                .edgesIgnoringSafeArea(.bottom)
        }
    }
}


struct SettingView_Preview: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
