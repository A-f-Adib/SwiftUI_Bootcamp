//
//  GridView.swift
//  SwiftfulThinking
//
//  Created by A.f. Adib on 8/20/23.
//

import SwiftUI

struct GridView: View {
    let Columns : [GridItem] = [
        GridItem(.fixed(50)),
        GridItem(.fixed(40)),
        GridItem(.fixed(30)),
        GridItem(.fixed(50)),
        GridItem(.fixed(40)),
        GridItem(.fixed(30)),
        ]
    
    var body: some View {
        ScrollView{
            LazyVGrid(columns: Columns) {
                ForEach(0..<50) { index in
                RoundedRectangle(cornerRadius: 5)
                        .frame(height : 50)
                    Rectangle()
                        .fill(Color.blue)
                        .padding(1)
                        .frame(height: 50)
                        
                }
            }
        }
        
    
}

struct GridView_Previews: PreviewProvider {
    static var previews: some View {
        GridView()
    }
}
}

