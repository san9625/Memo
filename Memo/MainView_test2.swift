//
//  MainView_test2.swift
//  Memo
//
//  Created by 吉川創麻 on 2022/07/24.
//

/*
import SwiftUI

struct MainView_test2: View {
    
    @ObservedObject var myNotes: MyNotes
    // 検索文字を保存
    @State var searchString = ""
    //
    @State var newFolderName = ""
    //
    @State var showingPopover = false
    let grids_folder = Array(repeating: GridItem(.fixed(160)), count: 2)
    let grids_memo = Array(repeating: GridItem(.fixed(320)), count: 1)
    
    var body: some View {
        
        NavigationView {
            VStack {
                TextField("メモを検索", text: $searchString)
                    .padding(10)
                
                ScrollView() {
                    LazyVGrid(columns: grids_folder) {
                        ForEach (myNotes.folders) { folder in
                            FolderCell(name: folder.name)
                                .cornerRadius(8)
                                .frame(height: 90)
                        }
                    }
                }// フォルダのScrollView
                .padding()
                .frame(width: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/, height: 400)
                
                
                Text("最近開いたメモ")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    
                
                ScrollView() {
                    LazyVGrid(columns: grids_memo) {
                        ForEach((1...100), id: \.self) { num in
                            Page2(str: String(num))
                                .cornerRadius(8)
                                .frame(height: 90)
                        }
                    }
                }// 最近開いたメモのScrollView
                
                Spacer()
                
            }// Vstack
            .navigationTitle("フォルダ")
            .toolbar {
                
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    EditButton()
                }
                
                ToolbarItemGroup(placement: .bottomBar) {
                    Image(systemName: "folder.badge.plus")
                        .onTapGesture {
                            showingPopover.toggle()
                        }
                    Spacer()
                    NavigationLink(destination: NoteView()) {
                        Image(systemName: "square.and.pencil")
                    }
                }
                
            }// toolbar

        }
        
        
        
        
        
    }// body
    
}// MainView_test2

struct Page2: View {
    
    let colors: [Color] = [.green, .blue, .pink, .orange, .purple]
    let str: String
    
    var body: some View {
        NavigationLink(destination: FolderView(folderName: str)){
            ZStack {
                colors.randomElement()
                Text(str)
                    .font(.title)
                    .foregroundColor(.white)
            }// ZStack
        }
            
            
        
    }// body
    
}// Page2

struct FolderCell: View {
    var name: String
    
    var body: some View {
        NavigationLink(destination: FolderView(folderName: name)) {
            ZStack {
                Color.blue
                HStack {
                    Text(name)
                }
                .foregroundColor(.white)
            }
            
        }// NavigationLink
        
    }// body
    
}// FolderCell

struct CreateNewFolder: View {
    
    @ObservedObject var myNotes: MyNotes
    @Binding var showingPopover: Bool
    @State var newFolderName = ""
    
    init(_ showingPopover: Binding<Bool>, with myNotes: MyNotes) {
        self._showingPopover = showingPopover
        self.myNotes = myNotes
    }
    
    var body: some View {
        GeometryReader { geo in
            ZStack {
                RoundedRectangle(cornerRadius: 7)
                    .fill(Color(.systemGray4))
                    .frame(width: geo.size.width * 0.70, height: geo.size.width * 0.40, alignment: .center)
                VStack {
                    Text("New Folder")
                        .font(.headline)
                    Text("Enter a name for this folder")
                        .font(.subheadline)
                    Spacer()
                    TextField("Name", text: $newFolderName)
                        .frame(width: 200, height: 10)
                        .padding()
                        .background(Color(.white))
                        .cornerRadius(7)
                    Spacer()
                    Color.gray.frame(width: 200, height: CGFloat(1))
                    HStack {
                        Button(action: {print("Cancel")}) {
                            Text("Cancel")
                                .frame(maxWidth: .infinity)
                        }
                        Button(action: {
                            myNotes.folders.append(Folder(name: newFolderName))
                            showingPopover.toggle()
                        }) {
                            Text("Save")
                                .frame(maxWidth: .infinity)
                        }
                    }
                }
                .frame(width: geo.size.width * 0.70, height: geo.size.width * 0.35)
                
            }//Zstack2
            .frame(width: geo.size.width, height: geo.size.height, alignment: .center)
            
        }
    }
}

struct MainView_test2_Previews: PreviewProvider {
    static var previews: some View {
        
        let testNotes = MyNotes()
        testNotes.folders = testFolders
        
        return MainView_test2(myNotes: testNotes)
    }
}
 
*/
