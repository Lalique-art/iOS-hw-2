//
//  ContentView.swift
//  Shared
//
//  Created by lolo lolo on 17/03/2022.
//

import SwiftUI

struct ContentView: View {
    //var
    var original = 1.950
    var kinderBites = 1.950
    var kinderBucket = 15.500
    var chocolateBucket = 15.500
    var toughlove = 1.950
    @State var m2 = 0
    @State var m1 = 0
    @State var m3 = 0
    @State var m4 = 0
    @State var m5 = 0
    @State var amount = 0.0
    @State var money = ""
    @State var bill = ""
    var body: some View{
        VStack{
            ScrollView{
//                Text("doh")
//                    .fontWeight(.black)
//                    .font(.largeTitle)
//                    .multilineTextAlignment(.center)
//                    .padding()
                Image("doh")
                    .resizable()
                    .frame(width: 120, height: 120)
                    .scaledToFit()
                Text("menu")
                    .font(.title)
                    .fontWeight(.regular)
                HStack{
                    Stepper("\(m1)",value:$m1,in:0...12)
                        .padding()
                    Text("1.950")
                    Spacer()
                    
                    Text("original donut")
                        .font(.headline)
                        .fontWeight(.medium)
                    Image("original")
                        .resizable()
                        .frame(width: 80, height: 80)
                        .scaledToFit()
                }
                
                HStack{
                    Stepper("\(m2)",value:$m2,in:0...12)
                    Text("kinder Bites")
                    Spacer()
                    
                    Text("kider bites")
                        .font(.headline)
                        .fontWeight(.medium)
                    Image("kinder bites")
                        .resizable()
                        .frame(width: 80, height: 80)
                        .scaledToFit()
                }
                HStack{
                    Stepper("\(m3)",value:$m3,in:0...12)
                    Text("15.500")
                    Spacer()
                    
                    Text("kinder bucket")
                        .font(.headline)
                        .fontWeight(.medium)
                    Image("kinder bucket")
                        .resizable()
                        .frame(width: 80, height: 80)
                        .scaledToFit()
                }
                HStack{
                    Stepper("\(m4)",value:$m4,in:0...12)
                    Text("15.500")
                    Spacer()
                    
                    Text("chocolate bucket")
                        .font(.headline)
                        .fontWeight(.medium)
                    Image("chocolate bucket")
                        .resizable()
                        .frame(width: 80, height: 80)
                        .scaledToFit()
                }
                HStack{
                    Stepper("\(m5)",value:$m5,in:0...12)
                    Text("1.950")
                    Spacer()
                    
                    Text("tough love")
                        .font(.headline)
                        .fontWeight(.medium)
                    Image("tough love")
                        .resizable()
                        .frame(width: 80, height: 80)
                        .scaledToFit()
                }
                Group{
                    HStack{
                        TextField("المبلغ", text: $money)
                            .frame(width: 100, height: 40)
//                            .textFieldStyle(.roundedBorder)
                        Text("المبلغ لذي لديك")
                    }
                    Text("الفاتورة")
                        .frame(width: 200, height: 60)
                        .background(Color.pink)
                        .cornerRadius(8)
                        .onTapGesture {
                            let l1 = original * Double(m1)
                            let l2 = kinderBites * Double(m2)
                            let l3 = kinderBucket * Double(m3)
                            let l4 = chocolateBucket * Double(m4)
                            let l5 = toughlove * Double(m5)
                            amount = l1 + l2 + l3 + l4 + l5
                            if Double(money) ?? 0.0 < amount{
                               bill = "فشلت العملية"
                            }
                            else{
                                bill = "نجحت العملية"
                            }
                        }
                    Text("المبلغ الاجمالي:\(amount,specifier:"%.2f")")
                    Text(bill)
                }
                
                
                
            }
        }
    }
}










struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

