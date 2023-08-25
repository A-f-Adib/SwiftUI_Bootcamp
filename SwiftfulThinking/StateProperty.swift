//
//  StateProperty.swift
//  SwiftfulThinking
//
//  Created by A.f. Adib on 8/24/23.
//

import SwiftUI

struct StateProperty: View {
    
    @State var backgroundColor : Color = Color.green
    @State var Title : String = "Hello"
    @State var Count : Int = 0
    
    var body: some View {
        ZStack{
            
            backgroundColor
                .ignoresSafeArea(.all)
            
            
            VStack(spacing: 20)
            {
                Text(Title)
                    .font(.largeTitle)
                Text("count \(Count)")
                    .underline()
                
                HStack(spacing : 20)
                {
                    
                    Button("button 1") {
                        backgroundColor = .yellow
                        Title = "button 1 is pressed"
                        Count += 1
                    }
                    
                    Button("button 2") {
                        backgroundColor = .orange
                        Title = "button 2 is pressed"
                        Count -= 1
                    }
                }.font(.largeTitle)
    
            }
        }
    }
}

struct StateProperty_Previews: PreviewProvider {
    static var previews: some View {
        StateProperty()
    }
}
