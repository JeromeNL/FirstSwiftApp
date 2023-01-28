////
////  ViewModelBootcamp.swift
////  FirstApp
////
////  Created by Joram Kwetters on 28/01/2023.
////
//
//import SwiftUI
//
//struct FruitModel : Identifiable {
//    let id: String = UUID().uuidString
//    let name: String
//    let count: Int
//}
//
//class FruitViewModel: ObservableObject {
//    @Published var fruitArray: [FruitModel] = []
//    @Published var isLoading: Bool = false
//
//    func getFruits(){
//        let fruit1 = FruitModel(name: "Orange", count: 1)
//        let fruit2 = FruitModel(name: "Banana", count: 22)
//        let fruit3 = FruitModel(name: "Watermelon", count: 62)
//
//        isLoading = true;
//        DispatchQueue.main.asyncAfter(deadline: .now() + 3){
//            self.fruitArray.append(fruit1)
//            self.fruitArray.append(fruit2)
//            self.fruitArray.append(fruit3)
//            self.isLoading = false
//        }
//
//
//    }
//
//    func deleteFruit(index: IndexSet){
//        fruitArray.remove(atOffsets: index)
//    }
//}
//
//struct ViewModelBootcamp: View {
//
////    @State var fruitArray: [FruitModel] = []
//    // @StateObject is the same as @ObservedObject, but does not reload by reloading the view
//    // @StateObject -> Use on creation/First
//    // @ObservedObject -> Use on subviews (not first)
//    @StateObject var fruitViewModel: FruitViewModel = FruitViewModel()
//
//    var body: some View {
//        NavigationView{
//            List{
//
//                if(fruitViewModel.isLoading){
//                    ProgressView()
//                } else {
//                    ForEach(fruitViewModel.fruitArray) { fruit in
//                        HStack{
//                            Text("\(fruit.count)")
//                                .foregroundColor(.red)
//                            Text(fruit.name)
//                                .font(.headline)
//                                .bold()
//                        }
//                    }
//                    .onDelete(perform: fruitViewModel.deleteFruit)
//                }
//            }
//            .listStyle(GroupedListStyle())
//            .navigationTitle("Fruit List")
//            .navigationBarItems(trailing:
//            NavigationLink(
//                destination: RandomScreen(),
//                label: {
//                    Text("Navigate")
//                })
//                Image(systemName: "arrow.right")
//                .font(.title)
//
//            )
//
//            .onAppear{
//                fruitViewModel.getFruits()
//            }
//
//        }
//    }
//}
//
//struct RandomScreen: View {
//
//    @Environment(\.presentationMode) var presentationMode
//
//
//    var body: some View{
//        ZStack{
//            Color.green.ignoresSafeArea(.all)
//
//            Button(action: {
//                presentationMode.wrappedValue.dismiss()
//            }, label:{
//                Text("GO BACK")
//                    .foregroundColor(.white)
//                    .font(.largeTitle)
//                    .fontWeight(.semibold)
//            })
//        }
//    }
//}
//
//
//struct ViewModelBootcamp_Previews: PreviewProvider {
//    static var previews: some View {
//        ViewModelBootcamp()
//        //RandomScreen()
//    }
//}
