
import Foundation
import UIKit


public extension UIColor {
    
    /// 导航栏背景色
    static let navigationBarBackground: UIColor = .white
    
    /// 主要按钮 边框样式， 填充样式
    static let buttonBorderTitle: UIColor = .purple_7F40FF
    static let buttonFillBackground: UIColor = .purple_7F40FF
    
    /// 语音房间-聊天-送礼昵称、链接的颜色 26DAC3
    static let voiceRoomLink: UIColor = .blue_26DAC3
    
    /// alert确定按钮背景色
    static let alertPurpleButtonBackground: UIColor = .purple_7F40FF
    static let alertViewBlackBackgournd: UIColor = UIColor.init(white: 0, alpha: 0.6)
    
    // 确认
    static let alertButtonConfirmBackground: UIColor = UIColor.purple_7F40FF
    static let alertButtonConfirmBorder: UIColor = .clear
    static let alertButtonConfirmTitle: UIColor = .white
    
    // 取消
    static let alertCancelButtonBackground: UIColor = UIColor.clear
    static let alertCancelButtonBorder: UIColor = UIColor.gray_A9A9A9
    static let alertCancelButtonTitle: UIColor = UIColor.gray_A9A9A9
    
    
    /// tabBar normal文字
    static let tabBarNormalText: UIColor = .gray_8E8E8E
    
    /// tabBar selected文字
    static let tabBarSelectedText: UIColor = .gray_646464
    
    /// 私聊文字气泡背景颜色
    static let messageLeftTextBubbleBackground: UIColor = UIColor.white
    static let messageRightTextBubbleBackground: UIColor = UIColor.purple_AA80FF
    
    /// 私聊文字颜色
    static let messageLeftText: UIColor = UIColor.black_3E3E3E
    static let messageRightText: UIColor = UIColor.white
    
    /// 私聊消息的交互按钮相关
    
    // 确认
    static let messageButtonConfirmBackgroundPink: UIColor = UIColor.pink_F475ED
    static let messageButtonConfirmBackground: UIColor = UIColor.purple_7F40FF
    static let messageButtonConfirmBorder: UIColor = .clear
    static let messageButtonConfirmTitle: UIColor = .white
    
    // 取消
    static let messageCancelButtonBackground: UIColor = UIColor.clear
    static let messageCancelButtonBorder: UIColor = UIColor.gray_A9A9A9
    static let messageCancelButtonTitle: UIColor = UIColor.gray_A9A9A9
    
    // 处理完之后的按钮背景
    static let messageButtonHandledBackground: UIColor = UIColor.gray_EEEEEE
    static let messageButtonHandledBorder: UIColor = .clear
    static let messageButtonHandledTitle: UIColor = UIColor.gray_A9A9A9
    
    // MARK: - 颜色_数值
    
    static let purple_7F40FF = UIColor(hex: 0x7F40FF)
    static let purple_AA80FF = UIColor(hex: 0xAA80FF)
    static let purple_5715DD = UIColor(hex: 0x5715DD)
    static let purple_160036 = UIColor(hex: 0x160036)
    
    static let pink_FF76B2 = UIColor(hex: 0xFF76B2)
    static let pink_FFD3E6 = UIColor(hex: 0xFFD3E6)
    static let pink_F475ED = UIColor(hex: 0xF475ED)
    
    static let gray_A9A9A9 = UIColor(hex: 0xA9A9A9)
    static let gray_EEEEEE = UIColor(hex: 0xEEEEEE)
    static let gray_F7F7F7 = UIColor(hex: 0xF7F7F7)
    static let gray_DDDDDD = UIColor(hex: 0xDDDDDD)
    static let gray_8E8E8E = UIColor(hex: 0x8E8E8E)
    static let gray_FAFAFA = UIColor(hex: 0xFAFAFA)
    static let gray_7A7A7A = UIColor(hex: 0x7A7A7A)
    static let gray_646464 = UIColor(hex: 0x646464)
    static let gray_E5E5E5 = UIColor(hex: 0xE5E5E5)
    static let gray_F3F3F3 = UIColor(hex: 0xF3F3F3)
    static let gray_C4C4C4 = UIColor(hex: 0xC4C4C4)
    static let gray_B4B4B4 = UIColor(hex: 0xB4B4B4)
    static let gray_D8D8D8 = UIColor(hex: 0xD8D8D8)
    static let gray_1ED6B9 = UIColor(hex: 0x1ED6B9)
    static let gray_DADADA = UIColor(hex: 0xDADADA)
    
