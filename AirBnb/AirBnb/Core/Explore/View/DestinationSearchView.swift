//
//  DestinationSearchView.swift
//  AirBnb
//
//  Created by Arda Nar on 18.02.2024.
//

import SwiftUI

enum DestinationSearchOption{
    case location
    case dates
    case guests
}

struct DestinationSearchView: View {
    @Binding var show: Bool
    @ObservedObject var viewModel: ExploreViewModel
    
    @State private var selectedOptions: DestinationSearchOption = .location
    @State private var startDate = Date()
    @State private var endDate = Date()
    @State private var numGuests = 0
    
    
//    @State private var locationSelected = false
//    @State private var datesSelected = false
//    @State private var guestsSelected = false
    
    var body: some View {
        VStack{
            HStack{
                Button(action: {
                    withAnimation(.snappy) {
                        viewModel.updateListingsForLocation()
                        show.toggle()
                    }
                }, label: {
                    Image(systemName: "xmark.circle")
                        .imageScale(.large)
                        .foregroundStyle(.black)
                })
                Spacer()
                
                if !viewModel.searchLocation.isEmpty{
                    Button(action: {
                        viewModel.searchLocation = ""
                        viewModel.updateListingsForLocation()
                    }, label: {
                        Text("Clear")
                            .foregroundStyle(.black)
                            .font(.subheadline)
                            .fontWeight(.semibold)
                    })
                }
            }
            .padding()
            
            VStack(alignment: .leading){
                if selectedOptions == .location{
                    Text("Where to?")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    HStack{
                        Image(systemName: "magnifyingglass")
                            .imageScale(.small)
                        
                        TextField("Search destination", text: $viewModel.searchLocation)
                            .font(.subheadline)
                            .onSubmit {
                                viewModel.updateListingsForLocation()
                                show.toggle()
                            }
                            
                    }
                    .frame(height: 44)
                    .padding(.horizontal)
                    .overlay{
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(lineWidth: 1.0)
                            .foregroundStyle(Color(.systemGray4))
                    }
                }else{
                    CollapsedPickerView(title: "Where", description: "Add destination")
                }
            }
            .modifier(CollapsibleDestinationViewModifier())
            .frame(height: selectedOptions == .location ? 120 : 64)
            .onTapGesture {
                withAnimation(.snappy) {
                    selectedOptions = .location
                }
            }
            
            
            // date selection view
            VStack(alignment: .leading){
                if selectedOptions == .dates{
                    Text("When's your trip?")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    VStack{
                        DatePicker("From", selection: $startDate, displayedComponents: .date)
                        Divider()
                        DatePicker("To", selection: $endDate, displayedComponents: .date)
                        
                    }
                    .foregroundStyle(.gray)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    
                }else{
                    CollapsedPickerView(title: "When", description: "Add dates")
                }
            }
            .modifier(CollapsibleDestinationViewModifier())
            .frame(height: selectedOptions == .dates ? 180 : 64)
            .onTapGesture {
                withAnimation(.snappy) {
                    selectedOptions = .dates
                }
            }
                
            
            
            
            // num guests view
            VStack(alignment: .leading){
                if selectedOptions == .guests{
                    Text("Who's coming?")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    Stepper{
                        Text("\(numGuests) adults")
                    }onIncrement: {
                        numGuests += 1
                    }onDecrement: {
                        guard numGuests > 0 else{
                            return
                        }
                        numGuests -= 1
                    }
                        
                }else{
                    CollapsedPickerView(title: "Who", description: "Add guests")
                }
            }
            .modifier(CollapsibleDestinationViewModifier())
            .frame(height: selectedOptions == .guests ? 120 : 64)
            .onTapGesture {
                withAnimation(.snappy) {
                    selectedOptions = .guests
                }
            }
            
            Spacer()
        }
    }
}

#Preview {
    DestinationSearchView(show: .constant(false), viewModel: ExploreViewModel(service: ExploreService()))
}

struct CollapsibleDestinationViewModifier: ViewModifier{
    func body(content: Content) -> some View {
        content
            .padding()
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding()
            .shadow(radius: 10)
    }
}

struct CollapsedPickerView: View {
    let title: String
    let description: String
    
    var body: some View {
        VStack{
            HStack{
                Text(title)
                    .fontWeight(.semibold)
                    .foregroundStyle(.gray)
                
                Spacer()
                
                Text(description)
            }
            .fontWeight(.semibold)
            .font(.subheadline)
        }
    }
}
