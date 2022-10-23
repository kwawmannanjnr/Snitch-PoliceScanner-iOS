//
//  ContentView.swift
//  SnitchWatchPoliceScanner Watch App
//
//  Created by Kwaw Annan on 10/18/22.
//

import SwiftUI
import AVFoundation

var player = AVAudioPlayer()
let audioSession = AVAudioSession.sharedInstance()


struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
