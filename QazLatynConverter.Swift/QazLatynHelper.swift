
//  Created  on 12/13/18.
//  Copyright © 2018 Til Qazyna. All rights reserved.
//
import Foundation
public class QazLatynHelper
{
    public static func Cyrl2Latyn(cyrlText:String) -> String {
//        var chars = CChar(cyrlText)
        var chars = Array<Character>(cyrlText)
        let length = chars.count
        var latynStrs = Array<String>(repeating: "", count: length)

        for i in 0..<chars.count
        {
            var lastIsUpper = false;
            if (i != length - 1 && String(chars[i + 1]) == String(chars[i + 1]).uppercased())
            {
                lastIsUpper = true;
            }
            var prevIsC = false;
            if (i != 0 && String(chars[i - 1]).lowercased() == "с")
            {
                prevIsC = true;
            }
            if (i + 1 < length)
            {
                let key = String(chars[i]) + String(chars[i + 1])
                switch key
                {
                case "ИЯ","ЙЯ":
                    latynStrs[i] = "Iа"
                case "Ия","Йя":
                latynStrs[i] = "Iа"
                case "ия","йя","иЯ","йЯ":
                latynStrs[i] = "ıa"
                case "ХХ": latynStrs[i] = "ХХ"
                default: latynStrs[i] = ""
                }
            }
            
            switch (chars[i])
            {
            case "Я": latynStrs[i] = "Iа"
            case "я": latynStrs[i] = "ıa"
            case "Ю": latynStrs[i] = "Iý"
            case "ю": latynStrs[i] = "ıý"
            case "Ё": latynStrs[i] = "Io"
            case "ё": latynStrs[i] = "ıo"
            case "Щ": latynStrs[i] = lastIsUpper ? "SHSH" : "Shsh"
            case "щ": latynStrs[i] = "sh"
            case "Э": latynStrs[i] = "E"
            case "э": latynStrs[i] = "e"
            case "А": latynStrs[i] = "A"
            case "а": latynStrs[i] = "a"
            case "Б": latynStrs[i] = "B"
            case "б":  latynStrs[i] = "b"
            case "Ц":  latynStrs[i] = "S"
            case "ц":  latynStrs[i] = "s"
            case "Д":  latynStrs[i] = "D"
            case "д":  latynStrs[i] = "d"
            case "Е":  latynStrs[i] = "E"
            case "е":  latynStrs[i] = "e"
            case "Ф": latynStrs[i] = "F"
            case "ф": latynStrs[i] = "f"
            case "Г": latynStrs[i] = "G"
            case "г":  latynStrs[i] = "g"
            case "Х":  latynStrs[i] = prevIsC ? "Q" : "H"
            case "х":  latynStrs[i] = prevIsC ? "q" : "h"
            case "Һ":  latynStrs[i] = "H"
            case "һ":  latynStrs[i] = "h"
            case "І":  latynStrs[i] = "I"
            case "і":  latynStrs[i] = "i"
            case "И":  latynStrs[i] = "I"
            case "и":  latynStrs[i] = "ı"
            case "Й":  latynStrs[i] = "I"
            case "й":  latynStrs[i] = "ı"
            case "К":  latynStrs[i] = "K"
            case "к":  latynStrs[i] = "k"
            case "Л":  latynStrs[i] = "L"
            case "л":  latynStrs[i] = "l"
            case "М":  latynStrs[i] = "M"
            case "м":  latynStrs[i] = "m"
            case "Н":  latynStrs[i] = "N"
            case "н":  latynStrs[i] = "n"
            case "О":  latynStrs[i] = "O"
            case "о":  latynStrs[i] = "o"
            case "П": latynStrs[i] = "P"
            case "п":  latynStrs[i] = "p"
            case "Қ":  latynStrs[i] = "Q"
            case "қ":  latynStrs[i] = "q"
            case "Р":  latynStrs[i] = "R"
            case "р":  latynStrs[i] = "r"
            case "С":  latynStrs[i] = "S"
            case "с":  latynStrs[i] = "s"
            case "Т":  latynStrs[i] = "T"
            case "т":  latynStrs[i] = "t"
            case "Ұ":  latynStrs[i] = "U"
            case "ұ":  latynStrs[i] = "u"
            case "В":  latynStrs[i] = "V"
            case "в":  latynStrs[i] = "v"
            case "У":  latynStrs[i] = "Ý"
            case "у":  latynStrs[i] = "ý"
            case "Ы": latynStrs[i] = "Y"
            case "ы":  latynStrs[i] = "y"
            case "З":  latynStrs[i] = "Z"
            case "з":  latynStrs[i] = "z"
            case "Ə":  latynStrs[i] = "Á"
            case "Ә":  latynStrs[i] = "Á"
            case "ә":  latynStrs[i] = "á"
            case "ə":  latynStrs[i] = "á"
            case "Ө":  latynStrs[i] = "Ó"
            case "ө":  latynStrs[i] = "ó"
            case "Ɵ":  latynStrs[i] = "Ó"
            case "ɵ":  latynStrs[i] = "ó"
            case "Ү":  latynStrs[i] = "Ú"
            case "ү":  latynStrs[i] = "ú"
            case "Ч":  latynStrs[i] = lastIsUpper ? "CH" : "Ch"
            case "ч":  latynStrs[i] = "ch"
            case "Ғ":  latynStrs[i] = "Ǵ"
            case "ғ":  latynStrs[i] = "ǵ"
            case "Ш":  latynStrs[i] = lastIsUpper ? "SH" : "Sh"
            case "ш":  latynStrs[i] = "sh"
            case "Ж": latynStrs[i] = "J"
            case "ж": latynStrs[i] = "j"
            case "Ң": latynStrs[i] = "Ń"
            case "ң": latynStrs[i] = "ń"
            case "ь": latynStrs[i] = ""
            default: latynStrs[i] = String(chars[i])
            }
        }
        return latynStrs.joined()
    }
}
