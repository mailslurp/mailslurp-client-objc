# OAIDomainDto

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_id** | **NSString*** |  | [optional] 
**userId** | **NSString*** |  | [optional] 
**domain** | **NSString*** | Custom domain name | [optional] 
**verificationToken** | **NSString*** | Verification tokens | [optional] 
**dkimTokens** | **NSArray&lt;NSString*&gt;*** | Unique token DKIM tokens | [optional] 
**domainNameRecords** | [**NSArray&lt;OAIDomainNameRecord&gt;***](OAIDomainNameRecord) | List of DNS domain name records (C, MX, TXT) etc that you must add to the DNS server associated with your domain provider. | [optional] 
**catchAllInboxId** | **NSString*** | The optional catch all inbox that will receive emails sent to the domain that cannot be matched. | [optional] 
**createdAt** | **NSDate*** |  | [optional] 
**updatedAt** | **NSDate*** |  | [optional] 
**domainType** | **NSString*** | Type of domain. Dictates type of inbox that can be created with domain. HTTP means inboxes are processed using SES while SMTP inboxes use a custom SMTP mail server. SMTP does not support sending so use HTTP for sending emails. | [optional] 
**verified** | **NSNumber*** |  | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


