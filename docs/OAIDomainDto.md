# OAIDomainDto

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**createdAt** | **NSDate*** |  | 
**dkimTokens** | **NSArray&lt;NSString*&gt;*** | DNS records for DKIM approval | [optional] 
**domain** | **NSString*** | Custom domain name | [optional] 
**_id** | **NSString*** |  | 
**isVerified** | **NSNumber*** | Whether domain has been verified or not. If the domain is not verified after 72 hours there is most likely an issue with the domains DNS records. | [optional] 
**updatedAt** | **NSDate*** |  | 
**userId** | **NSString*** |  | 
**verificationToken** | **NSString*** | A TXT record that you must place in the DNS settings of the domain to complete domain verification | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


