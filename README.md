# CircularProgress

SwiftUI package that creates an animated circular progress bar

### Installation: It requires at least iOS 13, iPadOS 13, macOS 10.15  and Xcode 11!

In Xcode go to `File -> Swift Packages -> Add Package Dependency` and paste in the repo's url: `https://github.com/ArnavMotwani/CircularProgressSwftUI` and select master branch.

## Usage:

Import the package into the file with  `import CircularProgress`

### Example:

<p float="center">
  <img src="./Gifs/example.gif" width="200" />
</p>

```swift
import SwiftUI
import CircularProgress

struct ContentView: View {
    @State var count = 0
    let total = 10
    var progress: CGFloat{
        return CGFloat(count)/CGFloat(total)
    }
    var body: some View {
        VStack {
            CircularProgressView(count: count, total: total, progress: progress)
                .padding(50)
            HStack{
                Button("Decrease", action: {self.count -= 1})
                Spacer()
                Button("Increase", action: {self.count += 1})
            }
            .padding(50)
        }
    }
}

```

## Customizations:

| parameter | optional? | type              | description                               | default                                                                                                    |
|-----------|-----------|-------------------|-------------------------------------------|------------------------------------------------------------------------------------------------------------|
| count     | required  | Int               | Current value (larger text in the centre) | -                                                                                                          |
| total     | required  | Int               | Total value (smaller text in the centre)  | -                                                                                                          |
| progress  | required  | CGFloat           | Progress of the bar                       | -                                                                                                          |
| fontOne   | optional  | Font              | Font of larger text in the centre         | Font.system(size: 75, weight: .bold, design: .rounded)                                                     |
| fontTwo   | optional  | Font              | Font of smaller text in the centre        | Font.system(size: 25, weight: .bold, design: .rounded)                                                     |
| colorOne  | optional  | Color             | Color of larger text in the centre        | Color.primary                                                                                              |
| colorTwo  | optional  | Color             | Color of smaller text in the centre       | Color.gray                                                                                                 |
| fill      | optional  | LinearGradient | Fill of the progress bar                  | LinearGradient(gradient: Gradient(colors: [Color.green, Color.blue]), startPoint: .top, endPoint: .bottom) |
| lineWidth | optional  | CGFloat           | Width of the progress bar                 | 25.0                                                                                                       |

