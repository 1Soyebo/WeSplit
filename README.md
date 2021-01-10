# WeSplit
#100DaysOfSwiftUI Project One 

<img align="left" src="https://github.com/1Soyebo/WeSplit/blob/master/images/image1.png" width="300"/>
<img src="https://github.com/1Soyebo/WeSplit/blob/master/images/image2.png" width="300"/>

## SwiftUI is so cool
It uses this really cool declarative syntax that makes your work super easy. And then you can easily adopt MVVM Architecture which I'm fairly used to. 
I'd recommend it for UI/UX designers who are looking to start building iOS apps. 

### Imperative vs Declarative
Its fun to use especially if you're coming from an imperative background. It takes a lot of stress of your back and you don't have to worry about auto-layout contraints and how the view would look like in landscape orientation. It also automatically handles scrolling. 

Here's a snippet of the code
```swift
var body: some View {
        NavigationView{
            Form {
                Section {
                    TextField("Amount", text: $checkAmount)
                        .keyboardType(.decimalPad)
                    TextField("Number of People", text: $numberOfPeople)
                        .keyboardType(.decimalPad)
                 }
            }
        }
 }
```

I made use of [Hacking With Swift](https://www.hackingwithswift.com/100/swiftui) tutorials!

