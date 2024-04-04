//
//  NewsMenuView.swift
//  MRAFC
//
//  Created by Amy King on 4/04/24.
//

import Foundation
import SwiftUI

struct NewsMenuView: View {
    @Binding var isNewsViewActive: Bool
    
    var body: some View {
        HStack {
            Image("NewsMenuIcon")
                .resizable()
                .scaledToFit()
                .scaleEffect(1.5)
            
            Text("News")
                .font(.system(size: 24))
                .offset(x: UIScreen.main.bounds.width * -0.25, y: UIScreen.main.bounds.height * -0.08)
            Spacer()
        }
        .offset(y: UIScreen.main.bounds.height * -0.18)
        .overlay(
            VStack {
                Button(action: {
                    self.isNewsViewActive = true
                }) {
                    Color.clear
                }
                .frame(width: UIScreen.main.bounds.width * 0.6, height: UIScreen.main.bounds.height * 0.1)
            }
                .offset(x: UIScreen.main.bounds.width * -0.2, y: UIScreen.main.bounds.height * -0.26)
        )
    }
}
