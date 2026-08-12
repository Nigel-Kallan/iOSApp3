//
//  HomeView.swift
//  iOSApp3
//
//  Created by NIGEL KALLAN on 2026-08-10.
//
//
//  HomeView.swift
//  iOSApp3
//
//  Canadian Science Museum Navigator
//

import SwiftUI

struct HomeView: View {

    var body: some View {

        NavigationStack {

            ScrollView {

                VStack(spacing: 25) {

                    // Museum icon
                    Image(systemName: "building.columns.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 120, height: 120)
                        .foregroundStyle(.red)

                    // App title
                    Text("Canadian Science Museum Navigator")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)

                    // Description
                    Text("Explore Canada's scientific and technological history through interactive museum artifacts.")
                        .font(.title3)
                        .foregroundStyle(.secondary)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)

                    Divider()

                    VStack(alignment: .leading, spacing: 18) {

                        Label("Browse museum artifacts", systemImage: "building.columns")

                        Label("Search by title", systemImage: "magnifyingglass")

                        Label("View detailed information", systemImage: "doc.text")

                        Label("Locate the museum", systemImage: "map")

                    }
                    .font(.headline)

                    Divider()

                    Divider()

                    Text("Featured Artifacts")
                        .font(.title2)
                        .fontWeight(.bold)

                    VStack(alignment: .leading, spacing: 12) {

                        Label("Steam Locomotive", systemImage: "train.side.front.car")

                        Label("BlackBerry Smartphone", systemImage: "iphone")

                        Label("Avro Arrow", systemImage: "airplane")

                        Label("Canadarm", systemImage: "sparkles")

                        Label("Early Radio", systemImage: "dot.radiowaves.left.and.right")

                    }
                    .font(.headline)

                    Divider()

                    Text("Use the tabs below to explore the museum, search artifacts, and learn more about Canada's scientific achievements.")
                        .font(.headline)
                        .fontWeight(.bold)
                        .foregroundColor(.red)
                        .multilineTextAlignment(.center)
                        .padding()
                        .background(Color.red.opacity(0.1))
                        .cornerRadius(10)
                        .padding(.horizontal)

                }
                .padding()

            }
            .navigationTitle("Home")

        }

    }

}

#Preview {
    HomeView()
}
