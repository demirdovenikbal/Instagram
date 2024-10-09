//
//  ProfileView.swift
//  Instagram
//
//  Created by Ikbal Demirdoven on 2024-10-05.
//

import SwiftUI

struct ProfileView: View {
    
    private let gridItems : [GridItem] = [
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1)
    ]
    var body: some View {
        NavigationStack {
            ScrollView {
                //header
                VStack {
                    //pic and stats
                    HStack {
                        Image("ikbal")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 80, height: 80)
                            .clipShape(Circle())
                        Spacer()
                        StatView(amount: 63, title: "Posts")
                        Spacer()
                        StatView(amount: 225, title: "Followers")
                        Spacer()
                        StatView(amount: 275, title: "Following")
                    }
                    .padding(.horizontal    )
                    .padding(.trailing, 25)
                    //name and bio
                    VStack(alignment: .leading, spacing: 4) {
                        Text("Ikbal Demirdoven")
                            .fontWeight(.semibold)
                        Text("\"Life's most persistent and urgent question is, 'What are you doing for others?'\" MLK")
                    }
                    .font(.footnote)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                    //action button
                    HStack(spacing: -25) {
                        Button {
                            
                        } label: {
                            Text("Edit profile")
                                .frame(minHeight: 35)
                                .frame(maxWidth: .infinity)
                                .background(Color(.systemGray5))
                                .font(.subheadline)
                                .fontWeight(.semibold)
                                .foregroundStyle(.black)
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                                .padding(.horizontal)
                        }
                        Button {
                            
                        } label: {
                            Text("Share profile")
                                .frame(minHeight: 35)
                                .frame(maxWidth: .infinity)
                                .background(Color(.systemGray5))
                                .font(.subheadline)
                                .fontWeight(.semibold)
                                .foregroundStyle(.black)
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                                .padding(.horizontal)
                            
                        }
                        Button {
                            
                        } label: {
                            Image(systemName: "person.badge.plus")
                                .frame(minHeight: 35)
                                .frame(maxWidth: .infinity)
                                .background(Color(.systemGray5))
                                .font(.subheadline)
                                .fontWeight(.semibold)
                                .foregroundStyle(.black)
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                                .padding(.horizontal)
                            
                        }
                        
                    }
                    //                Divider()
                }
                //post grid view
                LazyVGrid(columns: gridItems, spacing: 1) {
                    ForEach(0...63, id: \.self) { picture in
                        Image("ikbal")
                            .resizable()
                            .scaledToFill()
                    }
                }
                .padding(.top, 8)
                .navigationTitle("ikbaldemirdoven")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .topBarTrailing) {
                        Button {
                            
                        } label: {
                            Image(systemName: "line.3.horizontal")
                                .foregroundStyle(.black)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ProfileView()
}
