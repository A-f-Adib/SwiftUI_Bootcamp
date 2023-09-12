//
//  TabViewTwo.swift
//  SwiftfulThinking
//
//  Created by A.f. Adib on 8/31/23.
//

import SwiftUI

struct TabViewTwo: View {
    let icons: [String] = ["heart.fill", "person", "house.fill"]
    
    var body: some View {
        TabView{
            ForEach(icons, id: \.self) { data in
                Image(systemName: data)
                    .resizable()
                    .scaledToFit()
                    .padding(30)
            }
            
        }.background(RadialGradient(
            gradient: Gradient(colors: [Color.red, Color.blue]),
            center: .center,
            startRadius: 5,
            endRadius: 300))
        .tabViewStyle(PageTabViewStyle())
        .frame(height : 300)
        .cornerRadius(20)
    }
}

struct TabViewTwo_Previews: PreviewProvider {
    static var previews: some View {
        TabViewTwo()
    }
}
