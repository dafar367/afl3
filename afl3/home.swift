//
//  home.swift
//  afl3
//
//  Created by atallah dafa on 24/05/22.
//

import SwiftUI


enum Side: Equatable, Hashable {
    case left
    case right
    
}

extension View {
    func padding(sides: [Side], value: CGFloat = 8) -> some View {
        HStack(spacing: 0) {
            if sides.contains(.left) {
                Spacer().frame(width: value)
            }
            self
            if sides.contains(.right) {
                Spacer().frame(width: value)
            }
        }
    }
}

struct home: View {
    var body: some View {
        
        
        ZStack{
            Color("backColor")
                .ignoresSafeArea()
        
        VStack{
            VStack{
                HStack{
                    Text("hello atallah")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity,
                               alignment: .leading)
                        
                    Image("profilepicture")
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .frame(width: 170, height: 100)
                        .offset(x:10, y:10)
                }
                Text("find a place where you can go")
                    .font(.body)
                    .foregroundColor(.white)
                    .padding(.horizontal,0)
                    .offset(y: -40)
                    .frame(maxWidth: .infinity,
                           alignment: .leading)
                
            }
                .padding(.horizontal, 20)
                .padding(.vertical, 40)
            
            
            Button (action:{
            print("hello world tapped")
            }) {
                Image(systemName: "globe.europe.africa")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .padding(.horizontal, 10)
                    VStack{
                        Text("find destination")
                            .fontWeight(.semibold)
                            .font(.title)
                            .frame(maxWidth: .infinity,
                                    alignment: .leading)
                        Text("tourist atraction in surabaya")
                            .frame(maxWidth: .infinity,
                                    alignment: .leading)
                    }
                }
                    .padding(.vertical, 20)
                    .foregroundColor(.white)
                    .background(Color("buttonColor"))
                    .cornerRadius(30)
                    .shadow(radius: 50)
                    .padding(sides: [.left], value: 15)
                    .padding(sides: [.right], value: 15)
                    .padding(.bottom, 20)
            
            

            Button (action:{
            print("hello world tapped")
            }) {
                Image(systemName: "heart")
                        .font(.largeTitle)
                        .foregroundColor(.red)
                        .padding(.horizontal, 10)
                    VStack{
                        Text("your favorite")
                            .fontWeight(.semibold)
                            .font(.title)
                            .frame(maxWidth: .infinity,
                                    alignment: .leading)
                        Text("tourist atraction in surabaya")
                            .frame(maxWidth: .infinity,
                                    alignment: .leading)
                    }
                }
                .padding(.vertical, 20)
                .foregroundColor(.white)
                .background(Color("buttonColor"))
                .cornerRadius(30)
                .padding(sides: [.left], value: 15)
                .padding(sides: [.right], value: 15)
            Spacer()
            }
        }
    }
    }
        


struct home_Previews: PreviewProvider {
    static var previews: some View {
        home()
    }
}
