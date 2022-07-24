//
//  MyNotes.swift
//  Memo
//
//  Created by 吉川創麻 on 2022/07/23.
//

import Foundation

class MyNotes: ObservableObject {
    @Published var folders = testFolders
}

struct Folder: Identifiable {
    var id = UUID()
    
    var name: String
    var notes: [Note] = testNotes // (仮)notesには、testNotesを持たせておく
}

struct Note: Identifiable {
    var id = UUID()
    
    var title: String
    var noteText: String = ""
}

var testFolders = [ // (仮)で使用するFolderの配列を作成
    Folder(name: "Folder1"),
    Folder(name: "Folder2"),
    Folder(name: "Folder3"),
    Folder(name: "Folder4"),
    Folder(name: "Folder5"),
    Folder(name: "Folder6"),
    Folder(name: "Folder7"),
]

var testNotes = [ // （仮）で使用するNoteの配列を作成
    Note(title: "memo1"),
    Note(title: "memo2"),
    Note(title: "memo3"),
    Note(title: "memo4"),
    Note(title: "memo5")
]
