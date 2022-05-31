//
//  foodHomeView.swift
//  afl3
//
//  Created by atallah dafa on 28/05/22.
//

import SwiftUI

struct foodHomeView: View {
    var body: some View {
        
        ScrollView{
            VStack{
                Text("Food and beverage")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .bold()
                Text("mau makan apa bosqu")
                    .foregroundColor(.white)
                    .font(.headline)
                    .offset(x:-60)
            }
            .frame(maxWidth:.infinity, alignment: .leading)
            .padding()
            
            
            featuredItem(image: Image("bakmie gm"))
            Divider()
            categoryItem(image: Image("bakmie gm"))
        }
        .padding()
            
            
                
            
        
        
    }
}

struct foodHomeView_Previews: PreviewProvider {
    static var previews: some View {
        foodHomeView()
            .background(Color("backColor"))
    }
}
