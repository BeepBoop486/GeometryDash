//
//  Released by YoYo Games Ltd. on 17/04/2014. Intended for use with GM: S EA97 and above ONLY.
//  Copyright YoYo Games Ltd., 2014.
//  For support please submit a ticket at help.yoyogames.com
//
//


#import "AdMob.h"

extern int CreateDsMap( int _num, ... );
extern void CreateAsynEventWithDSMap(int dsmapindex, int event_index);
extern "C" void dsMapAddInt(int _dsMap, char* _key, int _value);
extern "C" void dsMapAddString(int _dsMap, char* _key, char* _value);

const int EVENT_OTHER_SOCIAL = 70;
const int GoogleMobileAds_ASyncEvent = 9817;

extern UIViewController *g_controller;
extern UIView *g_glView;
extern int g_DeviceWidth;
extern int g_DeviceHeight;

NSString *g_IntAdId;
BOOL g_InterstitialReady=false;
bool m_bUseTestAds = false;
NSString* m_DeviceId;
int m_BannerXPos;
int m_BannerYPos;

@implementation GoogleMobileAdsExt

- (void) GoogleMobileAds_Init:(char *)_intId Arg2:(char *)_ApplicationId
{
	g_IntAdId  = [NSString stringWithCString:_intId encoding:NSUTF8StringEncoding];
	[g_IntAdId retain];
	//g_AdId = [NSString stringWithCString:IntID encoding:NSUTF8StringEncoding];
	//[g_AdId retain];
	
	g_InterstitialReady = false;
    
    NSString *appid = [NSString stringWithCString:_ApplicationId encoding:NSUTF8StringEncoding];
    [GADMobileAds configureWithApplicationID:appid];
}


-(void) GoogleMobileAds_AddBannerAt:(char*)_bannerId Arg2:(double)_sizeType Arg3:(double)_x Arg4:(double)_y
{
	m_BannerXPos = (int)_x;
	m_BannerYPos = (int)_y;
	int type = (int)(_sizeType + 0.5);

	GADAdSize bannerSize;
	switch(type)
	{
	case 1: bannerSize = kGADAdSizeBanner; break;
	case 2: bannerSize = kGADAdSizeMediumRectangle; break;
	case 3: bannerSize = kGADAdSizeFullBanner; break;
	case 4: bannerSize = kGADAdSizeLeaderboard; break;
	case 5: bannerSize = kGADAdSizeSkyscraper; break;
    case 6: bannerSize = kGADAdSizeSmartBannerPortrait; break;
	default: NSLog(@"AddBanner illegal banner size type %d", type); return;
	}
	
	//remove existing banner
	if( bannerView != nil )
	{
		//remove existing banner
		[bannerView removeFromSuperview];
		bannerView.delegate = nil;
		[bannerView release];
		bannerView = nil;
	}
	
	//bannerView = [[GADBannerView alloc] initWithAdSize:kGADAdSizeBanner];
	bannerView = [[GADBannerView alloc] initWithAdSize:bannerSize];
	bannerView.adUnitID = [NSString stringWithUTF8String:_bannerId];
	bannerView.rootViewController = g_controller;
	bannerView.delegate = self;
	[g_glView addSubview:bannerView];
	[self GoogleMobileAds_MoveBanner:_x Arg2:_y ];
	
	GADRequest *request = [GADRequest request];
	if( m_bUseTestAds )
	{
		request.testDevices = [NSArray arrayWithObject:m_DeviceId];
	}
	
	[self GoogleMobileAds_ConsentUpdateAdRequest:request];
	[bannerView loadRequest:request];
}

-(void) GoogleMobileAds_AddBanner:(char*)_bannerId Arg2:(double)_size
{
	[self GoogleMobileAds_AddBannerAt:_bannerId Arg2:_size Arg3:0 Arg4:0];
}

