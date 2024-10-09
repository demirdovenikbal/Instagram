//
//  SearchView.swift
//  Instagram
//
//  Created by Ikbal Demirdoven on 2024-10-06.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText = ""
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack {
                    ForEach(0...15, id: \.self) {
                        user in
                        HStack {
                            Image("ikbal")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 40, height: 40)
                                .clipShape(Circle())
                            VStack(alignment: .leading) {
                                Text("ikbaldemirdoven")
                                    .fontWeight(.semibold)
                                Text("Ikbal Demirdoven")
                            }
                            .font(.footnote)
                            Spacer()
                        }
                        .padding(.horizontal)
                        .padding(.vertical, 2)
                    }
                }
                .padding(.top)
            }
            .searchable(text: $searchText, prompt: Text("Search"))
            .navigationTitle("Explore")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    SearchView()
}
