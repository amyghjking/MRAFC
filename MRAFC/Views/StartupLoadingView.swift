//
//  StartupLoadingView.swift
//  MRAFC
//
//  Created by Amy King on 4/04/24.
//

import Foundation
import SwiftUI

struct StartupLoadingView : View {
    @Binding var isLoading : Bool
    @State private var yOffset: CGFloat = UIScreen.main.bounds.height
    
    var body: some View {
        Image("MRAFClogo")
            .resizable()
            .scaledToFit()
            .scaleEffect(0.7)
            .offset(y: isLoading ? 0 : -yOffset)
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    withAnimation {
                        self.isLoading = false
                    }
                }
            }
    }
}

struct StartupLoadingView_Previews : PreviewProvider {
    static var previews : some View {
        StartupLoadingView(isLoading: Binding.constant(true))
    }
}
