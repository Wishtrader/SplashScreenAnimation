//
//  HomeView.swift
//  SplashAnimation
//
//  Created by Andrei Kamarou on 19.10.21.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    ForEach (1...5, id: \.self) { index in
                        Image("Pic \(index)")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: getRect().width - 30, height: 220)
                            .cornerRadius(15)
                    }
                }
                .padding(15)
            } // SCROLLVIEW
            .navigationTitle("Trending Posts")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
