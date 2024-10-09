//
//  StatView.swift
//  Instagram
//
//  Created by Ikbal Demirdoven on 2024-10-05.
//

import SwiftUI

struct StatView: View {
    var amount : Int
    var title : String
    var body: some View {
        VStack {
            Text("\(amount)")
                .font(.subheadline)
                .fontWeight(.semibold)
            Text(title)
                .font(.footnote)
        }
    }
}

#Preview {
    StatView(amount: 123, title: "Posts")
}
