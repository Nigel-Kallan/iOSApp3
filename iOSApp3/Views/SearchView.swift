//
//  SearchView.swift
//  iOSApp3
//
//  Created by NIGEL KALLAN on 2026-08-10.
//

//
//  SearchView.swift
//  iOSApp3
//

import SwiftUI

struct SearchView: View {

    // MARK: - Properties

    @StateObject private var museumAPI = MuseumAPI()
    @State private var searchText = ""

    var body: some View {

        NavigationStack {

            VStack {

                // Search Bar
                TextField("Search by title, category or museum...", text: $searchText)
                    .textFieldStyle(.roundedBorder)
                    .padding()
                    .onChange(of: searchText) { _, newValue in
                        museumAPI.search(for: newValue)
                    }

                // Display message if nothing matches
                if museumAPI.artifacts.isEmpty {

                    Spacer()

                    Image(systemName: "magnifyingglass")
                        .font(.system(size: 60))
                        .foregroundStyle(.gray)

                    Text("No matching artifacts found")
                        .font(.title2)
                        .fontWeight(.semibold)

                    Text("""
Try searching for:

Steam
Aviation
Space
Communications
""")
                    .foregroundStyle(.secondary)
                    .multilineTextAlignment(.center)

                    Spacer()

                } else {

                    // Artifact List
                    List {

                        ForEach(museumAPI.artifacts) { artifact in

                            NavigationLink {

                                ArtifactDetailView(artifact: artifact)

                            } label: {

                                ArtifactRow(artifact: artifact)

                            }

                        }

                    }
                    .listStyle(.plain)

                }

            }
            .navigationTitle("Search")

            .onAppear {

                museumAPI.search(for: "")

            }

        }

    }

}

#Preview {
    SearchView()
}
