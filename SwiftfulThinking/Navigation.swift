//
//  Navigation.swift
//  SwiftfulThinking
//
//  Created by A.f. Adib on 8/26/23.
//

import SwiftUI

struct Navigation: View {
    var body: some View {
        NavigationView{
    
            ScrollView{
                VStack {
                    
//     NavigationLink("Click for second page",
//             destination: Text("hi"))
                    
                    NavigationLink("Inbox", destination: SecondPage())
                    
                    
                    Text("Sent message")
                    Text("Drafts")
                    Text("Outbox")
                    Text("Templates")
                    
                    
                }
              
                    .font(.title)
                    .padding(.top, 25)
                
                
            }
            .navigationTitle("All Messages")
            
            .navigationBarItems(
                leading: Image(systemName: "person.fill"),
                trailing: NavigationLink(
                    destination: ThirdPage(),
                    label: {Image(systemName: "gear")
                        
                })
                
                    .accentColor(.mint)
            )
           
        }
    }
}


struct SecondPage : View{
    var body: some View{
        
       
    
            
                VStack {
                    
//                    NavigationLink("Click for second page",      destination: Text("hi"))
                    
                    NavigationLink("Click for Third page", destination: ThirdPage())
                    
                    Text("Inbox")
                    Text("Sent message")
                    Text("Drafts")
                    Text("Outbox")
                    Text("Templates")
                    
                    
                }
              
                    .font(.title)
                    .padding(.top, 25)
                
                
            
            .navigationTitle("2nd screen")

        Spacer()
           
        
        
    }
}


struct ThirdPage : View{
    var body: some View{
        
        ZStack {
           
            Color.mint.ignoresSafeArea()
           
                
        
                ScrollView{
                   
                    VStack {
                        

                    
                        Text("Drafts")
                        Text("Outbox")
                        Text("Templates")
                        
                        
                    }
                  
                        .font(.title)
                        .padding(.top, 25)
                    
                    
                }
               // .navigationBarHidden(true)
               
            
        }
    }
}
struct Navigation_Previews: PreviewProvider {
    static var previews: some View {
        Navigation()
    }
}
