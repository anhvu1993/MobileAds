//
//  AdMobManager.swift
//  EasyScanner
//
//  Created by macbook on 28/08/2021.
//

import Foundation
import GoogleMobileAds
import SkeletonView
import Adjust

open class AdMobManager: NSObject {
    
    //    MARK: - Property
    static let shared = AdMobManager()
    public var timeOut: Int = 30
    public var didEarnReward = false
    public var showAdRewardCount = 0
    public var listAd: NSMutableDictionary = NSMutableDictionary()
    public var listLoader: NSMutableDictionary = NSMutableDictionary()
    public var setBackgroundButtonAds: UIColor = UIColor(hex: 0x007AFF)
    //    MARK: - Google-provided demo ad units
    public struct SampleAdUnitID {
        static let adFormatAppOpen              = "ca-app-pub-3940256099942544/3419835294"
        static let adFormatBanner               = "ca-app-pub-3940256099942544/6300978111"
        static let adFormatInterstitial         = "ca-app-pub-3940256099942544/1033173712"
        static let adFormatInterstitialVideo    = "ca-app-pub-3940256099942544/8691691433"
        static let adFormatRewarded             = "ca-app-pub-3940256099942544/5224354917"
        static let adFormatRewardedInterstitial = "ca-app-pub-3940256099942544/5354046379"
        static let adFormatNativeAdvanced       = "ca-app-pub-3940256099942544/2247696110"
        static let adFormatNativeAdvancedVideo  = "ca-app-pub-3940256099942544/1044960115"
    }
    
    //    MARK: - Block Ads
    public var blockLoadFullScreenAdSuccess: StringBlockAds?
    public var blockFullScreenAdWillDismiss: VoidBlockAds?
    public var blockFullScreenAdDidDismiss : VoidBlockAds?
    public var blockFullScreenAdWillPresent: StringBlockAds?
    public var blockFullScreenAdDidPresent : StringBlockAds?
    public var blockFullScreenAdFaild      : StringBlockAds?
    public var blockCompletionHandeler     : BoolBlockAds?
    public var blockNativeFaild            : StringBlockAds?
    public var blockLoadNativeSuccess      : BoolBlockAds?
    public var blockBannerFaild      : ((String) -> Void)?
    public var blockLoadBannerSuccess: ((Bool) -> Void)?
    
    func removeAd(unitId: String) {
        listAd.removeObject(forKey: unitId)
    }
    
    //    MARK: - Track Ad Revenue
    func trackAdRevenue(value: GADAdValue) {
        if let adRevenue = ADJAdRevenue(source: ADJAdRevenueSourceAdMob) {
            adRevenue.setRevenue(value.value.doubleValue, currency: value.currencyCode)
            Adjust.trackAdRevenue(adRevenue)
        }
    }
    
}
