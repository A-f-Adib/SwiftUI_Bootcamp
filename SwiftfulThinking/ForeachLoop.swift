//
//  ForeachLoop.swift
//  SwiftfulThinking
//
//  Created by A.f. Adib on 8/20/23.
//

import SwiftUI


struct ForeachLoop: View {
    var body: some View {
        
        VStack{
            ForEach(0..<10 ) { index in
                HStack{
                    Circle()
                        .frame(width: 40, height:50 )
                    Text("Hello World: \(index)")
                }
                
            }
        }
    }
}

struct ForeachLoop_Previews: PreviewProvider {
    static var previews: some View {
        ForeachLoop()
    }
}
