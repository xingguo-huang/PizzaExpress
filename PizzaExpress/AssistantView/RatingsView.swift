//
//  RatingsView.swift
//  PizzaExpress
//
//  Created by Xingguo Huang on 3/1/24.
//

import SwiftUI

struct RatingsView: View {
    var rating:Int
    var body: some View {
        HStack{
            ForEach(1...6,id:\.self){ circle in
                Image(systemName: (circle <= rating) ? "fork.knife.circle.fill" : "circle")
            }
        }
    }
}

struct RatingsView_Previews: PreviewProvider {
    static var previews: some View {
        RatingsView(rating: 5)
    }
}
