//
//  Contest.swift
//  Eurovision Scoreboard
//
//  Created by Daniil Kostitsin on 05.08.2021.
//

import Foundation

/// Model structure representing contest information – host country, host city, year and acts.
public struct Contest {
    /// Country that hosted the contest this year
    public var hostCountry: Country
    /// Host city
    public var hostCityName: String
    /// Year when the contest took place. This property must be unique in the contest list
    public var year: Int
    /// List of acts for this contest
    public var acts: [Act]
}

// Adopting Codable to be able to save data to disk
extension Contest: Codable { }

// Adopting Hashable for UICollectionViewDiffableDataSource
extension Contest: Hashable { }
