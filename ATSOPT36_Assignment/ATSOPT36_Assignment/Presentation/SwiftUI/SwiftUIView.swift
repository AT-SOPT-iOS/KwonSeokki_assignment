//
//  SwiftUIView.swift
//  ATSOPT36_Assignment
//
//  Created by 권석기 on 5/29/25.
//

import SwiftUI

struct SwiftUIView: View {
    private let items = ["홈", "드라마", "예능", "영화", "스포츠", "뉴스"]
    var body: some View {
        ScrollView {
            HeaderView()
            MenuView(items: items)
            ForEach(MockData.items, id: \.self) { type in
                switch type {
                case .thumbnail:
                    Image(.main)
                        .resizable()
                case let .todayTving(movieList):
                    MovieListView(items: movieList)
                default:
                    EmptyView()
                }
            }
        }
        .background(.black)
    }
}

#Preview {
    SwiftUIView()
}
