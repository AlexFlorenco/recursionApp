//
//  FourthView.swift
//  recursionApp
//
//  Created by Alexandre Florenço on 15/04/23.
//

import SwiftUI

struct FifthView: View {
    func codeView1(_ count: Int) -> String{
        switch count{
        case 1...13:
            return "5 * factorial(4)"
        case 14:
            return "5 * 24"
        default:
            return "120"
        }
    }
    
    func codeView2(_ count: Int) -> String{
        switch count{
        case 1...11:
            return "4 * factorial(3)"
        case 12:
            return "4 * 6"
        default:
            return "24"
        }
    }
    
    func codeView3(_ count: Int) -> String{
        switch count{
        case 1...9:
            return "3 * factorial(2)"
        case 10:
            return "3 * 2"
        default:
            return "6"
        }
    }
    
    func codeView4(_ count: Int) -> String{
        switch count{
        case 1...7:
            return "2 * factorial(1)"
        case 8:
            return "2 * 1"
        default:
            return "2"
        }
    }
    
    func codeView5(_ count: Int) -> String{
        switch count{
        case 1...5:
            return "1 * factorial(0)"
        case 6:
            return "1 * 1"
        default:
            return "1"
        }
    }
    
    @Environment(\.dismiss) private var dismiss
    
    @State var count = 1
    
    var body: some View {
        VStack{
            Text("The Heap Recursive")
                .font(.custom("Apple SD Gothic Neo", size: UIScreen.main.bounds.width * 0.05))
                .minimumScaleFactor(0.05)
                .fontWeight(.bold)
                .padding(.bottom, 1)
            
            
            HStack{
                Button{
                    if count > 1{
                        count -= 1
                    }
                    
                } label: {
                    if count > 1{
                        StepButtonView(iconButton: "arrowshape.backward.fill", color: Color(red: 0.527, green: 0.841, blue: 0.408))
                    }
                    else {
                        StepButtonView(iconButton: "arrowshape.backward.fill", color: Color(red: 0.950, green: 0.950, blue: 0.950))
                    }
                }
                
                Button{
                    if count < 15{
                        count += 1
                    }
                    
                } label: {
                    if count < 15{
                        StepButtonView(iconButton: "arrowshape.forward.fill", color: Color(red: 0.527, green: 0.841, blue: 0.408))
                    }
                    else {
                        StepButtonView(iconButton: "arrowshape.forward.fill", color: Color(red: 0.950, green: 0.950, blue: 0.950))
                    }
                }
            }
            .font(.largeTitle)
            .padding(.bottom)
            
            Spacer()
            
            VStack{
                ZStack{
                    if count >= 1{ // factorial(5)
                        if UIScreen.main.bounds.width < 400{
                            FactorialCardView(factorial: 5, code: codeView1(count) )
                                .frame(width: 140 )
                        }
                        else{
                            FactorialCardView(factorial: 5, code: codeView1(count) )
                                .frame(width: 200 )
                        }
                    }
                    
                    if count >= 2 && count < 14{ // factorial(4)
                        if UIScreen.main.bounds.width < 400{
                            FactorialCardView(factorial: 4, code: codeView2(count) )
                                .frame(width: 140 )
                                .offset(x: 20, y: 95)
                        }
                        else{
                            FactorialCardView(factorial: 4, code: codeView2(count) )
                                .frame(width: 200 )
                                .offset(x: 20, y: 110)
                        }
                    }
                    
                    if count >= 3 && count < 12{ // factorial(3)
                        if UIScreen.main.bounds.width < 400{
                            FactorialCardView(factorial: 3, code: codeView3(count))
                                .frame(width: 140 )
                                .offset(x: 40, y: 190)
                        }
                        else{
                            FactorialCardView(factorial: 3, code: codeView3(count))
                                .frame(width: 200 )
                                .offset(x: 40, y: 220)
                        }
                    }
                    
                    if count >= 4 && count < 10{ // factorial(2)
                        if UIScreen.main.bounds.width < 400{
                            FactorialCardView(factorial: 2, code: codeView4(count))
                                .frame(width: 140 )
                                .offset(x: 60, y: 285)
                        }
                        else{
                            FactorialCardView(factorial: 2, code: codeView4(count))
                                .frame(width: 200 )
                                .offset(x: 60, y: 330)
                        }
                    }
                    
                    if count >= 5  && count < 8{ // factorial(1)
                        if UIScreen.main.bounds.width < 400{
                            FactorialCardView(factorial: 1, code: codeView5(count))
                                .frame(width: 140 )
                                .offset(x: 80, y: 380)
                        }
                        else{
                            FactorialCardView(factorial: 1, code: codeView5(count))
                                .frame(width: 200 )
                                .offset(x: 80, y: 440)
                        }
                    }
                }
                
                Spacer()
            }
            //            .frame(width: 800, height: 970)
            //            .offset(x: -100)
            
            Spacer()
            
            HStack{
                Button{
                    dismiss()
                } label: {
                    PaginationButtonView(content: "Back")
                        .scaleEffect(0.8)
                }
                
                NavigationLink(destination: SixthView()){
                    PaginationButtonView(content: "Next")
                        .scaleEffect(0.8)
                }
            }
        }
        .frame(width: UIScreen.main.bounds.width * 0.8)
        .navigationBarBackButtonHidden(true)
        .background(BackgroundView())
    }
}

struct FifthView_Previews: PreviewProvider {
    static var previews: some View {
        FifthView()
    }
}
