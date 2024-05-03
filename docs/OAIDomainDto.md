# OAIDomainDto

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_id** | **NSString*** |  | 
**userId** | **NSString*** |  | 
**domain** | **NSString*** | Custom domain name | 
**verificationToken** | **NSString*** | Verification tokens | 
**dkimTokens** | **NSArray&lt;NSString*&gt;*** | Unique token DKIM tokens | 
**missingRecordsMessage** | **NSString*** | If the domain is missing records then show which pairs are missing. | [optional] 
**hasMissingRecords** | **NSNumber*** | Whether the domain has missing required records. If true then see the domain in the dashboard app. | 
**isVerified** | **NSNumber*** | Whether domain has been verified or not. If the domain is not verified after 72 hours there is most likely an issue with the domains DNS records. | 
**domainNameRecords** | [**NSArray&lt;OAIDomainNameRecord&gt;***](OAIDomainNameRecord) | List of DNS domain name records (C, MX, TXT) etc that you must add to the DNS server associated with your domain provider. | 
**catchAllInboxId** | **NSString*** | The optional catch all inbox that will receive emails sent to the domain that cannot be matched. | [optional] 
**createdAt** | **NSDate*** |  | 
**updatedAt** | **NSDate*** |  | 
**domainType** | **NSString*** | Type of domain. Dictates type of inbox that can be created with domain. HTTP means inboxes are processed using SES while SMTP inboxes use a custom SMTP mail server. SMTP does not support sending so use HTTP for sending emails. | 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


