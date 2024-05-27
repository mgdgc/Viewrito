# Viewrito

🌯 Viewrito makes applying view modifiers in SwiftUI easier.

## When To Use

We all love the beautiful and marvelous SwiftUI, but we've likely all experienced hitting the wall of iOS version compatibility issues.

For example...

```swift
if #available(iOS 17.0, *) {
    Text("Hello, world! 🌯")
        .font(.title)
        .padding()
        .background {
            RoundedRectangle(cornerRadius: 4)
                .fill(.black)
        }
        .foregroundStyle(Color.blue) // ≥ iOS 17
} else {
    Text("Hello, world! 🌯")
        .font(.title)
        .padding()
        .background {
            RoundedRectangle(cornerRadius: 4)
                .fill(.black)
        }
        .foregroundColor(Color.blue) // < iOS 17
}
```

Or at least, you've tried something like this...

```swift
struct ContentView: View {
    var body: some View {
        let text = Text("Hello, world! 🌯")
            .font(.title)
            .padding()
            .background {
                RoundedRectangle(cornerRadius: 4)
                    .fill(.black)
            }
        if #available(iOS 17.0, *) {
            text.foregroundStyle(Color.blue)
        } else {
            text.foregroundColor(Color.blue)
        }
    }
}
```

The idea is to simplify this duplicate code and make it prettier.

## How To Use

### Using `Viewrito` View

```swift
import SwiftUI
import Viewrito

struct ContentView: View {
    var body: some View {
        Viewrito {
            Text("Hello, world! 🌯")
        } returning: { text in
            if #available(iOS 17.0, *) {
                text.foregroundStyle(Color.blue)
            } else {
                text.foregroundColor(Color.blue)
            }
        }
    }
}
```

### Using `.addViewModifier` View Modifier

```swift
import SwiftUI
import Viewrito

struct ContentView: View {
    var body: some View {
        Text("Hello, world! 🌯")
            .addViewModifier { text in
                if #available(iOS 17.0, *) {
                    text.foregroundStyle(Color.blue)
                } else {
                    text.foregroundColor(Color.blue)
                }
            }
    }
}
```

## Installation

- **Swift Package Manager**

```
https://github.com/mgdgc/Viewrito.git
```

## License

[MIT License](https://github.com/mgdgc/Viewrito/blob/main/LICENSE)
