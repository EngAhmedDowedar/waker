.class public Lcom/anansimobile/nge/IAB/util/IabHelper;
.super Ljava/lang/Object;
.source "IabHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anansimobile/nge/IAB/util/IabHelper$OnConsumeMultiFinishedListener;,
        Lcom/anansimobile/nge/IAB/util/IabHelper$OnConsumeFinishedListener;,
        Lcom/anansimobile/nge/IAB/util/IabHelper$QueryInventoryFinishedListener;,
        Lcom/anansimobile/nge/IAB/util/IabHelper$OnIabPurchaseFinishedListener;,
        Lcom/anansimobile/nge/IAB/util/IabHelper$OnIabSetupFinishedListener;
    }
.end annotation


# static fields
.field public static final BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:I = 0x3

.field public static final BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:I = 0x5

.field public static final BILLING_RESPONSE_RESULT_ERROR:I = 0x6

.field public static final BILLING_RESPONSE_RESULT_ITEM_ALREADY_OWNED:I = 0x7

.field public static final BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:I = 0x8

.field public static final BILLING_RESPONSE_RESULT_ITEM_UNAVAILABLE:I = 0x4

.field public static final BILLING_RESPONSE_RESULT_OK:I = 0x0

.field public static final BILLING_RESPONSE_RESULT_USER_CANCELED:I = 0x1

.field public static final GET_SKU_DETAILS_ITEM_LIST:Ljava/lang/String; = "ITEM_ID_LIST"

.field public static final GET_SKU_DETAILS_ITEM_TYPE_LIST:Ljava/lang/String; = "ITEM_TYPE_LIST"

.field public static final IABHELPER_BAD_RESPONSE:I = -0x3ea

.field public static final IABHELPER_ERROR_BASE:I = -0x3e8

.field public static final IABHELPER_MISSING_TOKEN:I = -0x3ef

.field public static final IABHELPER_REMOTE_EXCEPTION:I = -0x3e9

.field public static final IABHELPER_SEND_INTENT_FAILED:I = -0x3ec

.field public static final IABHELPER_UNKNOWN_ERROR:I = -0x3f0

.field public static final IABHELPER_UNKNOWN_PURCHASE_RESPONSE:I = -0x3ee

.field public static final IABHELPER_USER_CANCELLED:I = -0x3ed

.field public static final IABHELPER_VERIFICATION_FAILED:I = -0x3eb

.field public static final INAPP_CONTINUATION_TOKEN:Ljava/lang/String; = "INAPP_CONTINUATION_TOKEN"

.field public static final ITEM_TYPE_INAPP:Ljava/lang/String; = "inapp"

.field public static final RESPONSE_BUY_INTENT:Ljava/lang/String; = "BUY_INTENT"

.field public static final RESPONSE_CODE:Ljava/lang/String; = "RESPONSE_CODE"

.field public static final RESPONSE_GET_SKU_DETAILS_LIST:Ljava/lang/String; = "DETAILS_LIST"

.field public static final RESPONSE_INAPP_ITEM_LIST:Ljava/lang/String; = "INAPP_PURCHASE_ITEM_LIST"

.field public static final RESPONSE_INAPP_PURCHASE_DATA:Ljava/lang/String; = "INAPP_PURCHASE_DATA"

.field public static final RESPONSE_INAPP_PURCHASE_DATA_LIST:Ljava/lang/String; = "INAPP_PURCHASE_DATA_LIST"

.field public static final RESPONSE_INAPP_SIGNATURE:Ljava/lang/String; = "INAPP_DATA_SIGNATURE"

.field public static final RESPONSE_INAPP_SIGNATURE_LIST:Ljava/lang/String; = "INAPP_DATA_SIGNATURE_LIST"


# instance fields
.field mAsyncInProgress:Z

.field mAsyncOperation:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mDebugLog:Z

.field mDebugTag:Ljava/lang/String;

.field mPurchaseListener:Lcom/anansimobile/nge/IAB/util/IabHelper$OnIabPurchaseFinishedListener;

.field mRequestCode:I

.field mService:Lcom/android/vending/billing/IInAppBillingService;

.field mServiceConn:Landroid/content/ServiceConnection;

.field mSetupDone:Z