-(void) GoogleMobileAds_RemoveBanner
{
	//remove existing banner
	if( bannerView != nil )
	{
		[bannerView removeFromSuperview];
		bannerView.delegate = nil;
		[bannerView release];
		bannerView = nil;
	}
}

-(void) GoogleMobileAds_HideBanner
{
    if( bannerView != nil )
	{
        bannerView.hidden = true;
    }

}

-(void) GoogleMobileAds_ShowBanner
{
    if( bannerView != nil )
	{
        bannerView.hidden = false;
    }

}

-(void) GoogleMobileAds_MoveBanner:(double)_x Arg2:(double)_y
{
	//NSLog(@"Move Banner: %d,%d", (int)_x, (int)_y );
	if( bannerView != nil )
	{
		
        //display->view coords
        int x = (int)(_x * g_glView.bounds.size.width) / g_DeviceWidth;
        int y = (int)(_y * g_glView.bounds.size.height) / g_DeviceHeight;
        
        CGRect frame = bannerView.frame;
        frame.origin.x = x;
        frame.origin.y = y;
        bannerView.frame =frame;
		
	}
}

-(double) GoogleMobileAds_BannerGetWidth
{
	if( bannerView != nil )
	{
		CGSize size = CGSizeFromGADAdSize( bannerView.adSize );
		int adW = size.width;
		//->display width
		int dispW = (int)(( adW * g_DeviceWidth ) / g_glView.bounds.size.width);
		return dispW;
	}
	return 0;
}

-(double) GoogleMobileAds_BannerGetHeight
{
	if( bannerView != nil )
	{
		CGSize size = CGSizeFromGADAdSize( bannerView.adSize );
		int adH = size.height;
		//->display height
		int dispH = (int)(( adH * g_DeviceHeight ) / g_glView.bounds.size.height);
		return dispH;
	}
	return 0;
}

-(void)GoogleMobileAds_UseTestAds:(double)_useTest Arg2:(char*)_deviceId
{
	m_bUseTestAds = (_useTest >=0.5);
	[m_DeviceId release];
	m_DeviceId = [NSString stringWithUTF8String:_deviceId];
	[m_DeviceId retain];
}

-(void)GoogleMobileAds_LoadInterstitial
{
	GADRequest *request = [GADRequest request];
	if( m_bUseTestAds )
	{
		request.testDevices = [NSArray arrayWithObject:m_DeviceId];
	}
	
	[self GoogleMobileAds_ConsentUpdateAdRequest:request];
	
	//must create a new interstitial object each time
	[interstitial release];
//	interstitial = [[GADInterstitial alloc] init];

	//interstitial.adUnitID = g_IntAdId;
	interstitial = [[GADInterstitial alloc] initWithAdUnitID:g_IntAdId];

	interstitial.delegate = self;
	[interstitial loadRequest:request];
	g_InterstitialReady = false;
}

-(NSString *)GoogleMobileAds_InterstitialStatus
{
	if(g_InterstitialReady)
		return @"Ready";
	else
		return @"Not Ready";
}

-(NSString *)GoogleMobileAds_RewardedVideoStatus
{
	if ([[GADRewardBasedVideoAd sharedInstance] isReady]) 
		return @"Ready";
	else
		return @"Not Ready";
}


-(void)GoogleMobileAds_ShowInterstitial
{
	[interstitial presentFromRootViewController:g_controller];
	g_InterstitialReady = false;	//must reload to display again
}

-(void)sendBannerLoadedEvent:(int)_loaded
{
	int dsMapIndex;
	if( _loaded != 0 )
	{
		double bannerWidth = [self GoogleMobileAds_BannerGetWidth];
		double bannerHeight = [self GoogleMobileAds_BannerGetHeight];
	
		dsMapIndex = CreateDsMap(5,
					"type", 0.0, "banner_load",
                    "id", (double)GoogleMobileAds_ASyncEvent,(void*)NULL,
					"loaded", 1.0, (void*)NULL,
					"width", bannerWidth, (void*)NULL,
					"height",bannerHeight,(void*)NULL
					);
	}
	else
	{
		dsMapIndex = CreateDsMap(3,
					"type", 0.0, "banner_load",
                    "id", (double)GoogleMobileAds_ASyncEvent,(void*)NULL,
					"loaded", 0.0, (void*)NULL );
	}
	
	//send async event 
	CreateAsynEventWithDSMap(dsMapIndex,EVENT_OTHER_SOCIAL);
}

