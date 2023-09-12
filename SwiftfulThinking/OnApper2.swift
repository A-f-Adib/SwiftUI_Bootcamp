//
//  OnApper2.swift
//  SwiftfulThinking
//
//  Created by A.f. Adib on 9/4/23.
//

import SwiftUI

struct OnApper2: View {
    @State var myText : String? = nil
    @State var isLoading : Bool = false
    @State var CurrentUserID : String? = "abc"
    var body: some View {
        NavigationView{
            ScrollView{
              
            VStack {
                    Text("we practice safe coding...")
                    .font(.title3)
                
                if let text = myText {
                    Text(text)
                        .font(.largeTitle)
                        .padding()
                }
                if isLoading{
                    ProgressView()
                }
               }
                
            }.onAppear(perform: {
                LoadData()
            })
                .navigationTitle("Safe Coding")
                
            
              
        }
    }
    
    func LoadData (){
        if let UserID = CurrentUserID{
            isLoading = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                myText = "Login Successfull. ur user id is: \(UserID)"
             isLoading = false
            }
        }
        else{
            myText = "Wrong User id"
        }
        
    }
}

struct OnApper2_Previews: PreviewProvider {
    static var previews: some View {
        OnApper2()
    }
}
