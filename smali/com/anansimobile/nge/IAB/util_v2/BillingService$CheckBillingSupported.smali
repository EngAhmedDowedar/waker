.class Lcom/anansimobile/nge/IAB/util_v2/BillingService$CheckBillingSupported;
.super Lcom/anansimobile/nge/IAB/util_v2/BillingService$BillingRequest;
.source "BillingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anansimobile/nge/IAB/util_v2/BillingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheckBillingSupported"
.end annotation


# instance fields
.field public mProductType:Ljava/lang/String;

.field final synthetic this$0:Lcom/anansimobile/nge/IAB/util_v2/BillingService;


# direct methods
.method public constructor <init>(Lcom/anansimobile/nge/IAB/util_v2/BillingService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/anansimobile/nge/IAB/util_v2/BillingService;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 193
    iput-object p1, p0, Lcom/anansimobile/nge/IAB/util_v2/BillingService$CheckBillingSupported;->this$0:Lcom/anansimobile/nge/IAB/util_v2/BillingService;

    .line 197
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/anansimobile/nge/IAB/util_v2/BillingService$BillingRequest;-><init>(Lcom/anansimobile/nge/IAB/util_v2/BillingService;I)V

    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anansimobile/nge/IAB/util_v2/BillingService$CheckBillingSupported;->mProductType:Ljava/lang/String;

    .line 198
    return-void
.end method

.method public constructor <init>(Lcom/anansimobile/nge/IAB/util_v2/BillingService;Ljava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lcom/anansimobile/nge/IAB/util_v2/BillingService;
    .param p2, "itemType"    # Ljava/lang/String;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/anansimobile/nge/IAB/util_v2/BillingService$CheckBillingSupported;->this$0:Lcom/anansimobile/nge/IAB/util_v2/BillingService;

    .line 212
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/anansimobile/nge/IAB/util_v2/BillingService$BillingRequest;-><init>(Lcom/anansimobile/nge/IAB/util_v2/BillingService;I)V

    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anansimobile/nge/IAB/util_v2/BillingService$CheckBillingSupported;->mProductType:Ljava/lang/String;

    .line 213
    iput-object p2, p0, Lcom/anansimobile/nge/IAB/util_v2/BillingService$CheckBillingSupported;->mProductType:Ljava/lang/String;

    .line 214
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
    .line 218
    const-string/jumbo v4, "CHECK_BILLING_SUPPORTED"

    invoke-virtual {p0, v4}, Lcom/anansimobile/nge/IAB/util_v2/BillingService$CheckBillingSupported;->makeRequestBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 219
    .local v1, "request":Landroid/os/Bundle;
    iget-object v4, p0, Lcom/anansimobile/nge/IAB/util_v2/BillingService$CheckBillingSupported;->mProductType:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 220
    const-string/jumbo v4, "ITEM_TYPE"

    iget-object v5, p0, Lcom/anansimobile/nge/IAB/util_v2/BillingService$CheckBillingSupported;->mProductType:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    :cond_0
    invoke-static {}, Lcom/anansimobile/nge/IAB/util_v2/BillingService;->access$200()Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/android/vending/billing/IMarketBillingService;->sendBillingRequest(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 223
    .local v2, "response":Landroid/os/Bundle;
    const-string/jumbo v4, "RESPONSE_CODE"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 228
    .local v3, "responseCode":I
    sget-object v4, Lcom/anansimobile/nge/IAB/util_v2/Consts$ResponseCode;->RESULT_OK:Lcom/anansimobile/nge/IAB/util_v2/Consts$ResponseCode;

    invoke-virtual {v4}, Lcom/anansimobile/nge/IAB/util_v2/Consts$ResponseCode;->ordinal()I

    move-result v4

    if-ne v3, v4, :cond_1

    const/4 v0, 0x1

    .line 229
    .local v0, "billingSupported":Z
    :goto_0
    iget-object v4, p0, Lcom/anansimobile/nge/IAB/util_v2/BillingService$CheckBillingSupported;->mProductType:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/anansimobile/nge/IAB/util_v2/ResponseHandler;->checkBillingSupportedResponse(ZLjava/lang/String;)V

    .line 230
    sget-wide v4, Lcom/anansimobile/nge/IAB/util_v2/Consts;->BILLING_RESPONSE_INVALID_REQUEST_ID:J

    return-wide v4

    .line 228
    .end local v0    # "billingSupported":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
