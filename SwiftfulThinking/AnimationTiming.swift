//
//  AnimationTiming.swift
//  SwiftfulThinking
//
//  Created by A.f. Adib on 8/25/23.
//

import SwiftUI

struct AnimationTiming: View {
    
    @State var isAnimating : Bool = true
    var body: some View {
        VStack{
         RoundedRectangle(cornerRadius: 20)
                .foregroundColor(Color.blue)
                .frame(width: isAnimating ? 50 : 350 ,
                       height: isAnimating ? 80 : 80 )
                .animation(Animation.linear(duration:1.0 ))
            
            
            RoundedRectangle(cornerRadius: 20)
                   .foregroundColor(Color.green)
                   .frame(width: isAnimating ? 50 : 350 ,
                          height: isAnimating ? 80 : 80 )
                   .animation(Animation.easeIn(duration:1.0 ))
            
            
            RoundedRectangle(cornerRadius: 20)
                   .foregroundColor(Color.yellow)
                   .frame(width: isAnimating ? 50 : 350 ,
                          height: isAnimating ? 80 : 80 )
                   .animation(Animation.easeOut(duration:1.0 ))
            
            
            RoundedRectangle(cornerRadius: 20)
                   .foregroundColor(Color.pink
                   )
                   .frame(width: isAnimating ? 50 : 350 ,
                          height: isAnimating ? 80 : 80 )
                   .animation(Animation.easeInOut(duration:1.0 ))
            
            
            
        RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 50 : 350 ,
                       height: isAnimating ? 80 : 80 )
                .animation(.spring(
                    response: 0.5,
                    dampingFraction: 0.6,
                    blendDuration: 1.0))
            
            if isAnimating == false {
                Spacer()
                Spacer()
                RoundedRectangle(cornerRadius: 20)
                    .foregroundColor(Color.cyan)
                        .frame(width: isAnimating ? 50 : 350 ,
                               height: isAnimating ? 80 : 80 )
                        .animation(.easeInOut)
                        .transition(.asymmetric(
                            insertion: .move(edge: .leading),
                            removal: .move(edge: .trailing)))
                
                
               
            }
            
            
        
            Spacer()
            Button("Click") {
                isAnimating.toggle()
            }
            .font(.largeTitle)
                      
        }
    }
}

struct AnimationTiming_Previews: PreviewProvider {
    static var previews: some View {
        AnimationTiming()
    }
}
