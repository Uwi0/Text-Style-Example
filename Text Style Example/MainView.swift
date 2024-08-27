import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink("Accrostic Poem"){
                    AccrosticPoemView()
                }
                NavigationLink("Markdown"){
                    MarkdownDemoView()
                }
                NavigationLink("Markdown and String Interpolation"){
                    MarkdownAndStringInterpolationDemoView()
                }
                NavigationLink("Markdown and Code") {
                    DisplayingCodeWithMarkdown()
                }
                NavigationLink("Open url action"){
                    OpenUrlActionDemoView()
                }
                NavigationLink("Pluraliztaion and Inflection") {
                    PluralizationDemoView()
                }
                NavigationLink("List, Member Style and Measurement") {
                    ListMemberStyleMeasurementsDemoView()
                }
                NavigationLink("Dates and The Text view") {
                    TextDatesDemoView()
                }
                NavigationLink("Attributed String"){
                    AttributedStringDemoView()
                }
            }.navigationTitle("Style and Text View")
        }
    }
}

#Preview {
    MainView()
}
