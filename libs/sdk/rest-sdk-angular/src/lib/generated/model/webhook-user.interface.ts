/**
 * 
 *
 * 
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */
import { WebhookRoleInterface } from './webhook-role.interface';
import { WebhookInterface } from './webhook.interface';


export interface WebhookUserInterface { 
    id: string;
    externalTenantId: string;
    externalUserId: string;
    userRole: WebhookRoleInterface;
    createdAt: string;
    updatedAt: string;
    Webhook_Webhook_createdByToWebhookUser?: Array<WebhookInterface>;
    Webhook_Webhook_updatedByToWebhookUser?: Array<WebhookInterface>;
}
export namespace WebhookUserInterface {
}


