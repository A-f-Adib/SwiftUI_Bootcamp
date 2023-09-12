//
//  userModel.swift
//  SwiftfulThinking
//
//  Created by A.f. Adib on 9/4/23.
//

import SwiftUI
struct userInfo : Identifiable  {
    let id : String = UUID().uuidString
    let userName : String
    let userID : String
    let followers : Int
    let tickmark : Bool
    
}

struct userModel: View {
    @State var names : [userInfo] = [
        userInfo(userName:"Rifat", userID:"rifat.123", followers: 100, tickmark: false),
        userInfo(userName: "Mithi", userID: "mithi.456", followers: 200, tickmark: true),
        userInfo(userName: "Sumi", userID: "sumi.789", followers: 25, tickmark: false),
        userInfo(userName: "Ayan", userID: "ayan.336", followers: 150, tickmark: true)
   ]
    var body: some View {
        NavigationView{
           
                List{
                    
                    ForEach(names)   { data in
                        HStack {
                            Rectangle()
                                .frame(width: 40, height: 40)
                                .cornerRadius(10)
                                .padding()
                                .foregroundColor(Color.red)
                               
                           
                            VStack(alignment:.leading) {
                                Text(data.userName)
                                    .font(.headline)
                                Text("@\(data.userID)")
                                    .font(.callout)
//                                    .foregroundColor(Color.gray)
                                
                               
                            }
                            Spacer()
                            
                            if data.tickmark {
                                Image(systemName: "checkmark.seal.fill")
                                    .foregroundColor(Color.blue)
                                
                            }
                            
                           VStack {
                               
                                Text("\(data.followers)")
                                    .font(.headline)
                                Text("followers")
                                    .foregroundColor(Color.gray)
                            }
                            
                        }
                        
                    }
                }
            
            
        .navigationTitle("Model view")
        }
    }
}

struct userModel_Previews: PreviewProvider {
    static var previews: some View {
        userModel()
    }
}
