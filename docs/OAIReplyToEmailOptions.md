# OAIReplyToEmailOptions

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**attachments** | **NSArray&lt;NSString*&gt;*** | List of uploaded attachments to send with the reply. Optional. | [optional] 
**body** | **NSString*** | Body of the reply email you want to send | [optional] 
**charset** | **NSString*** | The charset that your message should be sent with. Optional. Default is UTF-8 | [optional] 
**from** | **NSString*** | The from header that should be used. Optional | [optional] 
**isHTML** | **NSNumber*** | Is the reply HTML | [optional] 
**replyTo** | **NSString*** | The replyTo header that should be used. Optional | [optional] 
**sendStrategy** | **NSString*** | When to send the email. Typically immediately | [optional] 
**template** | **NSString*** | Template ID to use instead of body. Will use template variable map to fill defined variable slots. | [optional] 
**templateVariables** | [**NSObject***]() | Template variables if using a template | [optional] 
**useInboxName** | **NSNumber*** | Optionally use inbox name as display name for sender email address | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


