//
//  LivePopularListView.swift
//  ATSOPT36_Assignment
//
//  Created by 권석기 on 5/29/25.
//

import SwiftUI

struct LivePopularListView: View {
    let items: [ContentModel]
    var body: some View {
        VStack(spacing: 13) {
            HStack {
                Text("실시간 인기 LIVE")
                    .foregroundStyle(.white)
                    .fontWeight(.semibold)
                Spacer()
            }
            .padding(.leading, 15)
            .padding(.vertical, 10)
            ScrollView(.horizontal) {
                HStack(spacing: 8) {
                    ForEach(Array(items.enumerated()), id: \.self.offset) { offset, item in
                        VStack(spacing: 10) {
                            Image(uiImage: item.thumbnail)
                                .resizable()
                                .frame(width: 160, height: 80)
                            HStack(alignment: .top) {
                                Image("number\(offset + 1)")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 23)
                                VStack(alignment: .leading) {
                                    Text(item.title)
                                        .foregroundStyle(.white)
                                    Text(item.description)
                                        .foregroundStyle(.gray)
                                        .font(.caption)
                                    Text("\(item.rating)%")
                                        .foregroundStyle(.gray)
                                        .font(.caption)
                                }
                            }
                        }
                        .frame(maxWidth: 160)
                    }
                }
                .padding(.leading, 15)
            }
        }
    }
}

#Preview {
    LivePopularListView(items: [])
}
