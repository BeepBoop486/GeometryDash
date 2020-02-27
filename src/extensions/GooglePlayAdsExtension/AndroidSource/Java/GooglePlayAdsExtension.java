
package ${YYAndroidPackageName};

import ${YYAndroidPackageName}.RunnerActivity;
import com.yoyogames.runner.RunnerJNILib;

import android.util.Log;
import android.os.Handler;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.Activity;
import android.os.AsyncTask;
import android.app.DialogFragment;
import android.os.Bundle;
import android.content.Intent;
import android.content.DialogInterface;
import android.util.Log;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.AdView;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.InterstitialAd;
import com.google.android.gms.ads.MobileAds;
import com.google.android.gms.ads.reward.RewardItem;
import com.google.android.gms.ads.reward.RewardedVideoAd;
import com.google.android.gms.ads.reward.RewardedVideoAdListener;
import android.content.res.Configuration;
import android.util.DisplayMetrics;

import com.google.ads.consent.*;
import java.net.URL;
import java.net.MalformedURLException;
import java.util.List;

import android.content.SharedPreferences;
import com.google.gson.Gson;
import android.text.TextUtils;
import android.content.Context;

import android.os.Build;

import android.app.Activity;
import android.view.ViewGroup;
import android.view.View;
import android.widget.AbsoluteLayout;
import com.yoyogames.runner.RunnerJNILib;

import android.widget.Toast;

import java.io.IOException;
import java.util.Calendar;
import java.lang.reflect.Method;
import java.lang.reflect.Constructor;

import android.annotation.TargetApi;

import android.content.IntentSender.SendIntentException;


//Can't extend BaseGameUtils as we already extend RunnerSocial
public class GooglePlayAdsExtension extends RunnerSocial implements RewardedVideoAdListener 
{
	
	public static GooglePlayAdsExtension CurrentGoogleExtension;

	private RewardedVideoAd mRewardedVideoAd;
    private AdView adView=null;
	private InterstitialAd interstitialAd=null;
	//private String BannerId;
	private String InterstitialId;
	private String InterstitialStatus = "Not Ready";
    private String RewardedVideoStatus = "Not Ready";
	private String TestDeviceId;
	private boolean bUseTestAds=false;
	private AdSize BannerSize;
	private int BannerXPos;
	private int BannerYPos;
	private String BannerId="";
	
	private boolean mConsentPreferAdFree = false;
	
	// Request result event IDs
	private static final int GoogleMobileAds_ASyncEvent = 9817;

	

	
	@Override
	public void Init()
	{
		CurrentGoogleExtension = this;
	
	}
	
	@Override
	public void onConfigurationChanged( Configuration newConfig)
	{
		if(BannerSize == AdSize.SMART_BANNER)
		{
			GoogleMobileAds_RemoveBanner();
			
			int sizeasint = 0;
			if(BannerSize == AdSize.BANNER)			 
				sizeasint =1; 
			else if(BannerSize ==AdSize.MEDIUM_RECTANGLE)
				sizeasint =2;
			else if(BannerSize == AdSize.FULL_BANNER)
				sizeasint =3;
			else if(BannerSize == AdSize.LEADERBOARD)
				sizeasint =4;
			else if(BannerSize == AdSize.WIDE_SKYSCRAPER)
				sizeasint =5;
			else if(BannerSize == AdSize.SMART_BANNER)
				sizeasint =6;
			
			
			GoogleMobileAds_AddBannerAt(BannerId,sizeasint,BannerXPos,BannerYPos);
		}
	}
	
	
	
	// ==================================================
	// MOBILE ADS
	// ==================================================
	
    public void GoogleMobileAds_LoadRewardedVideo(String _unitid)
    {
        final String unitid = _unitid;
        
        if(mRewardedVideoAd==null)
        {
          
        }
        RunnerActivity.ViewHandler.post( new Runnable() {
    		public void run() 
    		{
                 
                if(mRewardedVideoAd==null)
                {
                  mRewardedVideoAd = MobileAds.getRewardedVideoAdInstance(RunnerActivity.CurrentActivity);
                  mRewardedVideoAd.setRewardedVideoAdListener(CurrentGoogleExtension);
                }
                
                AdRequest.Builder builder = new AdRequest.Builder();
                builder.addTestDevice(AdRequest.DEVICE_ID_EMULATOR);
				
                if( bUseTestAds)
                    builder.addTestDevice(TestDeviceId);
				
                AdRequest adRequest = GoogleMobileAds_BuildAdRequestWithConsent(builder);
                mRewardedVideoAd.loadAd(unitid,adRequest);
            }
        });
    }
    