.field mSignatureBase64:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "base64PublicKey"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-boolean v1, p0, Lcom/anansimobile/nge/IAB/util/IabHelper;->mDebugLog:Z

    .line 90
    const-string/jumbo v0, "IabHelper"

    iput-object v0, p0, Lcom/anansimobile/nge/IAB/util/IabHelper;->mDebugTag:Ljava/lang/String;

    .line 93
    iput-boolean v1, p0, Lcom/anansimobile/nge/IAB/util/IabHelper;->mSetupDone:Z

    .line 97
    iput-boolean v1, p0, Lcom/anansimobile/nge/IAB/util/IabHelper;->mAsyncInProgress:Z

    .line 101
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/anansimobile/nge/IAB/util/IabHelper;->mAsyncOperation:Ljava/lang/String;

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anansimobile/nge/IAB/util/IabHelper;->mSignatureBase64:Ljava/lang/String;

    .line 167
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/anansimobile/nge/IAB/util/IabHelper;->mContext:Landroid/content/Context;

    .line 168
    iput-object p2, p0, Lcom/anansimobile/nge/IAB/util/IabHelper;->mSignatureBase64:Ljava/lang/String;

    .line 169
    const-string/jumbo v0, "IAB helper created."

    invoke-virtual {p0, v0}, Lcom/anansimobile/nge/IAB/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method public static getResponseDesc(I)Ljava/lang/String;
    .locals 5
    .param p0, "code"    # I

    .prologue
    .line 656
    const-string/jumbo v3, "0:OK/1:User Canceled/2:Unknown/3:Billing Unavailable/4:Item unavailable/5:Developer Error/6:Error/7:Item Already Owned/8:Item not owned"

    const-string/jumbo v4, "/"

    .line 659
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 660
    .local v0, "iab_msgs":[Ljava/lang/String;
    const-string/jumbo v3, "0:OK/-1001:Remote exception during initialization/-1002:Bad response received/-1003:Purchase signature verification failed/-1004:Send intent failed/-1005:User cancelled/-1006:Unknown purchase response/-1007:Missing token/-1008:Unknown error"

    const-string/jumbo v4, "/"

    .line 667
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 669
    .local v1, "iabhelper_msgs":[Ljava/lang/String;
    const/16 v3, -0x3e8

    if-gt p0, v3, :cond_1

    .line 670
    rsub-int v2, p0, -0x3e8

    .line 671
    .local v2, "index":I
    if-ltz v2, :cond_0

    array-length v3, v1

    if-ge v2, v3, :cond_0

    aget-object v3, v1, v2

    .line 677
    .end local v2    # "index":I
    :goto_0
    return-object v3

    .line 672
    .restart local v2    # "index":I
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":Unknown IAB Helper Error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 674
    .end local v2    # "index":I
    :cond_1
    if-ltz p0, :cond_2

    array-length v3, v0

    if-lt p0, v3, :cond_3

    .line 675
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":Unknown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 677
    :cond_3
    aget-object v3, v0, p0

    goto :goto_0
.end method


# virtual methods
.method checkSetupDone(Ljava/lang/String;)V
    .locals 3
    .param p1, "operation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 683
    iget-boolean v0, p0, Lcom/anansimobile/nge/IAB/util/IabHelper;->mSetupDone:Z

    if-nez v0, :cond_0

    .line 684
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Illegal state for operation ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "): IAB helper is not set up."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anansimobile/nge/IAB/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 685
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "IAB helper is not set up. Can\'t perform operation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 687
    :cond_0
    return-void
.end method

.method consume(Lcom/anansimobile/nge/IAB/util/Purchase;)V
    .locals 8
    .param p1, "itemInfo"    # Lcom/anansimobile/nge/IAB/util/Purchase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/anansimobile/nge/IAB/util/IabException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 571
    const-string/jumbo v4, "consume"

    invoke-virtual {p0, v4}, Lcom/anansimobile/nge/IAB/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 573
    :try_start_0
    invoke-virtual {p1}, Lcom/anansimobile/nge/IAB/util/Purchase;->getToken()Ljava/lang/String;

    move-result-object v3

    .line 574
    .local v3, "token":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/anansimobile/nge/IAB/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v2

    .line 575
    .local v2, "sku":Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 576
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Can\'t consume "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ". No token."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/anansimobile/nge/IAB/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 577
    new-instance v4, Lcom/anansimobile/nge/IAB/util/IabException;

    const/16 v5, -0x3ef

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "PurchaseInfo is missing token for sku: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/anansimobile/nge/IAB/util/IabException;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 591
    .end local v2    # "sku":Ljava/lang/String;
    .end local v3    # "token":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 592
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v4, Lcom/anansimobile/nge/IAB/util/IabException;

    const/16 v5, -0x3e9

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Remote exception while consuming. PurchaseInfo: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6, v0}, Lcom/anansimobile/nge/IAB/util/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 581
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v2    # "sku":Ljava/lang/String;
    .restart local v3    # "token":Ljava/lang/String;
    :cond_1
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Consuming sku: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", token: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/anansimobile/nge/IAB/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 582
    iget-object v4, p0, Lcom/anansimobile/nge/IAB/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/anansimobile/nge/IAB/util/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6, v3}, Lcom/android/vending/billing/IInAppBillingService;->consumePurchase(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 583
    .local v1, "response":I
    if-nez v1, :cond_2

    .line 584
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Successfully consumed sku: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/anansimobile/nge/IAB/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 594
    return-void

    .line 587
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error consuming consuming sku "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ". "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/anansimobile/nge/IAB/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/anansimobile/nge/IAB/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 588
    new-instance v4, Lcom/anansimobile/nge/IAB/util/IabException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Error consuming sku "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Lcom/anansimobile/nge/IAB/util/IabException;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public consumeAsync(Lcom/anansimobile/nge/IAB/util/Purchase;Lcom/anansimobile/nge/IAB/util/IabHelper$OnConsumeFinishedListener;)V
    .locals 2
    .param p1, "purchase"    # Lcom/anansimobile/nge/IAB/util/Purchase;
    .param p2, "listener"    # Lcom/anansimobile/nge/IAB/util/IabHelper$OnConsumeFinishedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 632
    const-string/jumbo v1, "consume"

    invoke-virtual {p0, v1}, Lcom/anansimobile/nge/IAB/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 633
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 634
    .local v0, "purchases":Ljava/util/List;, "Ljava/util/List<Lcom/anansimobile/nge/IAB/util/Purchase;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 635
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1}, Lcom/anansimobile/nge/IAB/util/IabHelper;->consumeAsyncInternal(Ljava/util/List;Lcom/anansimobile/nge/IAB/util/IabHelper$OnConsumeFinishedListener;Lcom/anansimobile/nge/IAB/util/IabHelper$OnConsumeMultiFinishedListener;)V

    .line 636
    return-void
.end method

.method public consumeAsync(Ljava/util/List;Lcom/anansimobile/nge/IAB/util/IabHelper$OnConsumeMultiFinishedListener;)V
    .locals 1
    .param p2, "listener"    # Lcom/anansimobile/nge/IAB/util/IabHelper$OnConsumeMultiFinishedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/anansimobile/nge/IAB/util/Purchase;",
            ">;",
            "Lcom/anansimobile/nge/IAB/util/IabHelper$OnConsumeMultiFinishedListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 644
    .local p1, "purchases":Ljava/util/List;, "Ljava/util/List<Lcom/anansimobile/nge/IAB/util/Purchase;>;"
    const-string/jumbo v0, "consume"

    invoke-virtual {p0, v0}, Lcom/anansimobile/nge/IAB/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 645
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/anansimobile/nge/IAB/util/IabHelper;->consumeAsyncInternal(Ljava/util/List;Lcom/anansimobile/nge/IAB/util/IabHelper$OnConsumeFinishedListener;Lcom/anansimobile/nge/IAB/util/IabHelper$OnConsumeMultiFinishedListener;)V

    .line 646
    return-void
.end method

