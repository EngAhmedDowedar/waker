.class public final Lcom/facebook/internal/FetchedAppSettingsManager;
.super Ljava/lang/Object;
.source "FetchedAppSettingsManager.java"


# static fields
.field private static final APPLICATION_FIELDS:Ljava/lang/String; = "fields"

.field private static final APP_SETTINGS_PREFS_KEY_FORMAT:Ljava/lang/String; = "com.facebook.internal.APP_SETTINGS.%s"

.field private static final APP_SETTINGS_PREFS_STORE:Ljava/lang/String; = "com.facebook.internal.preferences.APP_SETTINGS"

.field private static final APP_SETTING_ANDROID_SDK_ERROR_CATEGORIES:Ljava/lang/String; = "android_sdk_error_categories"

.field private static final APP_SETTING_APP_EVENTS_FEATURE_BITMASK:Ljava/lang/String; = "app_events_feature_bitmask"

.field private static final APP_SETTING_APP_EVENTS_SESSION_TIMEOUT:Ljava/lang/String; = "app_events_session_timeout"

.field private static final APP_SETTING_CUSTOM_TABS_ENABLED:Ljava/lang/String; = "gdpv4_chrome_custom_tabs_enabled"

.field private static final APP_SETTING_DIALOG_CONFIGS:Ljava/lang/String; = "android_dialog_configs"

.field private static final APP_SETTING_FIELDS:[Ljava/lang/String;

.field private static final APP_SETTING_NUX_CONTENT:Ljava/lang/String; = "gdpv4_nux_content"

.field private static final APP_SETTING_NUX_ENABLED:Ljava/lang/String; = "gdpv4_nux_enabled"

.field private static final APP_SETTING_SMART_LOGIN_OPTIONS:Ljava/lang/String; = "seamless_login"

.field private static final APP_SETTING_SUPPORTS_IMPLICIT_SDK_LOGGING:Ljava/lang/String; = "supports_implicit_sdk_logging"

.field private static final AUTOMATIC_LOGGING_ENABLED_BITMASK_FIELD:I = 0x8

.field private static final IAP_AUTOMATIC_LOGGING_ENABLED_BITMASK_FIELD:I = 0x10

.field private static final SDK_UPDATE_MESSAGE:Ljava/lang/String; = "sdk_update_message"

.field private static final SMART_LOGIN_BOOKMARK_ICON_URL:Ljava/lang/String; = "smart_login_bookmark_icon_url"

.field private static final SMART_LOGIN_MENU_ICON_URL:Ljava/lang/String; = "smart_login_menu_icon_url"

.field private static final TAG:Ljava/lang/String;

.field private static fetchedAppSettings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/internal/FetchedAppSettings;",
            ">;"
        }
    .end annotation
.end field

