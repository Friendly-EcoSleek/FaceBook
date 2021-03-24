//
//  ScratchCard.swift
//  Face Book login
//
//  Created by Happy on 24/03/21.
//

import SwiftUI

struct ScratchCard: View {
    var body: some View {
        ZStack(alignment: .top){
            Color.white
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                HStack{
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Image("nsdl_jiffy_logo_popup").resizable()
                        .frame(width: 200, height: 40)
                    Spacer()
                    Image("share_black")
                        .resizable()
                        .frame(width: 30, height: 30)
                    
                    Image("home")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .padding(.horizontal, 5)
                }.frame(width: UIScreen.main.bounds.width-12, height: 40, alignment: .center)
                
                ScrollView(.vertical, showsIndicators: false) {
                ZStack{
                    Rectangle()
                        .fill(LinearGradient(gradient: Gradient(colors: [Color.init(red: 144/255, green: 238/255, blue: 144/255), Color.init(red: 144/255, green: 238/255, blue: 144/255, opacity: 0.2)]), startPoint: .top, endPoint: .bottom))
                    
                    VStack{
                        Spacer()
                        Image("recharge_badge")
                            .padding(3)
//                        Spacer()
                        Spacer()
                        HStack(alignment: .bottom){
                            Text("1")
                                .fontWeight(.medium)
                                .font(.system(size: 25))
                            Text(".00")
                                .fontWeight(.medium)
                                .font(.system(size: 15))
                                .offset(x: -7)
                        }
                        Text("Money Sent in a jiffy")
                            .fontWeight(.semibold)
                            .font(.system(size: 25))
                            .padding(3)
                        Text("25 Aug 2020 03:42 PM")
                            .fontWeight(.light)
                            .font(.system(size: 18))
                        Spacer()
                    }
                }.frame(width: UIScreen.main.bounds.width, height: 330)
                
                
                ZStack{
                    Rectangle()
                    .frame(width: UIScreen.main.bounds.width-22, height: 310, alignment: .center)
                        .foregroundColor(.white)
                    .shadow(color: Color.black, radius: 3, x: 1, y: 3)
                    .blur(radius: 1)
                    VStack(alignment: .leading){
                        Text("Reference No :")
                            .fontWeight(.light)
                            .font(.system(size: 14))
                            .foregroundColor(.gray)
                        
                        Text("JSE2021315179332939043")
                            .fontWeight(.bold)
                            .font(.system(size: 15))
                            .padding(.vertical, 1)
                        
                        Text("Transaction Id :")
                            .fontWeight(.light)
                            .font(.system(size: 14))
                            .foregroundColor(.gray)
                        
                        Text("JSE2021315179332939043")
                            .fontWeight(.bold)
                            .font(.system(size: 15))
                            .padding(.vertical, 1)
                        
                        Rectangle()
                            .fill(Color.gray)
                            .frame(width: UIScreen.main.bounds.width-62, height: 2, alignment: .center)
                        Text("Account Debited")
                            .fontWeight(.light)
                            .font(.system(size: 14))
                            .foregroundColor(.gray)
                        HStack{
                            Image("nsdl").resizable()
                                .frame(width: 50, height: 50, alignment: .center)
                            VStack(alignment: .leading){
                                
                                Text("NSDL Payments Bank")
                                Text("A/C7: 9829292929922 ")
                            }.font(.system(size: 18))
                            .foregroundColor(.gray)
                            .padding(.leading, 20)
                        }
                            Text("Account Credited")
                                .fontWeight(.light)
                                .font(.system(size: 14))
                                .foregroundColor(.gray)
                            HStack{
                                ZStack{
                                Circle()
                                    .fill(Color.pink)
                                    .frame(width: 50, height: 50, alignment: .center)
                                    Text("AJ")
                                        .foregroundColor(.white)
                                        .fontWeight(.heavy)
                                        .font(.system(size: 25))
//                                Image("nsdl").resizable()
//                                    .frame(width: 50, height: 50, alignment: .center)
                                }
                                VStack(alignment: .leading){
                                    Text("AKSHAY JOGLEKYA")
                                    Text("NSDL Payments Bank")
                                    Text("A/C7: 9829292929922 ")
                                }.font(.system(size: 17))
                                .foregroundColor(.gray)
                                .padding(.leading, 20)
                            }
                    }.frame(width: UIScreen.main.bounds.width-52, alignment: .leading)
                }
                        
                        HStack{
                            Text("Tap Here for your Daily Dose of Wisdom")
                            Image("yellow_bulb").resizable()
                                .frame(width: 40, height: 40)
                    }.frame(width: UIScreen.main.bounds.width-22, height: 60, alignment: .center)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color(.black), lineWidth: 2))
                        .padding(.top, 4)
                    
                    HStack{
                        Text("PAYMENTS")
                            .foregroundColor(.orange)
                            .frame(width: UIScreen.main.bounds.width/2.2, height: 50, alignment: .center)
                            .overlay(Rectangle().stroke(Color(.orange), lineWidth: 2))
                        
                        ZStack{
                            Rectangle()
                                .frame(width: UIScreen.main.bounds.width/2.2, height: 50, alignment: .center)
                        Text("NEW PAYMENTS")
                            .foregroundColor(.orange)
                        }
                            
                    }.padding(.vertical)
                    .padding(.top)
                
            }
            }
        } .foregroundColor(.black)
    }
}

struct ScratchCard_Previews: PreviewProvider {
    static var previews: some View {
        ScratchCard()
    }
}

struct cardScratch: View {
    var body: some View{
        ZStack{
            Color.black
            ZStack{
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.white)
                VStack{
                    Spacer()
                    Image("nsdlpaymentsbankiconimage")
                        .resizable()
                        .frame(width: 230, height: 25)
                    Spacer()
                    ZStack{
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.orange)
                        VStack{
                            Text("SCRATCH")
                                .fontWeight(.ultraLight)
                            Text("Here!!")
                                .fontWeight(.ultraLight)
                        }.font(.system(size: 50))
                        .foregroundColor(.white)
                    }.frame(width: UIScreen.main.bounds.width-62, height: 360, alignment: .center)
                    Image("nsdl_jiffy_logo_popup").resizable()
                        .frame(width: 150, height: 30)
                    Line()
                        .stroke(style: StrokeStyle(lineWidth: 1, dash: [5]))
                        .frame(height: 1)
                    Spacer()
                    
                    HStack{
                        VStack{
                            Text("Like this Quote?")
                            Text("Share with your friends")
                        }
                        ZStack{
                            RoundedRectangle(cornerRadius: 30)
                                .fill(Color.orange)
                                .frame(width: 55, height: 45)
                            Image("share_black").renderingMode(.template)
                                .resizable()
                                .foregroundColor(.white)
                                .frame(width: 35, height: 35)
                                .opacity(0.5)
                            
                        }
                    }
                    Spacer()
                }
            
        }.frame(width: UIScreen.main.bounds.width-32, height: 560, alignment: .center)
}
    }
}

struct cardScratch_Previews: PreviewProvider {
    static var previews: some View {
        cardScratch()
    }
}
