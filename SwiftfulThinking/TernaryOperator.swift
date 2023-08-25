//
//  TernaryOperator.swift
//  SwiftfulThinking
//
//  Created by A.f. Adib on 8/25/23.
//

import SwiftUI

struct TernaryOperator: View {
    
    @State var isStarting : Bool = false
    
    var body: some View {
       
        ZStack {
            Color.mint
                .ignoresSafeArea()
            VStack{
                RoundedRectangle(cornerRadius: 20)
                
                
    // isStaring == true ? (true cond.) : (false cond.)
                    .frame(
                         width:isStarting ? 300 : 200,
                         height : isStarting ? 100 : 150)
                    .foregroundColor(isStarting ? Color.orange : Color.purple)
                
                Text("State: \(isStarting.description)")
                    .font(.largeTitle)
                    .padding(.bottom)
                Button("Click") {
                    isStarting.toggle()
                }.font(.largeTitle)
                    .foregroundColor(Color.white)
            }
        }
    }
}

struct TernaryOperator_Previews: PreviewProvider {
    static var previews: some View {
        TernaryOperator()
    }
}
