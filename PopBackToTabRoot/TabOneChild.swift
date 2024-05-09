//
//  TabOneChild.swift
//  PopBackToTabRoot
//
//  Created by Emrè Barish on 01/05/2024.
//

import SwiftUI

struct TabOneChild: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        Group {
            Text("Tab One Child")
                .font(.system(.title2, weight: .semibold))
        }
        .onReceive(NotificationCenter.default.popBackToTabRootPublisher) {_ in
            dismiss()
        }
    }
}

#Preview {
    TabOneChild()
}
