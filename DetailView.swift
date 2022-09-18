//
//  DetailView.swift
//  ViewOrientation
//
//  Created by Loopy on 2022/09/17.
//

import SwiftUI

struct DetailView: View{
    
    @State var transitionView: Bool = false
    var animation : Namespace.ID
    @Binding var detailShow: Bool
    
    var body: some View{
        ZStack(alignment: .leading){
            VStack{
                Button("버튼"){
                    transitionView.toggle()
                }
                .padding(.leading)
                .rotationEffect(Angle(degrees: 90))
                Spacer()
            }
            if transitionView{
                RoundedRectangle(cornerRadius: 20)
                    .frame(height: UIScreen.main.bounds.height*0.5)
                    .transition(.move(edge: .bottom))
                    .animation(.easeIn)
            }
            Spacer()
            SensorCharts()
                .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
                .matchedGeometryEffect(id: "image", in: animation)
                .frame(maxWidth: .infinity, maxHeight: 300)
                .rotationEffect(Angle(degrees: 90))
                .overlay {
                    VStack {
                        Image(systemName: "chevron.left")
                            .font(.title2)
                            .foregroundColor(.black)
                            .padding(.top,50)
                            .padding(.leading,-180)
                            .opacity(detailShow ? 1 : 0)
                            .onTapGesture {
                                withAnimation {
                                    detailShow = false
                                }
                            }
                        Spacer()
                    }
                }
            Spacer()
        }
        .edgesIgnoringSafeArea(.bottom)
//        VStack {
//
//        }
//        .ignoresSafeArea(.all)
    }
}
