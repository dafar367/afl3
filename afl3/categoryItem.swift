//
//  categoryItem.swift
//  afl3
//
//  Created by atallah dafa on 29/05/22.
//

import SwiftUI

struct categoryItem: View {
    var image:Image
   
    var body: some View {
        ZStack{
            Color("backColor")
            HStack{
                //Image
                image
                    .resizable()
                    .scaledToFit()
                    .aspectRatio(4/2, contentMode: .fit)
                    .cornerRadius(30)
                VStack{
                    Text("Bakmie GM")
                        .font(.title)
                        .bold()
                        .foregroundColor(.white)
                        .padding(.bottom, 10)
                    Text("jl. tunjungan no51")
                        .foregroundColor(.white)
                        .offset(y:-10)
                }
                Spacer()
                
            }
        }
       
    }
}

struct categoryItem_Previews: PreviewProvider {
    static var previews: some View {
        categoryItem(image: Image("bakmie gm"))
            .previewLayout(.fixed(width: 400, height: 150))
    }
        
}
