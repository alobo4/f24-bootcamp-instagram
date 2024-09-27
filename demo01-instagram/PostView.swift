//
//  PostView.swift
//  demo01-instagram
//
//  Created by Alec Lobanov on 9/17/24.
//

import SwiftUI

struct PostView: View {
    
    @State var isLiked:Bool = false
    @State var isBookmark:Bool = false
    @State var count = 1000
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack{
                Image(.RNA)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                Text("alec")
                    .font(.subheadline)
                    .bold()
                Spacer()
                Image(systemName:"ellipsis")
            }
            .padding(.horizontal, 8)
            Image(.barchart)
                .resizable()
                .scaledToFit()
            HStack(spacing: 16){
                Button(action:{
                    isLiked.toggle()
                    if isLiked{
                        count += 1
                    }else{
                        count -= 1
                    }
                },label:{
                    Image(systemName: isLiked ? "heart.fill":"heart")
                        .foregroundStyle(isLiked ? .pink: .black)
                })
                Image(systemName:"message")
                Image(systemName:"paperplane")
                Spacer()
                Button(action:{
                    isBookmark.toggle()
                },label:{
                    Image(systemName: isBookmark ? "bookmark.fill":"bookmark")
                        .foregroundStyle(isBookmark ? .black: .black)
                })
            }
            .padding(.horizontal,8)
            .font(.title2)
            Text("\(count) likes")
                .font(.footnote)
                .fontWeight(.semibold)
                .padding(.horizontal,8)
            Text("**alec** Anna and I are in a Wes Anderson Movie")
                .font(.footnote)
                .padding(.horizontal,8)
            Text("September 27th, 2024")
                .font(.caption)
                .foregroundStyle(.secondary)
                .padding(.horizontal,8)

        }
    }
}

#Preview {
    PostView()
}
