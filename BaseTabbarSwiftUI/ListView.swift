//
//  ListView.swift
//  BaseTab
//
//  Created by Taesan Kim on 15/8/2024.
//

import SwiftUI

struct ListView: View {
    @State private var textFieldText: String = ""
    
    var body: some View {
        
        VStack {
            
            Text("List View")
                .padding()
                .background(Color("colour-white")) // Background color for the entire view
                .foregroundColor(Color("colour-black")) // Text color
                .edgesIgnoringSafeArea(.bottom)
        }
    }
}

struct ListView_Preview: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
