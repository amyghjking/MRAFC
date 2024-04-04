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
        Text("menu")
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView(isMenuViewVisible: Binding.constant(true))
    }
}