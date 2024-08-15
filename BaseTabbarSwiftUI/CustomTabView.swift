//
//  CustomTabView.swift
//  BaseTab
//
//  Created by Taesan Kim on 15/8/2024.
//

import SwiftUI

struct CustomTabView: View {
    @Binding var tabSelection: Int
    @Namespace private var animationNameSpace
    
    let tabBarItems: [(selectedImage: String, unTappedImage: String, title: String)] = [
        ("icon-home", "icon-untapped_home", "home"),
        ("icon-list", "icon-untapped_list", "list"),
        ("icon-setting", "icon-untapped_setting", "setting")
    ]
    
    var body: some View {
        ZStack {
            HStack {
                ForEach(tabBarItems.indices) { index in
                    Button {
                        tabSelection = index + 1
                    } label: {
                        VStack(spacing: 8) {
                            Spacer()
                            
                            // Change the image based on selection
                            Image(index + 1 == tabSelection ? tabBarItems[index].selectedImage : tabBarItems[index].unTappedImage)
                                .resizable()
                                .aspectRatio(contentMode: .fit) // Maintain aspect ratio
                                .frame(width: 24, height: 24) // Adjust size as needed
                            
                            Text(tabBarItems[index].title)
                                .font(.system(size: 12)) // Adjust text size here
                                .foregroundColor(index + 1 == tabSelection ? .white : Color("colourTabbar"))
                        }
                    }
                    .frame(maxWidth: .infinity) // Ensure buttons take up equal space
                }
            }
            .frame(height: 60)
            .background(Color("colour-tabbar")) // Background color for the tab bar
            .edgesIgnoringSafeArea(.bottom) // Extend to the bottom edge
        }
        //.padding(.horizontal) // Padding for layout
    }
}


struct CustomTabView_Preview: PreviewProvider {
    static var previews: some View {
        CustomTabView(tabSelection: .constant(1))
            .previewLayout(.sizeThatFits)
           // .padding(.vertical)
    }
}
