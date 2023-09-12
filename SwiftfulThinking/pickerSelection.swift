//
//  pickerSelection.swift
//  SwiftfulThinking
//
//  Created by A.f. Adib on 8/30/23.
//

import SwiftUI

struct pickerSelection: View {
    @State var Selection : String = ""
    let FilterOption : [String] = ["like", "comment","share"]
    var body: some View {
        
     
            Picker("Choose", selection: $Selection) {
                ForEach(FilterOption, id: \.self) { option in
                    Text("choose : \(option)")
                       
                }
            }
            .padding()
            .background(Color.orange)
            .foregroundColor(Color.white)
            .cornerRadius(10)
          
        
       
}

struct pickerSelection_Previews: PreviewProvider {
    static var previews: some View {
        pickerSelection()
    }
}
}
