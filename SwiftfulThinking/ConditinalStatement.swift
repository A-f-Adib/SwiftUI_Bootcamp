//
//  ConditinalStatement.swift
//  SwiftfulThinking
//
//  Created by A.f. Adib on 8/25/23.
//

import SwiftUI

struct ConditinalStatement: View {
    @State var isStarting : Bool = true
    @State var isEnding : Bool = true
    
    var body: some View {
        ZStack {
            Color.mint
                .ignoresSafeArea()
            VStack{
               
                
                if isStarting {
                    RoundedRectangle(cornerRadius:20 )
                        .frame(width:100 , height: 100)
                        .foregroundColor(Color.blue)
                    Text("State: \(isStarting.description)")
                        .font(.largeTitle)
                        .padding(.bottom)
                    
                    
                } else if isEnding {
                    RoundedRectangle(cornerRadius:20 )
                        .frame(width:100 , height: 100)
                        .foregroundColor(Color.red)
                    Text("State: \(isStarting.description)")
                        .font(.largeTitle)
                        .padding(.bottom)
                } else {
                    Circle()
                        .frame(width: 100, height: 100 )
                }
                     
                
                VStack {
                    Button("Click 1:( \(isStarting.description))") {
                        isStarting.toggle()
                    }.font(.largeTitle)
                        .foregroundColor(Color.white)
                    
                    
                    Button("Click 2:( \(isEnding.description))") {
                        isEnding.toggle()
                    }.font(.largeTitle)
                        .foregroundColor(Color.white)
                    
                    
                }
            }
        }
    }
}

struct ConditinalStatement_Previews: PreviewProvider {
    static var previews: some View {
        ConditinalStatement()
    }
}