    public void GoogleMobileAds_ShowRewardedVideo()
    {
        if(mRewardedVideoAd!=null)
        {
            RunnerActivity.ViewHandler.post( new Runnable() {
                public void run() 
                {
                   if (mRewardedVideoAd.isLoaded()) 
                   {
                        mRewardedVideoAd.show();
                   } 
                }
            });
        }
    }
    
    public String GoogleMobileAds_RewardedVideoStatus()
    {
        
        if(mRewardedVideoAd!=null)
		{
			RunnerActivity.ViewHandler.post( new Runnable() {
    		public void run() 
    		{
                if(mRewardedVideoAd!=null)
                {
                    if(mRewardedVideoAd.isLoaded())
                        RewardedVideoStatus="Ready";
                    else
                        RewardedVideoStatus = "Not Ready";
                }
			}});
		}

		return RewardedVideoStatus;
    }
   
    @Override
    public void onRewarded(RewardItem reward) {
     //   Toast.makeText(RunnerActivity.CurrentActivity, "onRewarded! currency: " + reward.getType() + "  amount: " +
       //         reward.getAmount(), Toast.LENGTH_SHORT).show();
                
        int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
		RunnerJNILib.DsMapAddString( dsMapIndex, "type", "rewardedvideo_watched" );
		RunnerJNILib.DsMapAddDouble( dsMapIndex,"id",GoogleMobileAds_ASyncEvent);
        RunnerJNILib.DsMapAddDouble( dsMapIndex,"amount",reward.getAmount());
        RunnerJNILib.DsMapAddString( dsMapIndex, "currency", reward.getType() );
		RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex,EVENT_OTHER_SOCIAL);
                
