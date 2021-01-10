# WeSplit
#100DaysOfSwiftUI Project One 

<img align="left" src="https://github.com/1Soyebo/WeSplit/blob/master/images/image1.png" width="300"/>
<img src="https://github.com/1Soyebo/WeSplit/blob/master/images/image2.png" width="300"/>


## About the App
This is a simple app for splitting the bill between a group of friends at a bar or restaurant. It also helps in calcualting the tip per person.
The code is SwiftUI eerily simple compared to the code you'd have to write if you were using UIKit with MVC Architecture

## MVVM Architecture
I am still new to it but I love how there is a clear seperation of concerns between the View and the ViewController for example. There's also this concept known as two-way binding where a variable and a control are tightly coupled together such that if there is any change in the variable or control, the other is immediately notified of this change.

## SwiftUI is so cool
It uses this really cool declarative syntax that makes your work super easy. And then you can easily adopt MVVM Architecture which I'm fairly used to. 
I'd recommend it for UI/UX designers who are looking to start building iOS apps. 
Basically a View is a function of its `@State`. Its not as complex as it sounds but I won't do enough justice to it here. S

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

