.class public Lcom/anansimobile/nge/IAB/util_v2/BillingService;
.super Landroid/app/Service;
.source "BillingService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anansimobile/nge/IAB/util_v2/BillingService$RestoreTransactions;,
        Lcom/anansimobile/nge/IAB/util_v2/BillingService$GetPurchaseInformation;,
        Lcom/anansimobile/nge/IAB/util_v2/BillingService$ConfirmNotifications;,
        Lcom/anansimobile/nge/IAB/util_v2/BillingService$RequestPurchase;,
        Lcom/anansimobile/nge/IAB/util_v2/BillingService$CheckBillingSupported;,
        Lcom/anansimobile/nge/IAB/util_v2/BillingService$BillingRequest;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BillingService"

.field private static mPendingRequests:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/anansimobile/nge/IAB/util_v2/BillingService$BillingRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static mSentRequests:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/anansimobile/nge/IAB/util_v2/BillingService$BillingRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static mService:Lcom/android/vending/billing/IMarketBillingService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/anansimobile/nge/IAB/util_v2/BillingService;->mPendingRequests:Ljava/util/LinkedList;

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/anansimobile/nge/IAB/util_v2/BillingService;->mSentRequests:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 402
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 403
    return-void
.end method

.method static synthetic access$000(Lcom/anansimobile/nge/IAB/util_v2/BillingService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/anansimobile/nge/IAB/util_v2/BillingService;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/anansimobile/nge/IAB/util_v2/BillingService;->bindToMarketBillingService()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100()Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/anansimobile/nge/IAB/util_v2/BillingService;->mPendingRequests:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$200()Lcom/android/vending/billing/IMarketBillingService;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/anansimobile/nge/IAB/util_v2/BillingService;->mService:Lcom/android/vending/billing/IMarketBillingService;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/vending/billing/IMarketBillingService;)Lcom/android/vending/billing/IMarketBillingService;
    .locals 0
    .param p0, "x0"    # Lcom/android/vending/billing/IMarketBillingService;

    .prologue
    .line 49
    sput-object p0, Lcom/anansimobile/nge/IAB/util_v2/BillingService;->mService:Lcom/android/vending/billing/IMarketBillingService;

    return-object p0
.end method

.method static synthetic access$300()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/anansimobile/nge/IAB/util_v2/BillingService;->mSentRequests:Ljava/util/HashMap;

    return-object v0
.end method

.method private bindToMarketBillingService()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 462
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "com.android.vending.billing.MarketBillingService.BIND"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-virtual {p0, v3, p0, v4}, Lcom/anansimobile/nge/IAB/util_v2/BillingService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 467
    .local v0, "bindResult":Z
    if-eqz v0, :cond_0

    .line 475
    .end local v0    # "bindResult":Z
    :goto_0
    return v2

    .line 470
    .restart local v0    # "bindResult":Z
    :cond_0
    const-string/jumbo v2, "BillingService"

    const-string/jumbo v3, "Could not bind to service."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 475
    .end local v0    # "bindResult":Z
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 472
    :catch_0
    move-exception v1

    .line 473
    .local v1, "e":Ljava/lang/SecurityException;
    const-string/jumbo v2, "BillingService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Security exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private checkResponseCode(JLcom/anansimobile/nge/IAB/util_v2/Consts$ResponseCode;)V
    .locals 3
    .param p1, "requestId"    # J
    .param p3, "responseCode"    # Lcom/anansimobile/nge/IAB/util_v2/Consts$ResponseCode;

    .prologue
    .line 598
    sget-object v1, Lcom/anansimobile/nge/IAB/util_v2/BillingService;->mSentRequests:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anansimobile/nge/IAB/util_v2/BillingService$BillingRequest;

    .line 599
    .local v0, "request":Lcom/anansimobile/nge/IAB/util_v2/BillingService$BillingRequest;
    if-eqz v0, :cond_0

    .line 603
    invoke-virtual {v0, p3}, Lcom/anansimobile/nge/IAB/util_v2/BillingService$BillingRequest;->responseCodeReceived(Lcom/anansimobile/nge/IAB/util_v2/Consts$ResponseCode;)V

    .line 605
    :cond_0
    sget-object v1, Lcom/anansimobile/nge/IAB/util_v2/BillingService;->mSentRequests:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    return-void
.end method

