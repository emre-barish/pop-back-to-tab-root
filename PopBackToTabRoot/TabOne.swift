//
//  TabOne.swift
//  PopBackToTabRoot
//
//  Created by Emrè Barish on 01/05/2024.
//

import SwiftUI

struct TabOne: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 10) {
                Text("Tab One Root")
                    .font(.system(.title2, weight: .semibold))
                NavigationLink(destination: TabOneChild()) {
                    Text("Go to Tab One Child")
                }
            }
            .multilineTextAlignment(.center)
        }
    }
}

#Preview {
    TabOne()
}
