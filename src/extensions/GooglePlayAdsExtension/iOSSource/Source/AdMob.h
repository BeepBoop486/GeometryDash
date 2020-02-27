//
//  Released by YoYo Games Ltd. on 17/04/2014. Intended for use with GM: S EA97 and above ONLY.
//  Copyright YoYo Games Ltd., 2014.
//  For support please submit a ticket at help.yoyogames.com
//
//

extern "C" {
	#import "GoogleMobileAds/GADBannerView.h"
}	
#import "GoogleMobileAds/GoogleMobileAds.h"
#import <PersonalizedAdConsent/PersonalizedAdConsent.h>

@interface GoogleMobileAdsExt:NSObject<GADInterstitialDelegate,GADBannerViewDelegate,GADRewardBasedVideoAdDelegate>
{
	GADBannerView *bannerView;
	GADInterstitial *interstitial;
	
	bool consentPreferAdFree;
}

- (void) GoogleMobileAds_Init:(char*)IntID Arg2:(char*)ApplicationId;
-(void)GoogleMobileAds_ShowInterstitial;
-(void)GoogleMobileAds_LoadInterstitial;
-(NSString *)GoogleMobileAds_InterstitialStatus;
-(void) GoogleMobileAds_AddBanner:(char*)_bannerId Arg2:(double)_size;
-(void) GoogleMobileAds_AddBannerAt:(char*)_bannerId Arg2:(double)_size Arg3:(double)_x Arg4:(double)_y;
-(void) GoogleMobileAds_RemoveBanner;
-(void) GoogleMobileAds_MoveBanner:(double)_x Arg2:(double)_y;
-(double) GoogleMobileAds_BannerGetWidth;
-(double) GoogleMobileAds_BannerGetHeight;
-(void) GoogleMobileAds_UseTestAds:(double)_useTest Arg2:(char*)_deviceId;

/////////////
// CONSENT
////////////
-(void)GoogleMobileAds_ConsentUpdateAdRequest:(GADRequest*)_request;

-(void)GoogleMobileAds_ConsentUpdate:(char*)_publishers
				   withPrivacyPolicy:(char*)_privacyPolicy
				 withPersonalisedAds:(double)_personalisedAds
			   withNoPersonalisedAds:(double)_noPersonalisedAds
						  withAdFree:(double)_adFree;

-(void)GoogleMobileAds_ConsentFormShow:(NSString*)_privacyPolicy
				   withPersonalisedAds:(double)_personalisedAds
				 withNoPersonalisedAds:(double)_noPersonalisedAds
							withAdFree:(double)_adFree;

-(void)GoogleMobileAds_ConsentSetUserUnderAge:(double)_isUnderAge;
-(double)GoogleMobileAds_ConsentIsUserUnderAge;

-(double)GoogleMobileAds_ConsentGetAllowPersonalizedAds;
-(void)GoogleMobileAds_ConsentSetAllowPersonalizedAds:(double)_allowPersonalized;

-(double)GoogleMobileAds_ConsentIsUserInEEA;

-(void)GoogleMobileAds_ConsentDebugAddDevice:(char*)_deviceId;
-(void)GoogleMobileAds_ConsentDebugSetDeviceInEEA:(double)_isInEEA;

@end
