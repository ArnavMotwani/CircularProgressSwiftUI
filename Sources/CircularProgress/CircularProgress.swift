import SwiftUI

@available(iOS 13, OSX 10.15, *)
public struct CircularProgressView: View {
    
    var count: Int
    var total: Int
    var progress: CGFloat

    var fontOne: Font
    var fontTwo: Font

    var colorOne: Color
    var colorTwo: Color

    var fill: LinearGradient
    var lineWidth: CGFloat

    public init(count: Int,
                total: Int,
                progress: CGFloat,
                fontOne: Font = Font.system(size: 75, weight: .bold, design: .rounded),
                fontTwo: Font = Font.system(size: 25, weight: .bold, design: .rounded),
                colorOne: Color = Color.primary,
                colorTwo: Color = Color.gray,
                fill: LinearGradient = LinearGradient(gradient: Gradient(colors: [Color.green, Color.blue]), startPoint: .top, endPoint: .bottom),
                lineWidth: CGFloat = 25.0) {

        self.count = count
        self.total = total
        self.progress = progress
        self.fontOne = fontOne
        self.fontTwo = fontTwo
        self.colorOne = colorOne
        self.colorTwo = colorTwo
        self.fill = fill
        self.lineWidth = lineWidth
    }
    
    public var body: some View {
        ZStack{
            Circle()
                .stroke(lineWidth: lineWidth)
                .opacity(0.3)
                .foregroundColor(Color.secondary)
            
            Circle()
                .trim(from: 0.0, to: CGFloat(min(self.progress, 1.0)))
                .stroke(fill ,style: StrokeStyle(lineWidth: lineWidth, lineCap: .round, lineJoin: .round))
                .rotationEffect(Angle(degrees: 270.0))
                .animation(.linear, value: progress)

            VStack {
                Text("\(count)")
                    .font(fontOne)
                    .foregroundColor(colorOne)
                Text("/ \(total)")
                    .font(fontTwo)
                    .foregroundColor(colorTwo)
            }
        }
    }
}

