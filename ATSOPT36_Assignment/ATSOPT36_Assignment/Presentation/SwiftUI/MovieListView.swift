//
//  MovieListView.swift
//  ATSOPT36_Assignment
//
//  Created by 권석기 on 5/29/25.
//

import SwiftUI

struct MovieListView: View {
    let items: [ContentModel]
    var body: some View {
        VStack(spacing: 13) {
            HStack {
                Text("오늘의 티빙 TOP 20")
                    .foregroundStyle(.white)
                    .fontWeight(.semibold)
                Spacer()
            }
            .padding(.leading, 15)
            .padding(.vertical, 10)
            ScrollView(.horizontal) {
                HStack(spacing: 8) {
                    ForEach(items, id: \.self) {
                        Image(uiImage: $0.thumbnail)
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
    MovieListView(items: [])
}
