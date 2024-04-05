//
//  FixtureResult.swift
//  MRAFC
//
//  Created by Amy King on 5/04/24.
//

import Foundation
import SwiftUI

struct FixtureResult: Codable, Identifiable {
    var id: Int
    var dateTime: Date
    var location: String
    var competition: String
    var homeTeam: String
    var awayTeam: String
    var homeTeamScore: Int
    var awayTeamScore: Int
    var homeTeamLogo: String
    var awayTeamLogo: String
    
    //methods here to get images for home team and away team
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        id = try container.decode(Int.self, forKey: .id)
        location = try container.decode(String.self, forKey: .location)
        competition = try container.decode(String.self, forKey: .competition)
        homeTeam = try container.decode(String.self, forKey: .homeTeam)
        awayTeam = try container.decode(String.self, forKey: .awayTeam)
        homeTeamScore = try container.decode(Int.self, forKey: .homeTeamScore)
        awayTeamScore = try container.decode(Int.self, forKey: .awayTeamScore)
        homeTeamLogo = try container.decode(String.self, forKey: .homeTeamLogo)
        awayTeamLogo = try container.decode(String.self, forKey: .awayTeamLogo)
            
        // Decode the dateTime field using a DateFormatter
        let dateString = try container.decode(String.self, forKey: .dateTime)
        if let date = DateFormatter.iso8601.date(from: dateString) {
            dateTime = date
        } else {
            throw DecodingError.dataCorruptedError(forKey: .dateTime, in: container, debugDescription: "Date string does not match format expected by formatter.")
        }
    }
}

extension DateFormatter {
    static let iso8601: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"
        return formatter
    }()
}

func nextClosestFixture() -> FixtureResult? {
    let currentDate = Date()
    let futureFixtures = fixturesResults.filter { $0.dateTime > currentDate }
    let sortedFixtures = futureFixtures.sorted { $0.dateTime < $1.dateTime }
    return sortedFixtures.first
}
