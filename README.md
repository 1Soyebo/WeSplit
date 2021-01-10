# WeSplit
#100DaysOfSwiftUI Project One 

<img align="left" src="https://github.com/1Soyebo/WeSplit/blob/master/images/image1.png" width="300"/>
<img src="https://github.com/1Soyebo/WeSplit/blob/master/images/image2.png" width="300"/>


## About the App
This is a simple app for splitting the bill between a group of friends at a bar or restaurant. It also helps in calcualting the tip per person.
The code with SwiftUI is eerily simple compared to the code you'd have to write if you were using UIKit with MVC Architecture

## MVVM Architecture
I am still new to it but I love how there is a clear seperation of concerns between the View and the ViewController for example. There's also this concept known as two-way binding where a variable and a control are tightly coupled together such that if there is any change in the variable or control, the other is immediately notified of this change. No need for closures or delegates or notification center 😌

## SwiftUI is so Cool 🤩
SwiftUI is an Apple Framework that uses this really cool declarative syntax that makes your work super easy. You are simply telling the compiler what to build for you and you don't have to concern yourself about the how to build it. And then you can easily adopt MVVM Architecture which I'm fairly new to. 
I'd recommend it for UI/UX designers who are looking to start building iOS apps. 
Basically a View is a function of its `@State`. Its not as complex as it sounds but I won't do enough justice to it here.

### Imperative vs Declarative
Its fun to use especially if you're coming from an imperative background. It takes a lot of stress of your back and you don't have to worry about auto-layout contraints and how the view would look like in landscape orientation. It also automatically handles scrolling. 


### Sample
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
What that is doing is first creating a view for you, then adding **UINavigationController** with a navigation bar and then a **UITableView** with tableview cells, a section and two **textfields** that use decimal keyboard type.

if you were to write that with UIKit you would have at least 2 UITableView DataSource methods and 1 UITableView Delegate Method. Not the mention the UIViewController's viewDidLoad and A LOT of work in a StoryBoard or a XIB file.

I made use of [Hacking With Swift](https://www.hackingwithswift.com/100/swiftui) tutorials!

