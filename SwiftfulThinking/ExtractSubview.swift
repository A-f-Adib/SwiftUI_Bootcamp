//
//  ExtractSubview.swift
//  SwiftfulThinking
//
//  Created by A.f. Adib on 8/25/23.
//

import SwiftUI

struct ExtractSubview: View {
    var body: some View {
        
        ZStack{
            Color.green
                .ignoresSafeArea()
            
         HStack{
            ExtractedView(Title: "Apples", Count: 10, color: .red)
            ExtractedView(Title: "Oranges", Count: 20, color: .orange)
            ExtractedView(Title: "Lichis", Count: 30, color: .pink)
          }
        }
    }
}

struct ExtractSubview_Previews: PreviewProvider {
    static var previews: some View {
        ExtractSubview()
    }
}

struct ExtractedView: View {
    
    
    let Title : String
    let Count : Int
    let color : Color
    
    var body: some View {
        VStack {
            
            Text("\(Count)")
                .padding()
            Text(Title)
                .padding(.vertical)
                .padding(.horizontal)
                .foregroundColor(Color.white)
        }       .font(.title)
            .background(color)
            .cornerRadius(15)
    }
}
