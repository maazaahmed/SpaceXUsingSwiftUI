//
//  ContentView.swift
//  SpaceX-GraphQL
//
//  Created by Macbook Pro on 13/06/2021.
//

import SwiftUI

struct ContentView: View {
    
    @State var id = ""
    var body: some View {
        Text(id).onAppear(perform: {
            Network.shared.apollo.fetch(query: SpecificRocketQuery()){ result in
                switch result{
                
                case .success(let graphQLResult):
                    DispatchQueue.main.async {
                        if let ID = graphQLResult.data?.capsule?.dragon?.id{
                            self.id = "ID:  "
                            self.id += ID
                        }
                    }
                    
                case .failure(let error):
                    print("Error: ", error)
                }
                
            }
        })
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
