//
//  CheckoutView.swift
//  iDine
//
//  Created by osa on 10.10.2021.
//

import SwiftUI

struct CheckoutView: View {
    @EnvironmentObject var order: Order
    @State private var paymentType = "Cash"
    //@State - works like @EnvironmentObject for integers and Strings
    //If the object changes it automatically refreshes our UI
    //Apple recommends mark them private (they only for current view)
    let paymentsTypes = ["Cash", "Credit Card", "iDine Points"]
    
    var body: some View {
        VStack {
            Section {
                Picker("How do you want to pay?", selection: $paymentType) {
                    ForEach(paymentsTypes, id: \.self) {
                        Text($0)
                    }
                    
                }
            }
        }
        .navigationTitle("Payment")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct CheckoutView_Previews: PreviewProvider {
    static var previews: some View {
        CheckoutView().environmentObject(Order())
    }
}
