//
//  MovieListView.swift
//  ATSOPT36_Assignment
//
//  Created by 권석기 on 5/29/25.
//

import SwiftUI

struct MovieListView: View {
    let items: [ContentModel]
    let title: String
    var isShowRanking = false
    
    var body: some View {
        VStack(spacing: 13) {
            HStack {
                Text(title)
                    .foregroundStyle(.white)
                    .fontWeight(.semibold)
                Spacer()
            }
            .padding(.leading, 15)
            .padding(.vertical, 10)
            ScrollView(.horizontal) {
                HStack(alignment: .bottom, spacing: 8) {
                    ForEach(Array(items.enumerated()), id: \.self.offset) { offset, item in
                        if isShowRanking {
                            Image("number\(offset+1)")
                        }
                        Image(uiImage: item.thumbnail)
                            .resizable()
                            .frame(width: 98, height: 146)
                            .cornerRadius(3)
                    }
                }
                .padding(.leading, 15)
            }
        }
    }
}

#Preview {
    MovieListView(items: [], title: "")
}
