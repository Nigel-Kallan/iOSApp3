//
//  AboutView.swift
//  iOSApp3
//
//  Created by NIGEL KALLAN on 2026-08-10.
//

//
//  AboutView.swift
//  iOSApp3
//

import SwiftUI

struct AboutView: View {

    var body: some View {

        NavigationStack {

            ScrollView {

                VStack(spacing: 25) {

                    // App Icon
                    Image(systemName: "building.columns.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 120, height: 120)
                        .foregroundStyle(.red)

                    // App Name
                    Text("Canadian Science Museum Navigator")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)

                    Text("Version 2.0")
                        .foregroundStyle(.secondary)

                    Divider()

                    VStack(alignment: .leading, spacing: 15) {

                        Label("Built with SwiftUI", systemImage: "swift")

                        Label("Uses Codable and JSON", systemImage: "doc.text")

                        Label("Interactive Museum Map", systemImage: "map")

                        Label("Search Canadian Museum Artifacts", systemImage: "magnifyingglass")

                    }
                    .font(.headline)

                    Divider()

                    VStack(alignment: .leading, spacing: 12) {

                        Text("Developer")
                            .font(.headline)

                        Text("Nigel Kallan")

                        Text("Course")
                            .font(.headline)

                        Text("MWD3A – iOS Development")

                        Text("Project")
                            .font(.headline)

                        Text("Canadian Science Museum Navigator")

                    }
                    .frame(maxWidth: .infinity, alignment: .leading)

                    Divider()

                    Text("""
This application allows users to browse and search Canadian museum artifacts, view detailed information, and locate the museum using Apple Maps.

The project demonstrates SwiftUI navigation, JSON data loading, Codable, ObservableObject, and MapKit.
""")
                    .multilineTextAlignment(.center)
                    .padding()

                }
                .padding()

            }
            .navigationTitle("About")

        }

    }

}

#Preview {
    AboutView()
}
