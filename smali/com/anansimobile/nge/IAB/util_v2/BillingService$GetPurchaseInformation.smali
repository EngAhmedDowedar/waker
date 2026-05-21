.class Lcom/anansimobile/nge/IAB/util_v2/BillingService$GetPurchaseInformation;
.super Lcom/anansimobile/nge/IAB/util_v2/BillingService$BillingRequest;
.source "BillingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anansimobile/nge/IAB/util_v2/BillingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetPurchaseInformation"
.end annotation


# instance fields
.field mNonce:J

.field final mNotifyIds:[Ljava/lang/String;

.field final synthetic this$0:Lcom/anansimobile/nge/IAB/util_v2/BillingService;


# direct methods
.method public constructor <init>(Lcom/anansimobile/nge/IAB/util_v2/BillingService;I[Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/anansimobile/nge/IAB/util_v2/BillingService;
    .param p2, "startId"    # I
    .param p3, "notifyIds"    # [Ljava/lang/String;

    .prologue
    .line 339
    iput-object p1, p0, Lcom/anansimobile/nge/IAB/util_v2/BillingService$GetPurchaseInformation;->this$0:Lcom/anansimobile/nge/IAB/util_v2/BillingService;

    .line 340
    invoke-direct {p0, p1, p2}, Lcom/anansimobile/nge/IAB/util_v2/BillingService$BillingRequest;-><init>(Lcom/anansimobile/nge/IAB/util_v2/BillingService;I)V

    .line 341
    iput-object p3, p0, Lcom/anansimobile/nge/IAB/util_v2/BillingService$GetPurchaseInformation;->mNotifyIds:[Ljava/lang/String;

    .line 342
    return-void
.end method


# virtual methods
.method protected onRemoteException(Landroid/os/RemoteException;)V
    .locals 2
    .param p1, "e"    # Landroid/os/RemoteException;

    .prologue
    .line 359
    invoke-super {p0, p1}, Lcom/anansimobile/nge/IAB/util_v2/BillingService$BillingRequest;->onRemoteException(Landroid/os/RemoteException;)V

    .line 360
    iget-wide v0, p0, Lcom/anansimobile/nge/IAB/util_v2/BillingService$GetPurchaseInformation;->mNonce:J

    invoke-static {v0, v1}, Lcom/anansimobile/nge/IAB/util_v2/Security;->removeNonce(J)V

    .line 361
    return-void
.end method

.method protected run()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 346
    invoke-static {}, Lcom/anansimobile/nge/IAB/util_v2/Security;->generateNonce()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/anansimobile/nge/IAB/util_v2/BillingService$GetPurchaseInformation;->mNonce:J

    .line 348
    const-string/jumbo v2, "GET_PURCHASE_INFORMATION"

    invoke-virtual {p0, v2}, Lcom/anansimobile/nge/IAB/util_v2/BillingService$GetPurchaseInformation;->makeRequestBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 349
    .local v0, "request":Landroid/os/Bundle;
    const-string/jumbo v2, "NONCE"

    iget-wide v4, p0, Lcom/anansimobile/nge/IAB/util_v2/BillingService$GetPurchaseInformation;->mNonce:J

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 350
    const-string/jumbo v2, "NOTIFY_IDS"

    iget-object v3, p0, Lcom/anansimobile/nge/IAB/util_v2/BillingService$GetPurchaseInformation;->mNotifyIds:[Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 351
    invoke-static {}, Lcom/anansimobile/nge/IAB/util_v2/BillingService;->access$200()Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/android/vending/billing/IMarketBillingService;->sendBillingRequest(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 352
    .local v1, "response":Landroid/os/Bundle;
    const-string/jumbo v2, "getPurchaseInformation"

    invoke-virtual {p0, v2, v1}, Lcom/anansimobile/nge/IAB/util_v2/BillingService$GetPurchaseInformation;->logResponseCode(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 353
    const-string/jumbo v2, "REQUEST_ID"

    sget-wide v4, Lcom/anansimobile/nge/IAB/util_v2/Consts;->BILLING_RESPONSE_INVALID_REQUEST_ID:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method