        // Reward the user.
    }

    @Override
    public void onRewardedVideoAdLeftApplication() {
        //Toast.makeText(RunnerActivity.CurrentActivity, "onRewardedVideoAdLeftApplication",
          //      Toast.LENGTH_SHORT).show();
                
        int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
		RunnerJNILib.DsMapAddString( dsMapIndex, "type", "rewardedvideo_leftapplication" );
		RunnerJNILib.DsMapAddDouble( dsMapIndex,"id",GoogleMobileAds_ASyncEvent);
		RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex,EVENT_OTHER_SOCIAL);
    }

    @Override
    public void onRewardedVideoAdClosed() {
        //Toast.makeText(RunnerActivity.CurrentActivity, "onRewardedVideoAdClosed", Toast.LENGTH_SHORT).show();
        int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
		RunnerJNILib.DsMapAddString( dsMapIndex, "type", "rewardedvideo_adclosed" );
		RunnerJNILib.DsMapAddDouble( dsMapIndex,"id",GoogleMobileAds_ASyncEvent);
		RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex,EVENT_OTHER_SOCIAL);
    }

    @Override
    public void onRewardedVideoAdFailedToLoad(int errorCode) {
        //Toast.makeText(RunnerActivity.CurrentActivity, "onRewardedVideoAdFailedToLoad", Toast.LENGTH_SHORT).show();
        int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
		RunnerJNILib.DsMapAddString( dsMapIndex, "type", "rewardedvideo_loadfailed" );
		RunnerJNILib.DsMapAddDouble( dsMapIndex,"id",GoogleMobileAds_ASyncEvent);
        RunnerJNILib.DsMapAddDouble( dsMapIndex,"errorcode",errorCode);
		RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex,EVENT_OTHER_SOCIAL);
        
        RunnerActivity.ViewHandler.post( new Runnable() {
    		public void run() 
    		{
                if(mRewardedVideoAd!=null)
                {
                    if(mRewardedVideoAd.isLoaded())
                        RewardedVideoStatus="Ready";
                    else
                        RewardedVideoStatus = "Not Ready";
                }
			}});
        
    }

    @Override
    public void onRewardedVideoAdLoaded() {
        //Toast.makeText(RunnerActivity.CurrentActivity, "onRewardedVideoAdLoaded", Toast.LENGTH_SHORT).show();
        int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
		RunnerJNILib.DsMapAddString( dsMapIndex, "type", "rewardedvideo_adloaded" );
		RunnerJNILib.DsMapAddDouble( dsMapIndex,"id",GoogleMobileAds_ASyncEvent);
		RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex,EVENT_OTHER_SOCIAL);
        
        RunnerActivity.ViewHandler.post( new Runnable() {
    		public void run() 
    		{
                if(mRewardedVideoAd!=null)
                {
                    if(mRewardedVideoAd.isLoaded())
                        RewardedVideoStatus="Ready";
                    else
                        RewardedVideoStatus = "Not Ready";
                }
			}});
    }

    @Override
    public void onRewardedVideoAdOpened() {
     //   Toast.makeText(RunnerActivity.CurrentActivity, "onRewardedVideoAdOpened", Toast.LENGTH_SHORT).show();
        int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
		RunnerJNILib.DsMapAddString( dsMapIndex, "type", "rewardedvideo_adopened" );
		RunnerJNILib.DsMapAddDouble( dsMapIndex,"id",GoogleMobileAds_ASyncEvent);
		RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex,EVENT_OTHER_SOCIAL);
    }

    @Override
    public void onRewardedVideoStarted() {
        //Toast.makeText(RunnerActivity.CurrentActivity, "onRewardedVideoStarted", Toast.LENGTH_SHORT).show();
        int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
		RunnerJNILib.DsMapAddString( dsMapIndex, "type", "rewardedvideo_videostarted" );
		RunnerJNILib.DsMapAddDouble( dsMapIndex,"id",GoogleMobileAds_ASyncEvent);
		RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex,EVENT_OTHER_SOCIAL);
    }   
	
	@Override
	public void onRewardedVideoCompleted()
	{
		
	}
	
	private AdListener adlistener = new AdListener(){
		@Override
		 public void onAdLoaded() {
			Log.i("yoyo","onAdLoaded called");
			sendInterstitialLoadedEvent( true );
            RunnerActivity.ViewHandler.post( new Runnable() {
    		public void run() 
    		{
				if(interstitialAd.isLoaded())
					InterstitialStatus="Ready";
				else
					InterstitialStatus = "Not Ready";
			}});
		 }

		@Override
		public void onAdFailedToLoad(int errorCode) {
			Log.i("yoyo","onAdFailedToLoad called");
			sendInterstitialLoadedEvent( false );
            RunnerActivity.ViewHandler.post( new Runnable() {
    		public void run() 
    		{
				if(interstitialAd.isLoaded())
					InterstitialStatus="Ready";
				else
					InterstitialStatus = "Not Ready";
			}});
		}
		@Override
		public void onAdClosed()
		{
			sendInterstitialClosedEvent();
		}

	};
	
	
	private static final int EVENT_OTHER_SOCIAL = 70;
	
	public void GoogleMobileAds_Init(String _Arg1, String AppId)
	{
		InterstitialId = _Arg1;	
        MobileAds.initialize(RunnerActivity.CurrentActivity, AppId);
	}
	
	public void GoogleMobileAds_ShowInterstitial()
	{
		if(interstitialAd!=null)
		{
	
			RunnerActivity.ViewHandler.post( new Runnable() {
    		public void run() 
    		{
				Log.i("yoyo","showinterstitial called");
				if (interstitialAd.isLoaded()) 
				{
					RunnerActivity.CurrentActivity.runOnUiThread(new Runnable() {
						public void run() {
							interstitialAd.show();
						}
					});
				} 
				else
				{
					Log.i("yoyo", "Interstitial ad was not ready to be shown.");
				}
    		}});
		}
    	
	}
	
	private void initInterstitial()
	{
	
		interstitialAd = new InterstitialAd(RunnerActivity.CurrentActivity);
		interstitialAd.setAdUnitId(InterstitialId);
			
		interstitialAd.setAdListener(adlistener);
	}
	
	public void GoogleMobileAds_LoadInterstitial()
	{
		RunnerActivity.ViewHandler.post( new Runnable() {
    	public void run() 
    	{
			if(interstitialAd==null)
				initInterstitial();
				
			AdRequest.Builder builder = new AdRequest.Builder();
			builder.addTestDevice(AdRequest.DEVICE_ID_EMULATOR);
			
			if( bUseTestAds)
				builder.addTestDevice(TestDeviceId);
			
			AdRequest adRequest = GoogleMobileAds_BuildAdRequestWithConsent(builder);

			// Load the interstitial ad.
			interstitialAd.loadAd(adRequest);
		}});
	}
	
	private void sendBannerLoadedEvent( boolean _bLoaded )
	{
		int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
		
		RunnerJNILib.DsMapAddString( dsMapIndex, "type", "banner_load" );
		double loaded = (_bLoaded) ? 1 : 0;
		RunnerJNILib.DsMapAddDouble( dsMapIndex, "loaded", loaded);
		RunnerJNILib.DsMapAddDouble( dsMapIndex,"id",GoogleMobileAds_ASyncEvent);
		if( _bLoaded)
		{
			GoogleMobileAds_MoveBanner(BannerXPos, BannerYPos);
		
			RunnerJNILib.DsMapAddDouble( dsMapIndex, "width",  GoogleMobileAds_BannerGetWidth());
			RunnerJNILib.DsMapAddDouble( dsMapIndex, "height",  GoogleMobileAds_BannerGetHeight());
			
			
			

			//DisplayMetrics displayMetrics = ((Context) RunnerActivity.CurrentActivity).getResources().getDisplayMetrics();

			//float screenHeightInDP = displayMetrics.heightPixels / displayMetrics.density;

		//	Log.i("yoyo","screenHeightInDP=" + screenHeightInDP + " dmhp=" + displayMetrics.heightPixels+" density:"+displayMetrics.density);;
		
		}
		
		RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex,EVENT_OTHER_SOCIAL);
	}
	
	private void sendInterstitialLoadedEvent( boolean _bLoaded )
	{
		int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
		RunnerJNILib.DsMapAddString( dsMapIndex, "type", "interstitial_load" );
		double loaded = (_bLoaded) ? 1 : 0;
		RunnerJNILib.DsMapAddDouble( dsMapIndex, "loaded", loaded);
        RunnerJNILib.DsMapAddDouble( dsMapIndex,"id",GoogleMobileAds_ASyncEvent);
		RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex,EVENT_OTHER_SOCIAL);
	}
	
	private void sendInterstitialClosedEvent(  )
	{
		int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
		RunnerJNILib.DsMapAddString( dsMapIndex, "type", "interstitial_closed" );
		RunnerJNILib.DsMapAddDouble( dsMapIndex,"id",GoogleMobileAds_ASyncEvent);
		RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex,EVENT_OTHER_SOCIAL);
	}
	
	public void GoogleMobileAds_AddBanner(String _bannerId, double _sizeType)
	{
		GoogleMobileAds_AddBannerAt( _bannerId, _sizeType, 0, 0);
	}
	
	
	@TargetApi(11)
	void SetLayerType()
	{
		int sdkVersion =Build.VERSION.SDK_INT;
		if (sdkVersion > 10)
			adView.setLayerType(View.LAYER_TYPE_SOFTWARE, null);
	}
	
    
    public void GoogleMobileAds_ShowBanner()
    {
        RunnerActivity.ViewHandler.post( new Runnable() {
            public void run() 
            {
                if(adView!=null)
                    adView.setVisibility(View.VISIBLE);
            }
        });
    }
    
    public void GoogleMobileAds_HideBanner()
    {
        RunnerActivity.ViewHandler.post( new Runnable() {
            public void run() 
            {
                if(adView!=null)
                    adView.setVisibility(View.GONE);
            }
        });
    }
	
	public void GoogleMobileAds_AddBannerAt(String _bannerId, double _sizeType, double _x, double _y)
	{
		final String bannerId = _bannerId;
		BannerId = _bannerId;
		BannerXPos = (int)_x;
		BannerYPos = (int)_y;
		int type = (int)(_sizeType+0.5);
		
		switch(type)
		{
		case 1: BannerSize = AdSize.BANNER; break;
		case 2: BannerSize = AdSize.MEDIUM_RECTANGLE;break;
		case 3: BannerSize = AdSize.FULL_BANNER;break;
		case 4: BannerSize = AdSize.LEADERBOARD;break;
		case 5: BannerSize = AdSize.WIDE_SKYSCRAPER; break;
        case 6: BannerSize = AdSize.SMART_BANNER; break;
		default: Log.i("yoyo", "AddBanner illegal banner size type:" + _sizeType); return;
		}
		
		RunnerActivity.ViewHandler.post( new Runnable() {
    	public void run() 
    	{
    		AbsoluteLayout layout = (AbsoluteLayout)RunnerActivity.CurrentActivity.findViewById(R.id.ad);
			ViewGroup vg = (ViewGroup)layout;
			
			//remove existing banner
			if( adView != null )
			{
				if(vg!=null)
				{
					vg.removeView( adView );
				}
				adView.destroy();
				adView = null;
			}
			
    		//create new banner
			adView = new AdView(RunnerActivity.CurrentActivity);
			//adView.setAdListener(GoogleMobileAdsExt.this);
			adView.setAdListener( new AdListener() {
				/** Called when an ad is loaded. */
			    @Override
			    public void onAdLoaded() 
			    {
			    	Log.i("yoyo", "Banner Ad onAdLoaded");
			    	sendBannerLoadedEvent(true);
			    }
			    
			    @Override
			    public void onAdFailedToLoad(int errorCode)
			    {
			    	Log.i("yoyo", "Banner Ad onAdFailedToLoad");
			    	sendBannerLoadedEvent(false);
			    }
			    
			});    
		
			SetLayerType();
			
		
			//adView.setAdSize(AdSize.BANNER);	
			adView.setAdSize( BannerSize );
			adView.setAdUnitId(bannerId);
			
			if(vg != null)
			{
                
            
                
				vg.addView((View)adView);
			
				AdRequest.Builder builder = new AdRequest.Builder();
				builder.addTestDevice(AdRequest.DEVICE_ID_EMULATOR);
				
				if( bUseTestAds)
					builder.addTestDevice(TestDeviceId);
				
				AdRequest adRequest = GoogleMobileAds_BuildAdRequestWithConsent(builder);

				// Start loading the ad in the background.
				//adView.setVisibility(View.INVISIBLE);
				adView.loadAd(adRequest);
			}
		}});
	}
	
	public void GoogleMobileAds_RemoveBanner()
	{
		if( adView != null )
		{
			RunnerActivity.ViewHandler.post( new Runnable() {
			public void run() 
		    {
				AbsoluteLayout layout = (AbsoluteLayout)RunnerActivity.CurrentActivity.findViewById(R.id.ad);
				ViewGroup vg = (ViewGroup)layout;
				if(vg!=null)
				{
					vg.removeView( adView );
				}
				adView.destroy();
				adView = null;
				
		    }});
		}
	}
	
	public double GoogleMobileAds_BannerGetWidth()
	{
		if( BannerSize !=null )
		{
			int w =BannerSize.getWidthInPixels(RunnerJNILib.ms_context); 
			return w;
		}
		return 0;
	}
	
	public double GoogleMobileAds_BannerGetHeight()
	{
		if( BannerSize !=null )
		{
			int h = BannerSize.getHeightInPixels(RunnerJNILib.ms_context);
			
			if(BannerSize==AdSize.SMART_BANNER)
			{
				DisplayMetrics displayMetrics = (RunnerJNILib.ms_context).getResources().getDisplayMetrics();
				
				int screenHeightInDP = Math.round(displayMetrics.heightPixels / displayMetrics.density);
				int density = Math.round(displayMetrics.density); 
				if (screenHeightInDP < 400)
					h = 32*density;
				else if (screenHeightInDP <= 720)
					h = 50*density;
				else
					h = 90*density;
			}
			
			return h;
		}
		return 0;
	}
	
	public void GoogleMobileAds_MoveBanner( double _x, double _y )
	{
		//Log.i("yoyo", "MoveBanner:" + _x + "," + _y);
		final int x = (int)_x;
		final int y = (int)_y;
		BannerXPos = x;
		BannerYPos = y;

		if( adView != null )
		{
			RunnerActivity.ViewHandler.post( new Runnable() {
			public void run()
			{
				//if( x < 0 || y < 0) {
					//adView.setVisibility(View.INVISIBLE);
				//}
				//else
				//{
                AbsoluteLayout.LayoutParams params = new AbsoluteLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT, x,y );
                adView.setLayoutParams( params);
                adView.requestLayout();
					//adView.setVisibility(View.VISIBLE);
				//}
			}});
		}
	}
	
	public void GoogleMobileAds_UseTestAds( double _useTest, String _deviceId )
	{
		bUseTestAds = (_useTest >=0.5);
		TestDeviceId = _deviceId;
	}
	
	public String GoogleMobileAds_InterstitialStatus()
	{
		if(interstitialAd!=null)
		{
			RunnerActivity.ViewHandler.post( new Runnable() {
    		public void run() 
    		{
				if(interstitialAd.isLoaded())
					InterstitialStatus="Ready";
				else
					InterstitialStatus = "Not Ready";
			}});
		}

		return InterstitialStatus;
	}
	
	// ==================================================
	// CONSENT
	// ==================================================
	
	// Handles events in the default consent form
	private class AdsConsentFormListener extends ConsentFormListener
	{ 
		private ConsentForm m_consentForm = null;
		
		public AdsConsentFormListener(ConsentForm form)
		{
			m_consentForm = form;
		}
		
		public void setForm(ConsentForm form)
		{
			m_consentForm = form;
		}
		
		@Override
		public void onConsentFormLoaded() 
		{
			// Consent form loaded successfully.
			Log.i("yoyo", "Consent form loaded. Consent form object: " + (m_consentForm != null ? m_consentForm.toString() : "NULL"));
			
			if(m_consentForm != null)
				m_consentForm.show();
			else
				GoogleMobileAds_ConsentReportStatus(ConsentStatus.UNKNOWN, -1, "Error: Consent form is NULL in load finished callback.");
		}

		@Override
		public void onConsentFormOpened() 
		{
			// Consent form was displayed.
			Log.i("yoyo", "Consent form opened successfully!");
		}

		@Override
		public void onConsentFormClosed(ConsentStatus consentStatus, Boolean userPrefersAdFree) 
		{
			// Consent form was closed.
			Log.i("yoyo", "Consent form closed. Status: " + consentStatus.toString() + ". Adfree: " + userPrefersAdFree.toString());
			GoogleMobileAds_ConsentReportStatus(consentStatus, userPrefersAdFree ? 1 : 0, null);
		}

		@Override
		public void onConsentFormError(String errorDescription) 
		{
			// Consent form error.
			Log.i("yoyo", "Consent form error: " + errorDescription);
			GoogleMobileAds_ConsentReportStatus(ConsentStatus.UNKNOWN, -1, errorDescription);
		}
	};
	
	// Builds an AdMob ad request with consent information
	private AdRequest GoogleMobileAds_BuildAdRequestWithConsent(AdRequest.Builder builder)
	{
		Bundle extras = new Bundle();
		if(GoogleMobileAds_ConsentGetAllowPersonalizedAds() != 0)
			extras.putString("npa", "1");
		
		builder.addNetworkExtrasBundle(com.google.ads.mediation.admob.AdMobAdapter.class, extras);
		return builder.build();
	}
	
	// Queries current consent state for the given ad provider
	public void GoogleMobileAds_ConsentUpdate(final String publisherIds, final String privacyPolicy, final double personalisedAds, final double noPersonalisedAds, final double adFree)
	{
		ConsentInformation.getInstance(RunnerJNILib.ms_context).setDebugGeography(DebugGeography.DEBUG_GEOGRAPHY_EEA);
		
		ConsentInformation consentInformation = ConsentInformation.getInstance(RunnerJNILib.ms_context);
        String[] publisherIdsArray = publisherIds.split(",");
		
		Log.i("yoyo", "Attempting to update consent with publisher IDs: " + publisherIds);
		
        consentInformation.requestConsentInfoUpdate(publisherIdsArray, new ConsentInfoUpdateListener() {
            @Override
            public void onConsentInfoUpdated(ConsentStatus consentStatus) 
			{
				// If we haven't given consent, show the form
				if(consentStatus == ConsentStatus.UNKNOWN)
				{
					GoogleMobileAds_ConsentFormShow(privacyPolicy, personalisedAds, noPersonalisedAds, adFree);
				}
				else
				{
					GoogleMobileAds_ConsentReportStatus(consentStatus, -1, null);
				}
            }

            @Override
            public void onFailedToUpdateConsentInfo(String errorDescription) 
			{
				Log.i("yoyo", "Error updating consent: " + errorDescription);
                GoogleMobileAds_ConsentReportStatus(ConsentStatus.UNKNOWN, -1, errorDescription);
            }
        });
	}
	
	// Attempts to load & display consent form
	public void GoogleMobileAds_ConsentFormShow(final String privacyPolicy, final double personalisedAds, final double noPersonalisedAds, final double adFree)
	{
		Log.i("yoyo", "Attempting to show consent form.");
		
		URL privacyPolicyURL = null;
		try {
			// TODO: Replace with your app's privacy policy URL.
			privacyPolicyURL = new URL(privacyPolicy);
		} 
		catch (MalformedURLException e) {
			Log.i("yoyo", "Invalid privacy policy URL passed to consent form!");
			e.printStackTrace();
		}
		
		// Configure the form
		AdsConsentFormListener listener = new AdsConsentFormListener(null);
		ConsentForm.Builder formBuilder = new ConsentForm.Builder(RunnerJNILib.ms_context, privacyPolicyURL).withListener(listener);
		
		if(personalisedAds != 0)
			formBuilder = formBuilder.withPersonalizedAdsOption();
		
		if(noPersonalisedAds != 0)
			formBuilder = formBuilder.withNonPersonalizedAdsOption();
		
		if(adFree != 0)
			formBuilder = formBuilder.withAdFreeOption();
		
		// Build  and load our form
		ConsentForm form = formBuilder.build();
		listener.setForm(form);
		form.load();
		
		Log.i("yoyo", "Consent form load triggered. Form object: " + form.toString());
	}
	
	// REPORT CONSENT STATUS
	private void GoogleMobileAds_ConsentReportStatus(ConsentStatus status, int preferAdFree, String error)
	{
		int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
		
		// Return consent status or error
		if(error == null)
		{
			mConsentPreferAdFree = preferAdFree != 0 ? true : false;
			RunnerJNILib.DsMapAddString(dsMapIndex, "status", status.toString());
			RunnerJNILib.DsMapAddDouble(dsMapIndex, "ad_free", (mConsentPreferAdFree ? 1 : 0));
		}
		else
		{
			RunnerJNILib.DsMapAddString(dsMapIndex, "error", error);
		}
		
		RunnerJNILib.DsMapAddString(dsMapIndex, "type", "consent_status" );
		RunnerJNILib.DsMapAddDouble(dsMapIndex, "id", GoogleMobileAds_ASyncEvent);
		
		RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex,EVENT_OTHER_SOCIAL);
	}
	
	// CONSENT GETTERS & SETTERS
	public void GoogleMobileAds_ConsentSetUserUnderAge(double isUnderAge)
	{
		ConsentInformation.getInstance(RunnerJNILib.ms_context).setTagForUnderAgeOfConsent(isUnderAge != 0 ? true : false);
	}
	
	public boolean GoogleMobileAds_ConsentIsUserUnderAge()
	{
		return ConsentInformation.getInstance(RunnerJNILib.ms_context).isTaggedForUnderAgeOfConsent();
	}
	
	public boolean GoogleMobileAds_ConsentIsUserInEEA()
	{
		return ConsentInformation.getInstance(RunnerJNILib.ms_context).isRequestLocationInEeaOrUnknown();
	}
	
	public void GoogleMobileAds_ConsentDebugAddDevice(String id)
	{
		ConsentInformation.getInstance(RunnerJNILib.ms_context).addTestDevice(id);
	}
	
	public void GoogleMobileAds_ConsentDebugSetDeviceInEEA(double isInEEA)
	{
		ConsentInformation.getInstance(RunnerJNILib.ms_context).setDebugGeography(isInEEA != 0 ? DebugGeography.DEBUG_GEOGRAPHY_EEA : DebugGeography.DEBUG_GEOGRAPHY_NOT_EEA);
	}
	
	public double GoogleMobileAds_ConsentGetAllowPersonalizedAds()
	{
		return (ConsentInformation.getInstance(RunnerJNILib.ms_context).getConsentStatus() == ConsentStatus.PERSONALIZED ? 1 : 0);
	}
	
	public void GoogleMobileAds_ConsentSetAllowPersonalizedAds(double allowPersonalized)
	{
		ConsentInformation.getInstance(RunnerJNILib.ms_context).setConsentStatus(allowPersonalized != 0 ? ConsentStatus.PERSONALIZED : ConsentStatus.NON_PERSONALIZED);
	}
}