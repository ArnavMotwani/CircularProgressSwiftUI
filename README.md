# CircularProgress

SwiftUI package that creates an animated circular progress bar

### Installation: It requires iOS 14 and Xcode 12!

In Xcode go to `File -> Swift Packages -> Add Package Dependency` and paste in the repo's url: `https://github.com/ArnavMotwani/CircularProgressSwftUI` and select master branch.

## Usage:

Import the package in the file you would like to use it: `import CircularProgress`

```swift
struct ContentView: View {
    @State var count: Int = 0
    
    var progress: CGFloat{
        let count = value
        let total = 10
        
        return CGFloat(count)/CGFloat(total)
    }
    
    var body: some View {
        ZStack{
        CircularProgress(count: count, total: 10, progress: progress)
        }
    }
}
```
### Example:

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

