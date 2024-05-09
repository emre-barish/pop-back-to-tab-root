//
//  TabTwo.swift
//  PopBackToTabRoot
//
//  Created by Emrè Barish on 01/05/2024.
//

import SwiftUI

struct TabTwo: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 10) {
                Text("Tab Two Root")
                    .font(.system(.title2, weight: .semibold))
                NavigationLink(destination: TabTwoChild()) {
                    Text("Go to Tab Two Child")
                }
            }
            .multilineTextAlignment(.center)
        }
    }
}

#Preview {
    TabTwo()
}
