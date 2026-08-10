//
//  Artifact.swift
//  iOSApp3
//
//  Created by NIGEL KALLAN on 2026-07-30.
//


import Foundation

struct Artifact: Codable, Identifiable {
    let id: Int
    let title: String
    let description: String
    let image: String
    let category: String
    let museum: String
}
