.class public abstract Lcom/anansimobile/nge/IAB/util_v2/PurchaseObserver;
.super Ljava/lang/Object;
.source "PurchaseObserver.java"


# static fields
.field private static final START_INTENT_SENDER_SIG:[Ljava/lang/Class;

.field private static final TAG:Ljava/lang/String; = "PurchaseObserver"


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mHandler:Landroid/os/Handler;

.field private mStartIntentSender:Ljava/lang/reflect/Method;

.field private mStartIntentSenderArgs:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 35
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/IntentSender;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Landroid/content/Intent;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    sput-object v0, Lcom/anansimobile/nge/IAB/util_v2/PurchaseObserver;->START_INTENT_SENDER_SIG:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/anansimobile/nge/IAB/util_v2/PurchaseObserver;->mStartIntentSenderArgs:[Ljava/lang/Object;

    .line 40
    iput-object p1, p0, Lcom/anansimobile/nge/IAB/util_v2/PurchaseObserver;->mActivity:Landroid/app/Activity;

    .line 41
    iput-object p2, p0, Lcom/anansimobile/nge/IAB/util_v2/PurchaseObserver;->mHandler:Landroid/os/Handler;

    .line 42
    invoke-direct {p0}, Lcom/anansimobile/nge/IAB/util_v2/PurchaseObserver;->initCompatibilityLayer()V

    .line 43
    return-void
.end method

.method private initCompatibilityLayer()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 106
    :try_start_0
    iget-object v1, p0, Lcom/anansimobile/nge/IAB/util_v2/PurchaseObserver;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "startIntentSender"

    sget-object v3, Lcom/anansimobile/nge/IAB/util_v2/PurchaseObserver;->START_INTENT_SENDER_SIG:[Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/anansimobile/nge/IAB/util_v2/PurchaseObserver;->mStartIntentSender:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 113
    :goto_0
    return-void

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/SecurityException;
    iput-object v4, p0, Lcom/anansimobile/nge/IAB/util_v2/PurchaseObserver;->mStartIntentSender:Ljava/lang/reflect/Method;

    goto :goto_0

    .line 110
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    iput-object v4, p0, Lcom/anansimobile/nge/IAB/util_v2/PurchaseObserver;->mStartIntentSender:Ljava/lang/reflect/Method;

    goto :goto_0
.end method


# virtual methods
.method public abstract onBillingSupported(ZLjava/lang/String;)V
.end method

.method public abstract onPurchaseStateChange(Lcom/anansimobile/nge/IAB/util_v2/Consts$PurchaseState;Ljava/lang/String;IJLjava/lang/String;)V
.end method

.method public abstract onRequestPurchaseResponse(Lcom/anansimobile/nge/IAB/util_v2/BillingService$RequestPurchase;Lcom/anansimobile/nge/IAB/util_v2/Consts$ResponseCode;)V
.end method

.method public abstract onRestoreTransactionsResponse(Lcom/anansimobile/nge/IAB/util_v2/BillingService$RestoreTransactions;Lcom/anansimobile/nge/IAB/util_v2/Consts$ResponseCode;)V
.end method

.method postPurchaseStateChange(Lcom/anansimobile/nge/IAB/util_v2/Consts$PurchaseState;Ljava/lang/String;IJLjava/lang/String;)V
    .locals 10
    .param p1, "purchaseState"    # Lcom/anansimobile/nge/IAB/util_v2/Consts$PurchaseState;
    .param p2, "itemId"    # Ljava/lang/String;
    .param p3, "quantity"    # I
    .param p4, "purchaseTime"    # J
    .param p6, "developerPayload"    # Ljava/lang/String;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/anansimobile/nge/IAB/util_v2/PurchaseObserver;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/anansimobile/nge/IAB/util_v2/PurchaseObserver$1;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, p4

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/anansimobile/nge/IAB/util_v2/PurchaseObserver$1;-><init>(Lcom/anansimobile/nge/IAB/util_v2/PurchaseObserver;Lcom/anansimobile/nge/IAB/util_v2/Consts$PurchaseState;Ljava/lang/String;IJLjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 161
    return-void
.end method

.method startBuyPageActivity(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .locals 4
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 116
    iget-object v1, p0, Lcom/anansimobile/nge/IAB/util_v2/PurchaseObserver;->mStartIntentSender:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 123
    :try_start_0
    iget-object v1, p0, Lcom/anansimobile/nge/IAB/util_v2/PurchaseObserver;->mStartIntentSenderArgs:[Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v3

    aput-object v3, v1, v2

    .line 124
    iget-object v1, p0, Lcom/anansimobile/nge/IAB/util_v2/PurchaseObserver;->mStartIntentSenderArgs:[Ljava/lang/Object;

    const/4 v2, 0x1

    aput-object p2, v1, v2

    .line 125
    iget-object v1, p0, Lcom/anansimobile/nge/IAB/util_v2/PurchaseObserver;->mStartIntentSenderArgs:[Ljava/lang/Object;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 126
    iget-object v1, p0, Lcom/anansimobile/nge/IAB/util_v2/PurchaseObserver;->mStartIntentSenderArgs:[Ljava/lang/Object;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 127
    iget-object v1, p0, Lcom/anansimobile/nge/IAB/util_v2/PurchaseObserver;->mStartIntentSenderArgs:[Ljava/lang/Object;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 128
    iget-object v1, p0, Lcom/anansimobile/nge/IAB/util_v2/PurchaseObserver;->mStartIntentSender:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/anansimobile/nge/IAB/util_v2/PurchaseObserver;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/anansimobile/nge/IAB/util_v2/PurchaseObserver;->mStartIntentSenderArgs:[Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :goto_0
    return-void

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "PurchaseObserver"

    const-string/jumbo v2, "error starting activity"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 137
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/anansimobile/nge/IAB/util_v2/PurchaseObserver;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, p2}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 138
    :catch_1
    move-exception v0

    .line 139
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    const-string/jumbo v1, "PurchaseObserver"

    const-string/jumbo v2, "error starting activity"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
