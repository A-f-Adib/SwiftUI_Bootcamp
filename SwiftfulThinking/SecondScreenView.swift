//
//  SecondScreenView.swift
//  SwiftfulThinking
//
//  Created by A.f. Adib on 8/26/23.
//

import SwiftUI

struct SecondScreenView: View {
    
    @State var firstScreen : Bool = false
    
    var body: some View {
       
        ZStack{
            Color.cyan
                .ignoresSafeArea()
            
            
            Button(action: {
                firstScreen.toggle()
                
            }, label: {
                Text("Click 1")
                    .foregroundColor(Color.white)
                    .font(.largeTitle)
                
            })

            
                .fullScreenCover(isPresented: $firstScreen, content: {
                    SecScreen()
                })
            
//                .sheet(isPresented: $firstScreen,  content: {
//                })
            
        }
    }
}

struct SecScreen: View {
    
    @State var firstScreen = false
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View{
        ZStack{
            Color.mint
            
                .ignoresSafeArea()
            
            
            VStack {
                Button(action: {
                    firstScreen.toggle()
                    
                }, label: {
                    Text("Click 2")
                        .foregroundColor(Color.white)
                        .font(.largeTitle)
                    
            })
                Button(action: {
                   
                    presentationMode.wrappedValue.dismiss()
                    
                }, label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color.white)
                        .font(.largeTitle)
                        .padding()
                        .background(Color.black)
                    
                })
            }
            
            
           

                .sheet(isPresented: $firstScreen,  content: {
                    ThirdScr()
                   
                })
        }
    }
}


 struct ThirdScr : View {
     
     @Environment(\.presentationMode) var presentationMode
    
    var body: some View{
        ZStack(alignment:.topLeading){
            Color.green
                .ignoresSafeArea()
            
            
            Button(action: {
               
                presentationMode.wrappedValue.dismiss()
                
            }, label: {
                Image(systemName: "xmark")
                    .foregroundColor(Color.white)
                    .font(.largeTitle)
                    .padding()
                    .background(Color.black)
                
            })

                
        }
    }
    
}

struct SecondScreenView_Previews: PreviewProvider {
    static var previews: some View {
       SecondScreenView()
    }
}
