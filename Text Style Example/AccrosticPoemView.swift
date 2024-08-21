import SwiftUI

struct LineOfPoetry: Identifiable {
    let id = UUID()
    let line: String
    
    var firstChar: String {
        if let first = line.first {
            String(first)
        }else {
            ""
        }
    }
    
    var remainingLine: String {
        String(line.dropFirst())
    }
}

struct AccrosticPoemView: View {
    let poem: [LineOfPoetry] = [
        .init(line: "Dancing in the moonlight, free,"),
        .init(line: "Reaching for the stars, we see."),
        .init(line: "Every wish, a whispered stream,"),
        .init(line: "Aiming high, in every scheme."),
        .init(line: "Moments woven with desire,"),
        .init(line: "Soaring dreams, higher and higher."),
    ]

    var body: some View {
        VStack {
            Text(
                "\(Text("D").foregroundStyle(.red).bold().font(.largeTitle))reams, \(Text("Very cool").foregroundStyle(.green))"
            ).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            Spacer()
            VStack(alignment: .leading) {
                ForEach(poem) { line in
                    colorFirstLetterOfLineOfPoetry(line: line)
                }.font(.headline)
            }
            Spacer()

        }
        .padding()
    }
    
    func colorFirstLetterOfLineOfPoetry(line: LineOfPoetry, color: Color = .blue) -> Text {
        Text("\(Text(line.firstChar).foregroundStyle(color).bold())\(line.remainingLine)")
    }
    
}

#Preview {
    AccrosticPoemView()
}
