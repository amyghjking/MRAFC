//
//  MenuHeaderView.swift
//  MRAFC
//
//  Created by Amy King on 4/04/24.
//

import Foundation
import SwiftUI

struct MenuHeaderView: View {
    @Binding var isMenuViewVisible: Bool
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.black)
                .frame(height: UIScreen.main.bounds.size.height * 0.2)
            
            HStack {
                Image("MenuIcon")
                    .resizable()
                    .scaledToFit()
                    .frame(height: UIScreen.main.bounds.size.height * 0.2 * 0.8)
                    .offset(y: UIScreen.main.bounds.size.height * 0.025)
                    .offset(x: UIScreen.main.bounds.size.width * -0.4)
                
            }
            .offset(y: UIScreen.main.bounds.size.height * 0.03)
            .overlay(
                Button(action: {
                    self.isMenuViewVisible = false
                }) {
                    Color.clear
                }
                    .frame(width: UIScreen.main.bounds.size.width * 0.2, height: UIScreen.main.bounds.size.height * 0.2 * 0.8)
                    .alignmentGuide(.leading) { d in d[.leading] - UIScreen.main.bounds.size.width * -0.25 },
                                        alignment: .leading
            )
        }
        .offset(y: UIScreen.main.bounds.size.height * -0.01)
        .edgesIgnoringSafeArea(.top)
    }
}
