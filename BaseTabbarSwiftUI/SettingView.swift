//
//  SettingView.swift
//  BaseTab
//
//  Created by Taesan Kim on 15/8/2024.
//

import SwiftUI

struct SettingView: View {
    @State private var showAlert = false // State for controlling the alert
    
    var body: some View {
        
        VStack {
            // Text with padding 40 from the top and 20 from the left
            Text("Setting View")
                .padding(.top, 40) // 40 points from the top
                .padding(.leading, 20) // 20 points from the left
                .background(Color("colour-white")) // Background color
                .foregroundColor(Color("colour-black")) // Text color
                .frame(maxWidth: .infinity, alignment: .leading) // Align text to the left
            
            Spacer() // Push content to the top
            
            // Center button that shows an alert when clicked
            Button(action: {
                showAlert = true // Show alert when button is pressed
            }) {
                Text("Show Alert")
                    .padding()
                    .background(Color.red) // Background color for the button
                    .foregroundColor(.white) // Button text color
                    .cornerRadius(10) // Rounded corners
            }
            .padding(.top, 20) // Padding from the top
            .alert(isPresented: $showAlert) { // Alert when button is pressed
                Alert(
                    title: Text("Alert"),
                    message: Text("Button was clicked"),
                    dismissButton: .default(Text("OK"))
                )
            }
            
            Spacer() // Push content to the bottom
        }
        .edgesIgnoringSafeArea(.bottom) // Avoids the bottom safe area
    }
}

struct SettingView_Preview: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
