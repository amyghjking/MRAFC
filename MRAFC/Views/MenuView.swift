//
//  MenuView.swift
//  MRAFC
//
//  Created by Amy King on 4/04/24.
//

import Foundation
import SwiftUI

struct MenuView: View {
    @Binding var isMenuViewVisible: Bool
    
    var body: some View {
        if isMenuViewVisible {
            Text("menu")
        } else {
            HomeView()
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView(isMenuViewVisible: Binding.constant(true))
    }
}
