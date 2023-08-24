//
//  ScrollView.swift
//  SwiftfulThinking
//
//  Created by A.f. Adib on 8/20/23.
//

import SwiftUI


struct ScrollViewdemo: View {
    var body: some View {
        ScrollView {
            LazyVStack{
                ForEach(0..<10) { index in
                    
                    ScrollView(.horizontal, showsIndicators: false,
                    content:
                                {
                        LazyHStack{
                            ForEach(0..<20) { index in
                                RoundedRectangle(cornerRadius: 20.0)
                                    .fill(Color.pink)
                                    .shadow(radius: 20)
                                    .frame(width: 200, height: 150)
                                    .padding()
                            }
                        }
                    }
                    )
                    
                }
            }
        }
    }
}

struct ScrollView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewdemo()
    }
}
