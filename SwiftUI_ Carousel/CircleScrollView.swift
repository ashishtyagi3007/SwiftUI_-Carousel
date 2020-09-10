//
//  CircleCarousalView.swift
//  SwiftUI_ Carousel
//
//  Created by Ashish Tyagi on 03/09/20.
//  Copyright © 2020 Ashish Tyagi. All rights reserved.
//

import SwiftUI

struct CircleScrollView: View {
    @State var label: String = "0"
    
    var body: some View {
        ZStack {
            Circle()
                .fill(Color.yellow)
                .frame(width: 70, height: 70, alignment: .center)
            Text(label)
            
        }
    }
    
}


struct CircularScrollView: View {
    
    var body: some View {
    
    VStack {
       Divider()
        ScrollView(.horizontal, showsIndicators: false) {
           HStack(spacing: 10) {
               ForEach(0..<10) { index in
                   CircleScrollView(label: "\(index)")
               }
           }.padding()
       }.frame(height: 100)
       Divider()
       Spacer()
    }
        
    }
}

struct CircleCarousalView_Previews: PreviewProvider {
    static var previews: some View {
        CircularScrollView()
    }
}
