//
//  HomeView.swift
//  MRAFC
//
//  Created by Amy King on 4/04/24.
//

import Foundation
import SwiftUI

struct HomeView: View {
    @State private var isHomeViewActive = false
    @State private var isMenuViewVisible = false
    @State private var daysRemaining = 0
    @State private var hoursRemaining = 0
    @State private var minutesRemaining = 0
    var nextFixture: FixtureResult? = nextClosestFixture()
    
    var body: some View {
        if isHomeViewActive {
            HomeView()
        } else if isMenuViewVisible {
            MenuView(isMenuViewVisible: $isMenuViewVisible)
        } else {
            VStack {
                HomeHeaderView(isHomeViewActive: $isHomeViewActive, isMenuViewVisible: $isMenuViewVisible)
                    .padding(.bottom, UIScreen.main.bounds.height * 0.05)
                
                HStack {
                    Image("MRAFClogo")
                        .resizable()
                        .scaledToFit()
                        .scaleEffect(0.9)
                        
                    Text("vs")
                        
                    Image("MRAFClogo")
                        .resizable()
                        .scaledToFit()
                        .scaleEffect(0.9)
                }
                
                HStack {
                    Spacer()
                    VStack {
                        Text("DAYS")
                            .font(.system(size: 24))
                        
                        Text("\(daysRemaining)")
                            .font(.system(size: 24))
                    }
                    Spacer()
                    VStack {
                        Text("HOURS")
                            .font(.system(size: 24))
                        
                        Text("\(hoursRemaining)")
                            .font(.system(size: 24))
                    }
                    Spacer()
                    VStack {
                        Text("MINS")
                            .font(.system(size: 24))
                        Text("\(minutesRemaining)")
                            .font(.system(size: 24))
                    }
                    Spacer()
                }
                
                Spacer()
            }
            .onAppear {
                updateTimeRemaining()
            }
            .onReceive(Timer.publish(every: 1, on: .main, in: .common).autoconnect()) { _ in
                updateTimeRemaining()
            }
        }
    }
    
    private func updateTimeRemaining() {
        guard let nextFixture = nextFixture else {
            daysRemaining = 0
            hoursRemaining = 0
            minutesRemaining = 0
            return
        }
                
        let currentDate = Date()
        let calendar = Calendar.current
        let components = calendar.dateComponents([.day, .hour, .minute], from: currentDate, to: nextFixture.dateTime)
                
        daysRemaining = components.day ?? 0
        hoursRemaining = components.hour ?? 0
        minutesRemaining = components.minute ?? 0
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