.field private static loadingSettings:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static printedSDKUpdatedMessage:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 53
    const-class v0, Lcom/facebook/internal/FetchedAppSettingsManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/internal/FetchedAppSettingsManager;->TAG:Ljava/lang/String;

    .line 81
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "supports_implicit_sdk_logging"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string/jumbo v2, "gdpv4_nux_content"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "gdpv4_nux_enabled"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "gdpv4_chrome_custom_tabs_enabled"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "android_dialog_configs"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "android_sdk_error_categories"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "app_events_session_timeout"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "app_events_feature_bitmask"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "seamless_login"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "smart_login_bookmark_icon_url"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "smart_login_menu_icon_url"

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/internal/FetchedAppSettingsManager;->APP_SETTING_FIELDS:[Ljava/lang/String;

    .line 96
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/facebook/internal/FetchedAppSettingsManager;->fetchedAppSettings:Ljava/util/Map;

    .line 98
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/facebook/internal/FetchedAppSettingsManager;->loadingSettings:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 100
    sput-boolean v3, Lcom/facebook/internal/FetchedAppSettingsManager;->printedSDKUpdatedMessage:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/facebook/internal/FetchedAppSettings;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Lorg/json/JSONObject;

    .prologue
    .line 52
    invoke-static {p0, p1}, Lcom/facebook/internal/FetchedAppSettingsManager;->parseAppSettingsFromJSON(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/facebook/internal/FetchedAppSettings;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-static {p0}, Lcom/facebook/internal/FetchedAppSettingsManager;->getAppSettingsQueryResponse(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 52
    sget-boolean v0, Lcom/facebook/internal/FetchedAppSettingsManager;->printedSDKUpdatedMessage:Z

    return v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 52
    sput-boolean p0, Lcom/facebook/internal/FetchedAppSettingsManager;->printedSDKUpdatedMessage:Z

    return p0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/facebook/internal/FetchedAppSettingsManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-static {p0}, Lcom/facebook/internal/FetchedAppSettingsManager;->startInAppPurchaseAutoLogging(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$500()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/facebook/internal/FetchedAppSettingsManager;->loadingSettings:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private static getAppSettingsQueryResponse(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 6
    .param p0, "applicationId"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 231
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 232
    .local v1, "appSettingsParams":Landroid/os/Bundle;
    new-instance v0, Ljava/util/ArrayList;

    sget-object v3, Lcom/facebook/internal/FetchedAppSettingsManager;->APP_SETTING_FIELDS:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 238
    .local v0, "appSettingFields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v3, "fields"

    const-string/jumbo v4, ","

    invoke-static {v4, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-static {v5, p0, v5}, Lcom/facebook/GraphRequest;->newGraphPathRequest(Lcom/facebook/AccessToken;Ljava/lang/String;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object v2

    .line 241
    .local v2, "request":Lcom/facebook/GraphRequest;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/facebook/GraphRequest;->setSkipClientToken(Z)V

    .line 242
    invoke-virtual {v2, v1}, Lcom/facebook/GraphRequest;->setParameters(Landroid/os/Bundle;)V

    .line 244
    invoke-virtual {v2}, Lcom/facebook/GraphRequest;->executeAndWait()Lcom/facebook/GraphResponse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v3

    return-object v3
.end method

.method public static getAppSettingsWithoutQuery(Ljava/lang/String;)Lcom/facebook/internal/FetchedAppSettings;
    .locals 1
    .param p0, "applicationId"    # Ljava/lang/String;

    .prologue
    .line 168
    if-eqz p0, :cond_0

    sget-object v0, Lcom/facebook/internal/FetchedAppSettingsManager;->fetchedAppSettings:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/internal/FetchedAppSettings;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static loadAppSettingsAsync()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 103
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 104
    .local v2, "context":Landroid/content/Context;
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "applicationId":Ljava/lang/String;
    sget-object v4, Lcom/facebook/internal/FetchedAppSettingsManager;->loadingSettings:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v6, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    .line 106
    .local v1, "canStartLoading":Z
    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/facebook/internal/FetchedAppSettingsManager;->fetchedAppSettings:Ljava/util/Map;

    .line 107
    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    if-nez v1, :cond_1

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    const-string/jumbo v4, "com.facebook.internal.APP_SETTINGS.%s"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 114
    .local v3, "settingsKey":Ljava/lang/String;
    invoke-static {}, Lcom/facebook/FacebookSdk;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4

    new-instance v5, Lcom/facebook/internal/FetchedAppSettingsManager$1;

    invoke-direct {v5, v2, v3, v0}, Lcom/facebook/internal/FetchedAppSettingsManager$1;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private static parseAppSettingsFromJSON(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/facebook/internal/FetchedAppSettings;
    .locals 18
    .param p0, "applicationId"    # Ljava/lang/String;
    .param p1, "settingsJSON"    # Lorg/json/JSONObject;

    .prologue
    .line 192
    const-string/jumbo v3, "android_sdk_error_categories"

    .line 193
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v16

    .line 194
    .local v16, "errorClassificationJSON":Lorg/json/JSONArray;
    if-nez v16, :cond_0

    .line 196
    invoke-static {}, Lcom/facebook/internal/FacebookRequestErrorClassification;->getDefaultErrorClassification()Lcom/facebook/internal/FacebookRequestErrorClassification;

    move-result-object v11

    .line 200
    .local v11, "errorClassification":Lcom/facebook/internal/FacebookRequestErrorClassification;
    :goto_0
    const-string/jumbo v3, "app_events_feature_bitmask"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v17

    .line 201
    .local v17, "featureBitmask":I
    and-int/lit8 v3, v17, 0x8

    if-eqz v3, :cond_1

    const/4 v10, 0x1

    .line 203
    .local v10, "automaticLoggingEnabled":Z
    :goto_1
    and-int/lit8 v3, v17, 0x10

    if-eqz v3, :cond_2

    const/4 v14, 0x1

    .line 205
    .local v14, "inAppPurchaseAutomaticLoggingEnabled":Z
    :goto_2
    new-instance v2, Lcom/facebook/internal/FetchedAppSettings;

    const-string/jumbo v3, "supports_implicit_sdk_logging"

    const/4 v4, 0x0

    .line 206
    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string/jumbo v4, "gdpv4_nux_content"

    const-string/jumbo v5, ""

    .line 207
    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "gdpv4_nux_enabled"

    const/4 v6, 0x0

    .line 208
    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    const-string/jumbo v6, "gdpv4_chrome_custom_tabs_enabled"

    const/4 v7, 0x0

    .line 209
    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    const-string/jumbo v7, "app_events_session_timeout"

    .line 212
    invoke-static {}, Lcom/facebook/appevents/internal/Constants;->getDefaultAppEventsSessionTimeoutInSeconds()I

    move-result v8

    .line 210
    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    const-string/jumbo v8, "seamless_login"

    .line 213
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/facebook/internal/SmartLoginOption;->parseOptions(J)Ljava/util/EnumSet;

    move-result-object v8

    const-string/jumbo v9, "android_dialog_configs"

    .line 214
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-static {v9}, Lcom/facebook/internal/FetchedAppSettingsManager;->parseDialogConfigurations(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v9

    const-string/jumbo v12, "smart_login_bookmark_icon_url"

    .line 217
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "smart_login_menu_icon_url"

    .line 218
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v15, "sdk_update_message"

    .line 220
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-direct/range {v2 .. v15}, Lcom/facebook/internal/FetchedAppSettings;-><init>(ZLjava/lang/String;ZZILjava/util/EnumSet;Ljava/util/Map;ZLcom/facebook/internal/FacebookRequestErrorClassification;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 223
    .local v2, "result":Lcom/facebook/internal/FetchedAppSettings;
    sget-object v3, Lcom/facebook/internal/FetchedAppSettingsManager;->fetchedAppSettings:Ljava/util/Map;

    move-object/from16 v0, p0

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    return-object v2

    .line 197
    .end local v2    # "result":Lcom/facebook/internal/FetchedAppSettings;
    .end local v10    # "automaticLoggingEnabled":Z
    .end local v11    # "errorClassification":Lcom/facebook/internal/FacebookRequestErrorClassification;
    .end local v14    # "inAppPurchaseAutomaticLoggingEnabled":Z
    .end local v17    # "featureBitmask":I
    :cond_0
    invoke-static/range {v16 .. v16}, Lcom/facebook/internal/FacebookRequestErrorClassification;->createFromJSON(Lorg/json/JSONArray;)Lcom/facebook/internal/FacebookRequestErrorClassification;

    move-result-object v11

    goto/16 :goto_0

    .line 201
    .restart local v11    # "errorClassification":Lcom/facebook/internal/FacebookRequestErrorClassification;
    .restart local v17    # "featureBitmask":I
    :cond_1
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 203
    .restart local v10    # "automaticLoggingEnabled":Z
    :cond_2
    const/4 v14, 0x0

    goto/16 :goto_2
.end method

.method private static parseDialogConfigurations(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 7
    .param p0, "dialogConfigResponse"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 249
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 252
    .local v2, "dialogConfigMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;>;>;"
    if-eqz p0, :cond_2

    .line 253
    const-string/jumbo v6, "data"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 254
    .local v1, "dialogConfigData":Lorg/json/JSONArray;
    if-eqz v1, :cond_2

    .line 255
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 258
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 257
    invoke-static {v6}, Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;->parseDialogConfig(Lorg/json/JSONObject;)Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;

    move-result-object v0

    .line 259
    .local v0, "dialogConfig":Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;
    if-nez v0, :cond_0

    .line 255
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 263
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;->getDialogName()Ljava/lang/String;

    move-result-object v3

    .line 265
    .local v3, "dialogName":Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 266
    .local v4, "featureMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;>;"
    if-nez v4, :cond_1

    .line 267
    new-instance v4, Ljava/util/HashMap;

    .end local v4    # "featureMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;>;"
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 268
    .restart local v4    # "featureMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;>;"
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;->getFeatureName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 275
    .end local v0    # "dialogConfig":Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;
    .end local v1    # "dialogConfigData":Lorg/json/JSONArray;
    .end local v3    # "dialogName":Ljava/lang/String;
    .end local v4    # "featureMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;>;"
    .end local v5    # "i":I
    :cond_2
    return-object v2
.end method

.method public static queryAppSettings(Ljava/lang/String;Z)Lcom/facebook/internal/FetchedAppSettings;
    .locals 2
    .param p0, "applicationId"    # Ljava/lang/String;
    .param p1, "forceRequery"    # Z

    .prologue
    .line 177
    if-nez p1, :cond_0

    sget-object v1, Lcom/facebook/internal/FetchedAppSettingsManager;->fetchedAppSettings:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 178
    sget-object v1, Lcom/facebook/internal/FetchedAppSettingsManager;->fetchedAppSettings:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/internal/FetchedAppSettings;

    .line 186
    :goto_0
    return-object v1

    .line 181
    :cond_0
    invoke-static {p0}, Lcom/facebook/internal/FetchedAppSettingsManager;->getAppSettingsQueryResponse(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 182
    .local v0, "response":Lorg/json/JSONObject;
    if-nez v0, :cond_1

    .line 183
    const/4 v1, 0x0

    goto :goto_0

    .line 186
    :cond_1
    invoke-static {p0, v0}, Lcom/facebook/internal/FetchedAppSettingsManager;->parseAppSettingsFromJSON(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/facebook/internal/FetchedAppSettings;

    move-result-object v1

    goto :goto_0
.end method

.method private static startInAppPurchaseAutoLogging(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 280
    sget-object v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->InAppPurchase:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 281
    invoke-virtual {v0}, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->toRequestCode()I

    move-result v0

    new-instance v1, Lcom/facebook/internal/FetchedAppSettingsManager$2;

    invoke-direct {v1, p0}, Lcom/facebook/internal/FetchedAppSettingsManager$2;-><init>(Landroid/content/Context;)V

    .line 280
    invoke-static {v0, v1}, Lcom/facebook/internal/CallbackManagerImpl;->registerStaticCallback(ILcom/facebook/internal/CallbackManagerImpl$Callback;)V

    .line 297
    return-void
.end method
