//
//  ListView.swift
//  BaseTab
//
//  Created by Taesan Kim on 15/8/2024.
//

import SwiftUI

struct ListView: View {
    @State private var textFieldText: String = "" // State to hold text field input

    var body: some View {
        
        VStack(alignment: .leading) {
            
            // Text with padding 40 from the top and 20 from the left
            Text("List View")
                .padding(.top, 40) // 40 points from the top
                .padding(.leading, 20) // 20 points from the left
                .background(Color("colour-white")) // Background color
                .foregroundColor(Color("colour-black")) // Text color
                .frame(maxWidth: .infinity, alignment: .leading) // Align text to the left
            
            // TextField for input
            TextField("Enter text here", text: $textFieldText)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle()) // Rounded border for the TextField
                .background(Color("colour-white"))
                .padding(.horizontal, 20) // Padding from the sides

            // Center button that clears the TextField
            Button(action: {
                textFieldText = "" // Clear the text field when button is pressed
            }) {
                Text("Clear Text")
                    .padding()
                    .background(Color.blue) // Background color for the button
                    .foregroundColor(.white) // Button text color
                    .cornerRadius(10) // Rounded corners
            }
            .padding(.top, 20) // Padding from the top
            .frame(maxWidth: .infinity, alignment: .center) // Center the button
            
            Spacer() // Pushes content to the top
        }
        .edgesIgnoringSafeArea(.bottom) // Avoids the bottom safe area
    }
}

struct ListView_Preview: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
