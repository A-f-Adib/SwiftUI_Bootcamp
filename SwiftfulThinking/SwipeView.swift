//
//  SwipeView.swift
//  SwiftfulThinking
//
//  Created by A.f. Adib on 9/11/23.
//

import SwiftUI

struct SwipeView: View {
    @State var fruits : [String] = [
    "apples", "lemons", "bananas"]
    var body: some View {
        NavigationView{
            List{
                ForEach(fruits, id: \.self) {
                    Text($0.capitalized)
                        .swipeActions(
                            edge: .leading,
                            allowsFullSwipe: true) {
                                Button("Share") {
                                    
                                }.tint(.yellow)
                            }
                    
                        .swipeActions(
                            edge: .trailing,
                            allowsFullSwipe: false) {
                                Button("Like") {
                                    
                                }.tint(.blue)
                                
                                Button("React") {
                                    
                                }.tint(.green)
                                
                                Button("Delete") {
                                    
                                }.tint(.red)
                            }
                }
            }.navigationTitle("Swipe view")
        }
    }
}

struct SwipeView_Previews: PreviewProvider {
    static var previews: some View {
        SwipeView()
    }
}
