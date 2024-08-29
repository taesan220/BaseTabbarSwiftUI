//
//  HomeView.swift
//  BaseTab
//
//  Created by Taesan Kim on 15/8/2024.
//

import SwiftUI

struct HomeView: View {
    @State private var showAlert = false // State to control the alert
    
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
                showAlert = true // Show alert when button is pressed
            }) {
                Text("Show Alert")
                    .padding()
                    .background(Color.blue) // Background color for the button
                    .foregroundColor(.white) // Button text color
                    .cornerRadius(10) // Rounded corners
            }
            .alert(isPresented: $showAlert) {
                Alert(
                    title: Text("Button Pressed"),
                    message: Text("You have pressed the button."),
                    dismissButton: .default(Text("OK"))
                )
            }
            
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
