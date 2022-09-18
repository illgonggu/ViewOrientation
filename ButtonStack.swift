//
//  ButtonStack.swift

import SwiftUI

struct ButtonStack: View{
    var body: some View{
        VStack{
            HStack{
                ButtonView(title: "1", bgColor: Color.blue)
                ButtonView(title: "1", bgColor: Color.blue)
            }
            .padding(.bottom,10)
            HStack{
                ButtonView(title: "1", bgColor: Color.red)
                ButtonView(title: "1", bgColor: Color.red)
            }
            HStack{
                ButtonView(title: "1", bgColor: Color.red)
                ButtonView(title: "1", bgColor: Color.red)
            }
            .padding(.bottom,50)
        }
    }
}
struct ButtonStack_Previews: PreviewProvider {
    static var previews: some View {
        ButtonStack()
    }
}
