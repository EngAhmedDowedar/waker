.class final Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger$1;
.super Ljava/lang/Object;
.source "AutomaticAnalyticsLogger.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;->logInAppPurchaseEvent(Landroid/content/Context;ILandroid/content/Intent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$purchaseData:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger$1;->val$purchaseData:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 16
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 119
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger$1;->val$context:Landroid/content/Context;

    .line 120
    move-object/from16 v0, p2

    invoke-static {v10, v0}, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->getServiceInterface(Landroid/content/Context;Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object v10

    .line 119
    invoke-static {v10}, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;->access$002(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger$1;->val$purchaseData:Ljava/lang/String;

    invoke-direct {v7, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 123
    .local v7, "purchaseDetails":Lorg/json/JSONObject;
    const-string/jumbo v10, "productId"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 124
    .local v8, "sku":Ljava/lang/String;
    const-string/jumbo v10, "autoRenewing"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    .line 125
    .local v4, "isSubscription":Z
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger$1;->val$context:Landroid/content/Context;

    .line 126
    invoke-static {}, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;->access$000()Ljava/lang/Object;

    move-result-object v11

    .line 125
    invoke-static {v10, v8, v11, v4}, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->getPurchaseDetails(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v9

    .line 127
    .local v9, "skuDetails":Ljava/lang/String;
    const-string/jumbo v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    if-eqz v10, :cond_0

    .line 182
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger$1;->val$context:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 184
    .end local v4    # "isSubscription":Z
    .end local v7    # "purchaseDetails":Lorg/json/JSONObject;
    .end local v8    # "sku":Ljava/lang/String;
    .end local v9    # "skuDetails":Ljava/lang/String;
    :goto_0
    return-void

    .line 130
    .restart local v4    # "isSubscription":Z
    .restart local v7    # "purchaseDetails":Lorg/json/JSONObject;
    .restart local v8    # "sku":Ljava/lang/String;
    .restart local v9    # "skuDetails":Ljava/lang/String;
    :cond_0
    :try_start_1
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 131
    .local v5, "jsonSkuDetails":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger$1;->val$context:Landroid/content/Context;

    invoke-static {v10}, Lcom/facebook/appevents/AppEventsLogger;->newLogger(Landroid/content/Context;)Lcom/facebook/appevents/AppEventsLogger;

    move-result-object v2

    .line 132
    .local v2, "appEventsLogger":Lcom/facebook/appevents/AppEventsLogger;
    new-instance v6, Landroid/os/Bundle;

    const/4 v10, 0x1

    invoke-direct {v6, v10}, Landroid/os/Bundle;-><init>(I)V

    .line 133
    .local v6, "params":Landroid/os/Bundle;
    const-string/jumbo v10, "fb_iap_product_id"

    invoke-virtual {v6, v10, v8}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 134
    const-string/jumbo v10, "fb_iap_purchase_time"

    const-string/jumbo v11, "purchaseTime"

    .line 136
    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 134
    invoke-virtual {v6, v10, v11}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 137
    const-string/jumbo v10, "fb_iap_purchase_state"

    const-string/jumbo v11, "purchaseState"

    .line 139
    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 137
    invoke-virtual {v6, v10, v11}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 140
    const-string/jumbo v10, "fb_iap_purchase_token"

    const-string/jumbo v11, "purchaseToken"

    .line 142
    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 140
    invoke-virtual {v6, v10, v11}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 143
    const-string/jumbo v10, "fb_iap_package_name"

    const-string/jumbo v11, "packageName"

    .line 145
    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 143
    invoke-virtual {v6, v10, v11}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 146
    const-string/jumbo v10, "fb_iap_product_type"

    const-string/jumbo v11, "type"

    .line 148
    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 146
    invoke-virtual {v6, v10, v11}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 149
    const-string/jumbo v10, "fb_iap_product_title"

    const-string/jumbo v11, "title"

    .line 151
    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 149
    invoke-virtual {v6, v10, v11}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 152
    const-string/jumbo v10, "fb_iap_product_description"

    const-string/jumbo v11, "description"

    .line 154
    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 152
    invoke-virtual {v6, v10, v11}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 155
    const-string/jumbo v10, "fb_iap_subs_auto_renewing"

    const-string/jumbo v11, "autoRenewing"

    const/4 v12, 0x0

    .line 157
    invoke-virtual {v7, v11, v12}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v11

    .line 155
    invoke-virtual {v6, v10, v11}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 159
    const-string/jumbo v10, "fb_iap_subs_period"

    const-string/jumbo v11, "subscriptionPeriod"

    .line 161
    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 159
    invoke-virtual {v6, v10, v11}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 162
    const-string/jumbo v10, "fb_free_trial_period"

    const-string/jumbo v11, "freeTrialPeriod"

    .line 164
    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 162
    invoke-virtual {v6, v10, v11}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 165
    const-string/jumbo v10, "fb_intro_price_amount_micros"

    const-string/jumbo v11, "introductoryPriceAmountMicros"

    .line 167
    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 165
    invoke-virtual {v6, v10, v11}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 168
    const-string/jumbo v10, "fb_intro_price_cycles"

    const-string/jumbo v11, "introductoryPriceCycles"

    .line 170
    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 168
    invoke-virtual {v6, v10, v11}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 172
    new-instance v10, Ljava/math/BigDecimal;

    const-string/jumbo v11, "price_amount_micros"

    .line 174
    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    long-to-double v12, v12

    const-wide v14, 0x412e848000000000L    # 1000000.0

    div-double/2addr v12, v14

    invoke-direct {v10, v12, v13}, Ljava/math/BigDecimal;-><init>(D)V

    const-string/jumbo v11, "price_currency_code"

    .line 175
    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v11

    .line 172
    invoke-virtual {v2, v10, v11, v6}, Lcom/facebook/appevents/AppEventsLogger;->logPurchaseImplicitly(Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 182
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger$1;->val$context:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto/16 :goto_0

    .line 178
    .end local v2    # "appEventsLogger":Lcom/facebook/appevents/AppEventsLogger;
    .end local v4    # "isSubscription":Z
    .end local v5    # "jsonSkuDetails":Lorg/json/JSONObject;
    .end local v6    # "params":Landroid/os/Bundle;
    .end local v7    # "purchaseDetails":Lorg/json/JSONObject;
    .end local v8    # "sku":Ljava/lang/String;
    .end local v9    # "skuDetails":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 179
    .local v3, "e":Lorg/json/JSONException;
    :try_start_2
    invoke-static {}, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;->access$100()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "Error parsing in-app purchase data."

    invoke-static {v10, v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 182
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger$1;->val$context:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto/16 :goto_0

    .end local v3    # "e":Lorg/json/JSONException;
    :catchall_0
    move-exception v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger$1;->val$context:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 183
    throw v10
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;->access$002(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    invoke-static {}, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "In-app billing service disconnected"

    invoke-static {v0, v1}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    return-void
.end method
