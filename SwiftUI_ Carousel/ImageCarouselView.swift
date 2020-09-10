//
//  ImageCarouselView.swift
//  SwiftUI_ Carousel
//
//  Created by Ashish Tyagi on 02/09/20.
//  Copyright © 2020 Ashish Tyagi. All rights reserved.
//

import SwiftUI
import Combine


struct ImageCarouselView <Content: View>: View {
    
    private var numberOfImages: Int
    private var content: Content
    
    @State private var currentIndex: Int = 0
    
    private let timer = Timer.publish(every: 3, on: .main, in: .common).autoconnect()

    
    init(numberOfImages: Int, @ViewBuilder content: () -> Content) {
          self.numberOfImages = numberOfImages
          self.content = content()
      }
    
     var body: some View {
            // 1
            GeometryReader { geometry in
                // 2
                HStack(spacing: 0) {
                    // 3
                    self.content
                }
                .frame(width: geometry.size.width, height: geometry.size.height, alignment: .leading) // 4
                .offset(x: CGFloat(self.currentIndex) * -geometry.size.width, y: 0) // 5
                .animation(.spring()) // 6
                .onReceive(self.timer) { _ in
                    // 7
                    self.currentIndex = (self.currentIndex + 1) % 3
                }
            }
        }
    }

struct ImageCarouselView_Previews: PreviewProvider {
    static var previews: some View {
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
        }.frame(width: UIScreen.main.bounds.width, height: 300, alignment: .center)
    }
}
