//
//  ApperAndDisapper.swift
//  SwiftfulThinking
//
//  Created by A.f. Adib on 9/4/23.
//

import SwiftUI

struct ApperAndDisapper: View {
    @State var myText : String = "Hello"
    @State var Count : Int = 0
    var body: some View {
        NavigationView{
            ScrollView{
                Text(myText)
                    .font(.title)
                
                LazyVStack {
                    ForEach(0..<50) { _ in
                        RoundedRectangle(cornerRadius: 20)
                            .frame(height: 100)
                            .padding()
                            .foregroundColor(Color.brown)
                            .onAppear {
                                Count += 1
                            }
                    }
                }
                
            }.onAppear(perform: {
                DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                    myText = "This is new text"
                }
            })
                .navigationTitle("onApper count : \(Count)")
                
            
              
        }
    }
}

struct ApperAndDisapper_Previews: PreviewProvider {
    static var previews: some View {
        ApperAndDisapper()
    }
}