-(void)sendInterstitialLoadedEvent:(int)_loaded
{
	double loaded = (double)_loaded;
	int dsMapIndex = CreateDsMap(3,
					"type", 0.0, "interstitial_load",
                    "id", (double)GoogleMobileAds_ASyncEvent,(void*)NULL,
					"loaded", loaded, (void*)NULL );

	//send async event 
	CreateAsynEventWithDSMap(dsMapIndex,EVENT_OTHER_SOCIAL);
}

-(void)sendInterstitialClosedEvent
{
	int dsMapIndex = CreateDsMap(2,
					"type", 0.0, "interstitial_closed",
                    "id", (double)GoogleMobileAds_ASyncEvent,(void*)NULL
					 );

	//send async event 
	CreateAsynEventWithDSMap(dsMapIndex,EVENT_OTHER_SOCIAL);
}


- (void)adViewDidReceiveAd:(GADBannerView *)_bannerView 
{
	NSLog(@"banner ad received");
	//send async event 
	[self sendBannerLoadedEvent:1];
}

- (void)adView:(GADBannerView *)_bannerView didFailToReceiveAdWithError:(GADRequestError *)_error
{
	NSLog(@"banner ad failed to receive");
	[self sendBannerLoadedEvent:0];
}

- (void)interstitialDidReceiveAd:(GADInterstitial *)ad
{
	NSLog(@"interstitialDidReceiveAd");
	g_InterstitialReady = true;
	[self sendInterstitialLoadedEvent:1];
}
- (void)interstitial:(GADInterstitial *)ad didFailToReceiveAdWithError:(GADRequestError *)error
{
	NSLog(@"Interstitial Ad failed to receive: %@",error);
	[self sendInterstitialLoadedEvent:0];
}

- (void)interstitialWillPresentScreen:(GADInterstitial *)ad
{
	NSLog(@"Interstitial will present screen");
}

// Sent before the interstitial is to be animated off the screen.
- (void)interstitialWillDismissScreen:(GADInterstitial *)ad
{
	NSLog(@"Interstitial will dismiss screen");
}

// Sent just after dismissing an interstitial and it has animated off the
// screen.
- (void)interstitialDidDismissScreen:(GADInterstitial *)ad
{
	NSLog(@"Interstitial did dismiss screen");
	[self sendInterstitialClosedEvent];
}

// Sent just before the application will background or terminate because the
// user clicked on an ad that will launch another application (such as the App
// Store).  The normal UIApplicationDelegate methods, like
// applicationDidEnterBackground:, will be called immediately before this.
- (void)interstitialWillLeaveApplication:(GADInterstitial *)ad
{
	NSLog(@"Interstitial will leave app");
}


-(void)GoogleMobileAds_LoadRewardedVideo:(char*)appUnitId
{
    [GADRewardBasedVideoAd sharedInstance].delegate = self;
    NSString *adid = [NSString stringWithCString:appUnitId encoding:NSUTF8StringEncoding];
    
    
    GADRequest *request = [GADRequest request];
	if( m_bUseTestAds )
	{
		request.testDevices = [NSArray arrayWithObject:m_DeviceId];
	}
	
	[self GoogleMobileAds_ConsentUpdateAdRequest:request];
    [[GADRewardBasedVideoAd sharedInstance] loadRequest:request withAdUnitID:adid];
}
-(void)GoogleMobileAds_ShowRewardedVideo
{
    if ([[GADRewardBasedVideoAd sharedInstance] isReady]) 
    {
      [[GADRewardBasedVideoAd sharedInstance] presentFromRootViewController:g_controller];
    }
}

