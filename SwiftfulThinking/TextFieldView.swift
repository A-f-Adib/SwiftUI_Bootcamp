//
//  TextFieldView.swift
//  SwiftfulThinking
//
//  Created by A.f. Adib on 8/28/23.
//

import SwiftUI

struct TextFieldView: View {
    
    @State var TextfieldText: String = ""
    @State var savedText : [String] = []
    var body: some View {
        NavigationView{
            ZStack {
                Color.mint
                VStack{
                    TextField("Type something here...", text: $TextfieldText)
                        .background(Color.white.opacity(0.7))
                        .cornerRadius(10)
                        .font(.title)
                        .frame(width :.infinity, height: 10)
                        .padding()
                        .submitLabel(.search)
                    
                    
                    Button(action: {
                        if isTextAppropriate() {
                            saveText()
                        }
                       
                    }, label: {
                        Text("Save")

                            .frame(maxWidth : .infinity)
                            .padding()
                            .foregroundColor(Color.white)
                            .background(isTextAppropriate () ? Color.blue : Color.brown)
                            .cornerRadius(10)
                            .padding()
                            .frame(width : 380)
                        
                        
                
                    }).disabled(!isTextAppropriate())
                    
                    Text("Your typed texts are below:")
                        .padding()
                        .font(.title)
                    ForEach(savedText, id: \.self) { data in
                        Text(data)
                    }
                    Spacer()
                }
                .navigationTitle(Text("Textfield View"))
                
            .padding(.top, 30)
           
            }.background(Color.brown)
          
        }
        
        
    }
    
    func saveText (){
        savedText.append(TextfieldText)
        TextfieldText = ""
    }
    
    func isTextAppropriate () -> Bool {
        if TextfieldText.count >= 3 {
            return true
        }
        return false
    }
}

struct TextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            TextFieldView()
           
        }
         
            
    }
}
