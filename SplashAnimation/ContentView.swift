//
//  ContentView.swift
//  SplashAnimation
//
//  Created by Andrei Kamarou on 18.10.21.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    @State var endAnimation: Bool = false
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            HomeView()
                .offset(y: endAnimation ? 0 : getRect().height)
            
            SplashScreen(endAnimation: $endAnimation)
        }
    }
}
// MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
