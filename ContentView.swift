//
//  ContentView.swift
//  ViewOrientation
//
//  Created by Loopy on 2022/09/17.
//

import SwiftUI

struct ContentView: View {
    
    @Namespace var animation
    @State var detailShow: Bool = false
    var body: some View {
        VStack {
            if detailShow {
                DetailView(animation: animation, detailShow: $detailShow)
            } else {
                SensorCharts()
                    .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
                    .matchedGeometryEffect(id: "image", in: animation)
                    .frame(width: 300, height: 200)
                ButtonStack()

            }
        }
        .onTapGesture{
            withAnimation {
                detailShow = true
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
