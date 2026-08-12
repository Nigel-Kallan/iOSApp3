//
//  ContentView.swift
//  iOSApp3
//
//  Created by NIGEL KALLAN on 2026-07-30.
//

import SwiftUI

struct ContentView: View {

    var body: some View {

        TabView {

            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }

            MuseumView()
                .tabItem {
                    Label("Museum", systemImage: "map.fill")
                }

            SearchView()
                .tabItem {
                    Label("Search", systemImage: "magnifyingglass")
                }

            AboutView()
                .tabItem {
                    Label("About", systemImage: "info.circle.fill")
                }

        }
        .tint(.red)

    }

}

#Preview {
    ContentView()
}
