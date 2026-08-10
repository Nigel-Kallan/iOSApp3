//
//  ArtifactDetailView.swift
//  iOSApp3
//
//  Created by NIGEL KALLAN on 2026-07-30.
//

import SwiftUI

struct ArtifactDetailView: View {

    let artifact: Artifact

    var body: some View {

        ScrollView {

            VStack(spacing: 20) {

                Image(artifact.image)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 250)
                    .cornerRadius(15)
                    .padding()
                
                Text(artifact.title)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)

                VStack(alignment: .leading, spacing: 15) {

                    Group {
                        Text("Description")
                            .font(.headline)

                        Text(artifact.description)
                    }

                    Divider()

                    HStack {
                        Text("Category")
                            .fontWeight(.bold)

                        Spacer()

                        Text(artifact.category)
                    }

                    HStack {
                        Text("Museum")
                            .fontWeight(.bold)

                        Spacer()

                        Text(artifact.museum)
                            .multilineTextAlignment(.trailing)
                    }

                }
                .padding()

                Spacer()
            }
        }
        .navigationTitle("Artifact")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    ArtifactDetailView(
        artifact: Artifact(
            id: 1,
            title: "Steam Locomotive",
            description: "A historic Canadian steam locomotive used during the early railway era.",
            image: "",
            category: "Transportation",
            museum: "Canadian Science and Technology Museum"
        )
    )
}