- (void)rewardBasedVideoAd:(GADRewardBasedVideoAd *)rewardBasedVideoAd
    didRewardUserWithReward:(GADAdReward *)reward {
  NSString *rewardMessage =
      [NSString stringWithFormat:@"Reward received with currency %@ , amount %lf",
          reward.type,
          [reward.amount doubleValue]];
  NSLog(@"%@",rewardMessage);
  

    int dsMapIndex = CreateDsMap(4,
					"type", 0.0, "rewardedvideo_watched",
                    "id", (double)GoogleMobileAds_ASyncEvent,(void*)NULL,
                    "currency",0.0,[reward.type UTF8String],
                    "amount",[reward.amount doubleValue],(void*)NULL
					 );

	//send async event 
	CreateAsynEventWithDSMap(dsMapIndex,EVENT_OTHER_SOCIAL);
  
  
}

- (void)rewardBasedVideoAdDidReceiveAd:(GADRewardBasedVideoAd *)rewardBasedVideoAd {
  NSLog(@"Reward based video ad is received.");
  
  	int dsMapIndex = CreateDsMap(2,
					"type", 0.0, "rewardedvideo_adloaded",
                    "id", (double)GoogleMobileAds_ASyncEvent,(void*)NULL
					 );
    CreateAsynEventWithDSMap(dsMapIndex,EVENT_OTHER_SOCIAL);
}

- (void)rewardBasedVideoAdDidOpen:(GADRewardBasedVideoAd *)rewardBasedVideoAd {
  NSLog(@"Opened reward based video ad.");
  
  int dsMapIndex = CreateDsMap(2,
					"type", 0.0, "rewardedvideo_adopened",
                    "id", (double)GoogleMobileAds_ASyncEvent,(void*)NULL
					 );
    CreateAsynEventWithDSMap(dsMapIndex,EVENT_OTHER_SOCIAL);
}

- (void)rewardBasedVideoAdDidStartPlaying:(GADRewardBasedVideoAd *)rewardBasedVideoAd {
  NSLog(@"Reward based video ad started playing.");
  
   int dsMapIndex = CreateDsMap(2,
					"type", 0.0, "rewardedvideo_videostarted",
                    "id", (double)GoogleMobileAds_ASyncEvent,(void*)NULL
					 );
    CreateAsynEventWithDSMap(dsMapIndex,EVENT_OTHER_SOCIAL);
}

- (void)rewardBasedVideoAdDidClose:(GADRewardBasedVideoAd *)rewardBasedVideoAd {
  NSLog(@"Reward based video ad is closed.");
  
     int dsMapIndex = CreateDsMap(2,
					"type", 0.0, "rewardedvideo_adclosed",
                    "id", (double)GoogleMobileAds_ASyncEvent,(void*)NULL
					 );
    CreateAsynEventWithDSMap(dsMapIndex,EVENT_OTHER_SOCIAL);
}

- (void)rewardBasedVideoAdWillLeaveApplication:(GADRewardBasedVideoAd *)rewardBasedVideoAd {
  NSLog(@"Reward based video ad will leave application.");
  
     int dsMapIndex = CreateDsMap(2,
					"type", 0.0, "rewardedvideo_leftapplication",
                    "id", (double)GoogleMobileAds_ASyncEvent,(void*)NULL
					 );
    CreateAsynEventWithDSMap(dsMapIndex,EVENT_OTHER_SOCIAL);
}

