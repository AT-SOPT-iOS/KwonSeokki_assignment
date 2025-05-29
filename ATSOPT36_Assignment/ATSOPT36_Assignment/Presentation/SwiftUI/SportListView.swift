//
//  SportListView.swift
//  ATSOPT36_Assignment
//
//  Created by 권석기 on 5/29/25.
//

import SwiftUI

struct SportListView: View {
    let items: [ContentModel]
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                ForEach(items, id: \.self) {
                    Image(uiImage: $0.thumbnail)
                        .padding(.vertical, 6)
                        .padding(.horizontal, 10)
                        .background(.gray5)
                        .cornerRadius(3)
                }
            }
            .padding(.leading, 15)
        }
    }
}

#Preview {
    SportListView(items: [])
}
