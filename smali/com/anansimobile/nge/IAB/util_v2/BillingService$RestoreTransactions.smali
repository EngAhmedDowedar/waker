.class Lcom/anansimobile/nge/IAB/util_v2/BillingService$RestoreTransactions;
.super Lcom/anansimobile/nge/IAB/util_v2/BillingService$BillingRequest;
.source "BillingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anansimobile/nge/IAB/util_v2/BillingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RestoreTransactions"
.end annotation


# instance fields
.field mNonce:J

.field final synthetic this$0:Lcom/anansimobile/nge/IAB/util_v2/BillingService;


# direct methods
.method public constructor <init>(Lcom/anansimobile/nge/IAB/util_v2/BillingService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/anansimobile/nge/IAB/util_v2/BillingService;

    .prologue
    .line 370
    iput-object p1, p0, Lcom/anansimobile/nge/IAB/util_v2/BillingService$RestoreTransactions;->this$0:Lcom/anansimobile/nge/IAB/util_v2/BillingService;

    .line 374
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/anansimobile/nge/IAB/util_v2/BillingService$BillingRequest;-><init>(Lcom/anansimobile/nge/IAB/util_v2/BillingService;I)V

    .line 375
    return-void
.end method


# virtual methods
.method protected onRemoteException(Landroid/os/RemoteException;)V
    .locals 2
    .param p1, "e"    # Landroid/os/RemoteException;

    .prologue
    .line 391
    invoke-super {p0, p1}, Lcom/anansimobile/nge/IAB/util_v2/BillingService$BillingRequest;->onRemoteException(Landroid/os/RemoteException;)V

    .line 392
    iget-wide v0, p0, Lcom/anansimobile/nge/IAB/util_v2/BillingService$RestoreTransactions;->mNonce:J

    invoke-static {v0, v1}, Lcom/anansimobile/nge/IAB/util_v2/Security;->removeNonce(J)V

    .line 393
    return-void
.end method

.method protected responseCodeReceived(Lcom/anansimobile/nge/IAB/util_v2/Consts$ResponseCode;)V
    .locals 1
    .param p1, "responseCode"    # Lcom/anansimobile/nge/IAB/util_v2/Consts$ResponseCode;

    .prologue
    .line 397
    iget-object v0, p0, Lcom/anansimobile/nge/IAB/util_v2/BillingService$RestoreTransactions;->this$0:Lcom/anansimobile/nge/IAB/util_v2/BillingService;

    invoke-static {v0, p0, p1}, Lcom/anansimobile/nge/IAB/util_v2/ResponseHandler;->responseCodeReceived(Landroid/content/Context;Lcom/anansimobile/nge/IAB/util_v2/BillingService$RestoreTransactions;Lcom/anansimobile/nge/IAB/util_v2/Consts$ResponseCode;)V

    .line 398
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
    .line 379
    invoke-static {}, Lcom/anansimobile/nge/IAB/util_v2/Security;->generateNonce()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/anansimobile/nge/IAB/util_v2/BillingService$RestoreTransactions;->mNonce:J

    .line 381
    const-string/jumbo v2, "RESTORE_TRANSACTIONS"

    invoke-virtual {p0, v2}, Lcom/anansimobile/nge/IAB/util_v2/BillingService$RestoreTransactions;->makeRequestBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 382
    .local v0, "request":Landroid/os/Bundle;
    const-string/jumbo v2, "NONCE"

    iget-wide v4, p0, Lcom/anansimobile/nge/IAB/util_v2/BillingService$RestoreTransactions;->mNonce:J

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 383
    invoke-static {}, Lcom/anansimobile/nge/IAB/util_v2/BillingService;->access$200()Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/android/vending/billing/IMarketBillingService;->sendBillingRequest(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 384
    .local v1, "response":Landroid/os/Bundle;
    const-string/jumbo v2, "restoreTransactions"

    invoke-virtual {p0, v2, v1}, Lcom/anansimobile/nge/IAB/util_v2/BillingService$RestoreTransactions;->logResponseCode(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 385
    const-string/jumbo v2, "REQUEST_ID"

    sget-wide v4, Lcom/anansimobile/nge/IAB/util_v2/Consts;->BILLING_RESPONSE_INVALID_REQUEST_ID:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method
