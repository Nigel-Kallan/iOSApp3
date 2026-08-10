//
//  ContentView.swift
//  iOSApp3
//
//  Created by NIGEL KALLAN on 2026-07-30.
//

import SwiftUI

struct ContentView: View {

    @StateObject private var museumAPI = MuseumAPI()
    @State private var searchText = ""

    var body: some View {

        NavigationStack {

            VStack(spacing: 8) {

                Text("🇨🇦")
                    .font(.system(size: 40))

                Text("Canadian Science Museum Navigator")
                    .font(.title2)
                    .fontWeight(.bold)

                TextField("Search for an artifact...", text: $searchText)
                    .textFieldStyle(.roundedBorder)

                Button("Search") {
                    museumAPI.search(for: searchText)
                }
                .buttonStyle(.borderedProminent)

            }
            .padding()

                ScrollView {

                    LazyVStack(spacing: 10) {

                        ForEach(museumAPI.artifacts) { artifact in

                            NavigationLink {
                                ArtifactDetailView(artifact: artifact)
                            } label: {
                                ArtifactRow(artifact: artifact)
                            }

                            Divider()

                        }

                    }
                    .padding(.horizontal)

                }

            }
            .navigationTitle("Museum")
            .onAppear {
                museumAPI.search(for: "")
            }

        }

    }


#Preview {
    ContentView()
}
