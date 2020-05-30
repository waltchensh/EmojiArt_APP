//
//  EmojiArt.swift
//  EmojiArt
//
//  Created by cycu on 2019/5/27.
//  Copyright © 2019 cycu. All rights reserved.
//

import Foundation

struct EmojiArt : Codable{
    var url: URL
    var emojis = [EmojiInfo]()
    
    var json: Data? {
        return try? JSONEncoder().encode(self)
    }
    
    struct EmojiInfo : Codable{
        let x: Int
        let y: Int
        let text: String
        let size: Int
    }
    
    init(url: URL, emojis: [EmojiInfo]) {
        self.url = url
        self.emojis = emojis
    }
    
    init?(json:Data) {
        if let newValue = try? JSONDecoder().decode(EmojiArt.self, from: json) {
            self = newValue
        } else {
            return nil
        }
    }
}