.method consumeAsyncInternal(Ljava/util/List;Lcom/anansimobile/nge/IAB/util/IabHelper$OnConsumeFinishedListener;Lcom/anansimobile/nge/IAB/util/IabHelper$OnConsumeMultiFinishedListener;)V
    .locals 7
    .param p2, "singleListener"    # Lcom/anansimobile/nge/IAB/util/IabHelper$OnConsumeFinishedListener;
    .param p3, "multiListener"    # Lcom/anansimobile/nge/IAB/util/IabHelper$OnConsumeMultiFinishedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/anansimobile/nge/IAB/util/Purchase;",
            ">;",
            "Lcom/anansimobile/nge/IAB/util/IabHelper$OnConsumeFinishedListener;",
            "Lcom/anansimobile/nge/IAB/util/IabHelper$OnConsumeMultiFinishedListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 843
    .local p1, "purchases":Ljava/util/List;, "Ljava/util/List<Lcom/anansimobile/nge/IAB/util/Purchase;>;"
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    .line 844
    .local v4, "handler":Landroid/os/Handler;
    const-string/jumbo v0, "consume"

    invoke-virtual {p0, v0}, Lcom/anansimobile/nge/IAB/util/IabHelper;->flagStartAsync(Ljava/lang/String;)V

    .line 845
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/anansimobile/nge/IAB/util/IabHelper$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/anansimobile/nge/IAB/util/IabHelper$3;-><init>(Lcom/anansimobile/nge/IAB/util/IabHelper;Ljava/util/List;Lcom/anansimobile/nge/IAB/util/IabHelper$OnConsumeFinishedListener;Landroid/os/Handler;Lcom/anansimobile/nge/IAB/util/IabHelper$OnConsumeMultiFinishedListener;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 876
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 877
    return-void
.end method

.method public dispose()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 266
    const-string/jumbo v0, "Disposing."

    invoke-virtual {p0, v0}, Lcom/anansimobile/nge/IAB/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 267
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anansimobile/nge/IAB/util/IabHelper;->mSetupDone:Z

    .line 268
    iget-object v0, p0, Lcom/anansimobile/nge/IAB/util/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_1

    .line 269
    const-string/jumbo v0, "Unbinding from service."

    invoke-virtual {p0, v0}, Lcom/anansimobile/nge/IAB/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/anansimobile/nge/IAB/util/IabHelper;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anansimobile/nge/IAB/util/IabHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/anansimobile/nge/IAB/util/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 271
    :cond_0
    iput-object v2, p0, Lcom/anansimobile/nge/IAB/util/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    .line 272
    iput-object v2, p0, Lcom/anansimobile/nge/IAB/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    .line 273
    iput-object v2, p0, Lcom/anansimobile/nge/IAB/util/IabHelper;->mPurchaseListener:Lcom/anansimobile/nge/IAB/util/IabHelper$OnIabPurchaseFinishedListener;

    .line 275
    :cond_1
    return-void
.end method

.method public enableDebugLogging(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 181
    iput-boolean p1, p0, Lcom/anansimobile/nge/IAB/util/IabHelper;->mDebugLog:Z

    .line 182
    return-void
.end method

.method public enableDebugLogging(ZLjava/lang/String;)V
    .locals 0
    .param p1, "enable"    # Z
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 176
    iput-boolean p1, p0, Lcom/anansimobile/nge/IAB/util/IabHelper;->mDebugLog:Z

    .line 177
    iput-object p2, p0, Lcom/anansimobile/nge/IAB/util/IabHelper;->mDebugTag:Ljava/lang/String;

    .line 178
    return-void
.end method

.method flagEndAsync()V
    .locals 2

    .prologue
    .line 730
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Ending async operation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/anansimobile/nge/IAB/util/IabHelper;->mAsyncOperation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anansimobile/nge/IAB/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 731
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/anansimobile/nge/IAB/util/IabHelper;->mAsyncOperation:Ljava/lang/String;

    .line 732
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anansimobile/nge/IAB/util/IabHelper;->mAsyncInProgress:Z

    .line 733
    return-void
.end method

.method flagStartAsync(Ljava/lang/String;)V
    .locals 3
    .param p1, "operation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 722
    iget-boolean v0, p0, Lcom/anansimobile/nge/IAB/util/IabHelper;->mAsyncInProgress:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Can\'t start async operation ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") because another async operation("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/anansimobile/nge/IAB/util/IabHelper;->mAsyncOperation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") is in progress."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 724
    :cond_0
    iput-object p1, p0, Lcom/anansimobile/nge/IAB/util/IabHelper;->mAsyncOperation:Ljava/lang/String;

    .line 725
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anansimobile/nge/IAB/util/IabHelper;->mAsyncInProgress:Z

    .line 726
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Starting async operation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anansimobile/nge/IAB/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 727
    return-void
.end method

.method getResponseCodeFromBundle(Landroid/os/Bundle;)I
    .locals 4
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 691
    const-string/jumbo v1, "RESPONSE_CODE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 692
    .local v0, "o":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 693
    const-string/jumbo v1, "Bundle with null response code, assuming OK (known issue)"

    invoke-virtual {p0, v1}, Lcom/anansimobile/nge/IAB/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 694
    const/4 v1, 0x0

    .line 697
    .end local v0    # "o":Ljava/lang/Object;
    :goto_0
    return v1

    .line 696
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 697
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/Long;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-int v1, v2

    goto :goto_0

    .line 699
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_2
    const-string/jumbo v1, "Unexpected type for bundle response code."

    invoke-virtual {p0, v1}, Lcom/anansimobile/nge/IAB/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 700
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/anansimobile/nge/IAB/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 701
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unexpected type for bundle response code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getResponseCodeFromIntent(Landroid/content/Intent;)I
    .locals 4
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    .line 707
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "RESPONSE_CODE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 708
    .local v0, "o":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 709
    const-string/jumbo v1, "Intent with no response code, assuming OK (known issue)"

    invoke-virtual {p0, v1}, Lcom/anansimobile/nge/IAB/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 710
    const/4 v1, 0x0

    .line 713
    .end local v0    # "o":Ljava/lang/Object;
    :goto_0
    return v1

    .line 712
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 713
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/Long;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-int v1, v2

    goto :goto_0

    .line 715
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_2
    const-string/jumbo v1, "Unexpected type for intent response code."

    invoke-virtual {p0, v1}, Lcom/anansimobile/nge/IAB/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 716
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/anansimobile/nge/IAB/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 717
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unexpected type for intent response code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public handleActivityResult(IILandroid/content/Intent;)Z
    .locals 12
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 378
    iget v8, p0, Lcom/anansimobile/nge/IAB/util/IabHelper;->mRequestCode:I

    if-eq p1, v8, :cond_0

    const/4 v8, 0x0

    .line 457
    :goto_0
    return v8

    .line 382
    :cond_0
    const-string/jumbo v8, "handleActivityResult"

    invoke-virtual {p0, v8}, Lcom/anansimobile/nge/IAB/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 385
    invoke-virtual {p0}, Lcom/anansimobile/nge/IAB/util/IabHelper;->flagEndAsync()V

    .line 387
    if-nez p3, :cond_2

    .line 388
    const-string/jumbo v8, "Null data in IAB activity result."

    invoke-virtual {p0, v8}, Lcom/anansimobile/nge/IAB/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 389
    new-instance v6, Lcom/anansimobile/nge/IAB/util/IabResult;

    const/16 v8, -0x3ea

    const-string/jumbo v9, "Null data in IAB result"

    invoke-direct {v6, v8, v9}, Lcom/anansimobile/nge/IAB/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 390
    .local v6, "result":Lcom/anansimobile/nge/IAB/util/IabResult;
    iget-object v8, p0, Lcom/anansimobile/nge/IAB/util/IabHelper;->mPurchaseListener:Lcom/anansimobile/nge/IAB/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/anansimobile/nge/IAB/util/IabHelper;->mPurchaseListener:Lcom/anansimobile/nge/IAB/util/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v9, 0x0

    invoke-interface {v8, v6, v9}, Lcom/anansimobile/nge/IAB/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/anansimobile/nge/IAB/util/IabResult;Lcom/anansimobile/nge/IAB/util/Purchase;)V

    .line 391
    :cond_1
    const/4 v8, 0x1

    goto :goto_0

    .line 394
    .end local v6    # "result":Lcom/anansimobile/nge/IAB/util/IabResult;
    :cond_2
    invoke-virtual {p0, p3}, Lcom/anansimobile/nge/IAB/util/IabHelper;->getResponseCodeFromIntent(Landroid/content/Intent;)I

    move-result v5

    .line 395
    .local v5, "responseCode":I
    const-string/jumbo v8, "INAPP_PURCHASE_DATA"

    invoke-virtual {p3, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 396
    .local v4, "purchaseData":Ljava/lang/String;
    const-string/jumbo v8, "INAPP_DATA_SIGNATURE"

    invoke-virtual {p3, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 398
    .local v0, "dataSignature":Ljava/lang/String;
    const/4 v8, -0x1

    if-ne p2, v8, :cond_a

    if-nez v5, :cond_a

    .line 399
    const-string/jumbo v8, "Successful resultcode from purchase activity."

    invoke-virtual {p0, v8}, Lcom/anansimobile/nge/IAB/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 400
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Purchase data: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/anansimobile/nge/IAB/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 401
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Data signature: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/anansimobile/nge/IAB/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 402
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Extras: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/anansimobile/nge/IAB/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 404
    if-eqz v4, :cond_3

    if-nez v0, :cond_5

    .line 405
    :cond_3
    const-string/jumbo v8, "BUG: either purchaseData or dataSignature is null."

    invoke-virtual {p0, v8}, Lcom/anansimobile/nge/IAB/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 406
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Extras: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/anansimobile/nge/IAB/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 407
    new-instance v6, Lcom/anansimobile/nge/IAB/util/IabResult;

    const/16 v8, -0x3f0

    const-string/jumbo v9, "IAB returned null purchaseData or dataSignature"

    invoke-direct {v6, v8, v9}, Lcom/anansimobile/nge/IAB/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 408
    .restart local v6    # "result":Lcom/anansimobile/nge/IAB/util/IabResult;
    iget-object v8, p0, Lcom/anansimobile/nge/IAB/util/IabHelper;->mPurchaseListener:Lcom/anansimobile/nge/IAB/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/anansimobile/nge/IAB/util/IabHelper;->mPurchaseListener:Lcom/anansimobile/nge/IAB/util/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v9, 0x0

    invoke-interface {v8, v6, v9}, Lcom/anansimobile/nge/IAB/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/anansimobile/nge/IAB/util/IabResult;Lcom/anansimobile/nge/IAB/util/Purchase;)V

    .line 409
    :cond_4
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 412
    .end local v6    # "result":Lcom/anansimobile/nge/IAB/util/IabResult;
    :cond_5
    const/4 v2, 0x0

    .line 414
    .local v2, "purchase":Lcom/anansimobile/nge/IAB/util/Purchase;
    :try_start_0
    new-instance v3, Lcom/anansimobile/nge/IAB/util/Purchase;

    invoke-direct {v3, v4, v0}, Lcom/anansimobile/nge/IAB/util/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
    .end local v2    # "purchase":Lcom/anansimobile/nge/IAB/util/Purchase;
    .local v3, "purchase":Lcom/anansimobile/nge/IAB/util/Purchase;
    :try_start_1
    invoke-virtual {v3}, Lcom/anansimobile/nge/IAB/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v7

    .line 418
    .local v7, "sku":Ljava/lang/String;
    iget-object v8, p0, Lcom/anansimobile/nge/IAB/util/IabHelper;->mSignatureBase64:Ljava/lang/String;

    invoke-static {v8, v4, v0}, Lcom/anansimobile/nge/IAB/util/Security;->verifyPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 419
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Purchase signature verification FAILED for sku "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/anansimobile/nge/IAB/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 420
    new-instance v6, Lcom/anansimobile/nge/IAB/util/IabResult;

    const/16 v8, -0x3eb

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Signature verification failed for sku "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v8, v9}, Lcom/anansimobile/nge/IAB/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 421
    .restart local v6    # "result":Lcom/anansimobile/nge/IAB/util/IabResult;
    iget-object v8, p0, Lcom/anansimobile/nge/IAB/util/IabHelper;->mPurchaseListener:Lcom/anansimobile/nge/IAB/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/anansimobile/nge/IAB/util/IabHelper;->mPurchaseListener:Lcom/anansimobile/nge/IAB/util/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v8, v6, v3}, Lcom/anansimobile/nge/IAB/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/anansimobile/nge/IAB/util/IabResult;Lcom/anansimobile/nge/IAB/util/Purchase;)V

    .line 422
    :cond_6
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 424
    .end local v6    # "result":Lcom/anansimobile/nge/IAB/util/IabResult;
    :cond_7
    const-string/jumbo v8, "Purchase signature successfully verified."

    invoke-virtual {p0, v8}, Lcom/anansimobile/nge/IAB/util/IabHelper;->logDebug(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 434
    iget-object v8, p0, Lcom/anansimobile/nge/IAB/util/IabHelper;->mPurchaseListener:Lcom/anansimobile/nge/IAB/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_8

    .line 435
    iget-object v8, p0, Lcom/anansimobile/nge/IAB/util/IabHelper;->mPurchaseListener:Lcom/anansimobile/nge/IAB/util/IabHelper$OnIabPurchaseFinishedListener;

    new-instance v9, Lcom/anansimobile/nge/IAB/util/IabResult;

    const/4 v10, 0x0

    const-string/jumbo v11, "Success"

    invoke-direct {v9, v10, v11}, Lcom/anansimobile/nge/IAB/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v8, v9, v3}, Lcom/anansimobile/nge/IAB/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/anansimobile/nge/IAB/util/IabResult;Lcom/anansimobile/nge/IAB/util/Purchase;)V

    .line 457
    .end local v3    # "purchase":Lcom/anansimobile/nge/IAB/util/Purchase;
    .end local v7    # "sku":Ljava/lang/String;
    :cond_8
    :goto_1
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 426
    .restart local v2    # "purchase":Lcom/anansimobile/nge/IAB/util/Purchase;
    :catch_0
    move-exception v1

    .line 427
    .local v1, "e":Lorg/json/JSONException;
    :goto_2
    const-string/jumbo v8, "Failed to parse purchase data."

    invoke-virtual {p0, v8}, Lcom/anansimobile/nge/IAB/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 428
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 429
    new-instance v6, Lcom/anansimobile/nge/IAB/util/IabResult;

    const/16 v8, -0x3ea

    const-string/jumbo v9, "Failed to parse purchase data."

    invoke-direct {v6, v8, v9}, Lcom/anansimobile/nge/IAB/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 430
    .restart local v6    # "result":Lcom/anansimobile/nge/IAB/util/IabResult;
    iget-object v8, p0, Lcom/anansimobile/nge/IAB/util/IabHelper;->mPurchaseListener:Lcom/anansimobile/nge/IAB/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/anansimobile/nge/IAB/util/IabHelper;->mPurchaseListener:Lcom/anansimobile/nge/IAB/util/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v9, 0x0

    invoke-interface {v8, v6, v9}, Lcom/anansimobile/nge/IAB/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/anansimobile/nge/IAB/util/IabResult;Lcom/anansimobile/nge/IAB/util/Purchase;)V

    .line 431
    :cond_9
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 438
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v2    # "purchase":Lcom/anansimobile/nge/IAB/util/Purchase;
    .end local v6    # "result":Lcom/anansimobile/nge/IAB/util/IabResult;
    :cond_a
    const/4 v8, -0x1

    if-ne p2, v8, :cond_b

    .line 440
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Result code was OK but in-app billing response was not OK: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v5}, Lcom/anansimobile/nge/IAB/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/anansimobile/nge/IAB/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 441
    iget-object v8, p0, Lcom/anansimobile/nge/IAB/util/IabHelper;->mPurchaseListener:Lcom/anansimobile/nge/IAB/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_8

    .line 442
    new-instance v6, Lcom/anansimobile/nge/IAB/util/IabResult;

    const-string/jumbo v8, "Problem purchashing item."

    invoke-direct {v6, v5, v8}, Lcom/anansimobile/nge/IAB/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 443
    .restart local v6    # "result":Lcom/anansimobile/nge/IAB/util/IabResult;
    iget-object v8, p0, Lcom/anansimobile/nge/IAB/util/IabHelper;->mPurchaseListener:Lcom/anansimobile/nge/IAB/util/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v9, 0x0

    invoke-interface {v8, v6, v9}, Lcom/anansimobile/nge/IAB/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/anansimobile/nge/IAB/util/IabResult;Lcom/anansimobile/nge/IAB/util/Purchase;)V

    goto :goto_1

    .line 446
    .end local v6    # "result":Lcom/anansimobile/nge/IAB/util/IabResult;
    :cond_b
    if-nez p2, :cond_c

    .line 447
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Purchase canceled - Response: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v5}, Lcom/anansimobile/nge/IAB/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/anansimobile/nge/IAB/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 448
    new-instance v6, Lcom/anansimobile/nge/IAB/util/IabResult;

    const/16 v8, -0x3ed

    const-string/jumbo v9, "User canceled."

    invoke-direct {v6, v8, v9}, Lcom/anansimobile/nge/IAB/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 449
    .restart local v6    # "result":Lcom/anansimobile/nge/IAB/util/IabResult;
    iget-object v8, p0, Lcom/anansimobile/nge/IAB/util/IabHelper;->mPurchaseListener:Lcom/anansimobile/nge/IAB/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/anansimobile/nge/IAB/util/IabHelper;->mPurchaseListener:Lcom/anansimobile/nge/IAB/util/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v9, 0x0

    invoke-interface {v8, v6, v9}, Lcom/anansimobile/nge/IAB/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/anansimobile/nge/IAB/util/IabResult;Lcom/anansimobile/nge/IAB/util/Purchase;)V

    goto/16 :goto_1

    .line 452
    .end local v6    # "result":Lcom/anansimobile/nge/IAB/util/IabResult;
    :cond_c
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Purchase failed. Result code: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ". Response: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 453
    invoke-static {v5}, Lcom/anansimobile/nge/IAB/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 452
    invoke-virtual {p0, v8}, Lcom/anansimobile/nge/IAB/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 454
    new-instance v6, Lcom/anansimobile/nge/IAB/util/IabResult;

    const/16 v8, -0x3ee

    const-string/jumbo v9, "Unknown purchase response."

    invoke-direct {v6, v8, v9}, Lcom/anansimobile/nge/IAB/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 455
    .restart local v6    # "result":Lcom/anansimobile/nge/IAB/util/IabResult;
    iget-object v8, p0, Lcom/anansimobile/nge/IAB/util/IabHelper;->mPurchaseListener:Lcom/anansimobile/nge/IAB/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/anansimobile/nge/IAB/util/IabHelper;->mPurchaseListener:Lcom/anansimobile/nge/IAB/util/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v9, 0x0

    invoke-interface {v8, v6, v9}, Lcom/anansimobile/nge/IAB/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/anansimobile/nge/IAB/util/IabResult;Lcom/anansimobile/nge/IAB/util/Purchase;)V

    goto/16 :goto_1

    .line 426
    .end local v6    # "result":Lcom/anansimobile/nge/IAB/util/IabResult;
    .restart local v3    # "purchase":Lcom/anansimobile/nge/IAB/util/Purchase;
    :catch_1
    move-exception v1

    move-object v2, v3

    .end local v3    # "purchase":Lcom/anansimobile/nge/IAB/util/Purchase;
    .restart local v2    # "purchase":Lcom/anansimobile/nge/IAB/util/Purchase;
    goto/16 :goto_2
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/anansimobile/nge/IAB/util/IabHelper$OnIabPurchaseFinishedListener;)V
    .locals 6
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "listener"    # Lcom/anansimobile/nge/IAB/util/IabHelper$OnIabPurchaseFinishedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 303
    const-string/jumbo v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/anansimobile/nge/IAB/util/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/anansimobile/nge/IAB/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 304
    return-void
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/anansimobile/nge/IAB/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    .locals 13
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "listener"    # Lcom/anansimobile/nge/IAB/util/IabHelper$OnIabPurchaseFinishedListener;
    .param p5, "extraData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 324
    const-string/jumbo v1, "launchPurchaseFlow"

    invoke-virtual {p0, v1}, Lcom/anansimobile/nge/IAB/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 325
    const-string/jumbo v1, "launchPurchaseFlow"

    invoke-virtual {p0, v1}, Lcom/anansimobile/nge/IAB/util/IabHelper;->flagStartAsync(Ljava/lang/String;)V

    .line 329
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Constructing buy intent for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/anansimobile/nge/IAB/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 330
    iget-object v1, p0, Lcom/anansimobile/nge/IAB/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/anansimobile/nge/IAB/util/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "inapp"

    move-object v4, p2

    move-object/from16 v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/android/vending/billing/IInAppBillingService;->getBuyIntent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    .line 331
    .local v8, "buyIntentBundle":Landroid/os/Bundle;
    invoke-virtual {p0, v8}, Lcom/anansimobile/nge/IAB/util/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v11

    .line 332
    .local v11, "response":I
    if-eqz v11, :cond_0

    .line 333
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unable to buy item, Error response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v11}, Lcom/anansimobile/nge/IAB/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/anansimobile/nge/IAB/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 335
    new-instance v12, Lcom/anansimobile/nge/IAB/util/IabResult;

    const-string/jumbo v1, "Unable to buy item"

    invoke-direct {v12, v11, v1}, Lcom/anansimobile/nge/IAB/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 336
    .local v12, "result":Lcom/anansimobile/nge/IAB/util/IabResult;
    if-eqz p4, :cond_0

    const/4 v1, 0x0

    move-object/from16 v0, p4

    invoke-interface {v0, v12, v1}, Lcom/anansimobile/nge/IAB/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/anansimobile/nge/IAB/util/IabResult;Lcom/anansimobile/nge/IAB/util/Purchase;)V

    .line 339
    .end local v12    # "result":Lcom/anansimobile/nge/IAB/util/IabResult;
    :cond_0
    const-string/jumbo v1, "BUY_INTENT"

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/app/PendingIntent;

    .line 340
    .local v10, "pendingIntent":Landroid/app/PendingIntent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Launching buy intent for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". Request code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/anansimobile/nge/IAB/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 341
    move/from16 v0, p3

    iput v0, p0, Lcom/anansimobile/nge/IAB/util/IabHelper;->mRequestCode:I

    .line 342
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/anansimobile/nge/IAB/util/IabHelper;->mPurchaseListener:Lcom/anansimobile/nge/IAB/util/IabHelper$OnIabPurchaseFinishedListener;

    .line 343
    invoke-virtual {v10}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v2

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const/4 v1, 0x0

    .line 345
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v1, 0x0

    .line 346
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object v1, p1

    move/from16 v3, p3

    .line 343
    invoke-virtual/range {v1 .. v7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 362
    .end local v8    # "buyIntentBundle":Landroid/os/Bundle;
    .end local v10    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v11    # "response":I
    :cond_1
    :goto_0
    return-void

    .line 348
    :catch_0
    move-exception v9

    .line 349
    .local v9, "e":Landroid/content/IntentSender$SendIntentException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SendIntentException while launching purchase flow for sku "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/anansimobile/nge/IAB/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 350
    invoke-virtual {v9}, Landroid/content/IntentSender$SendIntentException;->printStackTrace()V

    .line 352
    new-instance v12, Lcom/anansimobile/nge/IAB/util/IabResult;

    const/16 v1, -0x3ec

    const-string/jumbo v2, "Failed to send intent."

    invoke-direct {v12, v1, v2}, Lcom/anansimobile/nge/IAB/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 353
    .restart local v12    # "result":Lcom/anansimobile/nge/IAB/util/IabResult;
    if-eqz p4, :cond_1

    const/4 v1, 0x0

    move-object/from16 v0, p4

    invoke-interface {v0, v12, v1}, Lcom/anansimobile/nge/IAB/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/anansimobile/nge/IAB/util/IabResult;Lcom/anansimobile/nge/IAB/util/Purchase;)V

    goto :goto_0

    .line 355
    .end local v9    # "e":Landroid/content/IntentSender$SendIntentException;
    .end local v12    # "result":Lcom/anansimobile/nge/IAB/util/IabResult;
    :catch_1
    move-exception v9

    .line 356
    .local v9, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "RemoteException while launching purchase flow for sku "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/anansimobile/nge/IAB/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 357
    invoke-virtual {v9}, Landroid/os/RemoteException;->printStackTrace()V

    .line 359
    new-instance v12, Lcom/anansimobile/nge/IAB/util/IabResult;

    const/16 v1, -0x3e9

    const-string/jumbo v2, "Remote exception while starting purchase flow"

    invoke-direct {v12, v1, v2}, Lcom/anansimobile/nge/IAB/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 360
    .restart local v12    # "result":Lcom/anansimobile/nge/IAB/util/IabResult;
    if-eqz p4, :cond_1

    const/4 v1, 0x0

    move-object/from16 v0, p4

    invoke-interface {v0, v12, v1}, Lcom/anansimobile/nge/IAB/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/anansimobile/nge/IAB/util/IabResult;Lcom/anansimobile/nge/IAB/util/Purchase;)V

    goto :goto_0