.method private confirmNotifications(I[Ljava/lang/String;)Z
    .locals 1
    .param p1, "startId"    # I
    .param p2, "notifyIds"    # [Ljava/lang/String;

    .prologue
    .line 536
    new-instance v0, Lcom/anansimobile/nge/IAB/util_v2/BillingService$ConfirmNotifications;

    invoke-direct {v0, p0, p1, p2}, Lcom/anansimobile/nge/IAB/util_v2/BillingService$ConfirmNotifications;-><init>(Lcom/anansimobile/nge/IAB/util_v2/BillingService;I[Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/anansimobile/nge/IAB/util_v2/BillingService$ConfirmNotifications;->runRequest()Z

    move-result v0

    return v0
.end method

.method private getPurchaseInformation(I[Ljava/lang/String;)Z
    .locals 1
    .param p1, "startId"    # I
    .param p2, "notifyIds"    # [Ljava/lang/String;

    .prologue
    .line 553
    new-instance v0, Lcom/anansimobile/nge/IAB/util_v2/BillingService$GetPurchaseInformation;

    invoke-direct {v0, p0, p1, p2}, Lcom/anansimobile/nge/IAB/util_v2/BillingService$GetPurchaseInformation;-><init>(Lcom/anansimobile/nge/IAB/util_v2/BillingService;I[Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/anansimobile/nge/IAB/util_v2/BillingService$GetPurchaseInformation;->runRequest()Z

    move-result v0

    return v0
.end method

.method private purchaseStateChanged(ILjava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "startId"    # I
    .param p2, "signedData"    # Ljava/lang/String;
    .param p3, "signature"    # Ljava/lang/String;

    .prologue
    .line 566
    invoke-static {p2, p3}, Lcom/anansimobile/nge/IAB/util_v2/Security;->verifyPurchase(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 567
    .local v9, "purchases":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/anansimobile/nge/IAB/util_v2/Security$VerifiedPurchase;>;"
    if-nez v9, :cond_1

    .line 583
    :cond_0
    :goto_0
    return-void

    .line 571
    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 572
    .local v8, "notifyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/anansimobile/nge/IAB/util_v2/Security$VerifiedPurchase;

    .line 573
    .local v10, "vp":Lcom/anansimobile/nge/IAB/util_v2/Security$VerifiedPurchase;
    iget-object v0, v10, Lcom/anansimobile/nge/IAB/util_v2/Security$VerifiedPurchase;->notificationId:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 574
    iget-object v0, v10, Lcom/anansimobile/nge/IAB/util_v2/Security$VerifiedPurchase;->notificationId:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 576
    :cond_2
    iget-object v1, v10, Lcom/anansimobile/nge/IAB/util_v2/Security$VerifiedPurchase;->purchaseState:Lcom/anansimobile/nge/IAB/util_v2/Consts$PurchaseState;

    iget-object v2, v10, Lcom/anansimobile/nge/IAB/util_v2/Security$VerifiedPurchase;->productId:Ljava/lang/String;

    iget-object v3, v10, Lcom/anansimobile/nge/IAB/util_v2/Security$VerifiedPurchase;->orderId:Ljava/lang/String;

    iget-wide v4, v10, Lcom/anansimobile/nge/IAB/util_v2/Security$VerifiedPurchase;->purchaseTime:J

    iget-object v6, v10, Lcom/anansimobile/nge/IAB/util_v2/Security$VerifiedPurchase;->developerPayload:Ljava/lang/String;

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/anansimobile/nge/IAB/util_v2/ResponseHandler;->purchaseResponse(Landroid/content/Context;Lcom/anansimobile/nge/IAB/util_v2/Consts$PurchaseState;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_1

    .line 579
    .end local v10    # "vp":Lcom/anansimobile/nge/IAB/util_v2/Security$VerifiedPurchase;
    :cond_3
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 580
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    .line 581
    .local v7, "notifyIds":[Ljava/lang/String;
    invoke-direct {p0, p1, v7}, Lcom/anansimobile/nge/IAB/util_v2/BillingService;->confirmNotifications(I[Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private runPendingRequests()V
    .locals 3

    .prologue
    .line 613
    const/4 v0, -0x1

    .line 615
    .local v0, "maxStartId":I
    :cond_0
    :goto_0
    sget-object v2, Lcom/anansimobile/nge/IAB/util_v2/BillingService;->mPendingRequests:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anansimobile/nge/IAB/util_v2/BillingService$BillingRequest;

    .local v1, "request":Lcom/anansimobile/nge/IAB/util_v2/BillingService$BillingRequest;
    if-eqz v1, :cond_3

    .line 616
    invoke-virtual {v1}, Lcom/anansimobile/nge/IAB/util_v2/BillingService$BillingRequest;->runIfConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 618
    sget-object v2, Lcom/anansimobile/nge/IAB/util_v2/BillingService;->mPendingRequests:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    .line 622
    invoke-virtual {v1}, Lcom/anansimobile/nge/IAB/util_v2/BillingService$BillingRequest;->getStartId()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 623
    invoke-virtual {v1}, Lcom/anansimobile/nge/IAB/util_v2/BillingService$BillingRequest;->getStartId()I

    move-result v0

    goto :goto_0

    .line 628
    :cond_1
    invoke-direct {p0}, Lcom/anansimobile/nge/IAB/util_v2/BillingService;->bindToMarketBillingService()Z

    .line 642
    :cond_2
    :goto_1
    return-void

    .line 636
    :cond_3
    if-ltz v0, :cond_2

    .line 640
    invoke-virtual {p0, v0}, Lcom/anansimobile/nge/IAB/util_v2/BillingService;->stopSelf(I)V

    goto :goto_1
.end method


# virtual methods
.method public checkBillingSupported()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 485
    new-instance v0, Lcom/anansimobile/nge/IAB/util_v2/BillingService$CheckBillingSupported;

    invoke-direct {v0, p0}, Lcom/anansimobile/nge/IAB/util_v2/BillingService$CheckBillingSupported;-><init>(Lcom/anansimobile/nge/IAB/util_v2/BillingService;)V

    invoke-virtual {v0}, Lcom/anansimobile/nge/IAB/util_v2/BillingService$CheckBillingSupported;->runRequest()Z

    move-result v0

    return v0
.end method

.method public checkBillingSupported(Ljava/lang/String;)Z
    .locals 1
    .param p1, "itemType"    # Ljava/lang/String;

    .prologue
    .line 495
    new-instance v0, Lcom/anansimobile/nge/IAB/util_v2/BillingService$CheckBillingSupported;

    invoke-direct {v0, p0, p1}, Lcom/anansimobile/nge/IAB/util_v2/BillingService$CheckBillingSupported;-><init>(Lcom/anansimobile/nge/IAB/util_v2/BillingService;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/anansimobile/nge/IAB/util_v2/BillingService$CheckBillingSupported;->runRequest()Z

    move-result v0

    return v0
.end method

.method public handleCommand(Landroid/content/Intent;I)V
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 429
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 433
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v9, "com.example.subscriptions.CONFIRM_NOTIFICATION"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 434
    const-string/jumbo v9, "notification_id"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 435
    .local v2, "notifyIds":[Ljava/lang/String;
    invoke-direct {p0, p2, v2}, Lcom/anansimobile/nge/IAB/util_v2/BillingService;->confirmNotifications(I[Ljava/lang/String;)Z

    .line 450
    .end local v2    # "notifyIds":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 436
    :cond_1
    const-string/jumbo v9, "com.example.subscriptions.GET_PURCHASE_INFORMATION"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 437
    const-string/jumbo v9, "notification_id"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 438
    .local v1, "notifyId":Ljava/lang/String;
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v1, v9, v10

    invoke-direct {p0, p2, v9}, Lcom/anansimobile/nge/IAB/util_v2/BillingService;->getPurchaseInformation(I[Ljava/lang/String;)Z

    goto :goto_0

    .line 439
    .end local v1    # "notifyId":Ljava/lang/String;
    :cond_2
    const-string/jumbo v9, "com.android.vending.billing.PURCHASE_STATE_CHANGED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 440
    const-string/jumbo v9, "inapp_signed_data"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 441
    .local v8, "signedData":Ljava/lang/String;
    const-string/jumbo v9, "inapp_signature"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 442
    .local v7, "signature":Ljava/lang/String;
    invoke-direct {p0, p2, v8, v7}, Lcom/anansimobile/nge/IAB/util_v2/BillingService;->purchaseStateChanged(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 443
    .end local v7    # "signature":Ljava/lang/String;
    .end local v8    # "signedData":Ljava/lang/String;
    :cond_3
    const-string/jumbo v9, "com.android.vending.billing.RESPONSE_CODE"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 444
    const-string/jumbo v9, "request_id"

    const-wide/16 v10, -0x1

    invoke-virtual {p1, v9, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 445
    .local v4, "requestId":J
    const-string/jumbo v9, "response_code"

    sget-object v10, Lcom/anansimobile/nge/IAB/util_v2/Consts$ResponseCode;->RESULT_ERROR:Lcom/anansimobile/nge/IAB/util_v2/Consts$ResponseCode;

    .line 446
    invoke-virtual {v10}, Lcom/anansimobile/nge/IAB/util_v2/Consts$ResponseCode;->ordinal()I

    move-result v10

    .line 445
    invoke-virtual {p1, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 447
    .local v6, "responseCodeIndex":I
    invoke-static {v6}, Lcom/anansimobile/nge/IAB/util_v2/Consts$ResponseCode;->valueOf(I)Lcom/anansimobile/nge/IAB/util_v2/Consts$ResponseCode;

    move-result-object v3

    .line 448
    .local v3, "responseCode":Lcom/anansimobile/nge/IAB/util_v2/Consts$ResponseCode;
    invoke-direct {p0, v4, v5, v3}, Lcom/anansimobile/nge/IAB/util_v2/BillingService;->checkResponseCode(JLcom/anansimobile/nge/IAB/util_v2/Consts$ResponseCode;)V

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 414
    const/4 v0, 0x0

    return-object v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 653
    invoke-static {p2}, Lcom/android/vending/billing/IMarketBillingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v0

    sput-object v0, Lcom/anansimobile/nge/IAB/util_v2/BillingService;->mService:Lcom/android/vending/billing/IMarketBillingService;

    .line 654
    invoke-direct {p0}, Lcom/anansimobile/nge/IAB/util_v2/BillingService;->runPendingRequests()V

    .line 655
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 662
    const-string/jumbo v0, "BillingService"

    const-string/jumbo v1, "Billing service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    const/4 v0, 0x0

    sput-object v0, Lcom/anansimobile/nge/IAB/util_v2/BillingService;->mService:Lcom/android/vending/billing/IMarketBillingService;

    .line 664
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 419
    invoke-virtual {p0, p1, p2}, Lcom/anansimobile/nge/IAB/util_v2/BillingService;->handleCommand(Landroid/content/Intent;I)V

    .line 420
    return-void
.end method

.method public requestPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "productId"    # Ljava/lang/String;
    .param p2, "itemType"    # Ljava/lang/String;
    .param p3, "developerPayload"    # Ljava/lang/String;

    .prologue
    .line 511
    new-instance v0, Lcom/anansimobile/nge/IAB/util_v2/BillingService$RequestPurchase;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/anansimobile/nge/IAB/util_v2/BillingService$RequestPurchase;-><init>(Lcom/anansimobile/nge/IAB/util_v2/BillingService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/anansimobile/nge/IAB/util_v2/BillingService$RequestPurchase;->runRequest()Z

    move-result v0

    return v0
.end method

.method public restoreTransactions()Z
    .locals 1

    .prologue
    .line 521
    new-instance v0, Lcom/anansimobile/nge/IAB/util_v2/BillingService$RestoreTransactions;

    invoke-direct {v0, p0}, Lcom/anansimobile/nge/IAB/util_v2/BillingService$RestoreTransactions;-><init>(Lcom/anansimobile/nge/IAB/util_v2/BillingService;)V

    invoke-virtual {v0}, Lcom/anansimobile/nge/IAB/util_v2/BillingService$RestoreTransactions;->runRequest()Z

    move-result v0

    return v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 406
    invoke-virtual {p0, p1}, Lcom/anansimobile/nge/IAB/util_v2/BillingService;->attachBaseContext(Landroid/content/Context;)V

    .line 407
    return-void
.end method

.method public unbind()V
    .locals 1

    .prologue
    .line 672
    :try_start_0
    invoke-virtual {p0, p0}, Lcom/anansimobile/nge/IAB/util_v2/BillingService;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 676
    :goto_0
    return-void

    .line 673
    :catch_0
    move-exception v0

    goto :goto_0
.end method
