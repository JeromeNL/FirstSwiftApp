//
//  AlertBootcamp.swift
//  FirstApp
//
//  Created by Joram Kwetters on 26/01/2023.
//

import SwiftUI

struct AlertBootcamp: View {
    
    @State var showAlert: Bool = false
    @State var alertType: MyAlerts? = nil
//    @State var alertTitle: String = ""
//    @State var alertMessage: String = ""
    @State var bgColor: Color = Color.gray
    
    enum MyAlerts{
        case success
        case error
    }
    
    var body: some View {
        ZStack{
            
            bgColor.edgesIgnoringSafeArea(.all)
            
            VStack {
                Button("BUTTON 1"){
                    alertType = .error
//                    alertTitle = "ERROR UPLOADING"
//                    alertMessage = "Content could not be uploaded"
                    showAlert.toggle()
                }
                
                Button("BUTTON 2"){
                    alertType = .success
//                    alertTitle = "UPLOADING succeeded"
//                    alertMessage = "The content is uploaded succesfully "
                    showAlert.toggle()
                }
            }
                .alert(isPresented: $showAlert, content: {
        //            Alert(title: Text("Error!"))
                    getAlert()
            })
            
        }
    }
    
    func getAlert() -> Alert{
//        return                 Alert(
//            title: Text("This is the title"),
//            message: Text("A description of the error"),
//            primaryButton: .destructive(Text("DELETE"), action: {
//                bgColor = Color.red
//            }),
//            secondaryButton: .cancel(Text("Annuleer"), action: {
//                bgColor = Color.yellow
//            }))
        
//        return Alert(
//            title: Text(alertTitle),
//            message: Text(alertMessage),
//            dismissButton: .default(Text("OK")))
        
        switch alertType{
        case .error:
            return Alert(
                title: Text("There was an error"))
        case .success:
            return Alert(title: Text("This was a success"), message: nil,
                         dismissButton: .default(Text("OK"), action: {
                bgColor = Color.blue
            }))
        default:
            return Alert(title: Text("error"))
        }
    }
}

struct AlertBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AlertBootcamp()
    }
}
