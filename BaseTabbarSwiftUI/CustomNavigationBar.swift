//
//  NavigationBarModifier.swift
//  BaseTabbarSwiftUI
//
//  Created by Taesan Kim on 29/8/2024.
//

import SwiftUI

struct CustomNavigationBar: View {
    @Binding var title: String // Binding to update the title
    var menuAction: () -> Void // Closure for menu button action
    var searchAction: () -> Void // Closure for search button action
    
    var body: some View {
        VStack {
            Spacer()
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button(action: menuAction) { // Use the closure
                    Image(systemName: "line.horizontal.3")
                        .foregroundColor(Color("colour-black")) // Set color for the icon
                }
            }
            
            ToolbarItem(placement: .principal) {
                Text(title) // Use the dynamic title here
                    .font(.headline) // Change font size here if needed
                    .foregroundColor(Color("colour-black"))
            }
            
            ToolbarItem(placement: .navigationBarTrailing) {
                Button(action: searchAction) { // Use the closure
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(Color("colour-black")) // Set color for the icon
                }
            }
        }
    }
}

struct CustomNavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        CustomNavigationBar(title: .constant("NavBar Title"),
                            menuAction: {},
                            searchAction: {})
            .previewLayout(.sizeThatFits)
    }
}
