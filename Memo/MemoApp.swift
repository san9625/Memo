//
//  MemoApp.swift
//  Memo
//
//  Created by 吉川創麻 on 2022/07/23.
//

import SwiftUI

import SwiftUI

@main
struct MemoApp: App {
    
    @StateObject private var myNotes = MyNotes()
    
    var body: some Scene {
        WindowGroup {
            ContentView(myNotes: myNotes)
        }
    }
}
