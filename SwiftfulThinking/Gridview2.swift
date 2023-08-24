//
//  Gridview2.swift
//  SwiftfulThinking
//
//  Created by A.f. Adib on 8/23/23.
//

import SwiftUI

struct Gridview2: View {
    let Columns : [GridItem] = [
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
        
    ]
    
    var body: some View {
        
        ScrollView{
            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .frame(height:300)
                    .foregroundColor(Color.orange)
                Text("GridView")
                    .font(.largeTitle)
                    .foregroundColor(Color.white)
                   
            }
           
            
            LazyVGrid(
                columns: Columns,
                alignment: .center,
                spacing: 1,
                pinnedViews: [.sectionHeaders],
                content:{
                    Section(header: Text("Section_1")
                                .foregroundColor(Color.red)
                                .font(.title)
                                .background(Color.green)
                                .padding()) {
                        ForEach(0..<21) { index in
                        RoundedRectangle(cornerRadius: 10)
                                .frame(height : 150)
                                .foregroundColor(Color.blue)
                           
                                
                        }
                    }
                    
                    
                    
                    
                    Section(header: Text("Section_2")
                                .foregroundColor(Color.white)
                                .font(.title)
                                .background(Color.red)
                                .padding()) {
                        ForEach(0..<21) { index in
                        RoundedRectangle(cornerRadius: 10)
                                .frame(height : 150)
                                .foregroundColor(Color.green)
                           
                                
                        }
                    }
                   
                }
                    )
            
            
            
        }
    }
}

struct Gridview2_Previews: PreviewProvider {
    static var previews: some View {
        Gridview2()
    }
}
