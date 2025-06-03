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
                case let .todayTving(items):
                    MovieListView(items: items, title: "오늘의 티빙 TOP 20", isShowRanking: true)
                case let .popularLive(items):
                    LivePopularListView(items: items)
                case let .popularMovie(items):
                    MovieListView(items: items, title: "실시간 인기 영화")
                case .banner:
                    Image(.banner)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(.vertical, 20)
                case let .sport(items):
                    SportListView(items: items)
                case let .kimGahyunBest(items):
                    KimGaHyunBestListView(items: items)
                }
            }
            FooterView()
        }
        .background(.black)
    }
}

#Preview {
    SwiftUIView()
}
