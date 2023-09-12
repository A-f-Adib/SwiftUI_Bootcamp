//
//  TextEditorView.swift
//  SwiftfulThinking
//
//  Created by A.f. Adib on 8/29/23.
//

import SwiftUI

struct TextEditorView: View {
    
    @State var TextEditorText : String = ""
    @State var savedText : String = ""
    var body: some View {
    
            
            NavigationView{
                ZStack{
                    Color.cyan
                    VStack {
                        TextEditor(text: $TextEditorText)
                            .frame(height : 300)
                            .cornerRadius(15)
                        
                        Button(action: {
                           
                            savedText = TextEditorText
                            
                           
                        }, label: {
                            Text("Save")
                                .frame(maxWidth : .infinity)
                                .padding()
                                .foregroundColor(Color.white)
                                .background( Color.brown)
                                .cornerRadius(10)
                                .frame(width : 380)
                            
                    
                        })
                        Text("You typped:")
                            .font(.title)
                        Text(savedText)
                        
                    }
                   
                    
                }
                .navigationTitle("TextEditor")
                .background(Color.brown)
                
               
            }
       
        
    }
}

struct TextEditorView_Previews: PreviewProvider {
    static var previews: some View {
        TextEditorView()
    }
}
