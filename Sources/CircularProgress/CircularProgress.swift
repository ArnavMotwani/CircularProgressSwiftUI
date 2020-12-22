import SwiftUI

@available(iOS 13, OSX 10.15, *)
public struct CircularProgressView: View {
    
    //MARK: Required variables
    var count: Int
    var total: Int
    var progress: CGFloat

    //MARK: Optional variables
    //fontOne for the current value text and fontTwo for the total value text in the centre.
    var fontOne: Font
    var fontTwo: Font

    //colorOne for the current value text and colorTwo for the total value text in the centre.
    var colorOne: Color
    var colorTwo: Color

    //The fill variable is used to choose the gradient inside the progress bar
    var fill: LinearGradient
    //The lineWidth variable is used to choose the width of the progress bar (Not the enter view)
    var lineWidth: CGFloat
    //The lineCap variable is used to choose the line caps at the end of the progress bar
    var lineCap: CGLineCap
    //Choose whether the text in the centre is shown.
    var showText: Bool
    //Choose whether the bottom text in the centre of the progress bar is shown.
    var showBottomText: Bool

    //MARK: Init
    //Declared to allow view access the package
    //Also sets defaults for optional variables
    public init(count: Int,
                total: Int,
                progress: CGFloat,
                fontOne: Font = Font.system(size: 75, weight: .bold, design: .rounded),
                fontTwo: Font = Font.system(size: 25, weight: .bold, design: .rounded),
                colorOne: Color = Color.primary,
                colorTwo: Color = Color.gray,
                fill: LinearGradient = LinearGradient(gradient: Gradient(colors: [Color.green, Color.blue]), startPoint: .top, endPoint: .bottom),
                lineWidth: CGFloat = 25.0,
                lineCap: CGLineCap = CGLineCap.round,
                showText: Bool = true,
                showBottomText: Bool = true) {

        self.count = count
        self.total = total
        self.progress = progress
        self.fontOne = fontOne
        self.fontTwo = fontTwo
        self.colorOne = colorOne
        self.colorTwo = colorTwo
        self.fill = fill
        self.lineWidth = lineWidth
        self.lineCap = lineCap
        self.showText = showText
        self.showBottomText = showBottomText
    }
    
    //MARK: View
    public var body: some View {
        ZStack{
            //Background line for progress
            Circle()
                .stroke(lineWidth: lineWidth)
                .opacity(0.3)
                .foregroundColor(Color.secondary)
            
            //Trimmed circle to represent progress
            Circle()
                .trim(from: 0.0, to: CGFloat(min(self.progress, 1.0)))
                .stroke(fill ,style: StrokeStyle(lineWidth: lineWidth, lineCap: lineCap, lineJoin: .round))
                .rotationEffect(Angle(degrees: 270.0))
                .animation(.linear, value: progress)
            
            if showText {
                //Text at the centre
                VStack {
                    //Text for current value
                    Text("\(count)")
                        .font(fontOne)
                        .foregroundColor(colorOne)
                    if showBottomText{
                        //Text for total value
                        Text("/ \(total)")
                            .font(fontTwo)
                            .foregroundColor(colorTwo)
                    }
                }
            }
        }
    }
}

