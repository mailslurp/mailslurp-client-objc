# OAIReplyToAliasEmailOptions

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**body** | **NSString*** | Body of the reply email you want to send | 
**isHTML** | **NSNumber*** | Is the reply HTML | 
**charset** | **NSString*** | The charset that your message should be sent with. Optional. Default is UTF-8 | [optional] 
**attachments** | **NSArray&lt;NSString*&gt;*** | List of uploaded attachments to send with the reply. Optional. | [optional] 
**templateVariables** | **NSDictionary&lt;NSString*, NSObject*&gt;*** | Template variables if using a template | [optional] 
**template** | **NSString*** | Template ID to use instead of body. Will use template variable map to fill defined variable slots. | [optional] 
**sendStrategy** | **NSString*** | How an email should be sent based on its recipients | [optional] 
**useInboxName** | **NSNumber*** | Optionally use inbox name as display name for sender email address | [optional] 
**html** | **NSNumber*** |  | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


