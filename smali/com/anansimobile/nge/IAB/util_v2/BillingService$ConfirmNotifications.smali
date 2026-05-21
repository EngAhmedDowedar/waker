.class Lcom/anansimobile/nge/IAB/util_v2/BillingService$ConfirmNotifications;
.super Lcom/anansimobile/nge/IAB/util_v2/BillingService$BillingRequest;
.source "BillingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anansimobile/nge/IAB/util_v2/BillingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConfirmNotifications"
.end annotation


# instance fields
.field final mNotifyIds:[Ljava/lang/String;

.field final synthetic this$0:Lcom/anansimobile/nge/IAB/util_v2/BillingService;


# direct methods
.method public constructor <init>(Lcom/anansimobile/nge/IAB/util_v2/BillingService;I[Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/anansimobile/nge/IAB/util_v2/BillingService;
    .param p2, "startId"    # I
    .param p3, "notifyIds"    # [Ljava/lang/String;

    .prologue
    .line 316
    iput-object p1, p0, Lcom/anansimobile/nge/IAB/util_v2/BillingService$ConfirmNotifications;->this$0:Lcom/anansimobile/nge/IAB/util_v2/BillingService;

    .line 317
    invoke-direct {p0, p1, p2}, Lcom/anansimobile/nge/IAB/util_v2/BillingService$BillingRequest;-><init>(Lcom/anansimobile/nge/IAB/util_v2/BillingService;I)V

    .line 318
    iput-object p3, p0, Lcom/anansimobile/nge/IAB/util_v2/BillingService$ConfirmNotifications;->mNotifyIds:[Ljava/lang/String;

    .line 319
    return-void
.end method


# virtual methods
.method protected run()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 323
    const-string/jumbo v2, "CONFIRM_NOTIFICATIONS"

    invoke-virtual {p0, v2}, Lcom/anansimobile/nge/IAB/util_v2/BillingService$ConfirmNotifications;->makeRequestBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 324
    .local v0, "request":Landroid/os/Bundle;
    const-string/jumbo v2, "NOTIFY_IDS"

    iget-object v3, p0, Lcom/anansimobile/nge/IAB/util_v2/BillingService$ConfirmNotifications;->mNotifyIds:[Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 325
    invoke-static {}, Lcom/anansimobile/nge/IAB/util_v2/BillingService;->access$200()Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/android/vending/billing/IMarketBillingService;->sendBillingRequest(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 326
    .local v1, "response":Landroid/os/Bundle;
    const-string/jumbo v2, "confirmNotifications"

    invoke-virtual {p0, v2, v1}, Lcom/anansimobile/nge/IAB/util_v2/BillingService$ConfirmNotifications;->logResponseCode(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 327
    const-string/jumbo v2, "REQUEST_ID"

    sget-wide v4, Lcom/anansimobile/nge/IAB/util_v2/Consts;->BILLING_RESPONSE_INVALID_REQUEST_ID:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method
