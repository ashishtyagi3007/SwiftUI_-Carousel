//
//  Carousel3D_Effect.swift
//  SwiftUI_ Carousel
//
//  Created by Ashish Tyagi on 01/09/20.
//  Copyright © 2020 Ashish Tyagi. All rights reserved.
//

import SwiftUI

struct MarvelsCollection: Identifiable {
    let id: Int
    let image: String
}

struct Carousel3D_Effect: View {
    let maxX = UIScreen.main.bounds.maxX

    var carouselArray: [MarvelsCollection] =
    [
        MarvelsCollection(id: 0, image: "marvels01"),
        MarvelsCollection(id: 1, image: "marvels02"),
        MarvelsCollection(id: 2, image: "marvels03"),
        MarvelsCollection(id: 3, image: "marvels04"),
        MarvelsCollection(id: 4, image: "marvels05"),
        MarvelsCollection(id: 5, image: "marvels06"),
        MarvelsCollection(id: 6, image: "marvels07"),
        MarvelsCollection(id: 7, image: "marvels08")
    ]

    var body: some View {
        
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 230) {
                
        ForEach(carouselArray) { collection in
    GeometryReader { geometry in

        Image(collection.image)
            .resizable()
            .frame(width: 200, height: 300, alignment: .center)
            .cornerRadius(16)
            .shadow(color: Color.gray.opacity(0.6), radius: 20, x: 0, y: 0)
            .rotation3DEffect(Angle(degrees: (Double(geometry.frame(in: .global).minX) - 210) / -20), axis: (x: 0.0, y: 1.0, z: 0))
                }
            
              }
           }.padding(.horizontal, 210)
        }
    }
    
    /*rotation3DEffect(
        Angle(
            degrees: Double((geometry.frame(in: .global).maxX - self.maxX) + self.maxX/2) / -5),
        axis: (x: 0, y: 1.0, z: 0)
    )*/
}

struct Carousel3D_Effect_Previews: PreviewProvider {
    static var previews: some View {
        Carousel3D_Effect()
    }
}
