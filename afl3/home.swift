//
//  home.swift
//  afl3
//
//  Created by atallah dafa on 24/05/22.
//

import SwiftUI

struct home: View {
    var body: some View {
        
        Button (action:{
        print("hello world tapped")
        }) {
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    .fontWeight(.bold)
                    .font(.title)
                    .padding(.horizontal, 40)
                    //.background(Color.purple)
                    .cornerRadius(10)
                    .foregroundColor(.black)
                    .padding(10)
                    .overlay(
                    RoundedRectangle(cornerRadius: 40)
                        .stroke(Color.purple, lineWidth: 5)
                    )
            
        }
    }
        
}

struct home_Previews: PreviewProvider {
    static var previews: some View {
        home()
    }
}