.end method

.method logDebug(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 880
    iget-boolean v0, p0, Lcom/anansimobile/nge/IAB/util/IabHelper;->mDebugLog:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anansimobile/nge/IAB/util/IabHelper;->mDebugTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    :cond_0
    return-void
.end method

.method logError(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 884
    iget-object v0, p0, Lcom/anansimobile/nge/IAB/util/IabHelper;->mDebugTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "In-app billing error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    return-void
.end method

.method logWarn(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 888
    iget-object v0, p0, Lcom/anansimobile/nge/IAB/util/IabHelper;->mDebugTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "In-app billing warning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    return-void
.end method

.method public queryInventory(ZLjava/util/List;)Lcom/anansimobile/nge/IAB/util/Inventory;
    .locals 6
    .param p1, "querySkuDetails"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/anansimobile/nge/IAB/util/Inventory;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/anansimobile/nge/IAB/util/IabException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 472
    .local p2, "moreSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v3, "queryInventory"

    invoke-virtual {p0, v3}, Lcom/anansimobile/nge/IAB/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 474
    :try_start_0
    new-instance v1, Lcom/anansimobile/nge/IAB/util/Inventory;

    invoke-direct {v1}, Lcom/anansimobile/nge/IAB/util/Inventory;-><init>()V

    .line 475
    .local v1, "inv":Lcom/anansimobile/nge/IAB/util/Inventory;
    invoke-virtual {p0, v1}, Lcom/anansimobile/nge/IAB/util/IabHelper;->queryPurchases(Lcom/anansimobile/nge/IAB/util/Inventory;)I

    move-result v2

    .line 476
    .local v2, "r":I
    if-eqz v2, :cond_0

    .line 477
    new-instance v3, Lcom/anansimobile/nge/IAB/util/IabException;

    const-string/jumbo v4, "Error refreshing inventory (querying owned items)."

    invoke-direct {v3, v2, v4}, Lcom/anansimobile/nge/IAB/util/IabException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 488
    .end local v1    # "inv":Lcom/anansimobile/nge/IAB/util/Inventory;
    .end local v2    # "r":I
    :catch_0
    move-exception v0

    .line 489
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v3, Lcom/anansimobile/nge/IAB/util/IabException;

    const/16 v4, -0x3e9

    const-string/jumbo v5, "Remote exception while refreshing inventory."

    invoke-direct {v3, v4, v5, v0}, Lcom/anansimobile/nge/IAB/util/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 480
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "inv":Lcom/anansimobile/nge/IAB/util/Inventory;
    .restart local v2    # "r":I
    :cond_0
    if-eqz p1, :cond_1

    .line 481
    :try_start_1
    invoke-virtual {p0, v1, p2}, Lcom/anansimobile/nge/IAB/util/IabHelper;->querySkuDetails(Lcom/anansimobile/nge/IAB/util/Inventory;Ljava/util/List;)I

    move-result v2

    .line 482
    if-eqz v2, :cond_1

    .line 483
    new-instance v3, Lcom/anansimobile/nge/IAB/util/IabException;

    const-string/jumbo v4, "Error refreshing inventory (querying prices of items)."

    invoke-direct {v3, v2, v4}, Lcom/anansimobile/nge/IAB/util/IabException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 491
    .end local v1    # "inv":Lcom/anansimobile/nge/IAB/util/Inventory;
    .end local v2    # "r":I
    :catch_1
    move-exception v0

    .line 492
    .local v0, "e":Lorg/json/JSONException;
    new-instance v3, Lcom/anansimobile/nge/IAB/util/IabException;

    const/16 v4, -0x3ea

    const-string/jumbo v5, "Error parsing JSON response while refreshing inventory."

    invoke-direct {v3, v4, v5, v0}, Lcom/anansimobile/nge/IAB/util/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 486
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "inv":Lcom/anansimobile/nge/IAB/util/Inventory;
    .restart local v2    # "r":I
    :cond_1
    return-object v1
.end method

.method public queryInventoryAsync(Lcom/anansimobile/nge/IAB/util/IabHelper$QueryInventoryFinishedListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/anansimobile/nge/IAB/util/IabHelper$QueryInventoryFinishedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 553
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/anansimobile/nge/IAB/util/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lcom/anansimobile/nge/IAB/util/IabHelper$QueryInventoryFinishedListener;)V

    .line 554
    return-void
.end method

.method public queryInventoryAsync(ZLcom/anansimobile/nge/IAB/util/IabHelper$QueryInventoryFinishedListener;)V
    .locals 1
    .param p1, "querySkuDetails"    # Z
    .param p2, "listener"    # Lcom/anansimobile/nge/IAB/util/IabHelper$QueryInventoryFinishedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 557
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/anansimobile/nge/IAB/util/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lcom/anansimobile/nge/IAB/util/IabHelper$QueryInventoryFinishedListener;)V

    .line 558
    return-void
.end method

.method public queryInventoryAsync(ZLjava/util/List;Lcom/anansimobile/nge/IAB/util/IabHelper$QueryInventoryFinishedListener;)V
    .locals 7
    .param p1, "querySkuDetails"    # Z
    .param p3, "listener"    # Lcom/anansimobile/nge/IAB/util/IabHelper$QueryInventoryFinishedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/anansimobile/nge/IAB/util/IabHelper$QueryInventoryFinishedListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 523
    .local p2, "moreSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    .line 524
    .local v4, "handler":Landroid/os/Handler;
    const-string/jumbo v0, "queryInventory"

    invoke-virtual {p0, v0}, Lcom/anansimobile/nge/IAB/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 525
    const-string/jumbo v0, "refresh inventory"

    invoke-virtual {p0, v0}, Lcom/anansimobile/nge/IAB/util/IabHelper;->flagStartAsync(Ljava/lang/String;)V

    .line 526
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/anansimobile/nge/IAB/util/IabHelper$2;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/anansimobile/nge/IAB/util/IabHelper$2;-><init>(Lcom/anansimobile/nge/IAB/util/IabHelper;ZLjava/util/List;Landroid/os/Handler;Lcom/anansimobile/nge/IAB/util/IabHelper$QueryInventoryFinishedListener;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 549
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 550
    return-void
.end method

.method queryPurchases(Lcom/anansimobile/nge/IAB/util/Inventory;)I
    .locals 21
    .param p1, "inv"    # Lcom/anansimobile/nge/IAB/util/Inventory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 738
    const-string/jumbo v17, "Querying owned items..."

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/anansimobile/nge/IAB/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 739
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Package name: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/anansimobile/nge/IAB/util/IabHelper;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/anansimobile/nge/IAB/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 740
    const/4 v5, 0x1

    .line 741
    .local v5, "hasMore":Z
    const/16 v16, 0x0

    .line 742
    .local v16, "verificationFailed":Z
    const/4 v4, 0x0

    .line 745
    .local v4, "continueToken":Ljava/lang/String;
    :cond_0
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Calling getPurchases with continuation token: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/anansimobile/nge/IAB/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 746
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/anansimobile/nge/IAB/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    move-object/from16 v17, v0

    const/16 v18, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/anansimobile/nge/IAB/util/IabHelper;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v20, "inapp"

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/vending/billing/IInAppBillingService;->getPurchases(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .line 749
    .local v7, "ownedItems":Landroid/os/Bundle;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/anansimobile/nge/IAB/util/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v12

    .line 750
    .local v12, "response":I
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Owned items response: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/anansimobile/nge/IAB/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 751
    if-eqz v12, :cond_1

    .line 752
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "getPurchases() failed: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {v12}, Lcom/anansimobile/nge/IAB/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/anansimobile/nge/IAB/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 797
    .end local v12    # "response":I
    :goto_0
    return v12

    .line 755
    .restart local v12    # "response":I
    :cond_1
    const-string/jumbo v17, "INAPP_PURCHASE_ITEM_LIST"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2

    const-string/jumbo v17, "INAPP_PURCHASE_DATA_LIST"

    .line 756
    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2

    const-string/jumbo v17, "INAPP_DATA_SIGNATURE_LIST"

    .line 757
    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 758
    :cond_2
    const-string/jumbo v17, "Bundle returned from getPurchases() doesn\'t contain required fields."

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/anansimobile/nge/IAB/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 759
    const/16 v12, -0x3ea

    goto :goto_0

    .line 762
    :cond_3
    const-string/jumbo v17, "INAPP_PURCHASE_ITEM_LIST"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 764
    .local v8, "ownedSkus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v17, "INAPP_PURCHASE_DATA_LIST"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    .line 766
    .local v11, "purchaseDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v17, "INAPP_DATA_SIGNATURE_LIST"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v14

    .line 769
    .local v14, "signatureList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v6, v0, :cond_6

    .line 770
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 771
    .local v10, "purchaseData":Ljava/lang/String;
    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 772
    .local v13, "signature":Ljava/lang/String;
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 773
    .local v15, "sku":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/anansimobile/nge/IAB/util/IabHelper;->mSignatureBase64:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v0, v10, v13}, Lcom/anansimobile/nge/IAB/util/Security;->verifyPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 774
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Sku is owned: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/anansimobile/nge/IAB/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 775
    new-instance v9, Lcom/anansimobile/nge/IAB/util/Purchase;

    invoke-direct {v9, v10, v13}, Lcom/anansimobile/nge/IAB/util/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    .local v9, "purchase":Lcom/anansimobile/nge/IAB/util/Purchase;
    invoke-virtual {v9}, Lcom/anansimobile/nge/IAB/util/Purchase;->getToken()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 778
    const-string/jumbo v17, "BUG: empty/null token!"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/anansimobile/nge/IAB/util/IabHelper;->logWarn(Ljava/lang/String;)V

    .line 779
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Purchase data: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/anansimobile/nge/IAB/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 783
    :cond_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lcom/anansimobile/nge/IAB/util/Inventory;->addPurchase(Lcom/anansimobile/nge/IAB/util/Purchase;)V

    .line 769
    .end local v9    # "purchase":Lcom/anansimobile/nge/IAB/util/Purchase;
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 786
    :cond_5
    const-string/jumbo v17, "Purchase signature verification **FAILED**. Not adding item."

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/anansimobile/nge/IAB/util/IabHelper;->logWarn(Ljava/lang/String;)V

    .line 787
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "   Purchase data: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/anansimobile/nge/IAB/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 788
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "   Signature: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/anansimobile/nge/IAB/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 789
    const/16 v16, 0x1

    goto :goto_2

    .line 793
    .end local v10    # "purchaseData":Ljava/lang/String;
    .end local v13    # "signature":Ljava/lang/String;
    .end local v15    # "sku":Ljava/lang/String;
    :cond_6
    const-string/jumbo v17, "INAPP_CONTINUATION_TOKEN"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 794
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Continuation token: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/anansimobile/nge/IAB/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 795
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 797
    if-eqz v16, :cond_7

    const/16 v17, -0x3eb

    :goto_3
    move/from16 v12, v17

    goto/16 :goto_0

    :cond_7
    const/16 v17, 0x0

    goto :goto_3
.end method

.method querySkuDetails(Lcom/anansimobile/nge/IAB/util/Inventory;Ljava/util/List;)I
    .locals 11
    .param p1, "inv"    # Lcom/anansimobile/nge/IAB/util/Inventory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anansimobile/nge/IAB/util/Inventory;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .local p2, "moreSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 801
    const-string/jumbo v7, "Querying SKU details."

    invoke-virtual {p0, v7}, Lcom/anansimobile/nge/IAB/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 802
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 803
    .local v5, "skuList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/anansimobile/nge/IAB/util/Inventory;->getAllOwnedSkus()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 804
    if-eqz p2, :cond_0

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 806
    :cond_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_2

    .line 807
    const-string/jumbo v7, "queryPrices: nothing to do because there are no SKUs."

    invoke-virtual {p0, v7}, Lcom/anansimobile/nge/IAB/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 836
    :cond_1
    :goto_0
    return v2

    .line 811
    :cond_2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 812
    .local v1, "querySkus":Landroid/os/Bundle;
    const-string/jumbo v7, "ITEM_ID_LIST"

    invoke-virtual {v1, v7, v5}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 813
    iget-object v7, p0, Lcom/anansimobile/nge/IAB/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v8, 0x3

    iget-object v9, p0, Lcom/anansimobile/nge/IAB/util/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "inapp"

    invoke-interface {v7, v8, v9, v10, v1}, Lcom/android/vending/billing/IInAppBillingService;->getSkuDetails(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    .line 816
    .local v4, "skuDetails":Landroid/os/Bundle;
    const-string/jumbo v7, "DETAILS_LIST"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 817
    invoke-virtual {p0, v4}, Lcom/anansimobile/nge/IAB/util/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v2

    .line 818
    .local v2, "response":I
    if-eqz v2, :cond_3

    .line 819
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getSkuDetails() failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v2}, Lcom/anansimobile/nge/IAB/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/anansimobile/nge/IAB/util/IabHelper;->logDebug(Ljava/lang/String;)V

    goto :goto_0

    .line 823
    :cond_3
    const-string/jumbo v7, "getSkuDetails() returned a bundle with neither an error nor a detail list."

    invoke-virtual {p0, v7}, Lcom/anansimobile/nge/IAB/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 824
    const/16 v2, -0x3ea

    goto :goto_0

    .line 828
    .end local v2    # "response":I
    :cond_4
    const-string/jumbo v7, "DETAILS_LIST"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 831
    .local v3, "responseList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 832
    .local v6, "thisResponse":Ljava/lang/String;
    new-instance v0, Lcom/anansimobile/nge/IAB/util/SkuDetails;

    invoke-direct {v0, v6}, Lcom/anansimobile/nge/IAB/util/SkuDetails;-><init>(Ljava/lang/String;)V

    .line 833
    .local v0, "d":Lcom/anansimobile/nge/IAB/util/SkuDetails;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Got sku details: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/anansimobile/nge/IAB/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 834
    invoke-virtual {p1, v0}, Lcom/anansimobile/nge/IAB/util/Inventory;->addSkuDetails(Lcom/anansimobile/nge/IAB/util/SkuDetails;)V

    goto :goto_1
.end method

.method public startSetup(Lcom/anansimobile/nge/IAB/util/IabHelper$OnIabSetupFinishedListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/anansimobile/nge/IAB/util/IabHelper$OnIabSetupFinishedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 206
    iget-boolean v1, p0, Lcom/anansimobile/nge/IAB/util/IabHelper;->mSetupDone:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/Exception;

    const-string/jumbo v2, "IAB helper is already set up."

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 209
    :cond_0
    const-string/jumbo v1, "Starting in-app billing setup."

    invoke-virtual {p0, v1}, Lcom/anansimobile/nge/IAB/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 210
    new-instance v1, Lcom/anansimobile/nge/IAB/util/IabHelper$1;

    invoke-direct {v1, p0, p1}, Lcom/anansimobile/nge/IAB/util/IabHelper$1;-><init>(Lcom/anansimobile/nge/IAB/util/IabHelper;Lcom/anansimobile/nge/IAB/util/IabHelper$OnIabSetupFinishedListener;)V

    iput-object v1, p0, Lcom/anansimobile/nge/IAB/util/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    .line 253
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 254
    .local v0, "serviceIntent":Landroid/content/Intent;
    const-string/jumbo v1, "com.android.vending"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 255
    iget-object v1, p0, Lcom/anansimobile/nge/IAB/util/IabHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/anansimobile/nge/IAB/util/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 257
    return-void
.end method
