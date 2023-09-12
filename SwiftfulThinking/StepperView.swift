//
//  StepperView.swift
//  SwiftfulThinking
//
//  Created by A.f. Adib on 8/30/23.
//

import SwiftUI

struct StepperView: View {
    
    @State var StepperValue : Int = 100
    @State var IncValue : CGFloat = 0
    var body: some View {
        ZStack{
            Color.cyan
                .ignoresSafeArea()
            VStack{
                Text("Stepper 1").font(.largeTitle).foregroundColor(.black).padding(.top,20)
                Stepper("Initial value: \(StepperValue)", value: $StepperValue)
                    .padding(.horizontal)
                    .font(.title)
                Spacer()
            }
            
            
            VStack{
                Text("Stepper 2").font(.largeTitle).foregroundColor(.black).padding(.top,20)
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: 100 + CGFloat(IncValue), height: 100)
                    .foregroundColor(Color.white)
             
                Stepper("Increment: \(IncValue)") {
                    widthChange(amount: 50)
                } onDecrement: {
                    widthChange(amount: -50)
                }.padding()

                
            }
        }
    }
    func widthChange(amount : CGFloat){
        withAnimation(.easeInOut){
            IncValue += amount
        }
    }
}

struct StepperView_Previews: PreviewProvider {
    static var previews: some View {
        StepperView()
    }
}
