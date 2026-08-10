//
//  ArtifactRow.swift
//  iOSApp3
//
//  Created by NIGEL KALLAN on 2026-07-30.
//

import SwiftUI

struct ArtifactRow: View {

    let artifact: Artifact

    var body: some View {

        HStack(spacing: 15) {

            // Placeholder image
            Image(artifact.image)
                .resizable()
                .scaledToFill()
                .frame(width: 70, height: 70)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            VStack(alignment: .leading, spacing: 5) {

                Text(artifact.title)
                    .font(.headline)

                Text(artifact.category)
                    .font(.subheadline)
                    .foregroundColor(.secondary)

                Text(artifact.museum)
                    .font(.caption)
                    .foregroundColor(.gray)
            }

            Spacer()
        }
        .padding(.vertical, 5)
    }
}

#Preview {
    ArtifactRow(
        artifact: Artifact(
            id: 1,
            title: "Steam Locomotive",
            description: "Historic railway engine",
            image: "",
            category: "Transportation",
            museum: "Canadian Science and Technology Museum"
        )
    )
}