    static var black_3E3E3E = UIColor(hex: 0x3E3E3E)
    static var black_313131 = UIColor(hex: 0x313131)
    static var black_4A4A4A = UIColor(hex: 0x4A4A4A)

    static let gray_F8F8F8 = UIColor(hex: 0xF8F8F8)
    static let gray_E6E6E6 = UIColor(hex: 0xE6E6E6)
    static let gray_C2C2C2 = UIColor(hex: 0xC2C2C2)
    static let gray_EDEDED = UIColor(hex: 0xEDEDED)
    static let gray_9B9B9B = UIColor(hex: 0x9B9B9B)

    static let orange_FF5D2B = UIColor(hex: 0xFF5D2B)
    static let orange_FF9800 = UIColor(hex: 0xFF9800)
    static let orange_FFF3DF = UIColor(hex: 0xFFF3DF)
    static let orange_F35F31 = UIColor(hex: 0xF35F31)
    static let orange_EB9D1C = UIColor(hex: 0xEB9D1C)
    static let orange_E36C1E = UIColor(hex: 0xE36C1E)

    static let green_1ED6B9 = UIColor(hex: 0x1ED6B9)
    static let green_08BC96 = UIColor(hex: 0x08BC96)
    static let green_EAF9F6 = UIColor(hex: 0xEAF9F6)
    static let green_1BC9A6 = UIColor(hex: 0x1BC9A6)
    
    static let red_FD3F51 = UIColor(hex: 0xFD3F51)
    static let red_FF314A = UIColor(hex: 0xFF314A)
    static let red_FF7856 = UIColor(hex: 0xFF7856)
    static let red_D0021B = UIColor(hex: 0xD0021B)
    static let red_980000 = UIColor(hex: 0x980000)
    static let red_D81C15 = UIColor(hex: 0xD81C15)
    static let red_F86270 = UIColor(hex: 0xF86270)
    static let red_FD495A = UIColor(hex: 0xFD495A)

    static let yellow_FF9000 = UIColor(hex: 0xFF9000)
    static let yellow_FFE200 = UIColor(hex: 0xFFE200)
    static let yellow_FFF1A3 = UIColor(hex: 0xFFF1A3)
    static let yellow_FFB02E = UIColor(hex: 0xFFB02E)
    static let yellow_FFCD18 = UIColor(hex: 0xFFCD18)
    static let yellow_FFA400 = UIColor(hex: 0xFFA400)
    static let yellow_FEBA15 = UIColor(hex: 0xFEBA15)
    static let yellow_C6A47E = UIColor(hex: 0xC6A47E)
    static let yellow_977045 = UIColor(hex: 0x977045)
    static let yellow_F8E71C = UIColor(hex: 0xF8E71C)

    static let blue_7F40FF = UIColor(hex: 0x7F40FF)
    static let blue_6AB0FF = UIColor(hex: 0x6AB0FF)
    static let blue_3983FE = UIColor(hex: 0x3983FE)
    static let blue_26DAC3 = UIColor(hex: 0x26DAC3)
    
    convenience init(hex: Int32) {
        if hex < 0 || hex > 0xFFFFFF {
            assertionFailure("传入参数有误！！！")
        }
    
        print("执行到这")
        
        let r = CGFloat((hex & 0xFF0000) >> 16) / 255.0
        let g = CGFloat((hex & 0x00FF00) >> 8) / 255.0
        let b = CGFloat((hex & 0x0000FF)) / 255.0
        self.init(red: r, green: g, blue: b, alpha: 1.0)
        
        self.logColorInfo()
    }
 
    func logColorInfo() {
        print("logColorInfo: \(self)")
    }
    
    func log() {
        print("color: \(self)")
    }
}


