//
//  ContentView.swift
//  Chat
//
//  Created by Dima on 18.09.2022.
//

import SwiftUI

struct ContentView: View {
    @State var serverIP = "";
    @State var server = false
    @State var nickname = ""
    @State var connected = false
    var body: some View {
        if !connected {
            List {
                Section {
                    TextField("Server IP", text: $serverIP).disabled(server)
                    TextField("Nickname", text: $nickname)
                    Toggle("Host", isOn: $server).onChange(of: server) {newValue in
                        serverIP = newValue ? "127.0.0.1" : ""
                    }
                    Button("Connect") {
                        connected = true
                    }
                    
                }
            }
        } else {
            Text("Deez nuts")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
