if os_type == os_android {
	global.app_id = "ca-app-pub-4697091344014722~5529273400"
	global.banner_id = "ca-app-pub-4697091344014722/3561940831"
	global.interstitial_id = "ca-app-pub-4697091344014722/8388544498"
}

GoogleMobileAds_Init(global.interstitial_id, global.app_id)
GoogleMobileAds_LoadInterstitial()
GoogleMobileAds_AddBannerAt(global.banner_id, GoogleMobileAds_Banner, display_get_width()/2, 0)