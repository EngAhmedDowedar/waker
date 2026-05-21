.class Lcom/anansimobile/nge/IAB/util_v2/BillingService$RequestPurchase;
.super Lcom/anansimobile/nge/IAB/util_v2/BillingService$BillingRequest;
.source "BillingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anansimobile/nge/IAB/util_v2/BillingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RequestPurchase"
.end annotation


# instance fields
.field public final mDeveloperPayload:Ljava/lang/String;

.field public final mProductId:Ljava/lang/String;

.field public final mProductType:Ljava/lang/String;

.field final synthetic this$0:Lcom/anansimobile/nge/IAB/util_v2/BillingService;


# direct methods
.method public constructor <init>(Lcom/anansimobile/nge/IAB/util_v2/BillingService;Ljava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lcom/anansimobile/nge/IAB/util_v2/BillingService;
    .param p2, "itemId"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 249
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/anansimobile/nge/IAB/util_v2/BillingService$RequestPurchase;-><init>(Lcom/anansimobile/nge/IAB/util_v2/BillingService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    return-void
.end method

.method public constructor <init>(Lcom/anansimobile/nge/IAB/util_v2/BillingService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lcom/anansimobile/nge/IAB/util_v2/BillingService;
    .param p2, "itemId"    # Ljava/lang/String;
    .param p3, "developerPayload"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 260
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/anansimobile/nge/IAB/util_v2/BillingService$RequestPurchase;-><init>(Lcom/anansimobile/nge/IAB/util_v2/BillingService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    return-void
.end method

.method public constructor <init>(Lcom/anansimobile/nge/IAB/util_v2/BillingService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lcom/anansimobile/nge/IAB/util_v2/BillingService;
    .param p2, "itemId"    # Ljava/lang/String;
    .param p3, "itemType"    # Ljava/lang/String;
    .param p4, "developerPayload"    # Ljava/lang/String;

    .prologue
    .line 271
    iput-object p1, p0, Lcom/anansimobile/nge/IAB/util_v2/BillingService$RequestPurchase;->this$0:Lcom/anansimobile/nge/IAB/util_v2/BillingService;

    .line 275
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/anansimobile/nge/IAB/util_v2/BillingService$BillingRequest;-><init>(Lcom/anansimobile/nge/IAB/util_v2/BillingService;I)V

    .line 276
    iput-object p2, p0, Lcom/anansimobile/nge/IAB/util_v2/BillingService$RequestPurchase;->mProductId:Ljava/lang/String;

    .line 277
    iput-object p4, p0, Lcom/anansimobile/nge/IAB/util_v2/BillingService$RequestPurchase;->mDeveloperPayload:Ljava/lang/String;

    .line 278
    iput-object p3, p0, Lcom/anansimobile/nge/IAB/util_v2/BillingService$RequestPurchase;->mProductType:Ljava/lang/String;

    .line 279
    return-void
.end method


# virtual methods
.method protected responseCodeReceived(Lcom/anansimobile/nge/IAB/util_v2/Consts$ResponseCode;)V
    .locals 1
    .param p1, "responseCode"    # Lcom/anansimobile/nge/IAB/util_v2/Consts$ResponseCode;

    .prologue
    .line 306
    iget-object v0, p0, Lcom/anansimobile/nge/IAB/util_v2/BillingService$RequestPurchase;->this$0:Lcom/anansimobile/nge/IAB/util_v2/BillingService;

    invoke-static {v0, p0, p1}, Lcom/anansimobile/nge/IAB/util_v2/ResponseHandler;->responseCodeReceived(Landroid/content/Context;Lcom/anansimobile/nge/IAB/util_v2/BillingService$RequestPurchase;Lcom/anansimobile/nge/IAB/util_v2/Consts$ResponseCode;)V

    .line 307
    return-void
.end method

.method protected run()J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 283
    const-string/jumbo v4, "REQUEST_PURCHASE"

    invoke-virtual {p0, v4}, Lcom/anansimobile/nge/IAB/util_v2/BillingService$RequestPurchase;->makeRequestBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 284
    .local v2, "request":Landroid/os/Bundle;
    const-string/jumbo v4, "ITEM_ID"

    iget-object v5, p0, Lcom/anansimobile/nge/IAB/util_v2/BillingService$RequestPurchase;->mProductId:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    const-string/jumbo v4, "ITEM_TYPE"

    iget-object v5, p0, Lcom/anansimobile/nge/IAB/util_v2/BillingService$RequestPurchase;->mProductType:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    iget-object v4, p0, Lcom/anansimobile/nge/IAB/util_v2/BillingService$RequestPurchase;->mDeveloperPayload:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 288
    const-string/jumbo v4, "DEVELOPER_PAYLOAD"

    iget-object v5, p0, Lcom/anansimobile/nge/IAB/util_v2/BillingService$RequestPurchase;->mDeveloperPayload:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    :cond_0
    invoke-static {}, Lcom/anansimobile/nge/IAB/util_v2/BillingService;->access$200()Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/android/vending/billing/IMarketBillingService;->sendBillingRequest(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    .line 291
    .local v3, "response":Landroid/os/Bundle;
    const-string/jumbo v4, "PURCHASE_INTENT"

    .line 292
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 293
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    if-nez v1, :cond_1

    .line 294
    const-string/jumbo v4, "BillingService"

    const-string/jumbo v5, "Error with requestPurchase"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    sget-wide v4, Lcom/anansimobile/nge/IAB/util_v2/Consts;->BILLING_RESPONSE_INVALID_REQUEST_ID:J

    .line 300
    :goto_0
    return-wide v4

    .line 298
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 299
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {v1, v0}, Lcom/anansimobile/nge/IAB/util_v2/ResponseHandler;->buyPageIntentResponse(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    .line 300
    const-string/jumbo v4, "REQUEST_ID"

    sget-wide v6, Lcom/anansimobile/nge/IAB/util_v2/Consts;->BILLING_RESPONSE_INVALID_REQUEST_ID:J

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    goto :goto_0
.end method
