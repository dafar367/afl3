//
//  featuredItem.swift
//  afl3
//
//  Created by atallah dafa on 29/05/22.
//

import SwiftUI

struct featuredItem: View {
    var image:Image
    
    var body: some View {
        ZStack{
            Color("backColor")
        image
            .resizable()
            .aspectRatio(5/4 ,contentMode: .fit)
            
            .overlay{
                TextOverlay()
            }
            .cornerRadius(50)
        }
    }
}

struct TextOverlay: View {

    var gradient: LinearGradient {
        .linearGradient(
            Gradient(colors: [.black.opacity(0.4), .black.opacity(0)]),
            startPoint: .bottom,
            endPoint: .center)
    }

    var body: some View {
        ZStack(alignment: .bottomLeading) {
            gradient
            VStack(alignment: .leading) {
                Text("Bakmie GM")
                    .font(.title)
                    .bold()
                Text("jl. tunjungan no51")
                    .font(.body)
                    
            }
            .padding(.horizontal,40)
            .padding(.bottom, 20)
        }
        .foregroundColor(.white)
    }
}


struct featuredItem_Previews: PreviewProvider {
    static var previews: some View {
        featuredItem(image: Image("bakmie gm"))
    }
}
