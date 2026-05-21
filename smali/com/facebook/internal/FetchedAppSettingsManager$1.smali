.class final Lcom/facebook/internal/FetchedAppSettingsManager$1;
.super Ljava/lang/Object;
.source "FetchedAppSettingsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/FetchedAppSettingsManager;->loadAppSettingsAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$applicationId:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$settingsKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/facebook/internal/FetchedAppSettingsManager$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/internal/FetchedAppSettingsManager$1;->val$settingsKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/internal/FetchedAppSettingsManager$1;->val$applicationId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 118
    iget-object v8, p0, Lcom/facebook/internal/FetchedAppSettingsManager$1;->val$context:Landroid/content/Context;

    const-string/jumbo v9, "com.facebook.internal.preferences.APP_SETTINGS"

    invoke-virtual {v8, v9, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 121
    .local v6, "sharedPrefs":Landroid/content/SharedPreferences;
    iget-object v8, p0, Lcom/facebook/internal/FetchedAppSettingsManager$1;->val$settingsKey:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 122
    .local v5, "settingsJSONString":Ljava/lang/String;
    const/4 v0, 0x0

    .line 123
    .local v0, "appSettings":Lcom/facebook/internal/FetchedAppSettings;
    invoke-static {v5}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 124
    const/4 v3, 0x0

    .line 126
    .local v3, "settingsJSON":Lorg/json/JSONObject;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "settingsJSON":Lorg/json/JSONObject;
    .local v4, "settingsJSON":Lorg/json/JSONObject;
    move-object v3, v4

    .line 130
    .end local v4    # "settingsJSON":Lorg/json/JSONObject;
    .restart local v3    # "settingsJSON":Lorg/json/JSONObject;
    :goto_0
    if-eqz v3, :cond_0

    .line 131
    iget-object v8, p0, Lcom/facebook/internal/FetchedAppSettingsManager$1;->val$applicationId:Ljava/lang/String;

    invoke-static {v8, v3}, Lcom/facebook/internal/FetchedAppSettingsManager;->access$000(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/facebook/internal/FetchedAppSettings;

    move-result-object v0

    .line 135
    .end local v3    # "settingsJSON":Lorg/json/JSONObject;
    :cond_0
    iget-object v8, p0, Lcom/facebook/internal/FetchedAppSettingsManager$1;->val$applicationId:Ljava/lang/String;

    invoke-static {v8}, Lcom/facebook/internal/FetchedAppSettingsManager;->access$100(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 136
    .local v2, "resultJSON":Lorg/json/JSONObject;
    if-eqz v2, :cond_1

    .line 137
    iget-object v8, p0, Lcom/facebook/internal/FetchedAppSettingsManager$1;->val$applicationId:Ljava/lang/String;

    invoke-static {v8, v2}, Lcom/facebook/internal/FetchedAppSettingsManager;->access$000(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/facebook/internal/FetchedAppSettings;

    .line 139
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    iget-object v9, p0, Lcom/facebook/internal/FetchedAppSettingsManager$1;->val$settingsKey:Ljava/lang/String;

    .line 140
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 141
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 145
    :cond_1
    if-eqz v0, :cond_2

    .line 146
    invoke-virtual {v0}, Lcom/facebook/internal/FetchedAppSettings;->getSdkUpdateMessage()Ljava/lang/String;

    move-result-object v7

    .line 147
    .local v7, "updateMessage":Ljava/lang/String;
    invoke-static {}, Lcom/facebook/internal/FetchedAppSettingsManager;->access$200()Z

    move-result v8

    if-nez v8, :cond_2

    if-eqz v7, :cond_2

    .line 149
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_2

    .line 150
    const/4 v8, 0x1

    invoke-static {v8}, Lcom/facebook/internal/FetchedAppSettingsManager;->access$202(Z)Z

    .line 151
    invoke-static {}, Lcom/facebook/internal/FetchedAppSettingsManager;->access$300()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    .end local v7    # "updateMessage":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;->logActivateAppEvent()V

    .line 159
    iget-object v8, p0, Lcom/facebook/internal/FetchedAppSettingsManager$1;->val$context:Landroid/content/Context;

    invoke-static {v8}, Lcom/facebook/internal/FetchedAppSettingsManager;->access$400(Landroid/content/Context;)V

    .line 161
    invoke-static {}, Lcom/facebook/internal/FetchedAppSettingsManager;->access$500()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 162
    return-void

    .line 127
    .end local v2    # "resultJSON":Lorg/json/JSONObject;
    .restart local v3    # "settingsJSON":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 128
    .local v1, "je":Lorg/json/JSONException;
    const-string/jumbo v8, "FacebookSDK"

    invoke-static {v8, v1}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