- (void)rewardBasedVideoAd:(GADRewardBasedVideoAd *)rewardBasedVideoAd
    didFailToLoadWithError:(NSError *)error {
  NSLog(@"Reward based video ad failed to load.");
  NSString *errmsg = [error localizedDescription];
  
     int dsMapIndex = CreateDsMap(2,
					"type", 0.0, "rewardedvideo_loadfailed",
                    "id", (double)GoogleMobileAds_ASyncEvent,(void*)NULL,
                    "error","0.0",[errmsg UTF8String]
                    
					 );
    CreateAsynEventWithDSMap(dsMapIndex,EVENT_OTHER_SOCIAL);
}

/////////////
// CONSENT
////////////

-(void)GoogleMobileAds_ConsentUpdateAdRequest:(GADRequest*)_request
{
	if(PACConsentInformation.sharedInstance.consentStatus == PACConsentStatusNonPersonalized)
	{
		GADExtras* extras = [[GADExtras alloc] init];
		extras.additionalParameters = @{@"npa": @"1"};
		[_request registerAdNetworkExtras:extras];
	}
}
	

-(void)GoogleMobileAds_ConsentUpdate:(char*)_publishers
				   withPrivacyPolicy:(char*)_privacyPolicy
				 withPersonalisedAds:(double)_personalisedAds
			   withNoPersonalisedAds:(double)_noPersonalisedAds
						  withAdFree:(double)_adFree
{
	// Set up privacy policy as a string
	NSString* privacyPolicyNS = [NSString stringWithUTF8String:_privacyPolicy];
	
	// Separate publishers into individual IDs
	NSString* publishersNS = [NSString stringWithUTF8String:_publishers];
	NSArray<NSString*>* publishersArray = [publishersNS componentsSeparatedByString:@","];
	
	// Request consent update
	[PACConsentInformation.sharedInstance
	 requestConsentInfoUpdateForPublisherIdentifiers:publishersArray
	 completionHandler:^(NSError *_Nullable error)
	{
		if(error)
		{
			// Consent info update failed - report the error
			[self GoogleMobileAds_ConsentReportStatus:PACConsentStatusUnknown
									 withPreferAdFree:-1
											withError:[error localizedDescription]];
		}
		else
		{
			if (PACConsentInformation.sharedInstance.consentStatus == PACConsentStatusUnknown)
			{
				// Consent status is unknown - show the consent form
				[self GoogleMobileAds_ConsentFormShow: privacyPolicyNS
								  withPersonalisedAds:_personalisedAds
								withNoPersonalisedAds:_noPersonalisedAds
										   withAdFree:_adFree];
			}
			else
			{
				// Consent info update succeeded - report it
				[self GoogleMobileAds_ConsentReportStatus:PACConsentInformation.sharedInstance.consentStatus
										 withPreferAdFree:-1
												withError:NULL];
			}
		}
	}];
}

-(void)GoogleMobileAds_ConsentFormShow:(NSString*)_privacyPolicy
	 withPersonalisedAds:(double)_personalisedAds
	 withNoPersonalisedAds:(double)_noPersonalisedAds
	 withAdFree:(double)_adFree;
{
	NSURL* privacyURL = [NSURL URLWithString: _privacyPolicy];
	
	// Create form
	PACConsentForm* form = [[PACConsentForm alloc] initWithApplicationPrivacyPolicyURL:privacyURL];
	form.shouldOfferPersonalizedAds = (_personalisedAds == 0 ? FALSE : TRUE);
	form.shouldOfferNonPersonalizedAds = (_noPersonalisedAds == 0 ? FALSE : TRUE);
	form.shouldOfferAdFree = (_adFree == 0 ? FALSE : TRUE);
	
	NSLog(@"LOADING CONSENT FORM");
	
	// Load form
	[form loadWithCompletionHandler:^(NSError *_Nullable error)
	{
		if (error)
		{
			NSLog(@"CONSENT FORM LOAD ERROR");
			
			// Failed to load form, report error
			[self GoogleMobileAds_ConsentReportStatus:PACConsentStatusUnknown
									 withPreferAdFree:-1
											withError:[error localizedDescription]];
		}
		else
		{
			NSLog(@"CONSENT FORM LOAD SUCCESS");
			
			// Load successful, show the form
			[form presentFromViewController:g_controller
			  dismissCompletion:^(NSError *_Nullable error, BOOL userPrefersAdFree) {
				  if (error)
				  {
					  // Form error
					  [self GoogleMobileAds_ConsentReportStatus:PACConsentStatusUnknown
											   withPreferAdFree:-1
													  withError:[error localizedDescription]];
				  }
				  else
				  {
					  // Consent updated - report status
					  [self GoogleMobileAds_ConsentReportStatus:PACConsentInformation.sharedInstance.consentStatus
											   withPreferAdFree:userPrefersAdFree == 0 ? FALSE : TRUE
													  withError:NULL];
				  }
			  }];
		}
	}];
}

