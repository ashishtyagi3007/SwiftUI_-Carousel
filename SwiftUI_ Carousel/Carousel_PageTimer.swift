//
//  Carousel_PageTimer.swift
//  SwiftUI_ Carousel
//
//  Created by Ashish Tyagi on 02/09/20.
//  Copyright © 2020 Ashish Tyagi. All rights reserved.
//

import SwiftUI

extension Font {
    static func avenirNext(size: Int) -> Font {
        return Font.custom("Avenir Next" , size: CGFloat(size))
    }
    
    static func avenirNextRegular(size: Int) -> Font {
        return Font.custom("AvenirNext-Regular", size: CGFloat(size))
    }
}



struct Carousel_PageTimer: View {
    var body: some View {
        
    ScrollView {
        GeometryReader { geometry in
            ImageCarouselView(numberOfImages: 3) {
                Image("collection5")
                    .resizable()
                    .scaledToFill()
                    .frame(width: geometry.size.width, height: geometry.size.height)
                    .clipped()
                Image("collection2")
                    .resizable()
                    .scaledToFill()
                    .frame(width: geometry.size.width, height: geometry.size.height)
                    .clipped()
                Image("collection1")
                    .resizable()
                    .scaledToFill()
                    .frame(width: geometry.size.width, height: geometry.size.height)
                    .clipped()
            }
        }.frame(height: 300, alignment: .center)
        

        VStack(alignment: .leading, spacing: 10) {
            HStack {
                Image("personImage")
                .resizable()
                .scaledToFill()
                .frame(width: 50, height: 50, alignment: .center)
                .clipShape(Circle())
                .shadow(radius: 4)
                VStack {
                    Text("Article Written By")
                        .font(Font.avenirNext(size: 12))
                        .foregroundColor(.gray)
                                
                    Text("Ashish Tyagi")
                    .font(Font.avenirNext(size: 17))
                    .foregroundColor(.black)
                    
                }
            }
            
            Text("02 September 2020 • 5 min read")
              .font(.avenirNextRegular(size: 12))
              .foregroundColor(.gray)
            
            Text("Build a Image Carousel to learn SwiftUI")
            .font(.avenirNext(size: 28))
            .foregroundColor(.black)
            
            Text(loremIpsum)
            .lineLimit(nil)
            .font(.avenirNextRegular(size: 17))
            
            
        } .padding(.all)
        
        }.edgesIgnoringSafeArea(.all)
        
    }
}

struct Carousel_PageTimer_Previews: PreviewProvider {
    static var previews: some View {
        Carousel_PageTimer()
    }
}

let loremIpsum = """
Lorem ipsum dolor sit amet consectetur adipiscing elit donec, gravida commodo hac non mattis augue duis vitae inceptos, laoreet taciti at vehicula cum arcu dictum. Cras netus vivamus sociis pulvinar est erat, quisque imperdiet velit a justo maecenas, pretium gravida ut himenaeos nam. Tellus quis libero sociis class nec hendrerit, id proin facilisis praesent bibendum vehicula tristique, fringilla augue vitae primis turpis.\n
Lorem ipsum dolor sit amet consectetur adipiscing elit donec, gravida commodo hac non mattis augue duis vitae inceptos, laoreet taciti at vehicula cum arcu dictum. Cras netus vivamus sociis pulvinar est erat, quisque imperdiet velit a justo maecenas, pretium gravida ut himenaeos nam. Tellus quis libero sociis class nec hendrerit, id proin facilisis praesent bibendum vehicula tristique, fringilla augue vitae primis turpis.
"""

