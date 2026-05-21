.class public Lcom/anansimobile/nge/IAB/NGStoreKit;
.super Ljava/lang/Object;
.source "NGStoreKit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anansimobile/nge/IAB/NGStoreKit$StoreKitMsgHandler;
    }
.end annotation


# static fields
.field public static final STOREKIT_REQ_PURCHASE:I = 0xfa1

.field private static mConsumeFinishedListener:Lcom/anansimobile/nge/IAB/util/IabHelper$OnConsumeFinishedListener;

.field private static mIabHelper:Lcom/anansimobile/nge/IAB/util/IabHelper;

.field private static mInv:Lcom/anansimobile/nge/IAB/util/Inventory;

.field private static mProductIds:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mPurchaseFinishedLinstener:Lcom/anansimobile/nge/IAB/util/IabHelper$OnIabPurchaseFinishedListener;

.field private static mQueryFinishedListener:Lcom/anansimobile/nge/IAB/util/IabHelper$QueryInventoryFinishedListener;

.field private static mStoreKitMsgHandler:Lcom/anansimobile/nge/IAB/NGStoreKit$StoreKitMsgHandler;

.field private static sCtx:Landroid/content/Context;

.field private static savedProductId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    sput-object v1, Lcom/anansimobile/nge/IAB/NGStoreKit;->mIabHelper:Lcom/anansimobile/nge/IAB/util/IabHelper;

    .line 30
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/anansimobile/nge/IAB/NGStoreKit;->mProductIds:Ljava/util/LinkedList;

    .line 31
    sput-object v1, Lcom/anansimobile/nge/IAB/NGStoreKit;->savedProductId:Ljava/lang/String;

    .line 33
    new-instance v0, Lcom/anansimobile/nge/IAB/NGStoreKit$StoreKitMsgHandler;

    invoke-direct {v0, v1}, Lcom/anansimobile/nge/IAB/NGStoreKit$StoreKitMsgHandler;-><init>(Lcom/anansimobile/nge/IAB/NGStoreKit$1;)V

    sput-object v0, Lcom/anansimobile/nge/IAB/NGStoreKit;->mStoreKitMsgHandler:Lcom/anansimobile/nge/IAB/NGStoreKit$StoreKitMsgHandler;

    .line 35
    sput-object v1, Lcom/anansimobile/nge/IAB/NGStoreKit;->mInv:Lcom/anansimobile/nge/IAB/util/Inventory;

    .line 36
    sput-object v1, Lcom/anansimobile/nge/IAB/NGStoreKit;->sCtx:Landroid/content/Context;

    .line 334
    new-instance v0, Lcom/anansimobile/nge/IAB/NGStoreKit$2;

    invoke-direct {v0}, Lcom/anansimobile/nge/IAB/NGStoreKit$2;-><init>()V

    sput-object v0, Lcom/anansimobile/nge/IAB/NGStoreKit;->mConsumeFinishedListener:Lcom/anansimobile/nge/IAB/util/IabHelper$OnConsumeFinishedListener;

    .line 353
    new-instance v0, Lcom/anansimobile/nge/IAB/NGStoreKit$3;

    invoke-direct {v0}, Lcom/anansimobile/nge/IAB/NGStoreKit$3;-><init>()V

    sput-object v0, Lcom/anansimobile/nge/IAB/NGStoreKit;->mPurchaseFinishedLinstener:Lcom/anansimobile/nge/IAB/util/IabHelper$OnIabPurchaseFinishedListener;

    .line 392
    new-instance v0, Lcom/anansimobile/nge/IAB/NGStoreKit$4;

    invoke-direct {v0}, Lcom/anansimobile/nge/IAB/NGStoreKit$4;-><init>()V

    sput-object v0, Lcom/anansimobile/nge/IAB/NGStoreKit;->mQueryFinishedListener:Lcom/anansimobile/nge/IAB/util/IabHelper$QueryInventoryFinishedListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static HandleActivityResult(IILandroid/content/Intent;)Z
    .locals 5
    .param p0, "requestCode"    # I
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 160
    sget-object v2, Lcom/anansimobile/nge/IAB/NGStoreKit;->mIabHelper:Lcom/anansimobile/nge/IAB/util/IabHelper;

    if-eqz v2, :cond_0

    .line 162
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[IAB] HandleActivityResult:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/anansimobile/nge/IAB/NGStoreKit;->ToastShowText(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    sget-object v2, Lcom/anansimobile/nge/IAB/NGStoreKit;->mIabHelper:Lcom/anansimobile/nge/IAB/util/IabHelper;

    invoke-virtual {v2, p0, p1, p2}, Lcom/anansimobile/nge/IAB/util/IabHelper;->handleActivityResult(IILandroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 170
    :cond_0
    :goto_0
    return v1

    .line 164
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "[IAB] exception %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Lcom/anansimobile/nge/NextGenEngine;->nge_logf(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static NotifyPurchaseFinished(Lcom/anansimobile/nge/IAB/util/Purchase;)V
    .locals 6
    .param p0, "purchase"    # Lcom/anansimobile/nge/IAB/util/Purchase;

    .prologue
    .line 274
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 276
    .local v1, "receiptJson":Lorg/json/JSONObject;
    :try_start_0
    invoke-static {}, Lcom/anansimobile/nge/NextGenEngine;->isDebugMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 277
    const-string/jumbo v2, "purchaseId"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/anansimobile/nge/IAB/util/Purchase;->getOrderId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 278
    const-string/jumbo v2, "productId"

    sget-object v3, Lcom/anansimobile/nge/IAB/NGStoreKit;->savedProductId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 279
    const-string/jumbo v2, "purchaseDate"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 280
    const-string/jumbo v2, "payload"

    invoke-virtual {p0}, Lcom/anansimobile/nge/IAB/util/Purchase;->getDeveloperPayload()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 281
    const-string/jumbo v2, "token"

    invoke-virtual {p0}, Lcom/anansimobile/nge/IAB/util/Purchase;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 282
    const-string/jumbo v2, "purchaseData"

    invoke-virtual {p0}, Lcom/anansimobile/nge/IAB/util/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 283
    const-string/jumbo v2, "signature"

    invoke-virtual {p0}, Lcom/anansimobile/nge/IAB/util/Purchase;->getSignature()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    :goto_0
    const-string/jumbo v2, "[IAB]NotifyPurchaseFinished"

    const-string/jumbo v3, "OnPurchaseFinished"

    invoke-static {v2, v3}, Lcom/anansimobile/nge/IAB/NGStoreKit;->ToastShowText(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/anansimobile/nge/IAB/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/anansimobile/nge/IAB/NGStoreKit;->OnPurchaseFinished(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    return-void

    .line 285
    :cond_0
    :try_start_1
    const-string/jumbo v2, "purchaseId"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/anansimobile/nge/IAB/util/Purchase;->getOrderId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 286
    const-string/jumbo v2, "productId"

    sget-object v3, Lcom/anansimobile/nge/IAB/NGStoreKit;->savedProductId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 287
    const-string/jumbo v2, "purchaseDate"

    invoke-virtual {p0}, Lcom/anansimobile/nge/IAB/util/Purchase;->getPurchaseTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 288
    const-string/jumbo v2, "payload"

    invoke-virtual {p0}, Lcom/anansimobile/nge/IAB/util/Purchase;->getDeveloperPayload()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 289
    const-string/jumbo v2, "token"

    invoke-virtual {p0}, Lcom/anansimobile/nge/IAB/util/Purchase;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 290
    const-string/jumbo v2, "purchaseData"

    invoke-virtual {p0}, Lcom/anansimobile/nge/IAB/util/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 291
    const-string/jumbo v2, "signature"

    invoke-virtual {p0}, Lcom/anansimobile/nge/IAB/util/Purchase;->getSignature()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 293
    :catch_0
    move-exception v0

    .line 295
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method private static native OnPaymentFailed()V
.end method

.method private static native OnProduct(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static native OnProductListFinished()V
.end method

.method private static native OnPurchaseFinished(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static ToastShowText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "nowText"    # Ljava/lang/String;
    .param p1, "thenCall"    # Ljava/lang/String;

    .prologue
    .line 318
    sget-object v2, Lcom/anansimobile/nge/IAB/NGStoreKit;->sCtx:Landroid/content/Context;

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/anansimobile/nge/NextGenEngine;->isDebugMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 321
    if-eqz p1, :cond_1

    .line 323
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "then call"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 327
    .local v1, "showText":Ljava/lang/String;
    :goto_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 328
    .local v0, "msg":Landroid/os/Message;
    const/16 v2, 0x3eb

    iput v2, v0, Landroid/os/Message;->what:I

    .line 329
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "toastString"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    sget-object v2, Lcom/anansimobile/nge/IAB/NGStoreKit;->mStoreKitMsgHandler:Lcom/anansimobile/nge/IAB/NGStoreKit$StoreKitMsgHandler;

    invoke-virtual {v2, v0}, Lcom/anansimobile/nge/IAB/NGStoreKit$StoreKitMsgHandler;->sendMessage(Landroid/os/Message;)Z

    .line 332
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "showText":Ljava/lang/String;
    :cond_0
    return-void

    .line 325
    :cond_1
    move-object v1, p0

    .restart local v1    # "showText":Ljava/lang/String;
    goto :goto_0
.end method

.method static synthetic access$100()Lcom/anansimobile/nge/IAB/util/Inventory;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/anansimobile/nge/IAB/NGStoreKit;->mInv:Lcom/anansimobile/nge/IAB/util/Inventory;

    return-object v0
.end method

.method static synthetic access$1000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/anansimobile/nge/IAB/NGStoreKit;->savedProductId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/anansimobile/nge/IAB/util/Inventory;)Lcom/anansimobile/nge/IAB/util/Inventory;
    .locals 0
    .param p0, "x0"    # Lcom/anansimobile/nge/IAB/util/Inventory;

    .prologue
    .line 25
    sput-object p0, Lcom/anansimobile/nge/IAB/NGStoreKit;->mInv:Lcom/anansimobile/nge/IAB/util/Inventory;

    return-object p0
.end method

.method static synthetic access$1100()Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/anansimobile/nge/IAB/NGStoreKit;->mProductIds:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$1200(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-static {p0, p1}, Lcom/anansimobile/nge/IAB/NGStoreKit;->OnProduct(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300()V
    .locals 0

    .prologue
    .line 25
    invoke-static {}, Lcom/anansimobile/nge/IAB/NGStoreKit;->OnProductListFinished()V

    return-void
.end method

.method static synthetic access$200(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-static {p0, p1}, Lcom/anansimobile/nge/IAB/NGStoreKit;->ToastShowText(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-static {p0}, Lcom/anansimobile/nge/IAB/NGStoreKit;->shouldConsumeProduct(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/anansimobile/nge/IAB/util/Purchase;)V
    .locals 0
    .param p0, "x0"    # Lcom/anansimobile/nge/IAB/util/Purchase;

    .prologue
    .line 25
    invoke-static {p0}, Lcom/anansimobile/nge/IAB/NGStoreKit;->NotifyPurchaseFinished(Lcom/anansimobile/nge/IAB/util/Purchase;)V

    return-void
.end method

.method static synthetic access$500()Lcom/anansimobile/nge/IAB/util/IabHelper;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/anansimobile/nge/IAB/NGStoreKit;->mIabHelper:Lcom/anansimobile/nge/IAB/util/IabHelper;

    return-object v0
.end method

.method static synthetic access$600()V
    .locals 0

    .prologue
    .line 25
    invoke-static {}, Lcom/anansimobile/nge/IAB/NGStoreKit;->OnPaymentFailed()V

    return-void
.end method

.method static synthetic access$700()Lcom/anansimobile/nge/IAB/util/IabHelper$OnIabPurchaseFinishedListener;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/anansimobile/nge/IAB/NGStoreKit;->mPurchaseFinishedLinstener:Lcom/anansimobile/nge/IAB/util/IabHelper$OnIabPurchaseFinishedListener;

    return-object v0
.end method

.method static synthetic access$800()Lcom/anansimobile/nge/IAB/util/IabHelper$QueryInventoryFinishedListener;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/anansimobile/nge/IAB/NGStoreKit;->mQueryFinishedListener:Lcom/anansimobile/nge/IAB/util/IabHelper$QueryInventoryFinishedListener;

    return-object v0
.end method

.method static synthetic access$900()Landroid/content/Context;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/anansimobile/nge/IAB/NGStoreKit;->sCtx:Landroid/content/Context;

    return-object v0
.end method

.method public static addProductId(Ljava/lang/String;)V
    .locals 1
    .param p0, "pid"    # Ljava/lang/String;

    .prologue
    .line 87
    sget-object v0, Lcom/anansimobile/nge/IAB/NGStoreKit;->mProductIds:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 88
    return-void
.end method

.method public static clearProductIds()V
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lcom/anansimobile/nge/IAB/NGStoreKit;->mProductIds:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 96
    return-void
.end method

.method public static close()V
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/anansimobile/nge/IAB/NGStoreKit;->mIabHelper:Lcom/anansimobile/nge/IAB/util/IabHelper;

    if-eqz v0, :cond_0

    .line 40
    sget-object v0, Lcom/anansimobile/nge/IAB/NGStoreKit;->mIabHelper:Lcom/anansimobile/nge/IAB/util/IabHelper;

    invoke-virtual {v0}, Lcom/anansimobile/nge/IAB/util/IabHelper;->dispose()V

    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/anansimobile/nge/IAB/NGStoreKit;->mIabHelper:Lcom/anansimobile/nge/IAB/util/IabHelper;

    .line 43
    :cond_0
    return-void
.end method

.method public static consumeProduct(Lcom/anansimobile/nge/IAB/util/Purchase;)V
    .locals 6
    .param p0, "purchase"    # Lcom/anansimobile/nge/IAB/util/Purchase;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 149
    :try_start_0
    sget-object v1, Lcom/anansimobile/nge/IAB/NGStoreKit;->mIabHelper:Lcom/anansimobile/nge/IAB/util/IabHelper;

    sget-object v2, Lcom/anansimobile/nge/IAB/NGStoreKit;->mConsumeFinishedListener:Lcom/anansimobile/nge/IAB/util/IabHelper$OnConsumeFinishedListener;

    invoke-virtual {v1, p0, v2}, Lcom/anansimobile/nge/IAB/util/IabHelper;->consumeAsync(Lcom/anansimobile/nge/IAB/util/Purchase;Lcom/anansimobile/nge/IAB/util/IabHelper$OnConsumeFinishedListener;)V

    .line 150
    const-string/jumbo v1, "[IAB] normal try to cusume"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/anansimobile/nge/NextGenEngine;->nge_logf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    const-string/jumbo v1, "[IAB] normal try to cusume"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/anansimobile/nge/IAB/NGStoreKit;->ToastShowText(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :goto_0
    return-void

    .line 152
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "[IAB] exception %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/anansimobile/nge/NextGenEngine;->nge_logf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[IAB] consume exception %s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/anansimobile/nge/IAB/NGStoreKit;->ToastShowText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static initIabHelper(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "base64EncodedPublicKey"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-static {}, Lcom/anansimobile/nge/IAB/NGStoreKit;->clearProductIds()V

    .line 53
    sput-object p0, Lcom/anansimobile/nge/IAB/NGStoreKit;->sCtx:Landroid/content/Context;

    .line 55
    :try_start_0
    new-instance v1, Lcom/anansimobile/nge/IAB/util/IabHelper;

    invoke-direct {v1, p0, p1}, Lcom/anansimobile/nge/IAB/util/IabHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v1, Lcom/anansimobile/nge/IAB/NGStoreKit;->mIabHelper:Lcom/anansimobile/nge/IAB/util/IabHelper;

    .line 59
    sget-object v1, Lcom/anansimobile/nge/IAB/NGStoreKit;->mIabHelper:Lcom/anansimobile/nge/IAB/util/IabHelper;

    new-instance v2, Lcom/anansimobile/nge/IAB/NGStoreKit$1;

    invoke-direct {v2}, Lcom/anansimobile/nge/IAB/NGStoreKit$1;-><init>()V

    invoke-virtual {v1, v2}, Lcom/anansimobile/nge/IAB/util/IabHelper;->startSetup(Lcom/anansimobile/nge/IAB/util/IabHelper$OnIabSetupFinishedListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :goto_0
    return-void

    .line 71
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/anansimobile/nge/IAB/NGStoreKit;->mIabHelper:Lcom/anansimobile/nge/IAB/util/IabHelper;

    invoke-virtual {v1}, Lcom/anansimobile/nge/IAB/util/IabHelper;->dispose()V

    .line 74
    const/4 v1, 0x0

    sput-object v1, Lcom/anansimobile/nge/IAB/NGStoreKit;->mIabHelper:Lcom/anansimobile/nge/IAB/util/IabHelper;

    .line 75
    const-string/jumbo v1, "[IAB] exception %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/anansimobile/nge/NextGenEngine;->nge_logf(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static isProductIdsEmpty()Z
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/anansimobile/nge/IAB/NGStoreKit;->mProductIds:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public static purchaseProduct(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "pid"    # Ljava/lang/String;
    .param p1, "payload"    # Ljava/lang/String;

    .prologue
    .line 134
    invoke-static {}, Lcom/anansimobile/nge/NextGenEngine;->isDebugMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    const-string/jumbo p0, "android.test.purchased"

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[IAB] this debug mode ,use test productId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/anansimobile/nge/IAB/NGStoreKit;->ToastShowText(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    :cond_0
    sput-object p0, Lcom/anansimobile/nge/IAB/NGStoreKit;->savedProductId:Ljava/lang/String;

    .line 140
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 141
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x3e9

    iput v1, v0, Landroid/os/Message;->what:I

    .line 142
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "pid"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "payload"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    sget-object v1, Lcom/anansimobile/nge/IAB/NGStoreKit;->mStoreKitMsgHandler:Lcom/anansimobile/nge/IAB/NGStoreKit$StoreKitMsgHandler;

    invoke-virtual {v1, v0}, Lcom/anansimobile/nge/IAB/NGStoreKit$StoreKitMsgHandler;->sendMessage(Landroid/os/Message;)Z

    .line 145
    return-void
.end method

.method public static queryProducts()V
    .locals 5

    .prologue
    .line 115
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 116
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x3ea

    iput v2, v1, Landroid/os/Message;->what:I

    .line 117
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "size"

    sget-object v4, Lcom/anansimobile/nge/IAB/NGStoreKit;->mProductIds:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 118
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/anansimobile/nge/IAB/NGStoreKit;->mProductIds:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 119
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "id"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v2, Lcom/anansimobile/nge/IAB/NGStoreKit;->mProductIds:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 121
    :cond_0
    sget-object v2, Lcom/anansimobile/nge/IAB/NGStoreKit;->mStoreKitMsgHandler:Lcom/anansimobile/nge/IAB/NGStoreKit$StoreKitMsgHandler;

    invoke-virtual {v2, v1}, Lcom/anansimobile/nge/IAB/NGStoreKit$StoreKitMsgHandler;->sendMessage(Landroid/os/Message;)Z

    .line 122
    return-void
.end method

.method private static native shouldConsumeProduct(Ljava/lang/String;)Z
.end method
