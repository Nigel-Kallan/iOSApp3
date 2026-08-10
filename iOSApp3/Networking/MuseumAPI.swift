//
//  MuseumAPI.swift
//  iOSApp3
//
//  Created by NIGEL KALLAN on 2026-07-30.
//



import Foundation
import Combine

class MuseumAPI: ObservableObject {

    @Published var artifacts: [Artifact] = []
    private var allArtifacts: [Artifact] = []

    init() {
        loadArtifacts()
    }

    private func loadArtifacts() {

        guard let url = Bundle.main.url(forResource: "artifacts", withExtension: "json") else {
            print("Could not find artifacts.json")
            return
        }

        do {
            let data = try Data(contentsOf: url)
            let decoded = try JSONDecoder().decode([Artifact].self, from: data)
            
            print("Loaded \(decoded.count) artifacts")
            
            allArtifacts = decoded
            artifacts = decoded

        } catch {
            print(error)
        }
    }

    func search(for text: String) {

        if text.isEmpty {
            artifacts = allArtifacts
        } else {
            artifacts = allArtifacts.filter {
                $0.title.localizedCaseInsensitiveContains(text) ||
                $0.category.localizedCaseInsensitiveContains(text) ||
                $0.museum.localizedCaseInsensitiveContains(text)
            }
        }
    }
}
