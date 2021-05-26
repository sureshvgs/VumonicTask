//
//  ContentView.swift
//  VumonicTask
//
//  Created by Suresh Swaminathan on 26/05/21.
//

import SwiftUI

import SwiftUI
struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    
                    Image(systemName: "house")
                        .resizable()
                        .frame(width: 30, height: 30)
                }.padding()
            HomeView()
                .tabItem {
                    
                    Image(systemName: "magnifyingglass")
                        .resizable()
                        .frame(width: 30, height: 30)
                }.padding()
            HomeView()
                .tabItem {
                    Image(systemName: "video.badge.plus")
                        .resizable()
                        .frame(width: 30, height: 30)
                }.padding()
            HomeView()
                .tabItem {
                    Image(systemName: "heart")
                        .resizable()
                        .frame(width: 30, height: 30)
                }.padding()
            ProfileView()
                .tabItem {
                    Image(systemName: "person")
                        .resizable()
                        .frame(width: 30, height: 30)
                }.padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
