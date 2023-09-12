//
//  TaabView.swift
//  SwiftfulThinking
//
//  Created by A.f. Adib on 8/31/23.
//

import SwiftUI

struct TaabView: View {
    @State var Selection : Int = 1
    var body: some View {
        TabView(selection: $Selection) {
           
            ZStack{
                Color.mint
                VStack {
                    Text("Browser page")
                    
                }
            } .tabItem {
                    Image(systemName: "globe")
                    Text("Browse")
            }.tag(0)
                .badge("7")
            
            
            
            ZStack{
                Color.cyan
                VStack {
                    Text("Home Page")
                    Button {
                        Selection = 2
                    } label: {
                        Text("Go to profile->")
                            .padding()
                            .accentColor(Color.white)
                            .font(.title)
                    }

                }
            }
            .tabItem {
                Image(systemName: "house.fill")
                Text("Home")
            }.tag(1)
                .badge("New")
            
            
            
            ZStack{
                Color.blue
                Text("Profile page")
            }
                .tabItem {
                    Image(systemName: "person")
                    Text("Profile")
                    
                }.tag(2)
                .badge(5)
        }
    }
}

struct TaabView_Previews: PreviewProvider {
    static var previews: some View {
        TaabView()
    }
}
