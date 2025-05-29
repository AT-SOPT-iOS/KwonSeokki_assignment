//
//  KimGaHyunBestListView.swift
//  ATSOPT36_Assignment
//
//  Created by 권석기 on 5/29/25.
//

import SwiftUI

struct KimGaHyunBestListView: View {
    let items: [ContentModel]
    var body: some View {
        VStack(spacing: 13) {
            HStack {
                Text("김가현PD의 인생작 TOP 5")
                    .foregroundStyle(.white)
                    .fontWeight(.semibold)
                Spacer()
            }
            .padding(.leading, 15)
            .padding(.vertical, 10)
            ScrollView(.horizontal) {
                HStack(alignment: .bottom, spacing: 8) {
                    ForEach(Array(items.enumerated()), id: \.self.offset) { offset, item in
                        Image(uiImage: item.thumbnail)
                            .resizable()
                            .frame(width: 160, height: 90)
                            .cornerRadius(3)
                    }
                }
                .padding(.leading, 15)
            }
        }
    }
}

#Preview {
    KimGaHyunBestListView(items: [])
}
