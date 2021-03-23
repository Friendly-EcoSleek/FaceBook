//
//  Payments.swift
//  Face Book login
//
//  Created by Happy on 22/03/21.
//

import SwiftUI


@available(iOS 13.0, *)
struct Payments: View {
    @State var selected = 1
    var body: some View {
        ZStack(alignment: .top){
            Color.white
                .edgesIgnoringSafeArea(.all)
            VStack{
                HStack{
                    Image("back")
                    Spacer()
                    Image("nsdl_jiffy_logo_popup").resizable()
                        .frame(width: 200, height: 40)
                    Spacer()
                    Image("home")
                }.frame(width: UIScreen.main.bounds.width-12, height: 40, alignment: .center)
                
                VStack{
                    ZStack(alignment: .leading){
                        Color.gray
                            .opacity(0.2)
                        HStack{
                            ZStack{
                                Color.gray
                                    .opacity(0.5)
                                    .frame(width: 140)
                                Text("PAYMENTS")
                                    .padding(.leading, 5)
                            }
                            Spacer()
                            Text("Transfers")
                                .onTapGesture{
                                    self.selected = 1
                                }
                            Spacer()
                            Text("Recharge Bill Pay")
                                //                                .padding(.tra)
                                .onTapGesture{
                                    self.selected = 2
                                }
                        }
                        
                    }.frame(width: UIScreen.main.bounds.width, height: 50, alignment: .leading)
                    HStack(alignment: .top){
                        Rectangle()
                            .fill(Color.gray)
                            .opacity(0.5)
                            .frame(width: UIScreen.main.bounds.width/3, height: 2)
                        
                        Rectangle()
                            .fill(self.selected == 1 ? Color.black : Color.gray)
                            .opacity(self.selected == 1 ? 1 : 0.1)
                            .frame(width: UIScreen.main.bounds.width/3, height: 2)
                        
                        Rectangle()
                            .fill(self.selected == 2 ? Color.black : Color.gray)
                            .opacity(self.selected == 2 ? 1 : 0.1)
                            .frame(width: UIScreen.main.bounds.width/3, height: 2)
                        
                    }.offset(y: -12)
                }.padding(.bottom, -10)
                ZStack{
                    Color.gray
                        .opacity(0.1)
                        .frame(width: UIScreen.main.bounds.width-22)
                    ScrollView(.vertical){
                        VStack{
                            ZStack(alignment: .leading){
                                Color.gray
                                    .opacity(0.2)
                                VStack(alignment: .leading){
                                    HStack{
                                        Image("BillSelected").resizable()
                                            .frame(width: 20, height: 20)
                                        Text("Last Transactions")
                                    }
                                }
                            }.frame(width: UIScreen.main.bounds.width-22, height: 40, alignment: .leading)
                            
                                if(self.selected == 1){
                                    ForEach(0..<20){_ in
                                    PaymentsList()
                                    }
                                }
                                else if(self.selected == 2){
                                    ForEach(0..<20){_ in
                                    RechargeBills()
                                    }
                                }
                        }.frame(width: UIScreen.main.bounds.width-22)
                    }
                }
            }
        }
    }
}

@available(iOS 13.0.0, *)
struct Payments_Previews: PreviewProvider {
    static var previews: some View {
        Payments()
    }
}


@available(iOS 13.0, *)
struct PaymentsList: View {
    
    @State var dropIndex = 0
    @State var isChecked:Bool = false
    func toggle(){isChecked = !isChecked}
    var body: some View {
        
        VStack{
            HStack{
                HStack{
                    Text("15")
                        .fontWeight(.bold)
                        .font(.system(size: 30))
                    VStack{
                        Text("Mar")
                            .fontWeight(.light)
                            .font(.system(size: 10))
                        Text("2021")
                            .fontWeight(.light)
                            .font(.system(size: 10))
                    }
                }
                Spacer()
                VStack(alignment: .leading){
                    Text("FUNDTRANSFER")
                        .fontWeight(.bold)
                        .font(.system(size: 15))
                    Text("Raj Walke - 147505115800")
                        .fontWeight(.light)
                        .font(.system(size: 12))
                }
                Spacer()
                Spacer()
                HStack(alignment: .bottom){
                    Text("200")
                        .foregroundColor(.black)
                        .fontWeight(.medium)
                        .font(.system(size: 20))
                    Text(".00")
                        .foregroundColor(.black)
                        .fontWeight(.medium)
                        .font(.system(size: 13))
                        .offset(x: -7)
                }
                
                Button(action: {
                    if(self.isChecked == false){
                        self.isChecked = true
                    }
                    else{
                        self.isChecked = false
                    }
                }){
                    Image("down_arrow").renderingMode(.template)
                        .resizable()
                        .foregroundColor(.orange)
                        .frame(width: 15, height: 15, alignment: .center)
                        .rotationEffect(.degrees(self.isChecked ? 180 : 0))
                        .padding(.horizontal)
                }
            }
            if(self.isChecked){
                Line()
                    .stroke(style: StrokeStyle(lineWidth: 1, dash: [5]))
                    .frame(height: 1)
                HStack{
                    VStack(alignment: .leading){
                        Text("Transaction Reference Number :")
                            .fontWeight(.light)
                            .font(.system(size: 13))
                            .foregroundColor(.gray)
                        
                        Text("JSE2021315179332939043")
                            .fontWeight(.bold)
                            .font(.system(size: 15))
                            .padding(.vertical, 3)
                    }
                    Spacer()
                    VStack(alignment: .leading){
                        Text("Status :")
                            .fontWeight(.light)
                            .font(.system(size: 13))
                            .foregroundColor(.gray)
                        HStack{
                        Image("Group 10923")
                            .renderingMode(.template)
                        Text("Success")
                            .fontWeight(.bold)
                            .font(.system(size: 15))
                        }
                            .foregroundColor(.green)
                        .padding(.vertical, 3)
                    }.padding(.trailing, 10)
                }
                Line()
                    .stroke(style: StrokeStyle(lineWidth: 1, dash: [5]))
                    .frame(height: 1)
                HStack{
                    Spacer()
                    Image("refresh")
                        .renderingMode(.template)
                        .resizable()
                        .frame(width: 15, height: 15)
                    Text("Repeat")
                        .padding(.trailing, 15)
                }.foregroundColor(.orange)
            }
            Rectangle()
                .foregroundColor(.gray)
                .frame(width: UIScreen.main.bounds.width-32, height: 3)
        }.frame(width: UIScreen.main.bounds.width-32)
        
    }
}



