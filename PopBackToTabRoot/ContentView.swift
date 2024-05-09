//
//  ContentView.swift
//  PopBackToTabRoot
//
//  Created by Emrè Barish on 01/05/2024.
//

import SwiftUI
import Combine

struct ContentView: View {
    @State private var currentTabSelection: Int = 1
    @State private var previousTabSelection: Int = 1
    
    private var tabSelection: Binding<Int> {
        Binding<Int>(
            get: { currentTabSelection },
            set: { newTabSelection in
                currentTabSelection = newTabSelection
                if currentTabSelection == previousTabSelection {
                    NotificationCenter.default.post(
                        name: .popBackToTabRoot,
                        object: nil
                    )
                } else {
                    previousTabSelection = currentTabSelection
                }
            }
        )
    }
    
    var body: some View {
        TabView(selection: tabSelection) {
            TabOne()
                .tabItem { Label("Tab One", systemImage: "1.circle.fill") }
                .tag(1)
            
            TabTwo()
                .tabItem { Label("Tab Two", systemImage: "2.circle.fill") }
                .tag(2)
        }
    }
}

// MARK: - Notification names and publishers

extension Notification.Name {
    static let popBackToTabRoot = Notification.Name("popBackToTabRoot")
}

extension NotificationCenter {
    var popBackToTabRootPublisher: Publishers.ReceiveOn<NotificationCenter.Publisher, DispatchQueue> {
        return publisher(for: .popBackToTabRoot).receive(on: DispatchQueue.main)
    }
}

// MARK: - Previews

#Preview {
    ContentView()
}
