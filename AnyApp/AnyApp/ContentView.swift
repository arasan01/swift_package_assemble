//
//  ContentView.swift
//  AnyApp
//
//  Created by arayama-kyo on 2021/05/19.
//

import SwiftUI

#if DEBUG
import SPMDebug
#else
import SPMRelease
#endif

struct ContentView: View {
    let hello = NSLocalizedString(
        "sayHello",
        bundle: stringBundle,
        value: "Not Found",
        comment: "")
    var body: some View {
        VStack {
            Group {
                Text(SPM(name: "ﾔﾏﾀﾞ").say(hello: hello))
                Text(stringBundle.bundleIdentifier!)
            }
            Spacer().frame(height: 50)
            Group {
                Image(uiImage: image)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                Text(imageBundle.bundleIdentifier!)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
