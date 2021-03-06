//
//  ContentView.swift
//  WeSplit
//
//  Created by Ibukunoluwa Soyebo on 09/01/2021.
//

import SwiftUI


struct LargeBlueFont: ViewModifier{
    
    func body(content: Content) -> some View {
        content
            .foregroundColor(.blue)
            .font(.largeTitle)
    }
    
}

extension View{
    func applyLargeBlueFont() -> some View{
        self.modifier(LargeBlueFont())
    }
}

struct ContentView: View {
    
    @State private var checkAmount = ""
    @State private var numberOfPeople = ""
    @State private var tipPercentage = 2
    
    let tipPercentages = [10, 15, 20, 25, 0]
    
//    @State private var tapCount = 0
//    @State private var name = ""
//    let students = ["Harry", "Hermione", "Ron"]
//    @State private var selectedStudent = 0
    
    
    //Calculating the tip per perosn
    var totalPerPerson: Double {
        let peopleCount = Double(Double(numberOfPeople) ?? 2)
        let tipSelection = Double(tipPercentages[tipPercentage])
        let orderAmount = Double(checkAmount) ?? 0
        
        let tipValue = orderAmount / 100 * tipSelection
        let grandTotal = orderAmount + tipValue
        let amountPerPerson = grandTotal / peopleCount

        return amountPerPerson
    }
    
    var total_amount_for_check:Double{
        let checkAmount_DOuble = Double(checkAmount) ?? 0
        return totalPerPerson + checkAmount_DOuble
    }
    
    var body: some View {
        NavigationView{
            Form {
                Section {
                    TextField("Amount", text: $checkAmount)
                        .keyboardType(.decimalPad)
                    TextField("Number of People", text: $numberOfPeople)
                        .keyboardType(.decimalPad)
//                    Picker("Number of people", selection: $numberOfPeople) {
//                            ForEach(2 ..< 100) {
//                                Text("\($0) people")
//                            }
//                    }
                     
                }
                
                Section(header: Text("How much tip do you want to leave?")){
                    Picker("Select Tip", selection: $tipPercentage){
                        ForEach(0..<tipPercentages.count){
                            Text("\(self.tipPercentages[$0])%")
                        }
                        
                    }.pickerStyle(SegmentedPickerStyle())
                }
                
                Section(header: Text("Amount per person")
                ) {
                    Text("$\(totalPerPerson, specifier: "%.2f")")
                }
                
                Section(header: Text("total amount for the check")) {
                    Text("$\(total_amount_for_check, specifier: "%.2f")")
                        .foregroundColor(tipPercentage == 4 ? .red:.none)
                        
                }
                
                
            }
            
            
            .navigationBarTitle(Text("WeSplit"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
