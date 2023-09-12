//
//  AlartView.swift
//  SwiftfulThinking
//
//  Created by A.f. Adib on 8/27/23.
//

import SwiftUI

struct AlartView: View {
    
    @State var bgColor : Color = Color.yellow
    @State var showAlart : Bool = false
    var body: some View {
        
        ZStack{
           bgColor
                .ignoresSafeArea()
            Button("Click here") {
                showAlart.toggle()
               
            }.font(.largeTitle)
                .foregroundColor(Color.white)
            
                .alert(isPresented: $showAlart) {
                    Alert(title: Text("Delete item?"),
                          message: Text("The items you select will be deleted"),
                          primaryButton: .destructive(Text("Delete"), action: {
                        bgColor = .green
                    
                        background(showAlart ? Color.purple : Color.orange)
                    }),
                          secondaryButton: .cancel())
                }
        }
    }
}

struct AlartView_Previews: PreviewProvider {
    static var previews: some View {
        AlartView()
    }
}
