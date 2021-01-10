# WeSplit
#100DaysOfSwiftUI Project One 

<img align="left" src="https://github.com/1Soyebo/WeSplit/blob/master/images/image1.png" width="300"/>
<img src="https://github.com/1Soyebo/WeSplit/blob/master/images/image2.png" width="300"/>

Here's a Snippet of the code
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

