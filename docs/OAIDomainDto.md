# OAIDomainDto

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**createdAt** | **NSDate*** |  | 
**dkimTokens** | **NSArray&lt;NSString*&gt;*** | Unique token DKIM tokens | [optional] 
**domain** | **NSString*** | Custom domain name | [optional] 
**domainNameRecords** | [**NSArray&lt;OAIDomainNameRecord&gt;***](OAIDomainNameRecord.md) | List of DNS domain name records (C, MX, TXT) etc that you must add to the DNS server associated with your domain provider. | [optional] 
**_id** | **NSString*** |  | 
**isVerified** | **NSNumber*** | Whether domain has been verified or not. If the domain is not verified after 72 hours there is most likely an issue with the domains DNS records. | [optional] 
**updatedAt** | **NSDate*** |  | 
**userId** | **NSString*** |  | 
**verificationToken** | **NSString*** | Verification tokens | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


