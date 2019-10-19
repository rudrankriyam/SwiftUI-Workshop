//
//  CoffeeTrackerTabView.swift
//  SwiftUI Workshop
//
//  Created by Rudrank Riyam on 19/10/19.
//  Copyright © 2019 Rudrank Riyam. All rights reserved.
//

import SwiftUI

struct CoffeeTrackerTabView : View {
    @State private var currentTab: Int = 0
    var body: some View {
        TabView(selection: $currentTab) {
            Text("Hello World")
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
            }
            .tag(0)
            Text("Hello World")
                .tabItem {
                    Image(systemName: "clock")
                    Text("Schedule")
            }
            .tag(1)
            Text("Hello World")
                .tabItem {
                    Image(systemName: "doc.text.magnifyingglass")
                    Text("History")
            }
            .tag(2)
            Text("Hello World")
                .tabItem {
                    Image(systemName: "chart.bar")
                    Text("Charts")
            }
            .tag(3)
            Text("Hello World")
                .tabItem {
                    Image(systemName: "gear")
                    Text("Settings")
            }
            .tag(4)
        }
        .accentColor(.coffeeColor)
    }
}

struct CoffeeTrackerTabView_Previews: PreviewProvider {
    static var previews: some View {
        CoffeeTrackerTabView()
    }
}
