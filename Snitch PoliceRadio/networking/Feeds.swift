//
//  File.swift
//  Snitch PoliceRadio
//
//  Created by Kwaw Annan on 10/14/22.
//
//
import Foundation

// MARK: - Welcome
struct Feeds: Codable {
    let feeds: [Feed]
    
    enum CodingKeys: String, CodingKey {
        case feeds = "Feeds"
    }
}


// MARK: - Feed
struct Feed: Codable {
    let id, status, listeners: Int
    let descr, genre, mount, mountToken: String
    let bitrate: Int
    let counties: [County]
    let relays: [Relay]

    enum CodingKeys: String, CodingKey {
        case id, status, listeners, descr, genre, mount, mountToken, bitrate
        case counties = "Counties"
        case relays = "Relays"
    }
}

// MARK: - County
struct County: Codable {
    let ctid: Int
    let name, type, stid, stateCode: String
    let stateName, countryName, countryCode, coid: String
    let countyDetails, lat, lon: String
}

// MARK: - Relay
struct Relay: Codable {
    let host, port: String
}
