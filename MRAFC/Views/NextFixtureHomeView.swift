//
//  NextFixtureHomeView.swift
//  MRAFC
//
//  Created by Amy King on 5/04/24.
//

import Foundation
import SwiftUI

struct NextFixtureHomeView: View {
    var nextFixture: FixtureResult? = nextClosestFixture()
    @State private var daysRemaining = 0
    @State private var hoursRemaining = 0
    @State private var minutesRemaining = 0
    
    var body: some View {
        VStack {
            if let nextFixture = nextFixture {
                HStack {
                    Image(nextFixture.homeTeamLogo)
                        .resizable()
                        .scaledToFit()
                        .scaleEffect(0.9)

                    Text("vs")

                    Image(nextFixture.awayTeamLogo)
                        .resizable()
                        .scaledToFit()
                        .scaleEffect(0.9)
                }
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
