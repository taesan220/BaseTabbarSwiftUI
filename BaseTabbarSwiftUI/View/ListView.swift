//
//  ListView.swift
//  BaseTab
//
//  Created by Taesan Kim on 15/8/2024.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        Text("List View")
            .padding()
            .background(Color.white)
            .edgesIgnoringSafeArea(.bottom)
    }
}

struct ListView_Preview: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
