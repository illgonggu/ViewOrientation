//  ButtonView.swift


import SwiftUI

struct ButtonView: View{
    
    var title : String
    var bgColor : Color
    
    var body: some View{
        Button(action: {
            print("1번 버튼 클릭됨")
        }){
            Text(title)
                .font(.largeTitle)
                .fontWeight(.black)
                .frame(width: 150, height: 70)
                .foregroundColor(Color.white)
                .background(bgColor)
        }
}
    
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(title: "1", bgColor: Color.yellow)
    }
}