@available(iOS 13.0, *)
struct RechargeBills: View {
    @State var dropIndex = 0
    @State var isChecked:Bool = false
    func toggle(){isChecked = !isChecked}
    var body: some View {
        
        VStack{
            HStack{
                HStack{
                    Text("15")
                        .fontWeight(.bold)
                        .font(.system(size: 30))
                    VStack{
                        Text("Mar")
                            .fontWeight(.light)
                            .font(.system(size: 10))
                        Text("2021")
                            .fontWeight(.light)
                            .font(.system(size: 10))
                    }
                }
                Spacer()
                VStack(alignment: .leading){
                    Text("FUNDTRANSFER")
                        .fontWeight(.bold)
                        .font(.system(size: 15))
                    Text("CREDIT CARD CITI BANK - ")
                        .fontWeight(.light)
                        .font(.system(size: 12))
                    Text("111111111111111")
                        .fontWeight(.light)
                        .font(.system(size: 13))
                }
                Spacer()
                Spacer()
                HStack(alignment: .bottom){
                    Text("1")
                        .fontWeight(.light)
                        .font(.system(size: 13))
                    Text(".00")
                        .fontWeight(.light)
                        .font(.system(size: 10))
                        .offset(x: -7)
                }
                Spacer()
                Button(action: {
                    if(self.isChecked == false){
                        self.isChecked = true
                    }
                    else{
                        self.isChecked = false
                    }
                }){
                    Image("down_arrow").renderingMode(.template)
                        .resizable()
                        .foregroundColor(.orange)
                        .frame(width: 15, height: 15, alignment: .center)
                        .rotationEffect(.degrees(self.isChecked ? 180 : 0))
                        .padding(.horizontal)
                }
            }
            if(self.isChecked){
                Line()
                    .stroke(style: StrokeStyle(lineWidth: 1, dash: [5]))
                    .frame(height: 1)
                HStack{
                    VStack(alignment: .leading){
                        Text("Transaction Reference Number :")
                            .fontWeight(.light)
                            .font(.system(size: 13))
                            .foregroundColor(.gray)
                        
                        Text("JSE2021315179332939043")
                            .fontWeight(.bold)
                            .font(.system(size: 15))
                            .padding(.vertical, 3)
                    }
                    Spacer()
                    VStack(alignment: .leading){
                        Text("Status :")
                            .fontWeight(.light)
                            .font(.system(size: 13))
                            .foregroundColor(.gray)
                        HStack{
                        Image("Group 10923")
                            .renderingMode(.template)
                        Text("Success")
                            .fontWeight(.bold)
                            .font(.system(size: 15))
                        }
                            .foregroundColor(.green)
                        .padding(.vertical, 3)
                    }.padding(.trailing, 10)
                }
                Line()
                    .stroke(style: StrokeStyle(lineWidth: 1, dash: [5]))
                    .frame(height: 1)
                HStack{
                    Spacer()
                    Image("refresh")
                        .renderingMode(.template)
                        .resizable()
                        .frame(width: 15, height: 15)
                    Text("Repeat")
                        .padding(.trailing, 15)
                }.foregroundColor(.orange)
            }
            Rectangle()
                .foregroundColor(.gray)
                .frame(width: UIScreen.main.bounds.width-32, height: 3)
        }.frame(width: UIScreen.main.bounds.width-32)
    }
}


@available(iOS 13.0.0, *)
struct Line: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: rect.width, y: 0))
        return path
    }
}

