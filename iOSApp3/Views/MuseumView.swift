//
//  MuseumView.swift
//  iOSApp3
//
//  Created by NIGEL KALLAN on 2026-08-10.
//

//
//  MuseumView.swift
//  iOSApp3
//

import SwiftUI
import MapKit

struct MuseumView: View {

    // MARK: - Museum Location

    @State private var cameraPosition = MapCameraPosition.region(
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(
                latitude: 45.4033,
                longitude: -75.6189
            ),
            span: MKCoordinateSpan(
                latitudeDelta: 0.01,
                longitudeDelta: 0.01
            )
        )
    )

    var body: some View {

        NavigationStack {

            ScrollView {

                VStack(spacing: 20) {

                    // Museum Map
                    Map(position: $cameraPosition) {

                        Marker(
                            "Canadian Science and Technology Museum",
                            coordinate: CLLocationCoordinate2D(
                                latitude: 45.4033,
                                longitude: -75.6189
                            )
                        )

                    }
                    .frame(height: 300)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                    .padding(.horizontal)

                    // Museum Information

                    Text("Canadian Science and Technology Museum")
                        .font(.title2)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)

                    Text("""
1867 St. Laurent Boulevard
Ottawa, Ontario
Canada
""")
                    .multilineTextAlignment(.center)

                    Text("""
The Canadian Science and Technology Museum preserves Canada's scientific and technological heritage through interactive exhibits and historic artifacts.
""")
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)

                    // Apple Maps Button

                    Link(
                        destination: URL(string: "http://maps.apple.com/?ll=45.4033,-75.6189")!
                    ) {

                        Label("Open in Apple Maps", systemImage: "map.fill")
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.red)
                            .foregroundColor(.white)
                            .cornerRadius(12)

                    }
                    .padding(.horizontal)

                }
                .padding(.vertical)

            }
            .navigationTitle("Museum Map")

        }

    }

}

#Preview {
    MuseumView()
}
