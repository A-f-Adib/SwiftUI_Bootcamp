//
//  Animation.swift
//  SwiftfulThinking
//
//  Created by A.f. Adib on 8/25/23.
//

import SwiftUI

struct AnimationView: View {
    @State var isAnimated : Bool = true
    var body: some View {
        ZStack {
            Color.teal
                .ignoresSafeArea()
            VStack{
                Spacer()
                RoundedRectangle(cornerRadius: isAnimated ? 20:50)
                
                
                    .frame(
                         width : isAnimated ? 300 : 100,
                         height : isAnimated ? 150 : 100)
                    .foregroundColor(isAnimated ? Color.orange : Color.black)
                    .rotationEffect(Angle(degrees: isAnimated ? 0 : 200))
                    .offset( y: isAnimated ? 0 : -250)
                
                Text("State: \(isAnimated.description)")
                    .font(.largeTitle)
                    .padding(.bottom)
                    
                Spacer()
                Button("Click") {
                   
                    withAnimation(
                        Animation
                        .default
                        .repeatCount(1, autoreverses: true))
//                            .repeatForever())
                    {
                        isAnimated.toggle()
                    }
                        
                   
                    
                    
                }.font(.largeTitle)
                    .foregroundColor(Color.white)
            }
        }
    }
}

struct AnimationView_Previews: PreviewProvider {
    static var previews: some View {
        AnimationView()
    }
}
