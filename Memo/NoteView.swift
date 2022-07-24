//
//  NoteView.swift
//  Memo
//
//  Created by 吉川創麻 on 2022/07/23.
//

import SwiftUI

struct NoteView: View {
    
    @State var title = ""
    @State var noteText = "asdf"
    
    var body: some View {
//            TextEditor(text: $noteText)
        TextView(text: $noteText) // UITextView
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Done") {
                        print("Done")
                    }
                }
            }// toolbar
    }// body
}

struct TextView: UIViewRepresentable {
    @Binding var text: String
    
    let textStorage = NSTextStorage()
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    func makeUIView(context: Context) -> UITextView {
        let attrs =
            [NSAttributedString.Key.font : UIFont.preferredFont(forTextStyle: .body)]
        let attrString = NSAttributedString(string: text, attributes: attrs)
        textStorage.append(attrString)
        
        let layoutManager = NSLayoutManager()
        let container = NSTextContainer(size: CGSize())
        container.widthTracksTextView = true
        layoutManager.addTextContainer(container)
        textStorage.addLayoutManager(layoutManager)
        
        let textView = UITextView(frame: CGRect(), textContainer: container)
        return textView
    }
    
    func updateUIView(_ uiView: UITextView, context: Context) {
//        uiView.attributedText =
//            context.coordinator.updateAttributeString()
    }
    
    class Coordinator: NSObject {
        var parent: TextView
        
        init(_ textView: TextView) {
            self.parent = textView
        }
        
        func updateAttributeString() -> NSAttributedString {
            
            let attrs:[NSAttributedString.Key : Any] =
                [NSAttributedString.Key.font :
                    UIFont.preferredFont(forTextStyle: .largeTitle),
                 NSAttributedString.Key.strikethroughStyle :
                    NSUnderlineStyle.single.rawValue
                ]
            
            let attrString = NSAttributedString(string: parent.text,
                                                attributes: attrs)
            return attrString
        }// updateAttributeString()
        
    }// Coordinator
    
}// TextView

struct NoteView_test_1_Previews: PreviewProvider {
    static var previews: some View {
        NoteView()
    }
}

