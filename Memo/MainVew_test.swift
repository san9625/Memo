//
//  MainVew_test.swift
//  Memo
//
//  Created by 吉川創麻 on 2022/07/24.
//

import SwiftUI

struct MainVew_test: View {
    
    let grids = Array(repeating: GridItem(.fixed(160)), count: 2)
    
    var body: some View {
        
        ScrollView() {
            LazyVGrid(columns: grids) {
                ForEach((1...100), id: \.self) { num in
                    Page(str: String(num), name: String(num))
                        .cornerRadius(8)
                        .frame(height: 90)
                }
            }
        }
        
    }// body
    
}// MainView_test

struct Page: View {
    
    let colors: [Color] = [.green, .blue, .pink, .orange, .purple]
    let str: String
    var name: String
    
    var body: some View {
         
            ZStack {
                colors.randomElement()
                Text(str)
                    .font(.title)
                    .foregroundColor(.white)
            }
    }
}




struct MainVew_test_Previews: PreviewProvider {
    static var previews: some View {
        MainVew_test()
    }
}
