//
//  FolderView.swift
//  Memo
//
//  Created by 吉川創麻 on 2022/07/23.
//

import SwiftUI

struct FolderView: View {
    
    var folderName: String
    var notes = testNotes // （仮）でtestNotesを持たせる
    
    var body: some View {
        
        NavigationView{
            List {
                ForEach(notes) { note in
                    Text(note.title)
                }
            }// List
            .listStyle(InsetGroupedListStyle())
            .navigationTitle(folderName)
            .toolbar {
                ToolbarItemGroup(placement: .bottomBar) {
                    Text("\(notes.count) " + "Notes")
                    Image(systemName: "square.and.pencil")
                }
            }
            
        }// NavigationView
        
    }// body
}// FilderView

struct FolderView_Previews: PreviewProvider {
    static var previews: some View {
        // 構造体FolderViewの変数folderNameを"Folder Name"に指定してプレビュー
        FolderView(folderName: "Folder Name")
    }
}