-(void)GoogleMobileAds_ConsentReportStatus:(PACConsentStatus)_status
						  withPreferAdFree:(double)_preferAdFree
								 withError:(NSString*)_error
{
	// Return consent status or error
	int dsMapIndex = CreateDsMap(2,
								 "type", 0.0, "consent_status",
								 "id", (double)GoogleMobileAds_ASyncEvent, (void*)NULL);
	
	consentPreferAdFree = (_preferAdFree == 0 ? FALSE : TRUE);
								 
	if(_error == NULL)
	{
		NSString* consentStatusString;
		switch(_status)
		{
			case PACConsentStatusUnknown: consentStatusString = @"unknown"; break;
			case PACConsentStatusPersonalized: consentStatusString = @"personalized"; break;
			case PACConsentStatusNonPersonalized: consentStatusString = @"non_personalized"; break;
		}
		
		dsMapAddString(dsMapIndex, "status", (char*)[consentStatusString UTF8String]);
		dsMapAddInt(dsMapIndex, "ad_free", consentPreferAdFree ? 1 : 0);
	}
	else
	{
		dsMapAddString(dsMapIndex, "error", (char*)[_error UTF8String]);
	}
	
	// Send async event
	CreateAsynEventWithDSMap(dsMapIndex, EVENT_OTHER_SOCIAL);
}

-(void)GoogleMobileAds_ConsentSetUserUnderAge:(double)_isUnderAge
{
	PACConsentInformation.sharedInstance.tagForUnderAgeOfConsent = (_isUnderAge == 0 ? FALSE : TRUE);
}

-(double)GoogleMobileAds_ConsentIsUserUnderAge
{
	return (PACConsentInformation.sharedInstance.isTaggedForUnderAgeOfConsent == TRUE ? 1 : 0);
}

-(double)GoogleMobileAds_ConsentGetAllowPersonalizedAds
{
	return (PACConsentInformation.sharedInstance.consentStatus == PACConsentStatusPersonalized ? 1 : 0);
}

-(void)GoogleMobileAds_ConsentSetAllowPersonalizedAds:(double)_allowPersonalized
{
	PACConsentInformation.sharedInstance.consentStatus = (_allowPersonalized ? PACConsentStatusPersonalized : PACConsentStatusNonPersonalized);
}

-(double)GoogleMobileAds_ConsentIsUserInEEA
{
	return (PACConsentInformation.sharedInstance.requestLocationInEEAOrUnknown == TRUE ? 1 : 0);
}

-(void)GoogleMobileAds_ConsentDebugAddDevice:(char*)_deviceId
{
	NSString* deviceIdNS = [NSString stringWithUTF8String:_deviceId];
	PACConsentInformation.sharedInstance.debugIdentifiers = [PACConsentInformation.sharedInstance.debugIdentifiers arrayByAddingObject:deviceIdNS];
}

-(void)GoogleMobileAds_ConsentDebugSetDeviceInEEA:(double)_isInEEA
{
	PACConsentInformation.sharedInstance.debugGeography = _isInEEA ? PACDebugGeographyEEA : PACDebugGeographyNotEEA;
}

@end