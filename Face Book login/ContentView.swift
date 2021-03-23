////
////  ContentView.swift
////  Face Book login
////
////  Created by Happy on 18/03/21.
////
//
//import SwiftUI
//import FBSDKLoginKit
//import Firebase
//
//struct ContentView: View {
//    var body: some View {
//        
//        VStack{
//            
//            login().frame(width: 100, height: 50)
//                .padding()
//            
//            Button(action: {
//                
//            }){
//                ZStack{
//                    RoundedRectangle(cornerRadius: 10)
//                        .foregroundColor(Color("facebook"))
//                        .frame(width: 280, height: 50, alignment: .center)
//                    Text("Login in to Facebook")
//                        .font(.title)
//                        .foregroundColor(.white)
//                }
//            }
//            .padding()
//        }
//    }
//}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
//
//struct login : UIViewRepresentable {
//    
//    func makeCoordinator() -> login.Coordinator {
//        return login.Coordinator()
//    }
//    func makeUIView(context: UIViewRepresentableContext<login>) -> login.UIViewType {
//        let button = FBLoginButton()
//        button.permissions = ["email"]
//        button.delegate = context.coordinator
//        return button
//    }
//    
//    func updateUIView(_ uiView: FBLoginButton, context: UIViewRepresentableContext<login>) {
//        
//    }
//    
//    class Coordinator : NSObject, LoginButtonDelegate{
//        func loginButton(_ loginButton: FBLoginButton, didCompleteWith result: LoginManagerLoginResult?, error: Error?) {
//            
//            if error != nil {
//                print((error?.localizedDescription)!)
//                return
//            }
//            
//            if AccessToken.current != nil{
//                let credential = FacebookAuthProvider.credential(withAccessToken: AccessToken.current!.tokenString)
//                
//                Auth.auth().signIn(with: credential) { (res, er) in
//                    if er != nil{
//                        print((er?.localizedDescription)!)
//                        return
//                    }
//                    print("success")
//                }
//            }
//            
//        }
//        
//        func loginButtonDidLogOut(_ loginButton: FBLoginButton) {
//            try! Auth.auth().signOut()
//        }
//        
//        
//    }
//}
