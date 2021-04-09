# OAIReplyToAliasEmailOptions

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**attachments** | **NSArray&lt;NSString*&gt;*** | List of uploaded attachments to send with the reply. Optional. | [optional] 
**body** | **NSString*** | Body of the reply email you want to send | [optional] 
**charset** | **NSString*** | The charset that your message should be sent with. Optional. Default is UTF-8 | [optional] 
**isHTML** | **NSNumber*** | Is the reply HTML | [optional] 
**sendStrategy** | **NSString*** | When to send the email. Typically immediately | [optional] 
**template** | **NSString*** | Template ID to use instead of body. Will use template variable map to fill defined variable slots. | [optional] 
**templateVariables** | [**NSObject***](.md) | Template variables if using a template | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


