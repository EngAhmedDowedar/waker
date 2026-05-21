.class public Lcom/anansimobile/nge/IAB/util_v2/ResponseHandler;
.super Ljava/lang/Object;
.source "ResponseHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ResponseHandler"

.field private static sPurchaseObserver:Lcom/anansimobile/nge/IAB/util_v2/PurchaseObserver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/anansimobile/nge/IAB/util_v2/PurchaseObserver;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/anansimobile/nge/IAB/util_v2/ResponseHandler;->sPurchaseObserver:Lcom/anansimobile/nge/IAB/util_v2/PurchaseObserver;

    return-object v0
.end method

.method public static buyPageIntentResponse(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .locals 1
    .param p0, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 75
    sget-object v0, Lcom/anansimobile/nge/IAB/util_v2/ResponseHandler;->sPurchaseObserver:Lcom/anansimobile/nge/IAB/util_v2/PurchaseObserver;

    if-nez v0, :cond_0

    .line 82
    :goto_0
    return-void

    .line 81
    :cond_0
    sget-object v0, Lcom/anansimobile/nge/IAB/util_v2/ResponseHandler;->sPurchaseObserver:Lcom/anansimobile/nge/IAB/util_v2/PurchaseObserver;

    invoke-virtual {v0, p0, p1}, Lcom/anansimobile/nge/IAB/util_v2/PurchaseObserver;->startBuyPageActivity(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static checkBillingSupportedResponse(ZLjava/lang/String;)V
    .locals 1
    .param p0, "supported"    # Z
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 59
    sget-object v0, Lcom/anansimobile/nge/IAB/util_v2/ResponseHandler;->sPurchaseObserver:Lcom/anansimobile/nge/IAB/util_v2/PurchaseObserver;

    if-eqz v0, :cond_0

    .line 60
    sget-object v0, Lcom/anansimobile/nge/IAB/util_v2/ResponseHandler;->sPurchaseObserver:Lcom/anansimobile/nge/IAB/util_v2/PurchaseObserver;

    invoke-virtual {v0, p0, p1}, Lcom/anansimobile/nge/IAB/util_v2/PurchaseObserver;->onBillingSupported(ZLjava/lang/String;)V

    .line 62
    :cond_0
    return-void
.end method

.method public static purchaseResponse(Landroid/content/Context;Lcom/anansimobile/nge/IAB/util_v2/Consts$PurchaseState;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "purchaseState"    # Lcom/anansimobile/nge/IAB/util_v2/Consts$PurchaseState;
    .param p2, "productId"    # Ljava/lang/String;
    .param p3, "orderId"    # Ljava/lang/String;
    .param p4, "purchaseTime"    # J
    .param p6, "developerPayload"    # Ljava/lang/String;

    .prologue
    .line 112
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/anansimobile/nge/IAB/util_v2/ResponseHandler$1;

    move-object v2, p0

    move-object v3, p3

    move-object v4, p2

    move-object v5, p1

    move-wide v6, p4

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/anansimobile/nge/IAB/util_v2/ResponseHandler$1;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/anansimobile/nge/IAB/util_v2/Consts$PurchaseState;JLjava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 129
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 130
    return-void
.end method

.method public static declared-synchronized register(Lcom/anansimobile/nge/IAB/util_v2/PurchaseObserver;)V
    .locals 2
    .param p0, "observer"    # Lcom/anansimobile/nge/IAB/util_v2/PurchaseObserver;

    .prologue
    .line 41
    const-class v0, Lcom/anansimobile/nge/IAB/util_v2/ResponseHandler;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/anansimobile/nge/IAB/util_v2/ResponseHandler;->sPurchaseObserver:Lcom/anansimobile/nge/IAB/util_v2/PurchaseObserver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    monitor-exit v0

    return-void

    .line 41
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static responseCodeReceived(Landroid/content/Context;Lcom/anansimobile/nge/IAB/util_v2/BillingService$RequestPurchase;Lcom/anansimobile/nge/IAB/util_v2/Consts$ResponseCode;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "request"    # Lcom/anansimobile/nge/IAB/util_v2/BillingService$RequestPurchase;
    .param p2, "responseCode"    # Lcom/anansimobile/nge/IAB/util_v2/Consts$ResponseCode;

    .prologue
    .line 147
    sget-object v0, Lcom/anansimobile/nge/IAB/util_v2/ResponseHandler;->sPurchaseObserver:Lcom/anansimobile/nge/IAB/util_v2/PurchaseObserver;

    if-eqz v0, :cond_0

    .line 148
    sget-object v0, Lcom/anansimobile/nge/IAB/util_v2/ResponseHandler;->sPurchaseObserver:Lcom/anansimobile/nge/IAB/util_v2/PurchaseObserver;

    invoke-virtual {v0, p1, p2}, Lcom/anansimobile/nge/IAB/util_v2/PurchaseObserver;->onRequestPurchaseResponse(Lcom/anansimobile/nge/IAB/util_v2/BillingService$RequestPurchase;Lcom/anansimobile/nge/IAB/util_v2/Consts$ResponseCode;)V

    .line 150
    :cond_0
    return-void
.end method

.method public static responseCodeReceived(Landroid/content/Context;Lcom/anansimobile/nge/IAB/util_v2/BillingService$RestoreTransactions;Lcom/anansimobile/nge/IAB/util_v2/Consts$ResponseCode;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "request"    # Lcom/anansimobile/nge/IAB/util_v2/BillingService$RestoreTransactions;
    .param p2, "responseCode"    # Lcom/anansimobile/nge/IAB/util_v2/Consts$ResponseCode;

    .prologue
    .line 163
    sget-object v0, Lcom/anansimobile/nge/IAB/util_v2/ResponseHandler;->sPurchaseObserver:Lcom/anansimobile/nge/IAB/util_v2/PurchaseObserver;

    if-eqz v0, :cond_0

    .line 164
    sget-object v0, Lcom/anansimobile/nge/IAB/util_v2/ResponseHandler;->sPurchaseObserver:Lcom/anansimobile/nge/IAB/util_v2/PurchaseObserver;

    invoke-virtual {v0, p1, p2}, Lcom/anansimobile/nge/IAB/util_v2/PurchaseObserver;->onRestoreTransactionsResponse(Lcom/anansimobile/nge/IAB/util_v2/BillingService$RestoreTransactions;Lcom/anansimobile/nge/IAB/util_v2/Consts$ResponseCode;)V

    .line 166
    :cond_0
    return-void
.end method

.method public static declared-synchronized unregister(Lcom/anansimobile/nge/IAB/util_v2/PurchaseObserver;)V
    .locals 2
    .param p0, "observer"    # Lcom/anansimobile/nge/IAB/util_v2/PurchaseObserver;

    .prologue
    .line 49
    const-class v0, Lcom/anansimobile/nge/IAB/util_v2/ResponseHandler;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/anansimobile/nge/IAB/util_v2/ResponseHandler;->sPurchaseObserver:Lcom/anansimobile/nge/IAB/util_v2/PurchaseObserver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    monitor-exit v0

    return-void

    .line 49
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
