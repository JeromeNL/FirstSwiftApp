//
//  ListBootcamp.swift
//  FirstApp
//
//  Created by Joram Kwetters on 25/01/2023.
//

import SwiftUI

struct ListBootcamp: View {
    
    @State var fruits: [String] = [
        "apple",
        "orange",
        "banana",
        "pear"
    ]
    
    @State var veggies: [String] = [
        "tomato", "potato", "carrot"
    ]
    
    var body: some View {
        NavigationView {
            List{
                Section(
                    header: Text("Fruits")){
                    ForEach(fruits, id: \.self){ fruit in
                        Text(fruit.capitalized)
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                }
                Section(header: Text("Veggies")){
                    ForEach(veggies, id: \.self){ veggies in
                        Text(veggies.capitalized)
                            .font(.caption)
                            .foregroundColor(.white)
//                            .frame(maxWidth: .infinity, maxHeight: .infinity)
//                            .background(Color.orange)
                            .listRowBackground(Color.orange)
                        
                    }
                }
                
            }
            .tint(.yellow)
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("Grocery list")
            .navigationBarItems(
                leading: EditButton(),
                trailing: addButton
            )
        }
        .tint(.red)
    }
    
    var addButton: some View{
            Button("Add", action: {
                add()
            })
    }
    
    func delete(indexSet: IndexSet){
        fruits.remove(atOffsets: indexSet)
    }
    
    func move(indices: IndexSet, newOffset: Int){
        fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
    
    func add(){
        fruits.append("coconut")
    }
}

struct ListBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ListBootcamp()
    }
}
