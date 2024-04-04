//
//  TeamsMenuView.swift
//  MRAFC
//
//  Created by Amy King on 4/04/24.
//

import Foundation
import SwiftUI

struct TeamsMenuView: View {
    @Binding var isTeamsViewActive: Bool
    
    var body: some View {
        HStack {
            Image("TeamsMenuIcon")
                .resizable()
                .scaledToFit()
                .scaleEffect(1.5)
                .offset(x: UIScreen.main.bounds.width * -0.06)
            
            Text("Teams")
                .font(.system(size: 24))
                .offset(x: UIScreen.main.bounds.width * -0.25, y: UIScreen.main.bounds.height * -0.05)
            Spacer()
        }
        .offset(y: UIScreen.main.bounds.height * -0.05)
        .overlay(
            VStack {
                Button(action: {
                    self.isTeamsViewActive = true
                }) {
                    Color.clear
                }
                .frame(width: UIScreen.main.bounds.width * 0.6, height: UIScreen.main.bounds.height * 0.1)
            }
                .offset(x: UIScreen.main.bounds.width * -0.2, y: UIScreen.main.bounds.height * -0.098)
        )
    }
}
