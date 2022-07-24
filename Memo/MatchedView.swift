//
//  MatchedView.swift
//  Memo
//
//  Created by 吉川創麻 on 2022/07/24.
//

import SwiftUI

struct MatchedView: View {
    
    @Namespace var namespace
    @State var show = false
    
    var body: some View {
        ZStack {
            if !show {
                
                VStack(alignment: .leading, spacing: 12) {
                    Text("SwiftUI")
                        .font(.largeTitle.weight(.bold))
                        .matchedGeometryEffect(id: "tilte", in: namespace)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Text("20 sections - 3 hours".uppercased())
                        .font(.footnote.weight(.semibold))
                        .matchedGeometryEffect(id: "subtite", in: namespace)
                    
                    Text("Build an IOS app for IOS 15 with custom layouts, animations and ...")
                        .font(.footnote)
                        .matchedGeometryEffect(id: "text", in: namespace)
                    
                }
                .padding()
                .foregroundColor(.white)
                .background(
                    Color.red.matchedGeometryEffect(id: "backgroud", in: namespace)
                )
                .padding()
                
            } else {
                
                VStack(alignment: .leading, spacing: 12) {
                    Spacer()
                    
                    Text("Build an IOS app for IOS 15 with custom layouts, animations and ...")
                        .font(.footnote)
                        .matchedGeometryEffect(id: "text", in: namespace)
                    
                    Text("20 sections - 3 hours".uppercased())
                        .font(.footnote.weight(.semibold))
                        .matchedGeometryEffect(id: "subtite", in: namespace)
                    
                    Text("SwiftUI")
                        .font(.largeTitle.weight(.bold))
                        .matchedGeometryEffect(id: "tilte", in: namespace)
                        .frame(maxWidth: .infinity, alignment: .leading)
                     
                }
                .padding()
                .foregroundColor(.white)
                .background(
                    Color.blue.matchedGeometryEffect(id: "backgroud", in: namespace)
                )
                .padding()
                
            }// if
            
        }// ZStack
        .onTapGesture {
            withAnimation {
                show.toggle()
            }
            
        }// .onTapGesture
        
    }// body
    
}// MatchedView

struct MatchedView_Previews: PreviewProvider {
    static var previews: some View {
        MatchedView()
    }
}
