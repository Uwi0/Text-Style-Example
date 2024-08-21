//
//  DisplayingCodeWithMarkdown.swift
//  Text Style Example
//
//  Created by dwi prasetyo on 21/08/24.
//

import SwiftUI

struct DisplayingCodeWithMarkdown: View {
    
    let codeString = """
**A Swift View**

`import SwiftUI`

`struct Displaying_Code_with_Markdown: View {`
    `var body: some View {`
        `Text("Hello, World!")`
    `}`
`}`

`#Preview {`
    `Displaying_Code_with_Markdown()`
`}`
"""
    
    var body: some View {
        Text(LocalizedStringKey(codeString)).padding()
    }
}

#Preview {
    DisplayingCodeWithMarkdown()
}
