//
//  DatePickerView.swift
//  SwiftfulThinking
//
//  Created by A.f. Adib on 8/30/23.
//

import SwiftUI

struct DatePickerView: View {
    @State var SelectedDate : Date = Date()
   
    var dateFormatter : DateFormatter{
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .medium
        return formatter
    }
    var body: some View {
        ZStack {
            Color.gray.ignoresSafeArea()
            VStack{
                Text("Selected date:")
                    .font(.largeTitle)
                
                Text(dateFormatter.string(from: SelectedDate))
                    .font(.title2)
                Spacer()
                
                
                DatePicker("Date is:", selection: $SelectedDate)
                    .padding()
                    .background(Color.yellow)
                    .cornerRadius(15)
                    .font(.title3)
                Button {
                    
                } label: {
                    Text("Done")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(Color.white)
                        .cornerRadius(20)
                }

                Spacer()
            }
        }
       
    }
}

struct DatePickerView_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerView()
    }
}
