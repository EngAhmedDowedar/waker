.class Lcom/anansimobile/nge/IAB/NGStoreKit$StoreKitMsgHandler;
.super Landroid/os/Handler;
.source "NGStoreKit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anansimobile/nge/IAB/NGStoreKit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StoreKitMsgHandler"
.end annotation


# static fields
.field public static final STOREKIT_MSG_LIST_PRODUCT_DETAIL:I = 0x3ea

.field public static final STOREKIT_MSG_PURCHASE:I = 0x3e9

.field public static final SYSTEM_TOAST_DEFINE:I = 0x3eb


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 174
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/anansimobile/nge/IAB/NGStoreKit$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/anansimobile/nge/IAB/NGStoreKit$1;

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/anansimobile/nge/IAB/NGStoreKit$StoreKitMsgHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 181
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 262
    :goto_0
    return-void

    .line 184
    :pswitch_0
    const/4 v6, 0x0

    .line 185
    .local v6, "consumePurchase":Lcom/anansimobile/nge/IAB/util/Purchase;
    invoke-static {}, Lcom/anansimobile/nge/IAB/NGStoreKit;->access$100()Lcom/anansimobile/nge/IAB/util/Inventory;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 186
    invoke-static {}, Lcom/anansimobile/nge/IAB/NGStoreKit;->access$100()Lcom/anansimobile/nge/IAB/util/Inventory;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "pid"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anansimobile/nge/IAB/util/Inventory;->getPurchase(Ljava/lang/String;)Lcom/anansimobile/nge/IAB/util/Purchase;

    move-result-object v6

    .line 187
    const-string/jumbo v0, "[IAB] [consume last purchased product]get last Purchased"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/anansimobile/nge/IAB/NGStoreKit;->access$200(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    :cond_0
    if-eqz v6, :cond_2

    .line 191
    invoke-virtual {v6}, Lcom/anansimobile/nge/IAB/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/anansimobile/nge/IAB/NGStoreKit;->access$300(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    const-string/jumbo v0, "[IAB] [consume last purchased product] shouldConsumeProduct"

    const-string/jumbo v1, "consumeProduct"

    invoke-static {v0, v1}, Lcom/anansimobile/nge/IAB/NGStoreKit;->access$200(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-static {v6}, Lcom/anansimobile/nge/IAB/NGStoreKit;->consumeProduct(Lcom/anansimobile/nge/IAB/util/Purchase;)V

    goto :goto_0

    .line 197
    :cond_1
    invoke-static {v6}, Lcom/anansimobile/nge/IAB/NGStoreKit;->access$400(Lcom/anansimobile/nge/IAB/util/Purchase;)V

    .line 198
    const-string/jumbo v0, "[IAB] [consume last purchased product] return success"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/anansimobile/nge/IAB/NGStoreKit;->access$200(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 209
    :cond_2
    invoke-static {}, Lcom/anansimobile/nge/NextGenEngine;->isDebugMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 212
    :try_start_0
    const-string/jumbo v9, "{\"packageName\":\"com.anansimobile.city_ar\",\"orderId\":\"transactionId.android.test.purchased\",\"productId\":\"android.test.purchased\",\"developerPayload\":\"1841688704.562531361\",\"purchaseTime\":0,\"purchaseState\":0,\"purchaseToken\":\"inapp:com.anansimobile.city_ar:android.test.purchased\"}"

    .line 213
    .local v9, "json":Ljava/lang/String;
    new-instance v11, Lcom/anansimobile/nge/IAB/util/Purchase;

    const-string/jumbo v0, "inapp"

    invoke-direct {v11, v9, v0}, Lcom/anansimobile/nge/IAB/util/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    .local v11, "purchase":Lcom/anansimobile/nge/IAB/util/Purchase;
    invoke-static {}, Lcom/anansimobile/nge/IAB/NGStoreKit;->access$500()Lcom/anansimobile/nge/IAB/util/IabHelper;

    move-result-object v0

    new-instance v1, Lcom/anansimobile/nge/IAB/NGStoreKit$StoreKitMsgHandler$1;

    invoke-direct {v1, p0}, Lcom/anansimobile/nge/IAB/NGStoreKit$StoreKitMsgHandler$1;-><init>(Lcom/anansimobile/nge/IAB/NGStoreKit$StoreKitMsgHandler;)V

    invoke-virtual {v0, v11, v1}, Lcom/anansimobile/nge/IAB/util/IabHelper;->consumeAsync(Lcom/anansimobile/nge/IAB/util/Purchase;Lcom/anansimobile/nge/IAB/util/IabHelper$OnConsumeFinishedListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    .end local v9    # "json":Ljava/lang/String;
    .end local v11    # "purchase":Lcom/anansimobile/nge/IAB/util/Purchase;
    :goto_1
    invoke-static {}, Lcom/anansimobile/nge/IAB/NGStoreKit;->access$600()V

    goto :goto_0

    .line 219
    :catch_0
    move-exception v7

    .line 221
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 222
    const-string/jumbo v0, "[IAB] debug product onConsumeFaild"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/anansimobile/nge/IAB/NGStoreKit;->access$200(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 229
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_1
    const-string/jumbo v0, "[IAB] launchPurchaeFlow"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/anansimobile/nge/IAB/NGStoreKit;->access$200(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-static {}, Lcom/anansimobile/nge/IAB/NGStoreKit;->access$500()Lcom/anansimobile/nge/IAB/util/IabHelper;

    move-result-object v0

    sget-object v1, Lcom/anansimobile/nge/NextGenEngine;->sMainActivity:Lcom/anansimobile/nge/RootActivity;

    .line 232
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "pid"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xfa1

    .line 234
    invoke-static {}, Lcom/anansimobile/nge/IAB/NGStoreKit;->access$700()Lcom/anansimobile/nge/IAB/util/IabHelper$OnIabPurchaseFinishedListener;

    move-result-object v4

    .line 235
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v13, "payload"

    invoke-virtual {v5, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 230
    invoke-virtual/range {v0 .. v5}, Lcom/anansimobile/nge/IAB/util/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/anansimobile/nge/IAB/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 236
    :catch_1
    move-exception v7

    .line 238
    .restart local v7    # "e":Ljava/lang/Exception;
    const-string/jumbo v0, "[IAB] exception %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/anansimobile/nge/NextGenEngine;->nge_logf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[IAB] consume exception"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "OnPaymentFailed"

    invoke-static {v0, v1}, Lcom/anansimobile/nge/IAB/NGStoreKit;->access$200(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-static {}, Lcom/anansimobile/nge/IAB/NGStoreKit;->access$600()V

    goto/16 :goto_0

    .line 244
    .end local v6    # "consumePurchase":Lcom/anansimobile/nge/IAB/util/Purchase;
    .end local v7    # "e":Ljava/lang/Exception;
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "size"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 245
    .local v12, "size":I
    new-instance v10, Ljava/util/LinkedList;

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    .line 246
    .local v10, "productIds":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    if-ge v8, v12, :cond_4

    .line 247
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 246
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 250
    :cond_4
    :try_start_2
    invoke-static {}, Lcom/anansimobile/nge/IAB/NGStoreKit;->access$500()Lcom/anansimobile/nge/IAB/util/IabHelper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {}, Lcom/anansimobile/nge/IAB/NGStoreKit;->access$800()Lcom/anansimobile/nge/IAB/util/IabHelper$QueryInventoryFinishedListener;

    move-result-object v2

    invoke-virtual {v0, v1, v10, v2}, Lcom/anansimobile/nge/IAB/util/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lcom/anansimobile/nge/IAB/util/IabHelper$QueryInventoryFinishedListener;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 251
    :catch_2
    move-exception v7

    .line 253
    .restart local v7    # "e":Ljava/lang/Exception;
    const-string/jumbo v0, "[IAB] exception %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/anansimobile/nge/NextGenEngine;->nge_logf(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 259
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v8    # "i":I
    .end local v10    # "productIds":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    .end local v12    # "size":I
    :pswitch_2
    invoke-static {}, Lcom/anansimobile/nge/IAB/NGStoreKit;->access$900()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "toastString"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 181
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
