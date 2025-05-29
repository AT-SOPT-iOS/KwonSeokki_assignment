//
//  MenuView.swift
//  ATSOPT36_Assignment
//
//  Created by 권석기 on 5/29/25.
//

import SwiftUI

struct MenuView: View {
    let items: [String]
    var body: some View {
        HStack {
            Spacer()
            ForEach(items, id: \.self) { item in
                Text(item)
                    .foregroundStyle(.white)
                Spacer()
            }
        }
        .padding(.vertical, 16)
    }
}

#Preview {
    MenuView(items: [])
}
