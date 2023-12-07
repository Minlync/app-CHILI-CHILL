//
//  CheckoutView.swift
//  iDine
//
//  Created by Paul Hudson on 08/02/2021.
//

import SwiftUI

struct CheckoutView: View {
    @State private var Name: String = ""
    @State private var Phone: String = ""
    @State private var Address: String = ""
    @EnvironmentObject var order: Order
    @State private var paymentType = "Cash"
    @State private var addLoyaltyDetails = false
    @State private var loyaltyNumber = ""
    @State private var tipAmount = 15
    @State private var showingPaymentAlert = false

    let paymentTypes = ["Cash", "Credit Card", "Points"]
    let tipAmounts = [10, 15, 20, 25, 0]

    var totalPrice: String {
        let total = Double(order.total)
        let tipValue = total / 100 * Double(tipAmount)
        return (total + tipValue).formatted(.currency(code: "USD"))
    }

    var body: some View {
        Form {
            Section("Contact Information") {
                TextField("Name", text: $Name)
                TextField("Phone", text: $Phone)
                TextField("Address", text: $Address)
            }
            Section("payment"){
                Picker("How do you want to pay?", selection: $paymentType) {
                    ForEach(paymentTypes, id: \.self) {
                        Text($0)
                    }
                }

                Toggle("Add CHILL card", isOn: $addLoyaltyDetails.animation())

                if addLoyaltyDetails {
                    TextField("Enter your CHILL ID", text: $loyaltyNumber)
                }
            }

            Section("Add a tip?") {
                Picker("Percentage:", selection: $tipAmount) {
                    ForEach(tipAmounts, id: \.self) {
                        Text("\($0)%")
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
            }

            Section("Total: \(totalPrice)") {
                Button("Confirm order") {
                    showingPaymentAlert.toggle()
                }
            }
        }
        .navigationTitle("Payment")
        .navigationBarTitleDisplayMode(.inline)
        .alert("Order confirmed", isPresented: $showingPaymentAlert) {
            // no buttons needed
        } message: {
            Text("Your total was \(totalPrice) - thank you!")
        }
    }
}

struct CheckoutView_Previews: PreviewProvider {
    static var previews: some View {
        CheckoutView()
            .environmentObject(Order())
    }
}