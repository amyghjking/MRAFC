//
//  MatchesMenuView.swift
//  MRAFC
//
//  Created by Amy King on 4/04/24.
//

import Foundation
import SwiftUI

struct MatchesMenuView: View {
    @Binding var isMatchesViewActive: Bool
    
    var body: some View {
        HStack {
            Image("MatchesMenuIcon")
                .resizable()
                .scaledToFit()
                .scaleEffect(1.5)
                .offset(x: UIScreen.main.bounds.width * -0.02)
            
            Text("Matches")
                .font(.system(size: 24))
                .offset(x: UIScreen.main.bounds.width * -0.25, y: UIScreen.main.bounds.height * -0.08)
            Spacer()
        }
        .offset(y: UIScreen.main.bounds.height * -0.1)
        .overlay(
            VStack {
                Button(action: {
                    self.isMatchesViewActive = true
                }) {
                    Color.clear
                }
                .frame(width: UIScreen.main.bounds.width * 0.65, height: UIScreen.main.bounds.height * 0.1)
            }
                .offset(x: UIScreen.main.bounds.width * -0.15, y: UIScreen.main.bounds.height * -0.18)
        )
    }
}
