//
//  FeedCell.swift
//  Instagram
//
//  Created by Ikbal Demirdoven on 2024-10-06.
//

import SwiftUI

struct FeedCell: View {
    var body: some View {
        VStack {
            HStack {
                Image("ikbal")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
                Text("ikbaldemirdoven")
                    .font(.footnote)
                    .fontWeight(.semibold)
                Spacer()
            }
            .padding(.leading, 8)
            //post image
            Image("ikbal")
                .resizable()
                .scaledToFill()
                .frame(height: 400)
                .clipShape(Rectangle())
            //action buttons
            HStack(spacing: 15) {
                Button {
                    
                } label: {
                    Image(systemName: "heart")
                        .imageScale(.large)
                }
                Button {
                    
                } label: {
                    Image(systemName: "bubble.right")
                        .imageScale(.large)
                    Text("123")
                        .font(.callout)
                }
                Button {
                    
                } label: {
                    Image(systemName: "paperplane")
                        .imageScale(.large)
                }
                Spacer()
            }
            .foregroundStyle(.black)
            .padding(.leading, 8)
            //like counts
            Text("23 likes")
                .font(.footnote)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 10)
                .padding(.top, 1)
            //name + caption
            HStack {
                Text("ikbaldemirdoven ")
                    .fontWeight(.semibold)
                +
                Text("Test caption.")
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .font(.footnote)
            .padding(.leading, 10)
            .padding(.top, -4)
            
            //date
            Text("8h ago")
                .font(.footnote)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 10)
                .padding(.top, -4)
                .foregroundStyle(.gray)
        }
        .padding(.top)
    }
}

#Preview {
    FeedCell()
}
