# OAICreateTotpDeviceOtpAuthUrlOptions

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**otpAuthUrl** | **NSString*** | OTP Auth URI for connecting a TOTP device. | 
**name** | **NSString*** | Name for labeling the TOTP device | [optional] 
**username** | **NSString*** | Optional username for the TOTP device | [optional] 
**issuer** | **NSString*** | Optional issuer override for the TOTP device | [optional] 
**digits** | **NSNumber*** | Optional number of digits in TOTP code | [optional] [default to @6]
**period** | **NSNumber*** | Optional period in seconds for TOTP code expiration | [optional] [default to @30]
**algorithm** | **NSString*** | Optional algorithm override | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


