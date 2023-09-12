//
//  ClassAndObject.swift
//  SwiftfulThinking
//
//  Created by A.f. Adib on 9/8/23.
//

import SwiftUI

struct fruitInfo : Identifiable {
    let id : String = UUID().uuidString
    let name: String
    let amount : Int
}
 
class FruitViewModel : ObservableObject{
    @Published var fruitArray : [fruitInfo] = []
    
    init(){
        getfruits()
    }
    
    func getfruits (){
        let fruit_1 = fruitInfo(name: "apple", amount: 10)
        let fruit_2 = fruitInfo(name: "orange", amount: 15)
        let fruit_3 = fruitInfo(name: "banana", amount: 20)
        
        fruitArray.append(fruit_1)
        fruitArray.append(fruit_2)
        fruitArray.append(fruit_3)
        
    }
    
    func deleteFruit (index : IndexSet){
        fruitArray.remove(atOffsets: index)
    }
}


struct ClassAndObject: View {
@StateObject var fruitViewModel : FruitViewModel = FruitViewModel()
    
    var body: some View {
        NavigationView{
            List{
                ForEach(fruitViewModel.fruitArray) { data in
                    HStack {
                        Text("\(data.amount)")
                            .foregroundColor(Color.red)
                        Text(data.name)
                       
                    }
                }.onDelete(perform: fruitViewModel.deleteFruit)
                
            }
//            init has been called instead of this for overcome loop appear
            /*.onAppear {
                fruitViewModel.getfruits()
            } */
            .navigationTitle("Fruit Items")
            .navigationBarItems(trailing:
                                        NavigationLink(
                                            destination : anotherScreen(fruitViewModel_2:  fruitViewModel),
                                            label : {
                                                Image(systemName: "arrow.right")
                                            })
                                )
        }
    }
}

 struct anotherScreen : View{
     @ObservedObject var fruitViewModel_2 : FruitViewModel
    var body: some View{
        ZStack{
            Color.gray
            VStack {
                ForEach(fruitViewModel_2.fruitArray) { data in
                    HStack{
                        Text("\(data.amount)")
                            .foregroundColor(Color.white)
                        Text(data.name)
                    }
                }
            }
        }
    }
 }

struct ClassAndObject_Previews: PreviewProvider {
    static var previews: some View {
        ClassAndObject()
        //   anotherScreen()
    }
}
