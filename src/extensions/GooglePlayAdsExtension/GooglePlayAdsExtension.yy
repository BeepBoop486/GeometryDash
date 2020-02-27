{
    "id": "b692918b-a2eb-41d7-ad77-08871dc1ffff",
    "modelName": "GMExtension",
    "mvc": "1.2",
    "name": "GooglePlayAdsExtension",
    "IncludedResources": [
        
    ],
    "androidPermissions": [
        "android.permission.ACCESS_COARSE_LOCATION"
    ],
    "androidProps": true,
    "androidactivityinject": "",
    "androidclassname": "GooglePlayAdsExtension",
    "androidinject": "<activity android:name=\"com.google.android.gms.ads.AdActivity\" android:configChanges=\"keyboard|keyboardHidden|orientation|screenLayout|uiMode|screenSize|smallestScreenSize\" \/>\\u000d\\u000a <meta-data\\u000d\\u000a            android:name=\"com.google.android.gms.ads.APPLICATION_ID\"\\u000d\\u000a            android:value=\"ca-app-pub-3940256099942544~3347511713\"\/>",
    "androidmanifestinject": "",
    "androidsourcedir": "",
    "author": "",
    "classname": "GoogleMobileAdsExt",
    "copyToTargets": 562949953421324,
    "date": "2018-02-07 11:12:37",
    "description": "",
    "exportToGame": true,
    "extensionName": "",
    "files": [
        {
            "id": "9de450ce-fd17-4577-9050-a2dbc150ecc2",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                {
                    "id": "8dd77a89-c219-4b02-ba38-bb443e23cbb5",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "GoogleMobileAds_Banner",
                    "hidden": false,
                    "value": "1"
                },
                {
                    "id": "226ab317-8e42-4461-a3e0-a1bc7818e886",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "GoogleMobileAds_MRect",
                    "hidden": false,
                    "value": "2"
                },
                {
                    "id": "13171f05-7152-46b9-b979-831db374ecc6",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "GoogleMobileAds_Full_Banner",
                    "hidden": false,
                    "value": "3"
                },
                {
                    "id": "a2e4044a-a801-4dcf-a51f-db1d59de0d96",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "GoogleMobileAds_Leaderboard",
                    "hidden": false,
                    "value": "4"
                },
                {
                    "id": "467d4c52-99b5-48ed-88cf-bd71c7bc2080",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "GoogleMobileAds_Skyscraper",
                    "hidden": false,
                    "value": "5"
                },
                {
                    "id": "22907bbe-2dc6-4490-a0aa-d51bbfcbd5ca",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "GoogleMobileAds_ASyncEvent",
                    "hidden": false,
                    "value": "9817"
                },
                {
                    "id": "16989d2b-9393-4eb0-895f-44b0a6b30427",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "GoogleMobileAds_Smart_Banner",
                    "hidden": false,
                    "value": "6"
                }
            ],
            "copyToTargets": 562949953421324,
            "filename": "GoogleMobileAds.ext",
            "final": "",
            "functions": [
                {
                    "id": "ca44bb54-9fc4-43c5-987b-22bc74698def",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        1
                    ],
                    "externalName": "GoogleMobileAds_Init",
                    "help": "GoogleMobileAds_Init( interstitialId, applicationId )",
                    "hidden": false,
                    "kind": 11,
                    "name": "GoogleMobileAds_Init",
                    "returnType": 2
                },
                {
                    "id": "8b660afd-6965-4995-88ba-b24786029b09",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "GoogleMobileAds_ShowInterstitial",
                    "help": "GoogleMobileAds_ShowInterstitial()",
                    "hidden": false,
                    "kind": 11,
                    "name": "GoogleMobileAds_ShowInterstitial",
                    "returnType": 2
                },
                {
                    "id": "fad82e3e-c132-4727-a16a-2c5b09bc0d3d",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "GoogleMobileAds_LoadInterstitial",
                    "help": "GoogleMobileAds_LoadInterstitial()",
                    "hidden": false,
                    "kind": 11,
                    "name": "GoogleMobileAds_LoadInterstitial",
                    "returnType": 2
                },
                {
                    "id": "19dabb4c-adcd-4e7c-9c58-13e4cfe83828",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "GoogleMobileAds_InterstitialStatus",
                    "help": "GoogleMobileAds_InterstitialStatus()",
                    "hidden": false,
                    "kind": 11,
                    "name": "GoogleMobileAds_InterstitialStatus",
                    "returnType": 1
                },
                {
                    "id": "dd3abe11-0971-44b6-939b-3832b0f79ba3",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "GoogleMobileAds_AddBanner",
                    "help": "GoogleMobileAds_AddBanner( bannerAdID, size_type )",
                    "hidden": false,
                    "kind": 11,
                    "name": "GoogleMobileAds_AddBanner",
                    "returnType": 2
                },
                {
                    "id": "edef29f6-1dea-427d-a532-0fa30ca34d32",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "GoogleMobileAds_RemoveBanner",
                    "help": "GoogleMobileAds_RemoveBanner()",
                    "hidden": false,
                    "kind": 11,
                    "name": "GoogleMobileAds_RemoveBanner",
                    "returnType": 2
                },
                {
                    "id": "80bda7ef-c5a9-4b72-8a44-95bafdd66801",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "GoogleMobileAds_MoveBanner",
                    "help": "GoogleMobileAds_MoveBanner(display_x, display_y)",
                    "hidden": false,
                    "kind": 11,
                    "name": "GoogleMobileAds_MoveBanner",
                    "returnType": 2
                },
                {
                    "id": "749faa34-b42f-4d63-a95e-eac1d85f6b9c",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "GoogleMobileAds_BannerGetWidth",
                    "help": "GoogleMobileAds_BannerGetWidth()",
                    "hidden": false,
                    "kind": 11,
                    "name": "GoogleMobileAds_BannerGetWidth",
                    "returnType": 2
                },
                {
                    "id": "0c3f68e2-2531-46cc-94e6-7721559cdacf",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "GoogleMobileAds_BannerGetHeight",
                    "help": "GoogleMobileAds_BannerGetHeight()",
                    "hidden": false,
                    "kind": 11,
                    "name": "GoogleMobileAds_BannerGetHeight",
                    "returnType": 2
                },
                {
                    "id": "91b94f74-be68-4873-8ec6-7d5d9677a1d2",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        1
                    ],
                    "externalName": "GoogleMobileAds_UseTestAds",
                    "help": "GoogleMobileAds_UseTestAds( use_test_ads, deviceId );",
                    "hidden": false,
                    "kind": 11,
                    "name": "GoogleMobileAds_UseTestAds",
                    "returnType": 2
                },
                {
                    "id": "f159e540-69f6-4482-9001-e1e1e1166a7e",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 4,
                    "args": [
                        1,
                        2,
                        2,
                        2
                    ],
                    "externalName": "GoogleMobileAds_AddBannerAt",
                    "help": "GoogleMobileAds_AddBannerAt(bannerAdId, sizeType, x, y );  banner will initially be invisible if x,y < 0",
                    "hidden": false,
                    "kind": 11,
                    "name": "GoogleMobileAds_AddBannerAt",
                    "returnType": 2
                },
                {
                    "id": "8b276788-acf0-4f36-8b5b-a977c3ac4ac0",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "GoogleMobileAds_LoadRewardedVideo",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "GoogleMobileAds_LoadRewardedVideo",
                    "returnType": 2
                },
                {
                    "id": "16b1d0ef-bffd-491c-b215-62bd743a3680",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "GoogleMobileAds_ShowRewardedVideo",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "GoogleMobileAds_ShowRewardedVideo",
                    "returnType": 2
                },
                {
                    "id": "5276e5ac-7ca0-4f36-ab6d-a15d53ff505f",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "GoogleMobileAds_RewardedVideoStatus",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "GoogleMobileAds_RewardedVideoStatus",
                    "returnType": 1
                },
                {
                    "id": "870b3d0d-38fa-4b0e-8412-d21e270957a6",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "GoogleMobileAds_HideBanner",
                    "returnType": 2
                },
                {
                    "id": "6e7012dc-2b05-4418-990b-e23907e370e8",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "GoogleMobileAds_ShowBanner",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "GoogleMobileAds_ShowBanner",
                    "returnType": 2
                },
                {
                    "id": "0a0c3344-e9fc-44db-9e09-2adbb3f9ad01",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 5,
                    "args": [
                        1,
                        1,
                        2,
                        2,
                        2
                    ],
                    "externalName": "GoogleMobileAds_ConsentUpdate",
                    "help": "GoogleMobileAds_ConsentUpdate(publisherIds, privacyPolicyURL, personalisedAds, noPersonalisedAds, adFree)",
                    "hidden": false,
                    "kind": 11,
                    "name": "GoogleMobileAds_ConsentUpdate",
                    "returnType": 2
                },
                {
                    "id": "ee6b2027-cb8d-4f6d-88a2-60749b98251e",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 4,
                    "args": [
                        1,
                        2,
                        2,
                        2
                    ],
                    "externalName": "GoogleMobileAds_ConsentFormShow",
                    "help": "GoogleMobileAds_ConsentFormShow(privacyPolicyURL, personalisedAds, noPersonalisedAds, adFree)",
                    "hidden": false,
                    "kind": 11,
                    "name": "GoogleMobileAds_ConsentFormShow",
                    "returnType": 2
                },
                {
                    "id": "1f5e907c-46cf-4ed0-a29a-61ad90ec1f7f",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "GoogleMobileAds_ConsentSetUserUnderAge",
                    "help": "GoogleMobileAds_ConsentSetUserUnderAge(isUnderAge)",
                    "hidden": false,
                    "kind": 11,
                    "name": "GoogleMobileAds_ConsentSetUserUnderAge",
                    "returnType": 2
                },
                {
                    "id": "cc3bdd41-15ae-439e-bf54-41bb04bd41df",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "GoogleMobileAds_ConsentIsUserUnderAge",
                    "help": "GoogleMobileAds_ConsentIsUserUnderAge()",
                    "hidden": false,
                    "kind": 11,
                    "name": "GoogleMobileAds_ConsentIsUserUnderAge",
                    "returnType": 2
                },
                {
                    "id": "a804618a-3212-46e8-968f-3d910dc562e5",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "GoogleMobileAds_ConsentIsUserInEEA",
                    "help": "GoogleMobileAds_ConsentIsUserInEEA()",
                    "hidden": false,
                    "kind": 11,
                    "name": "GoogleMobileAds_ConsentIsUserInEEA",
                    "returnType": 2
                },
                {
                    "id": "e9ff82d8-61e5-486e-8a59-f192e6abd6ac",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "GoogleMobileAds_ConsentDebugAddDevice",
                    "help": "GoogleMobileAds_ConsentDebugAddDevice(id)",
                    "hidden": false,
                    "kind": 11,
                    "name": "GoogleMobileAds_ConsentDebugAddDevice",
                    "returnType": 2
                },
                {
                    "id": "69dda033-65d3-49a3-94d2-53134fe85fce",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "GoogleMobileAds_ConsentDebugSetDeviceInEEA",
                    "help": "GoogleMobileAds_ConsentDebugSetDeviceInEEA(isInEEA)",
                    "hidden": false,
                    "kind": 11,
                    "name": "GoogleMobileAds_ConsentDebugSetDeviceInEEA",
                    "returnType": 2
                },
                {
                    "id": "d3526103-342b-40fe-8f89-1faee30a6325",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "GoogleMobileAds_ConsentGetAllowPersonalizedAds",
                    "help": "GoogleMobileAds_ConsentGetAllowPersonalizedAds()",
                    "hidden": false,
                    "kind": 11,
                    "name": "GoogleMobileAds_ConsentGetAllowPersonalizedAds",
                    "returnType": 2
                },
                {
                    "id": "b3315fcb-ed31-43a4-a231-b8b1009d604c",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "GoogleMobileAds_ConsentSetAllowPersonalizedAds",
                    "help": "GoogleMobileAds_ConsentSetAllowPersonalizedAds(allowPersonalized)",
                    "hidden": false,
                    "kind": 11,
                    "name": "GoogleMobileAds_ConsentSetAllowPersonalizedAds",
                    "returnType": 2
                }
            ],
            "init": "",
            "kind": 4,
            "order": [
                "ca44bb54-9fc4-43c5-987b-22bc74698def",
                "8b660afd-6965-4995-88ba-b24786029b09",
                "fad82e3e-c132-4727-a16a-2c5b09bc0d3d",
                "19dabb4c-adcd-4e7c-9c58-13e4cfe83828",
                "dd3abe11-0971-44b6-939b-3832b0f79ba3",
                "edef29f6-1dea-427d-a532-0fa30ca34d32",
                "80bda7ef-c5a9-4b72-8a44-95bafdd66801",
                "749faa34-b42f-4d63-a95e-eac1d85f6b9c",
                "0c3f68e2-2531-46cc-94e6-7721559cdacf",
                "91b94f74-be68-4873-8ec6-7d5d9677a1d2",
                "f159e540-69f6-4482-9001-e1e1e1166a7e",
                "8b276788-acf0-4f36-8b5b-a977c3ac4ac0",
                "16b1d0ef-bffd-491c-b215-62bd743a3680",
                "5276e5ac-7ca0-4f36-ab6d-a15d53ff505f",
                "870b3d0d-38fa-4b0e-8412-d21e270957a6",
                "6e7012dc-2b05-4418-990b-e23907e370e8",
                "0a0c3344-e9fc-44db-9e09-2adbb3f9ad01",
                "ee6b2027-cb8d-4f6d-88a2-60749b98251e",
                "1f5e907c-46cf-4ed0-a29a-61ad90ec1f7f",
                "cc3bdd41-15ae-439e-bf54-41bb04bd41df",
                "a804618a-3212-46e8-968f-3d910dc562e5",
                "e9ff82d8-61e5-486e-8a59-f192e6abd6ac",
                "69dda033-65d3-49a3-94d2-53134fe85fce",
                "d3526103-342b-40fe-8f89-1faee30a6325",
                "b3315fcb-ed31-43a4-a231-b8b1009d604c"
            ],
            "origname": "extensions\\admob.ext",
            "uncompress": false
        }
    ],
    "gradleinject": "implementation  'com.google.android.gms:play-services-ads:17.2.1'\\u000d\\u000aimplementation  'com.google.android.ads.consent:consent-library:1.0.3'",
    "helpfile": "",
    "installdir": "",
    "iosProps": true,
    "iosSystemFrameworkEntries": [
        
    ],
    "iosThirdPartyFrameworkEntries": [
        {
            "id": "65ebeafd-530a-4fb0-a1ca-fff61e3961f0",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "PersonalizedAdConsent.framework",
            "weakReference": false
        },
        {
            "id": "faf528f2-6209-4aff-b047-e83e873387dd",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "GoogleMobileAds.framework",
            "weakReference": false
        },
        {
            "id": "83491f05-f776-4125-84b3-2a241c75e7bf",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "nanopb.framework",
            "weakReference": false
        },
        {
            "id": "8808f662-eb17-4f91-aa2a-ff99a1200eb9",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "GoogleUtilities.framework",
            "weakReference": false
        },
        {
            "id": "60dc22e7-a97c-41e7-9962-dd3a1bedc402",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "GoogleAppMeasurement.framework",
            "weakReference": false
        }
    ],
    "iosdelegatename": "",
    "iosplistinject": "<key>NSAppTransportSecurity<\/key>\\u000d\\u000a<dict>\\u000d\\u000a    <key>NSAllowsArbitraryLoads<\/key>\\u000d\\u000a    <true\/>\\u000d\\u000a    <key>NSAllowsArbitraryLoadsForMedia<\/key>\\u000d\\u000a    <true\/>\\u000d\\u000a    <key>NSAllowsArbitraryLoadsInWebContent<\/key>\\u000d\\u000a    <true\/>\\u000d\\u000a<\/dict>\\u000d\\u000a <key>GADApplicationIdentifier<\/key>\\u000d\\u000a    <string>ca-app-pub-3940256099942544~1458002511<\/string>",
    "license": "Free to use, also for commercial games.",
    "maccompilerflags": "",
    "maclinkerflags": "",
    "macsourcedir": "",
    "options": null,
    "optionsFile": "options.json",
    "packageID": "com.yoyogames.googleplayservicesextension",
    "productID": "",
    "sourcedir": "",
    "supportedTargets": 562949953421324,
    "tvosProps": false,
    "tvosSystemFrameworkEntries": [
        
    ],
    "tvosThirdPartyFrameworkEntries": [
        
    ],
    "tvosclassname": "",
    "tvosdelegatename": "",
    "tvosmaccompilerflags": "",
    "tvosmaclinkerflags": "",
    "tvosplistinject": "",
    "version": "3.1.9"
}