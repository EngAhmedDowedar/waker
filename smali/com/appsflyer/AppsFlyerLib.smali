.class public Lcom/appsflyer/AppsFlyerLib;
.super Landroid/content/BroadcastReceiver;
.source "AppsFlyerLib.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/AppsFlyerLib$CachedRequestSender;,
        Lcom/appsflyer/AppsFlyerLib$AttributionIdFetcher;,
        Lcom/appsflyer/AppsFlyerLib$ReAttributionIdFetcher;,
        Lcom/appsflyer/AppsFlyerLib$InstallAttributionIdFetcher;,
        Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;,
        Lcom/appsflyer/AppsFlyerLib$DataCollector;
    }
.end annotation


# static fields
.field static final AF_COUNTER_PREF:Ljava/lang/String; = "appsFlyerCount"

.field static final AF_EVENT_COUNTER_PREF:Ljava/lang/String; = "appsFlyerCount"

.field protected static final AF_SHARED_PREF:Ljava/lang/String; = "appsflyer-data"

.field private static final ANDROID_ID_CACHED_PREF:Ljava/lang/String; = "androidIdCached"

.field public static final APPS_TRACKING_URL:Ljava/lang/String; = "https://track.appsflyer.com/api/v2.3/androidevent?buildnumber=1.17&app_id="

.field public static final ATTRIBUTION_ID_COLUMN_NAME:Ljava/lang/String; = "aid"

.field public static final ATTRIBUTION_ID_CONTENT_URI:Landroid/net/Uri;

.field static final ATTRIBUTION_ID_PREF:Ljava/lang/String; = "attributionId"

.field private static final CACHED_CHANNEL_PREF:Ljava/lang/String; = "CACHED_CHANNEL"

.field private static final CACHED_URL_PARAMTER:Ljava/lang/String; = "&isCachedRequest=true"

.field private static final CALL_SERVER_ACTION:Ljava/lang/String; = "call server."

.field private static final DEEPLINK_ATTR_PREF:Ljava/lang/String; = "deeplinkAttribution"

.field private static final ERROR_PREFIX:Ljava/lang/String; = "ERROR:"

.field public static final EVENTS_TRACKING_URL:Ljava/lang/String; = "https://events.appsflyer.com/api/v2.3/androidevent?buildnumber=1.17&app_id="

.field static final FIRST_INSTALL_PREF:Ljava/lang/String; = "appsFlyerFirstInstall"

.field private static final IGNORABLE_KEYS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final IMEI_CACHED_PREF:Ljava/lang/String; = "imeiCached"

.field private static final INSTALL_STORE_PREF:Ljava/lang/String; = "INSTALL_STORE"

.field private static final INSTALL_UPDATE_DATE_FORMAT:Ljava/lang/String; = "yyyy-MM-dd_hhmmZ"

.field public static final LOG_TAG:Ljava/lang/String; = "AppsFlyer_1.17"

.field private static final ON_RECIEVE_CALLED:Ljava/lang/String; = "onRecieve called. refferer="

.field private static final PREPARE_DATA_ACTION:Ljava/lang/String; = "collect data for server"

.field private static final PRE_INSTALL_PREF:Ljava/lang/String; = "preInstallName"

.field protected static final REFERRER_PREF:Ljava/lang/String; = "referrer"

.field public static final SDK_BUILD_NUMBER:Ljava/lang/String; = "1.17"

.field static final SENT_SUCCESSFULLY_PREF:Ljava/lang/String; = "sentSuccessfully"

.field public static final SERVER_BUILD_NUMBER:Ljava/lang/String; = "2.3"

.field private static final SERVER_RESPONDED_ACTION:Ljava/lang/String; = "response from server. status="

.field private static final UNINSTALL_URL:Ljava/lang/String; = "https://track.appsflyer.com/api/v2.3/uninsall?buildnumber=1.17"

.field private static final WARNING_PREFIX:Ljava/lang/String; = "WARNING:"

.field private static cacheScheduler:Ljava/util/concurrent/ScheduledExecutorService;

.field private static conversionDataListener:Lcom/appsflyer/AppsFlyerConversionListener;

.field private static isDuringCheckCache:Z

.field private static lastCacheCheck:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 56
    const-string/jumbo v0, "content://com.facebook.katana.provider.AttributionIdProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/appsflyer/AppsFlyerLib;->ATTRIBUTION_ID_CONTENT_URI:Landroid/net/Uri;

    .line 66
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "is_cache"

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/appsflyer/AppsFlyerLib;->IGNORABLE_KEYS:Ljava/util/List;

    .line 72
    sput-object v3, Lcom/appsflyer/AppsFlyerLib;->conversionDataListener:Lcom/appsflyer/AppsFlyerConversionListener;

    .line 73
    sput-boolean v2, Lcom/appsflyer/AppsFlyerLib;->isDuringCheckCache:Z

    .line 76
    sput-object v3, Lcom/appsflyer/AppsFlyerLib;->cacheScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1465
    return-void
.end method

.method static synthetic access$1000(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-static {p0, p1}, Lcom/appsflyer/AppsFlyerLib;->getCachedChannel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-static {p0}, Lcom/appsflyer/AppsFlyerLib;->shouldLog(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-static {p0}, Lcom/appsflyer/AppsFlyerLib;->attributionStringToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300()Z
    .locals 1

    .prologue
    .line 32
    sget-boolean v0, Lcom/appsflyer/AppsFlyerLib;->isDuringCheckCache:Z

    return v0
.end method

.method static synthetic access$1302(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 32
    sput-boolean p0, Lcom/appsflyer/AppsFlyerLib;->isDuringCheckCache:Z

    return p0
.end method

.method static synthetic access$1402(J)J
    .locals 0
    .param p0, "x0"    # J

    .prologue
    .line 32
    sput-wide p0, Lcom/appsflyer/AppsFlyerLib;->lastCacheCheck:J

    return-wide p0
.end method

.method static synthetic access$1500()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/appsflyer/AppsFlyerLib;->cacheScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static synthetic access$1502(Ljava/util/concurrent/ScheduledExecutorService;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0
    .param p0, "x0"    # Ljava/util/concurrent/ScheduledExecutorService;

    .prologue
    .line 32
    sput-object p0, Lcom/appsflyer/AppsFlyerLib;->cacheScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method static synthetic access$200(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Z

    .prologue
    .line 32
    invoke-static/range {p0 .. p5}, Lcom/appsflyer/AppsFlyerLib;->sendTrackingWithEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$300(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/util/Map;

    .prologue
    .line 32
    invoke-static {p0}, Lcom/appsflyer/AppsFlyerLib;->getEventTag(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Landroid/content/Context;Z)I
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    invoke-static {p0, p1}, Lcom/appsflyer/AppsFlyerLib;->getCounter(Landroid/content/Context;Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Landroid/content/Context;Z)I
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    invoke-static {p0, p1}, Lcom/appsflyer/AppsFlyerLib;->getIAECounter(Landroid/content/Context;Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-static {p0}, Lcom/appsflyer/AppsFlyerLib;->mapToString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/ref/WeakReference;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-static/range {p0 .. p6}, Lcom/appsflyer/AppsFlyerLib;->sendRequestToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$800()Lcom/appsflyer/AppsFlyerConversionListener;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/appsflyer/AppsFlyerLib;->conversionDataListener:Lcom/appsflyer/AppsFlyerConversionListener;

    return-object v0
.end method

.method static synthetic access$900(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-static {p0}, Lcom/appsflyer/AppsFlyerLib;->getConfiguredChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static addAdvertiserIDData(Landroid/content/Context;Ljava/util/Map;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 967
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    const-string/jumbo v4, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 968
    invoke-static {p0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v0

    .line 969
    .local v0, "adInfo":Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v1

    .line 970
    .local v1, "advertiserId":Ljava/lang/String;
    const-string/jumbo v4, "advertiserId"

    invoke-interface {p1, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 971
    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x1

    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    .line 972
    .local v2, "advertiserIdEnabled":Ljava/lang/String;
    const-string/jumbo v4, "advertiserIdEnabled"

    invoke-interface {p1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 973
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v4

    const-string/jumbo v5, "advertiserId"

    invoke-virtual {v4, v5, v1}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 974
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v4

    const-string/jumbo v5, "advertiserIdEnabled"

    invoke-virtual {v4, v5, v2}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 997
    .end local v0    # "adInfo":Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    .end local v1    # "advertiserId":Ljava/lang/String;
    .end local v2    # "advertiserIdEnabled":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 971
    .restart local v0    # "adInfo":Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    .restart local v1    # "advertiserId":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 975
    .end local v0    # "adInfo":Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    .end local v1    # "advertiserId":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 976
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    invoke-static {p0}, Lcom/appsflyer/AppsFlyerLib;->shouldLog(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 977
    const-string/jumbo v4, "AppsFlyer_1.17"

    const-string/jumbo v5, "WARNING:Google Play services SDK jar is missing."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 979
    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v3

    .line 980
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v4

    const-string/jumbo v5, "advertiserId"

    invoke-virtual {v4, v5}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 981
    .restart local v1    # "advertiserId":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 982
    const-string/jumbo v4, "advertiserId"

    invoke-interface {p1, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 985
    :cond_2
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v4

    const-string/jumbo v5, "advertiserIdEnabled"

    invoke-virtual {v4, v5}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 986
    .restart local v2    # "advertiserIdEnabled":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 987
    const-string/jumbo v4, "advertiserIdEnabled"

    invoke-interface {p1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 989
    :cond_3
    invoke-virtual {v3}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 990
    const-string/jumbo v4, "AppsFlyer_1.17"

    invoke-virtual {v3}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    :goto_2
    const-string/jumbo v4, "Could not fetch advertiser id: "

    invoke-virtual {v3}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, p0}, Lcom/appsflyer/AppsFlyerLib;->debugAction(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_1

    .line 992
    :cond_4
    const-string/jumbo v4, "AppsFlyer_1.17"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private static addDeviceTracking(Landroid/content/Context;Ljava/util/Map;)V
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 754
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v11

    const-string/jumbo v12, "deviceTrackingDisabled"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 756
    .local v4, "deviceTrackingDisabled":Z
    if-eqz v4, :cond_1

    .line 757
    const-string/jumbo v11, "deviceTrackingDisabled"

    const-string/jumbo v12, "true"

    invoke-interface {p1, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 811
    :cond_0
    :goto_0
    return-void

    .line 759
    :cond_1
    const-string/jumbo v11, "appsflyer-data"

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 760
    .local v10, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v11

    const-string/jumbo v12, "collectIMEI"

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 761
    .local v3, "collectIMEI":Z
    const-string/jumbo v11, "imeiCached"

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 762
    .local v8, "imeiCachedString":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 764
    :try_start_0
    const-string/jumbo v11, "phone"

    invoke-virtual {p0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    .line 765
    .local v9, "manager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    const-string/jumbo v12, "getDeviceId"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Class;

    invoke-virtual {v11, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-virtual {v11, v9, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 766
    .local v7, "imei":Ljava/lang/String;
    if-nez v7, :cond_4

    .line 767
    move-object v7, v8

    .line 777
    :cond_2
    :goto_1
    if-eqz v7, :cond_3

    .line 778
    const-string/jumbo v11, "imei"

    invoke-interface {p1, v11, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 787
    .end local v7    # "imei":Ljava/lang/String;
    .end local v9    # "manager":Landroid/telephony/TelephonyManager;
    :cond_3
    :goto_2
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v11

    const-string/jumbo v12, "collectAndroidId"

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 788
    .local v2, "collectAndroidId":Z
    const-string/jumbo v11, "androidIdCached"

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 789
    .local v1, "androidIdCachedString":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 791
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "android_id"

    invoke-static {v11, v12}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 792
    .local v0, "androidId":Ljava/lang/String;
    if-nez v0, :cond_6

    .line 793
    move-object v0, v1

    .line 803
    :goto_3
    if-eqz v0, :cond_0

    .line 804
    const-string/jumbo v11, "android_id"

    invoke-interface {p1, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 806
    .end local v0    # "androidId":Ljava/lang/String;
    :catch_0
    move-exception v11

    goto :goto_0

    .line 768
    .end local v1    # "androidIdCachedString":Ljava/lang/String;
    .end local v2    # "collectAndroidId":Z
    .restart local v7    # "imei":Ljava/lang/String;
    .restart local v9    # "manager":Landroid/telephony/TelephonyManager;
    :cond_4
    if-nez v8, :cond_2

    .line 769
    :try_start_2
    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 770
    .local v6, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v11, "imeiCached"

    invoke-interface {v6, v11, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 771
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x9

    if-lt v11, v12, :cond_5

    .line 772
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 781
    .end local v6    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v7    # "imei":Ljava/lang/String;
    .end local v9    # "manager":Landroid/telephony/TelephonyManager;
    :catch_1
    move-exception v5

    .line 783
    .local v5, "e":Ljava/lang/Exception;
    const-string/jumbo v11, "AppsFlyer_1.17"

    const-string/jumbo v12, "WARNING:READ_PHONE_STATE is missing"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 774
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v6    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v7    # "imei":Ljava/lang/String;
    .restart local v9    # "manager":Landroid/telephony/TelephonyManager;
    :cond_5
    :try_start_3
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 795
    .end local v6    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v7    # "imei":Ljava/lang/String;
    .end local v9    # "manager":Landroid/telephony/TelephonyManager;
    .restart local v0    # "androidId":Ljava/lang/String;
    .restart local v1    # "androidIdCachedString":Ljava/lang/String;
    .restart local v2    # "collectAndroidId":Z
    :cond_6
    :try_start_4
    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 796
    .restart local v6    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v11, "androidIdCached"

    invoke-interface {v6, v11, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 797
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x9

    if-lt v11, v12, :cond_7

    .line 798
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_3

    .line 800
    :cond_7
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3
.end method

.method private static attributionStringToMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 6
    .param p0, "inputString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 414
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 417
    .local v0, "conversionData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 418
    .local v3, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 419
    .local v2, "iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 420
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 421
    .local v4, "key":Ljava/lang/String;
    sget-object v5, Lcom/appsflyer/AppsFlyerLib;->IGNORABLE_KEYS:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 422
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 425
    .end local v2    # "iterator":Ljava/util/Iterator;
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "key":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 426
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v5, "AppsFlyer_1.17"

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 427
    const/4 v0, 0x0

    .line 430
    .end local v0    # "conversionData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_1
    return-object v0
.end method

.method private static callServer(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 16
    .param p0, "url"    # Ljava/net/URL;
    .param p1, "postData"    # Ljava/lang/String;
    .param p2, "appsFlyerDevKey"    # Ljava/lang/String;
    .param p4, "cacheKey"    # Ljava/lang/String;
    .param p5, "eventLogTag"    # Ljava/lang/String;
    .param p6, "shouldRequestConvesrion"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1114
    .local p3, "ctxReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/Context;>;"
    invoke-virtual/range {p3 .. p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    .line 1116
    .local v4, "context":Landroid/content/Context;
    const/4 v2, 0x0

    .line 1118
    .local v2, "connection":Ljava/net/HttpURLConnection;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    .line 1120
    const-string/jumbo v12, "POST"

    invoke-virtual {v2, v12}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1121
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    array-length v3, v12

    .line 1122
    .local v3, "contentLength":I
    const-string/jumbo v12, "Content-Length"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v12, v13}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1123
    const-string/jumbo v12, "Connection"

    const-string/jumbo v13, "close"

    invoke-virtual {v2, v12, v13}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1124
    const/16 v12, 0x2710

    invoke-virtual {v2, v12}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1125
    const/4 v12, 0x1

    invoke-virtual {v2, v12}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1126
    const/4 v7, 0x0

    .line 1128
    .local v7, "out":Ljava/io/OutputStreamWriter;
    :try_start_1
    new-instance v8, Ljava/io/OutputStreamWriter;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v12

    invoke-direct {v8, v12}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1129
    .end local v7    # "out":Ljava/io/OutputStreamWriter;
    .local v8, "out":Ljava/io/OutputStreamWriter;
    :try_start_2
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1131
    if-eqz v8, :cond_0

    .line 1132
    :try_start_3
    invoke-virtual {v8}, Ljava/io/OutputStreamWriter;->close()V

    .line 1135
    :cond_0
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v11

    .line 1136
    .local v11, "statusCode":I
    invoke-static {v4}, Lcom/appsflyer/AppsFlyerLib;->shouldLog(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1137
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "response code: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p5

    invoke-static {v0, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    :cond_1
    const-string/jumbo v12, "SERVER_RESPONSE_CODE"

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p5

    invoke-static {v4, v0, v12, v13}, Lcom/appsflyer/AppsFlyerLib;->monitor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1140
    const-string/jumbo v12, "response from server. status="

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v4}, Lcom/appsflyer/AppsFlyerLib;->debugAction(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 1141
    const-string/jumbo v12, "appsflyer-data"

    const/4 v13, 0x0

    invoke-virtual {v4, v12, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 1142
    .local v10, "sharedPreferences":Landroid/content/SharedPreferences;
    const/16 v12, 0xc8

    if-ne v11, v12, :cond_3

    .line 1143
    if-eqz p4, :cond_2

    .line 1144
    invoke-static {}, Lcom/appsflyer/cache/CacheManager;->getInstance()Lcom/appsflyer/cache/CacheManager;

    move-result-object v12

    move-object/from16 v0, p4

    invoke-virtual {v12, v0, v4}, Lcom/appsflyer/cache/CacheManager;->deleteRequest(Ljava/lang/String;Landroid/content/Context;)V

    .line 1146
    :cond_2
    invoke-virtual/range {p3 .. p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_3

    if-nez p4, :cond_3

    .line 1148
    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 1149
    .local v6, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v12, "sentSuccessfully"

    const-string/jumbo v13, "true"

    invoke-interface {v6, v12, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1150
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1151
    invoke-static {v4}, Lcom/appsflyer/AppsFlyerLib;->checkCache(Landroid/content/Context;)V

    .line 1155
    .end local v6    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_3
    const-string/jumbo v12, "attributionId"

    const/4 v13, 0x0

    invoke-interface {v10, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_8

    if-eqz p2, :cond_8

    if-eqz p6, :cond_8

    .line 1157
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v9

    .line 1158
    .local v9, "scheduler":Ljava/util/concurrent/ScheduledExecutorService;
    new-instance v12, Lcom/appsflyer/AppsFlyerLib$InstallAttributionIdFetcher;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-direct {v12, v13, v0, v9}, Lcom/appsflyer/AppsFlyerLib$InstallAttributionIdFetcher;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/ScheduledExecutorService;)V

    const-wide/16 v14, 0xa

    sget-object v13, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v9, v12, v14, v15, v13}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1177
    .end local v9    # "scheduler":Ljava/util/concurrent/ScheduledExecutorService;
    :cond_4
    :goto_0
    if-eqz v2, :cond_5

    .line 1178
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1181
    :cond_5
    return-void

    .line 1131
    .end local v8    # "out":Ljava/io/OutputStreamWriter;
    .end local v10    # "sharedPreferences":Landroid/content/SharedPreferences;
    .end local v11    # "statusCode":I
    .restart local v7    # "out":Ljava/io/OutputStreamWriter;
    :catchall_0
    move-exception v12

    :goto_1
    if-eqz v7, :cond_6

    .line 1132
    :try_start_4
    invoke-virtual {v7}, Ljava/io/OutputStreamWriter;->close()V

    :cond_6
    throw v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1177
    .end local v3    # "contentLength":I
    .end local v7    # "out":Ljava/io/OutputStreamWriter;
    :catchall_1
    move-exception v12

    if-eqz v2, :cond_7

    .line 1178
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_7
    throw v12

    .line 1159
    .restart local v3    # "contentLength":I
    .restart local v8    # "out":Ljava/io/OutputStreamWriter;
    .restart local v10    # "sharedPreferences":Landroid/content/SharedPreferences;
    .restart local v11    # "statusCode":I
    :cond_8
    if-nez p2, :cond_9

    .line 1160
    :try_start_5
    const-string/jumbo v12, "AppsFlyer dev key is missing."

    move-object/from16 v0, p5

    invoke-static {v0, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1161
    :cond_9
    if-eqz p6, :cond_4

    sget-object v12, Lcom/appsflyer/AppsFlyerLib;->conversionDataListener:Lcom/appsflyer/AppsFlyerConversionListener;

    if-eqz v12, :cond_4

    const-string/jumbo v12, "attributionId"

    const/4 v13, 0x0

    .line 1163
    invoke-interface {v10, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_4

    const/4 v12, 0x0

    .line 1164
    invoke-static {v4, v12}, Lcom/appsflyer/AppsFlyerLib;->getCounter(Landroid/content/Context;Z)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v12

    const/4 v13, 0x1

    if-le v12, v13, :cond_4

    .line 1168
    :try_start_6
    invoke-static {v4}, Lcom/appsflyer/AppsFlyerLib;->getConversionData(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v5

    .line 1169
    .local v5, "conversionData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v5, :cond_4

    .line 1170
    sget-object v12, Lcom/appsflyer/AppsFlyerLib;->conversionDataListener:Lcom/appsflyer/AppsFlyerConversionListener;

    invoke-interface {v12, v5}, Lcom/appsflyer/AppsFlyerConversionListener;->onInstallConversionDataLoaded(Ljava/util/Map;)V
    :try_end_6
    .catch Lcom/appsflyer/AttributionIDNotReady; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    .line 1172
    .end local v5    # "conversionData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v12

    goto :goto_0

    .line 1131
    .end local v10    # "sharedPreferences":Landroid/content/SharedPreferences;
    .end local v11    # "statusCode":I
    :catchall_2
    move-exception v12

    move-object v7, v8

    .end local v8    # "out":Ljava/io/OutputStreamWriter;
    .restart local v7    # "out":Ljava/io/OutputStreamWriter;
    goto :goto_1
.end method

.method private static checkCache(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 884
    sget-boolean v0, Lcom/appsflyer/AppsFlyerLib;->isDuringCheckCache:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/appsflyer/AppsFlyerLib;->lastCacheCheck:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3a98

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 892
    :cond_0
    :goto_0
    return-void

    .line 887
    :cond_1
    sget-object v0, Lcom/appsflyer/AppsFlyerLib;->cacheScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_0

    .line 890
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/appsflyer/AppsFlyerLib;->cacheScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 891
    sget-object v0, Lcom/appsflyer/AppsFlyerLib;->cacheScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/appsflyer/AppsFlyerLib$CachedRequestSender;

    invoke-direct {v1, p0}, Lcom/appsflyer/AppsFlyerLib$CachedRequestSender;-><init>(Landroid/content/Context;)V

    const-wide/16 v2, 0x1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0
.end method

.method private static debugAction(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 2
    .param p0, "actionMsg"    # Ljava/lang/String;
    .param p1, "parameter"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 176
    if-eqz p2, :cond_0

    const-string/jumbo v0, "com.appsflyer"

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    invoke-static {}, Lcom/appsflyer/DebugLogQueue;->getInstance()Lcom/appsflyer/DebugLogQueue;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appsflyer/DebugLogQueue;->push(Ljava/lang/String;)V

    .line 179
    :cond_0
    return-void
.end method

.method public static getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 250
    const-string/jumbo v0, "appid"

    invoke-static {v0}, Lcom/appsflyer/AppsFlyerLib;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAppUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    const-string/jumbo v0, "AppUserId"

    invoke-static {v0}, Lcom/appsflyer/AppsFlyerLib;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAppsFlyerUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1070
    invoke-static {p0}, Lcom/appsflyer/Installation;->id(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAttributionId(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 9
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v3, 0x0

    .line 1001
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "aid"

    aput-object v1, v2, v0

    .line 1002
    .local v2, "projection":[Ljava/lang/String;
    sget-object v1, Lcom/appsflyer/AppsFlyerLib;->ATTRIBUTION_ID_CONTENT_URI:Landroid/net/Uri;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1003
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 1005
    .local v6, "attributionId":Ljava/lang/String;
    if-eqz v7, :cond_0

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 1014
    :cond_0
    if-eqz v7, :cond_1

    .line 1015
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1021
    :cond_1
    :goto_0
    return-object v3

    .line 1008
    :cond_2
    :try_start_2
    const-string/jumbo v0, "aid"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v6

    .line 1014
    if-eqz v7, :cond_3

    .line 1015
    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :cond_3
    :goto_1
    move-object v3, v6

    .line 1021
    goto :goto_0

    .line 1010
    :catch_0
    move-exception v8

    .line 1011
    .local v8, "e":Ljava/lang/Exception;
    :try_start_4
    const-string/jumbo v0, "AppsFlyer_1.17"

    const-string/jumbo v1, "Could not collect cursor attribution"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1014
    if-eqz v7, :cond_3

    .line 1015
    :try_start_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 1017
    :catch_1
    move-exception v0

    goto :goto_1

    .line 1013
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 1014
    if-eqz v7, :cond_4

    .line 1015
    :try_start_6
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 1019
    :cond_4
    :goto_2
    throw v0

    .line 1017
    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_2
.end method

.method private static getCachedChannel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "currentChannel"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 932
    const-string/jumbo v2, "appsflyer-data"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 933
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "CACHED_CHANNEL"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 934
    const-string/jumbo v2, "CACHED_CHANNEL"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 939
    .end local p1    # "currentChannel":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 936
    .restart local p1    # "currentChannel":Ljava/lang/String;
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 937
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "CACHED_CHANNEL"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 938
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private static getCachedStore(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 820
    const-string/jumbo v4, "appsflyer-data"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 821
    .local v2, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string/jumbo v4, "INSTALL_STORE"

    invoke-interface {v2, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 822
    const-string/jumbo v4, "INSTALL_STORE"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 829
    :goto_0
    return-object v3

    .line 824
    :cond_0
    invoke-static {p0}, Lcom/appsflyer/AppsFlyerLib;->isAppsFlyerFirstLaunch(Landroid/content/Context;)Z

    move-result v1

    .line 825
    .local v1, "isFirstLaunch":Z
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 826
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/appsflyer/AppsFlyerLib;->getCurrentStore(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 827
    .local v3, "store":Ljava/lang/String;
    :cond_1
    const-string/jumbo v4, "INSTALL_STORE"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 828
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private static getConfiguredChannel(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 896
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v5

    const-string/jumbo v6, "channel"

    invoke-virtual {v5, v6}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 897
    .local v2, "channel":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 899
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x80

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 900
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 901
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 902
    const-string/jumbo v5, "CHANNEL"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 903
    .local v3, "channelObj":Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 904
    instance-of v5, v3, Ljava/lang/String;

    if-eqz v5, :cond_1

    check-cast v3, Ljava/lang/String;

    .end local v3    # "channelObj":Ljava/lang/Object;
    move-object v2, v3

    .line 911
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-object v2

    .line 904
    .restart local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v1    # "bundle":Landroid/os/Bundle;
    .restart local v3    # "channelObj":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 907
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v3    # "channelObj":Ljava/lang/Object;
    :catch_0
    move-exception v4

    .line 908
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "AppsFlyer_1.17"

    const-string/jumbo v6, "Could not load CHANNEL value"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getConversionData(Landroid/content/Context;)Ljava/util/Map;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/appsflyer/AttributionIDNotReady;
        }
    .end annotation

    .prologue
    .line 316
    const-string/jumbo v3, "appsflyer-data"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 317
    .local v2, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/appsflyer/AppsFlyerProperties;->getReferrer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 318
    .local v1, "referrer":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    const-string/jumbo v3, "af_tranid"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 319
    invoke-static {v1, p0}, Lcom/appsflyer/AppsFlyerLib;->referrerStringToMap(Ljava/lang/String;Landroid/content/Context;)Ljava/util/Map;

    move-result-object v3

    .line 324
    :goto_0
    return-object v3

    .line 321
    :cond_0
    const-string/jumbo v3, "attributionId"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 323
    .local v0, "attributionString":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 324
    invoke-static {v0}, Lcom/appsflyer/AppsFlyerLib;->attributionStringToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    goto :goto_0

    .line 326
    :cond_1
    new-instance v3, Lcom/appsflyer/AttributionIDNotReady;

    invoke-direct {v3}, Lcom/appsflyer/AttributionIDNotReady;-><init>()V

    throw v3
.end method

.method public static getConversionData(Landroid/content/Context;Lcom/appsflyer/ConversionDataListener;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "conversionDataListener"    # Lcom/appsflyer/ConversionDataListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 350
    new-instance v0, Lcom/appsflyer/AppsFlyerLib$1;

    invoke-direct {v0, p1}, Lcom/appsflyer/AppsFlyerLib$1;-><init>(Lcom/appsflyer/ConversionDataListener;)V

    invoke-static {p0, v0}, Lcom/appsflyer/AppsFlyerLib;->registerConversionListener(Landroid/content/Context;Lcom/appsflyer/AppsFlyerConversionListener;)V

    .line 367
    return-void
.end method

.method private static getCounter(Landroid/content/Context;Z)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isIncrease"    # Z

    .prologue
    const/4 v4, 0x0

    .line 1025
    const-string/jumbo v3, "appsflyer-data"

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1027
    .local v2, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string/jumbo v3, "appsFlyerCount"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1029
    .local v0, "counter":I
    if-eqz p1, :cond_0

    .line 1030
    add-int/lit8 v0, v0, 0x1

    .line 1031
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1032
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v3, "appsFlyerCount"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1033
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1036
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return v0
.end method

.method private static getCurrentStore(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 836
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x80

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 837
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 838
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_1

    .line 839
    const-string/jumbo v4, "AF_STORE"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 840
    .local v3, "storeObj":Ljava/lang/Object;
    if-eqz v3, :cond_1

    .line 841
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_0

    check-cast v3, Ljava/lang/String;

    .line 849
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v3    # "storeObj":Ljava/lang/Object;
    :goto_0
    return-object v3

    .line 841
    .restart local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v1    # "bundle":Landroid/os/Bundle;
    .restart local v3    # "storeObj":Ljava/lang/Object;
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 844
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v3    # "storeObj":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 845
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {p0}, Lcom/appsflyer/AppsFlyerLib;->shouldLog(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 846
    const-string/jumbo v4, "AppsFlyer_1.17"

    const-string/jumbo v5, "Could not find AF_STORE value in the manifest"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 849
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static getEventTag(Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 449
    .local p0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "af_timestamp"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 450
    .local v0, "timestamp":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    .line 451
    :cond_0
    const-string/jumbo v1, "AppsFlyer_1.17"

    .line 453
    :goto_0
    return-object v1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "AppsFlyer_1.17-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static getFirstInstallDate(Ljava/text/SimpleDateFormat;Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "dateFormat"    # Ljava/text/SimpleDateFormat;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 944
    const-string/jumbo v3, "appsflyer-data"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 945
    .local v2, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string/jumbo v3, "appsFlyerFirstInstall"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 946
    .local v1, "firstLaunchDate":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 947
    invoke-static {p1}, Lcom/appsflyer/AppsFlyerLib;->isAppsFlyerFirstLaunch(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 948
    invoke-static {p1}, Lcom/appsflyer/AppsFlyerLib;->shouldLog(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 949
    const-string/jumbo v3, "AppsFlyer_1.17"

    const-string/jumbo v4, "AppsFlyer: first launch detected"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    :cond_0
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 955
    :goto_0
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 956
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v3, "appsFlyerFirstInstall"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 957
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 959
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    invoke-static {p1}, Lcom/appsflyer/AppsFlyerLib;->shouldLog(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 960
    const-string/jumbo v3, "AppsFlyer_1.17"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "AppsFlyer: first launch date: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    :cond_2
    return-object v1

    .line 953
    :cond_3
    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method private static getIAECounter(Landroid/content/Context;Z)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isIncrease"    # Z

    .prologue
    const/4 v4, 0x0

    .line 1040
    const-string/jumbo v3, "appsflyer-data"

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1042
    .local v2, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string/jumbo v3, "appsFlyerCount"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1044
    .local v0, "counter":I
    if-eqz p1, :cond_0

    .line 1045
    add-int/lit8 v0, v0, 0x1

    .line 1046
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1047
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v3, "appsFlyerCount"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1048
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1051
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return v0
.end method

.method private static getNetwork(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1056
    const-string/jumbo v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1058
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 1059
    .local v2, "wifi":Landroid/net/NetworkInfo;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1060
    const-string/jumbo v3, "WIFI"

    .line 1066
    :goto_0
    return-object v3

    .line 1062
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 1063
    .local v1, "mobile":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1064
    const-string/jumbo v3, "MOBILE"

    goto :goto_0

    .line 1066
    :cond_1
    const-string/jumbo v3, "unkown"

    goto :goto_0
.end method

.method private static getPreInstallName(Landroid/content/Context;)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 853
    const-string/jumbo v8, "appsflyer-data"

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 854
    .local v6, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string/jumbo v8, "preInstallName"

    invoke-interface {v6, v8}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 855
    const-string/jumbo v8, "preInstallName"

    const/4 v9, 0x0

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 878
    :goto_0
    return-object v5

    .line 857
    :cond_0
    invoke-static {p0}, Lcom/appsflyer/AppsFlyerLib;->isAppsFlyerFirstLaunch(Landroid/content/Context;)Z

    move-result v4

    .line 858
    .local v4, "isFirstLaunch":Z
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 859
    .local v3, "editor":Landroid/content/SharedPreferences$Editor;
    const/4 v5, 0x0

    .line 860
    .local v5, "preInstallProviderName":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 862
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x80

    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 863
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 864
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_1

    .line 865
    const-string/jumbo v8, "AF_PRE_INSTALL_NAME"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 866
    .local v7, "storeObj":Ljava/lang/Object;
    if-eqz v7, :cond_1

    .line 867
    instance-of v8, v7, Ljava/lang/String;

    if-eqz v8, :cond_2

    check-cast v7, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v7    # "storeObj":Ljava/lang/Object;
    move-object v5, v7

    .line 876
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_1
    :goto_1
    const-string/jumbo v8, "preInstallName"

    invoke-interface {v3, v8, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 877
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 867
    .restart local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v1    # "bundle":Landroid/os/Bundle;
    .restart local v7    # "storeObj":Ljava/lang/Object;
    :cond_2
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    goto :goto_1

    .line 870
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v7    # "storeObj":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 871
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {p0}, Lcom/appsflyer/AppsFlyerLib;->shouldLog(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 872
    const-string/jumbo v8, "AppsFlyer_1.17"

    const-string/jumbo v9, "Could not find AF_PRE_INSTALL_NAME value in the manifest"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 201
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static isAppsFlyerFirstLaunch(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 814
    const-string/jumbo v2, "appsflyer-data"

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 816
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "appsFlyerCount"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isPreInstalledApp(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 917
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 922
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 923
    const/4 v2, 0x1

    .line 928
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    return v2

    .line 925
    :catch_0
    move-exception v1

    .line 926
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v3, "AppsFlyer_1.17"

    const-string/jumbo v4, "Could not check if app is pre installed"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static mapToString(Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 1278
    .local p0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1279
    .local v1, "postData":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1280
    .local v0, "key":Ljava/lang/String;
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1281
    .local v2, "value":Ljava/lang/String;
    if-nez v2, :cond_1

    const-string/jumbo v2, ""

    .line 1282
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 1283
    const/16 v4, 0x26

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1285
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x3d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1281
    :cond_1
    const-string/jumbo v4, "UTF-8"

    invoke-static {v2, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 1289
    .end local v0    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static monitor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventIdentifier"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 283
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v1

    const-string/jumbo v2, "shouldMonitor"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 285
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.appsflyer.MonitorBroadcast"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 286
    .local v0, "localIntent":Landroid/content/Intent;
    const-string/jumbo v1, "com.appsflyer.nightvision"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 287
    const-string/jumbo v1, "message"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 288
    const-string/jumbo v1, "value"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 289
    const-string/jumbo v1, "packageName"

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 290
    const-string/jumbo v1, "pid"

    new-instance v2, Ljava/lang/Integer;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 291
    const-string/jumbo v1, "eventIdentifier"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 292
    const-string/jumbo v1, "sdk"

    const-string/jumbo v2, "2.3.1.17"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 297
    .end local v0    # "localIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private static referrerStringToMap(Ljava/lang/String;Landroid/content/Context;)Ljava/util/Map;
    .locals 19
    .param p0, "referrer"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 370
    const/4 v4, 0x0

    .line 371
    .local v4, "didFindPrt":Z
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 372
    .local v2, "conversionData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v15, 0x26

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    .line 373
    .local v13, "separator":I
    if-ltz v13, :cond_6

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v16, v13, 0x1

    move/from16 v0, v16

    if-le v15, v0, :cond_6

    .line 374
    const-string/jumbo v15, "\\&"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 375
    .local v12, "params":[Ljava/lang/String;
    array-length v0, v12

    move/from16 v16, v0

    const/4 v15, 0x0

    :goto_0
    move/from16 v0, v16

    if-ge v15, v0, :cond_4

    aget-object v11, v12, v15

    .line 376
    .local v11, "param":Ljava/lang/String;
    const-string/jumbo v17, "="

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 377
    .local v8, "keyAndValue":[Ljava/lang/String;
    array-length v0, v8

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_1

    const/16 v17, 0x1

    aget-object v14, v8, v17

    .line 378
    .local v14, "value":Ljava/lang/String;
    :goto_1
    const/16 v17, 0x0

    aget-object v9, v8, v17

    .line 379
    .local v9, "name":Ljava/lang/String;
    const-string/jumbo v17, "c"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 380
    const-string/jumbo v9, "campaign"

    .line 388
    :cond_0
    :goto_2
    invoke-interface {v2, v9, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 377
    .end local v9    # "name":Ljava/lang/String;
    .end local v14    # "value":Ljava/lang/String;
    :cond_1
    const-string/jumbo v14, ""

    goto :goto_1

    .line 381
    .restart local v9    # "name":Ljava/lang/String;
    .restart local v14    # "value":Ljava/lang/String;
    :cond_2
    const-string/jumbo v17, "pid"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 382
    const-string/jumbo v9, "media_source"

    goto :goto_2

    .line 383
    :cond_3
    const-string/jumbo v17, "af_prt"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 384
    const/4 v4, 0x1

    .line 385
    invoke-interface {v2, v9, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    const-string/jumbo v9, "agency"

    goto :goto_2

    .line 391
    .end local v8    # "keyAndValue":[Ljava/lang/String;
    .end local v9    # "name":Ljava/lang/String;
    .end local v11    # "param":Ljava/lang/String;
    .end local v14    # "value":Ljava/lang/String;
    :cond_4
    :try_start_0
    const-string/jumbo v15, "install_time"

    invoke-interface {v2, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_5

    .line 392
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v10

    .line 394
    .local v10, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-wide v6, v10, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    .line 395
    .local v6, "firstInstallTime":J
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v15, "yyyy-MM-dd hh:mm:ss"

    invoke-direct {v3, v15}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 396
    .local v3, "dateFormat":Ljava/text/SimpleDateFormat;
    const-string/jumbo v15, "install_time"

    new-instance v16, Ljava/util/Date;

    move-object/from16 v0, v16

    invoke-direct {v0, v6, v7}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v2, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 401
    .end local v3    # "dateFormat":Ljava/text/SimpleDateFormat;
    .end local v6    # "firstInstallTime":J
    .end local v10    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_5
    :goto_3
    const-string/jumbo v15, "af_status"

    invoke-interface {v2, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_6

    .line 402
    const-string/jumbo v15, "af_status"

    const-string/jumbo v16, "Non-organic"

    move-object/from16 v0, v16

    invoke-interface {v2, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    .end local v12    # "params":[Ljava/lang/String;
    :cond_6
    if-eqz v4, :cond_7

    .line 407
    const-string/jumbo v15, "media_source"

    invoke-interface {v2, v15}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    :cond_7
    return-object v2

    .line 398
    .restart local v12    # "params":[Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 399
    .local v5, "e":Ljava/lang/Exception;
    const-string/jumbo v15, "AppsFlyer_1.17"

    const-string/jumbo v16, "Could not fetch install time"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public static registerConversionListener(Landroid/content/Context;Lcom/appsflyer/AppsFlyerConversionListener;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "conversionDataListener"    # Lcom/appsflyer/AppsFlyerConversionListener;

    .prologue
    .line 331
    if-nez p1, :cond_0

    .line 342
    :goto_0
    return-void

    .line 334
    :cond_0
    sput-object p1, Lcom/appsflyer/AppsFlyerLib;->conversionDataListener:Lcom/appsflyer/AppsFlyerConversionListener;

    goto :goto_0
.end method

.method private static runInBackground(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appsFlyerKey"    # Ljava/lang/String;
    .param p2, "eventName"    # Ljava/lang/String;
    .param p3, "eventValue"    # Ljava/lang/String;
    .param p4, "referrer"    # Ljava/lang/String;
    .param p5, "isNewAPI"    # Z

    .prologue
    .line 443
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v7

    .line 444
    .local v7, "scheduler":Ljava/util/concurrent/ScheduledExecutorService;
    new-instance v0, Lcom/appsflyer/AppsFlyerLib$DataCollector;

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v8}, Lcom/appsflyer/AppsFlyerLib$DataCollector;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/concurrent/ExecutorService;Lcom/appsflyer/AppsFlyerLib$1;)V

    const-wide/16 v2, 0x5

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v7, v0, v2, v3, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 446
    return-void
.end method

.method private static sendRequestToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 10
    .param p0, "urlString"    # Ljava/lang/String;
    .param p1, "postDataString"    # Ljava/lang/String;
    .param p2, "afDevKey"    # Ljava/lang/String;
    .param p4, "cacheKey"    # Ljava/lang/String;
    .param p5, "eventLogTag"    # Ljava/lang/String;
    .param p6, "shouldRequestConversion"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1079
    .local p3, "ctxReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/Context;>;"
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1080
    .local v0, "url":Ljava/net/URL;
    invoke-virtual {p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Lcom/appsflyer/AppsFlyerLib;->shouldLog(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1081
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    :cond_0
    const-string/jumbo v2, "call server."

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "\nPOST:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v2, v3, v1}, Lcom/appsflyer/AppsFlyerLib;->debugAction(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 1084
    invoke-virtual {p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Lcom/appsflyer/AppsFlyerLib;->shouldLog(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1086
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appsflyer/LogMessages;->logMessageMaskKey(Ljava/lang/String;)V

    .line 1088
    :cond_1
    invoke-virtual {p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-string/jumbo v2, "EVENT_DATA"

    invoke-static {v1, p5, v2, p1}, Lcom/appsflyer/AppsFlyerLib;->monitor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1089
    if-eqz p6, :cond_2

    .line 1090
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appsflyer/AppsFlyerProperties;->setLaunchCollectedReferrer()V

    :cond_2
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    .line 1093
    :try_start_0
    invoke-static/range {v0 .. v6}, Lcom/appsflyer/AppsFlyerLib;->callServer(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1105
    :goto_0
    return-void

    .line 1094
    :catch_0
    move-exception v8

    .line 1096
    .local v8, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v1

    const-string/jumbo v2, "useHttpFallback"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 1097
    .local v9, "useHttpFallback":Z
    if-eqz v9, :cond_3

    .line 1098
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "https failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v2, v3, v1}, Lcom/appsflyer/AppsFlyerLib;->debugAction(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 1099
    new-instance v1, Ljava/net/URL;

    const-string/jumbo v2, "https:"

    const-string/jumbo v3, "http:"

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move/from16 v7, p6

    invoke-static/range {v1 .. v7}, Lcom/appsflyer/AppsFlyerLib;->callServer(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1101
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "failed to send requeset to server. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    invoke-virtual {p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-string/jumbo v2, "ERROR"

    invoke-virtual {v8}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, p5, v2, v3}, Lcom/appsflyer/AppsFlyerLib;->monitor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static sendTracking(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 270
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/appsflyer/AppsFlyerLib;->sendTracking(Landroid/content/Context;Ljava/lang/String;)V

    .line 271
    invoke-static {p0}, Lcom/appsflyer/AppsFlyerLib;->shouldLog(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    const-string/jumbo v0, "AppsFlyer_1.17"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Start tracking package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_0
    return-void
.end method

.method public static sendTracking(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appsFlyerKey"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 305
    invoke-static {p0, p1, v0, v0}, Lcom/appsflyer/AppsFlyerLib;->sendTrackingWithEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    return-void
.end method

.method public static sendTrackingWithEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "eventValue"    # Ljava/lang/String;

    .prologue
    .line 309
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lcom/appsflyer/AppsFlyerLib;->sendTrackingWithEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    return-void
.end method

.method public static sendTrackingWithEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appsFlyerKey"    # Ljava/lang/String;
    .param p2, "eventName"    # Ljava/lang/String;
    .param p3, "eventValue"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 435
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    const-string/jumbo v0, "-?\\d+(\\.\\d+)?"

    invoke-virtual {p3, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 436
    const-string/jumbo v0, "AppsFlyer_1.17"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "AppsFLyer: numeric value \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\' for event \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\' will be categorized as a revenue event."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    :cond_0
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appsflyer/AppsFlyerProperties;->getReferrer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 439
    .local v6, "referrer":Ljava/lang/String;
    if-nez v6, :cond_1

    const-string/jumbo v4, ""

    :goto_0
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/appsflyer/AppsFlyerLib;->runInBackground(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 440
    return-void

    :cond_1
    move-object v4, v6

    .line 439
    goto :goto_0
.end method

.method private static sendTrackingWithEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 56
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appsFlyerKey"    # Ljava/lang/String;
    .param p2, "eventName"    # Ljava/lang/String;
    .param p3, "eventValue"    # Ljava/lang/String;
    .param p4, "referrer"    # Ljava/lang/String;
    .param p5, "isUseNewAPI"    # Z

    .prologue
    .line 458
    if-nez p2, :cond_11

    const/4 v8, 0x1

    .line 459
    .local v8, "isLaunchEvent":Z
    :goto_0
    const/16 v16, 0x0

    .line 460
    .local v16, "callReattrapi":Z
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 461
    .local v6, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v4, "af_timestamp"

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v54

    invoke-static/range {v54 .. v55}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    invoke-static {v6}, Lcom/appsflyer/AppsFlyerLib;->getEventTag(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v37

    .line 465
    .local v37, "logTag":Ljava/lang/String;
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/appsflyer/AppsFlyerLib;->shouldLog(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 466
    const-string/jumbo v4, "collect data for server"

    const-string/jumbo v5, ""

    move-object/from16 v0, p0

    invoke-static {v4, v5, v0}, Lcom/appsflyer/AppsFlyerLib;->debugAction(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 468
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "******* sendTrackingWithEvent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v8, :cond_12

    const-string/jumbo v4, "Launch"

    :goto_1
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v37

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    const-string/jumbo v5, "********* sendTrackingWithEvent: "

    if-eqz v8, :cond_13

    const-string/jumbo v4, "Launch"

    :goto_2
    move-object/from16 v0, p0

    invoke-static {v5, v4, v0}, Lcom/appsflyer/AppsFlyerLib;->debugAction(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 471
    :cond_0
    const-string/jumbo v5, "EVENT_CREATED_WITH_NAME"

    if-eqz v8, :cond_14

    const-string/jumbo v4, "Launch"

    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-static {v0, v1, v5, v4}, Lcom/appsflyer/AppsFlyerLib;->monitor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    invoke-static {}, Lcom/appsflyer/cache/CacheManager;->getInstance()Lcom/appsflyer/cache/CacheManager;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/appsflyer/cache/CacheManager;->init(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 476
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x1000

    invoke-virtual {v4, v5, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v42

    .line 477
    .local v42, "packageInfo":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, v42

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v44

    .line 478
    .local v44, "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v4, "android.permission.INTERNET"

    move-object/from16 v0, v44

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 479
    const-string/jumbo v4, "AppsFlyer_1.17"

    const-string/jumbo v5, "Permission android.permission.INTERNET is missing in the AndroidManifest.xml"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    const/4 v4, 0x0

    const-string/jumbo v5, "PERMISSION_INTERNET_MISSING"

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5, v7}, Lcom/appsflyer/AppsFlyerLib;->monitor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    :cond_1
    const-string/jumbo v4, "android.permission.ACCESS_NETWORK_STATE"

    move-object/from16 v0, v44

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 483
    const-string/jumbo v4, "AppsFlyer_1.17"

    const-string/jumbo v5, "Permission android.permission.ACCESS_NETWORK_STATE is missing in the AndroidManifest.xml"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    :cond_2
    const-string/jumbo v4, "android.permission.ACCESS_WIFI_STATE"

    move-object/from16 v0, v44

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 486
    const-string/jumbo v4, "AppsFlyer_1.17"

    const-string/jumbo v5, "Permission android.permission.ACCESS_WIFI_STATE is missing in the AndroidManifest.xml"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 492
    .end local v42    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v44    # "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    :goto_4
    :try_start_2
    new-instance v50, Ljava/lang/StringBuilder;

    invoke-direct/range {v50 .. v50}, Ljava/lang/StringBuilder;-><init>()V

    .line 493
    .local v50, "urlString":Ljava/lang/StringBuilder;
    if-eqz p5, :cond_15

    const-string/jumbo v4, "https://events.appsflyer.com/api/v2.3/androidevent?buildnumber=1.17&app_id="

    :goto_5
    move-object/from16 v0, v50

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    const-string/jumbo v4, "brand"

    sget-object v5, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    const-string/jumbo v4, "device"

    sget-object v5, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    const-string/jumbo v4, "product"

    sget-object v5, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    const-string/jumbo v4, "sdk"

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    const-string/jumbo v4, "model"

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    const-string/jumbo v4, "deviceType"

    sget-object v5, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v4

    const-string/jumbo v5, "sdkExtension"

    invoke-virtual {v4, v5}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    .line 503
    .local v46, "sdkExtension":Ljava/lang/String;
    if-eqz v46, :cond_4

    invoke-virtual/range {v46 .. v46}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4

    .line 504
    const-string/jumbo v4, "sdkExtension"

    move-object/from16 v0, v46

    invoke-interface {v6, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    :cond_4
    invoke-static/range {p0 .. p0}, Lcom/appsflyer/AppsFlyerLib;->getConfiguredChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v18

    .line 509
    .local v18, "currentChannel":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/appsflyer/AppsFlyerLib;->getCachedChannel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 510
    .local v41, "originalChannel":Ljava/lang/String;
    if-eqz v41, :cond_5

    .line 511
    const-string/jumbo v4, "channel"

    move-object/from16 v0, v41

    invoke-interface {v6, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    :cond_5
    if-eqz v41, :cond_6

    move-object/from16 v0, v41

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_6
    if-nez v41, :cond_8

    if-eqz v18, :cond_8

    .line 516
    :cond_7
    const-string/jumbo v4, "af_latestchannel"

    move-object/from16 v0, v18

    invoke-interface {v6, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    :cond_8
    invoke-static/range {p0 .. p0}, Lcom/appsflyer/AppsFlyerLib;->getCachedStore(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v30

    .line 520
    .local v30, "installStore":Ljava/lang/String;
    if-eqz v30, :cond_9

    .line 521
    const-string/jumbo v4, "af_installstore"

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    :cond_9
    invoke-static/range {p0 .. p0}, Lcom/appsflyer/AppsFlyerLib;->getPreInstallName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v43

    .line 525
    .local v43, "preInstallName":Ljava/lang/String;
    if-eqz v43, :cond_a

    .line 526
    const-string/jumbo v4, "af_preinstall_name"

    invoke-virtual/range {v43 .. v43}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    :cond_a
    invoke-static/range {p0 .. p0}, Lcom/appsflyer/AppsFlyerLib;->getCurrentStore(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v19

    .line 530
    .local v19, "currentStore":Ljava/lang/String;
    if-eqz v19, :cond_b

    .line 531
    const-string/jumbo v4, "af_currentstore"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    :cond_b
    move-object/from16 v12, p1

    .line 535
    .local v12, "afKEy":Ljava/lang/String;
    if-eqz v12, :cond_c

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_d

    .line 536
    :cond_c
    const-string/jumbo v4, "AppsFlyerKey"

    invoke-static {v4}, Lcom/appsflyer/AppsFlyerLib;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 538
    :cond_d
    if-eqz v12, :cond_16

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_16

    .line 539
    const-string/jumbo v4, "appsflyerKey"

    invoke-interface {v6, v4, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x8

    if-le v4, v5, :cond_e

    .line 541
    const-string/jumbo v4, "dkh"

    const/4 v5, 0x0

    const/16 v7, 0x8

    invoke-virtual {v12, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    :cond_e
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getAppUserId()Ljava/lang/String;

    move-result-object v13

    .line 551
    .local v13, "appUserId":Ljava/lang/String;
    if-eqz v13, :cond_f

    .line 552
    const-string/jumbo v4, "appUserId"

    invoke-interface {v6, v4, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    :cond_f
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v4

    const-string/jumbo v5, "userEmails"

    invoke-virtual {v4, v5}, Lcom/appsflyer/AppsFlyerProperties;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v52

    .line 556
    .local v52, "userEmails":[Ljava/lang/String;
    if-eqz v52, :cond_27

    .line 557
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    .line 558
    .local v25, "emailsSH1AsString":Ljava/lang/StringBuilder;
    move-object/from16 v0, v52

    array-length v5, v0

    const/4 v4, 0x0

    :goto_6
    if-ge v4, v5, :cond_17

    aget-object v24, v52, v4

    .line 559
    .local v24, "email":Ljava/lang/String;
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    const/4 v9, 0x1

    if-le v7, v9, :cond_10

    .line 560
    const/16 v7, 0x2c

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 562
    :cond_10
    invoke-static/range {v24 .. v24}, Lcom/appsflyer/HashUtils;->toSHA1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 458
    .end local v6    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "isLaunchEvent":Z
    .end local v12    # "afKEy":Ljava/lang/String;
    .end local v13    # "appUserId":Ljava/lang/String;
    .end local v16    # "callReattrapi":Z
    .end local v18    # "currentChannel":Ljava/lang/String;
    .end local v19    # "currentStore":Ljava/lang/String;
    .end local v24    # "email":Ljava/lang/String;
    .end local v25    # "emailsSH1AsString":Ljava/lang/StringBuilder;
    .end local v30    # "installStore":Ljava/lang/String;
    .end local v37    # "logTag":Ljava/lang/String;
    .end local v41    # "originalChannel":Ljava/lang/String;
    .end local v43    # "preInstallName":Ljava/lang/String;
    .end local v46    # "sdkExtension":Ljava/lang/String;
    .end local v50    # "urlString":Ljava/lang/StringBuilder;
    .end local v52    # "userEmails":[Ljava/lang/String;
    :cond_11
    const/4 v8, 0x0

    goto/16 :goto_0

    .restart local v6    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v8    # "isLaunchEvent":Z
    .restart local v16    # "callReattrapi":Z
    .restart local v37    # "logTag":Ljava/lang/String;
    :cond_12
    move-object/from16 v4, p2

    .line 468
    goto/16 :goto_1

    :cond_13
    move-object/from16 v4, p2

    .line 469
    goto/16 :goto_2

    :cond_14
    move-object/from16 v4, p2

    .line 471
    goto/16 :goto_3

    .line 493
    .restart local v50    # "urlString":Ljava/lang/StringBuilder;
    :cond_15
    const-string/jumbo v4, "https://track.appsflyer.com/api/v2.3/androidevent?buildnumber=1.17&app_id="

    goto/16 :goto_5

    .line 544
    .restart local v12    # "afKEy":Ljava/lang/String;
    .restart local v18    # "currentChannel":Ljava/lang/String;
    .restart local v19    # "currentStore":Ljava/lang/String;
    .restart local v30    # "installStore":Ljava/lang/String;
    .restart local v41    # "originalChannel":Ljava/lang/String;
    .restart local v43    # "preInstallName":Ljava/lang/String;
    .restart local v46    # "sdkExtension":Ljava/lang/String;
    :cond_16
    const-string/jumbo v4, "AppsFlyer dev key is missing!!! Please use  AppsFlyerLib.setAppsFlyerKey(...) to set it. "

    move-object/from16 v0, v37

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    const-string/jumbo v4, "DEV_KEY_MISSING"

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-static {v0, v1, v4, v5}, Lcom/appsflyer/AppsFlyerLib;->monitor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    const-string/jumbo v4, "AppsFlyer will not track this event."

    move-object/from16 v0, v37

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    .end local v12    # "afKEy":Ljava/lang/String;
    .end local v18    # "currentChannel":Ljava/lang/String;
    .end local v19    # "currentStore":Ljava/lang/String;
    .end local v30    # "installStore":Ljava/lang/String;
    .end local v41    # "originalChannel":Ljava/lang/String;
    .end local v43    # "preInstallName":Ljava/lang/String;
    .end local v46    # "sdkExtension":Ljava/lang/String;
    .end local v50    # "urlString":Ljava/lang/StringBuilder;
    :goto_7
    return-void

    .line 564
    .restart local v12    # "afKEy":Ljava/lang/String;
    .restart local v13    # "appUserId":Ljava/lang/String;
    .restart local v18    # "currentChannel":Ljava/lang/String;
    .restart local v19    # "currentStore":Ljava/lang/String;
    .restart local v25    # "emailsSH1AsString":Ljava/lang/StringBuilder;
    .restart local v30    # "installStore":Ljava/lang/String;
    .restart local v41    # "originalChannel":Ljava/lang/String;
    .restart local v43    # "preInstallName":Ljava/lang/String;
    .restart local v46    # "sdkExtension":Ljava/lang/String;
    .restart local v50    # "urlString":Ljava/lang/StringBuilder;
    .restart local v52    # "userEmails":[Ljava/lang/String;
    :cond_17
    const-string/jumbo v4, "sha1_el_arr"

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    .end local v25    # "emailsSH1AsString":Ljava/lang/StringBuilder;
    :cond_18
    :goto_8
    if-eqz p2, :cond_19

    .line 573
    const-string/jumbo v4, "eventName"

    move-object/from16 v0, p2

    invoke-interface {v6, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    if-eqz p3, :cond_19

    .line 575
    const-string/jumbo v4, "eventValue"

    move-object/from16 v0, p3

    invoke-interface {v6, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    :cond_19
    const-string/jumbo v4, "appid"

    invoke-static {v4}, Lcom/appsflyer/AppsFlyerLib;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1a

    .line 580
    const-string/jumbo v4, "appid"

    const-string/jumbo v5, "appid"

    invoke-static {v5}, Lcom/appsflyer/AppsFlyerLib;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    :cond_1a
    const-string/jumbo v4, "currencyCode"

    invoke-static {v4}, Lcom/appsflyer/AppsFlyerLib;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 583
    .local v17, "currencyCode":Ljava/lang/String;
    if-eqz v17, :cond_1c

    .line 584
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_1b

    .line 585
    const-string/jumbo v4, "AppsFlyer_1.17"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "WARNING:currency code should be 3 characters!!! \'"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "\' is not a legal value."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    :cond_1b
    const-string/jumbo v4, "currency"

    move-object/from16 v0, v17

    invoke-interface {v6, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    :cond_1c
    const-string/jumbo v4, "IS_UPDATE"

    invoke-static {v4}, Lcom/appsflyer/AppsFlyerLib;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 591
    .local v35, "isUpdate":Ljava/lang/String;
    if-eqz v35, :cond_1d

    .line 592
    const-string/jumbo v4, "isUpdate"

    move-object/from16 v0, v35

    invoke-interface {v6, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    :cond_1d
    invoke-static/range {p0 .. p0}, Lcom/appsflyer/AppsFlyerLib;->isPreInstalledApp(Landroid/content/Context;)Z

    move-result v34

    .line 595
    .local v34, "isPreInstall":Z
    const-string/jumbo v4, "af_preinstalled"

    invoke-static/range {v34 .. v34}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4}, Lcom/appsflyer/AppsFlyerLib;->getAttributionId(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v26

    .line 598
    .local v26, "facebookAttributeId":Ljava/lang/String;
    if-eqz v26, :cond_1e

    .line 599
    const-string/jumbo v4, "fb"

    move-object/from16 v0, v26

    invoke-interface {v6, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    :cond_1e
    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/appsflyer/AppsFlyerLib;->addDeviceTracking(Landroid/content/Context;Ljava/util/Map;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 605
    :try_start_3
    invoke-static/range {p0 .. p0}, Lcom/appsflyer/Installation;->id(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v48

    .line 606
    .local v48, "uid":Ljava/lang/String;
    if-eqz v48, :cond_1f

    .line 607
    const-string/jumbo v4, "uid"

    move-object/from16 v0, v48

    invoke-interface {v6, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 614
    .end local v48    # "uid":Ljava/lang/String;
    :cond_1f
    :goto_9
    :try_start_4
    const-string/jumbo v4, "lang"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 620
    :goto_a
    :try_start_5
    const-string/jumbo v4, "lang_code"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    .line 626
    :goto_b
    :try_start_6
    const-string/jumbo v4, "country"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    .line 631
    :goto_c
    :try_start_7
    const-string/jumbo v4, "phone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Landroid/telephony/TelephonyManager;

    .line 632
    .local v40, "manager":Landroid/telephony/TelephonyManager;
    const-string/jumbo v4, "operator"

    invoke-virtual/range {v40 .. v40}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    const-string/jumbo v4, "carrier"

    invoke-virtual/range {v40 .. v40}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    .line 639
    .end local v40    # "manager":Landroid/telephony/TelephonyManager;
    :goto_d
    :try_start_8
    const-string/jumbo v4, "network"

    invoke-static/range {p0 .. p0}, Lcom/appsflyer/AppsFlyerLib;->getNetwork(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2

    .line 658
    :goto_e
    :try_start_9
    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/appsflyer/AppsFlyerLib;->addAdvertiserIDData(Landroid/content/Context;Ljava/util/Map;)V

    .line 660
    new-instance v20, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy-MM-dd_hhmmZ"

    move-object/from16 v0, v20

    invoke-direct {v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 661
    .local v20, "dateFormat":Ljava/text/SimpleDateFormat;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0

    const/16 v5, 0x9

    if-lt v4, v5, :cond_20

    .line 663
    :try_start_a
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-wide v0, v4, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    move-wide/from16 v32, v0

    .line 664
    .local v32, "installed":J
    const-string/jumbo v4, "installDate"

    new-instance v5, Ljava/util/Date;

    move-wide/from16 v0, v32

    invoke-direct {v5, v0, v1}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0

    .line 671
    .end local v32    # "installed":J
    :cond_20
    :goto_f
    :try_start_b
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v42

    .line 672
    .restart local v42    # "packageInfo":Landroid/content/pm/PackageInfo;
    const-string/jumbo v4, "app_version_code"

    move-object/from16 v0, v42

    iget v5, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    const-string/jumbo v4, "app_version_name"

    move-object/from16 v0, v42

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 676
    move-object/from16 v0, v42

    iget-wide v0, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    move-wide/from16 v28, v0

    .line 677
    .local v28, "firstInstallTime":J
    move-object/from16 v0, v42

    iget-wide v0, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    move-wide/from16 v38, v0

    .line 678
    .local v38, "lastUpdateTime":J
    const-string/jumbo v4, "date1"

    new-instance v5, Ljava/util/Date;

    move-wide/from16 v0, v28

    invoke-direct {v5, v0, v1}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 679
    const-string/jumbo v4, "date2"

    new-instance v5, Ljava/util/Date;

    move-wide/from16 v0, v38

    invoke-direct {v5, v0, v1}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/appsflyer/AppsFlyerLib;->getFirstInstallDate(Ljava/text/SimpleDateFormat;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v27

    .line 681
    .local v27, "firstInstallDate":Ljava/lang/String;
    const-string/jumbo v4, "firstLaunchDate"

    move-object/from16 v0, v27

    invoke-interface {v6, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_0

    .line 688
    .end local v27    # "firstInstallDate":Ljava/lang/String;
    .end local v28    # "firstInstallTime":J
    .end local v38    # "lastUpdateTime":J
    .end local v42    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_10
    :try_start_c
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_21

    .line 689
    const-string/jumbo v4, "referrer"

    move-object/from16 v0, p4

    invoke-interface {v6, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    :cond_21
    const-string/jumbo v4, "appsflyer-data"

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v47

    .line 693
    .local v47, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string/jumbo v4, "attributionId"

    const/4 v5, 0x0

    move-object/from16 v0, v47

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 694
    .local v15, "attributionString":Ljava/lang/String;
    if-eqz v15, :cond_22

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_22

    .line 695
    const-string/jumbo v4, "installAttribution"

    invoke-interface {v6, v4, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    :cond_22
    if-eqz v8, :cond_29

    move-object/from16 v0, p0

    instance-of v4, v0, Landroid/app/Activity;

    if-eqz v4, :cond_29

    .line 699
    move-object/from16 v0, p0

    check-cast v0, Landroid/app/Activity;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v31

    .line 700
    .local v31, "intent":Landroid/content/Intent;
    invoke-virtual/range {v31 .. v31}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    .line 702
    .local v10, "action":Ljava/lang/String;
    const-string/jumbo v4, "android.intent.action.VIEW"

    if-ne v10, v4, :cond_26

    .line 703
    invoke-virtual/range {v31 .. v31}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v49

    .line 705
    .local v49, "uri":Landroid/net/Uri;
    const-string/jumbo v4, "af_deeplink"

    move-object/from16 v0, v49

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_28

    .line 706
    const-string/jumbo v4, "af_deeplink_launch"

    const-string/jumbo v5, "true"

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 707
    invoke-virtual/range {v49 .. v49}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v4, v0}, Lcom/appsflyer/AppsFlyerLib;->referrerStringToMap(Ljava/lang/String;Landroid/content/Context;)Ljava/util/Map;

    move-result-object v14

    .line 709
    .local v14, "attributionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {v49 .. v49}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_23

    .line 710
    const-string/jumbo v4, "path"

    invoke-virtual/range {v49 .. v49}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v14, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 713
    :cond_23
    invoke-virtual/range {v49 .. v49}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_24

    .line 714
    const-string/jumbo v4, "scheme"

    invoke-virtual/range {v49 .. v49}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v14, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    :cond_24
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v14}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v36

    .line 718
    .local v36, "json":Ljava/lang/String;
    const-string/jumbo v4, "af_deeplink_attr"

    move-object/from16 v0, v36

    invoke-interface {v6, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    invoke-interface/range {v47 .. v47}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v23

    .line 721
    .local v23, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v4, "deeplinkAttribution"

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 722
    invoke-interface/range {v23 .. v23}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 724
    sget-object v4, Lcom/appsflyer/AppsFlyerLib;->conversionDataListener:Lcom/appsflyer/AppsFlyerConversionListener;

    if-eqz v4, :cond_25

    .line 725
    sget-object v4, Lcom/appsflyer/AppsFlyerLib;->conversionDataListener:Lcom/appsflyer/AppsFlyerConversionListener;

    invoke-interface {v4, v14}, Lcom/appsflyer/AppsFlyerConversionListener;->onAppOpenAttribution(Ljava/util/Map;)V

    .line 737
    .end local v14    # "attributionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v23    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v36    # "json":Ljava/lang/String;
    :cond_25
    :goto_11
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v5, "AppsFlyerLib.sendTrackingWithEvent"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 746
    .end local v10    # "action":Ljava/lang/String;
    .end local v31    # "intent":Landroid/content/Intent;
    .end local v49    # "uri":Landroid/net/Uri;
    :cond_26
    :goto_12
    new-instance v4, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;

    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v9}, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;-><init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;ZLcom/appsflyer/AppsFlyerLib$1;)V

    invoke-virtual {v4}, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->run()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_0

    goto/16 :goto_7

    .line 748
    .end local v12    # "afKEy":Ljava/lang/String;
    .end local v13    # "appUserId":Ljava/lang/String;
    .end local v15    # "attributionString":Ljava/lang/String;
    .end local v17    # "currencyCode":Ljava/lang/String;
    .end local v18    # "currentChannel":Ljava/lang/String;
    .end local v19    # "currentStore":Ljava/lang/String;
    .end local v20    # "dateFormat":Ljava/text/SimpleDateFormat;
    .end local v26    # "facebookAttributeId":Ljava/lang/String;
    .end local v30    # "installStore":Ljava/lang/String;
    .end local v34    # "isPreInstall":Z
    .end local v35    # "isUpdate":Ljava/lang/String;
    .end local v41    # "originalChannel":Ljava/lang/String;
    .end local v43    # "preInstallName":Ljava/lang/String;
    .end local v46    # "sdkExtension":Ljava/lang/String;
    .end local v47    # "sharedPreferences":Landroid/content/SharedPreferences;
    .end local v50    # "urlString":Ljava/lang/StringBuilder;
    .end local v52    # "userEmails":[Ljava/lang/String;
    :catch_0
    move-exception v22

    .line 749
    .local v22, "e":Ljava/lang/Throwable;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v37

    move-object/from16 v1, v22

    invoke-static {v0, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    .line 566
    .end local v22    # "e":Ljava/lang/Throwable;
    .restart local v12    # "afKEy":Ljava/lang/String;
    .restart local v13    # "appUserId":Ljava/lang/String;
    .restart local v18    # "currentChannel":Ljava/lang/String;
    .restart local v19    # "currentStore":Ljava/lang/String;
    .restart local v30    # "installStore":Ljava/lang/String;
    .restart local v41    # "originalChannel":Ljava/lang/String;
    .restart local v43    # "preInstallName":Ljava/lang/String;
    .restart local v46    # "sdkExtension":Ljava/lang/String;
    .restart local v50    # "urlString":Ljava/lang/StringBuilder;
    .restart local v52    # "userEmails":[Ljava/lang/String;
    :cond_27
    :try_start_d
    const-string/jumbo v4, "userEmail"

    invoke-static {v4}, Lcom/appsflyer/AppsFlyerLib;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    .line 567
    .local v51, "userEmail":Ljava/lang/String;
    if-eqz v51, :cond_18

    .line 568
    const-string/jumbo v4, "sha1_el"

    invoke-static/range {v51 .. v51}, Lcom/appsflyer/HashUtils;->toSHA1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    .line 609
    .end local v51    # "userEmail":Ljava/lang/String;
    .restart local v17    # "currencyCode":Ljava/lang/String;
    .restart local v26    # "facebookAttributeId":Ljava/lang/String;
    .restart local v34    # "isPreInstall":Z
    .restart local v35    # "isUpdate":Ljava/lang/String;
    :catch_1
    move-exception v22

    .line 610
    .local v22, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "AppsFlyer_1.17"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ERROR:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "ERROR:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "could not get uid "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 640
    .end local v22    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v22

    .line 641
    .local v22, "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "AppsFlyer_1.17"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "checking network error "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 732
    .end local v22    # "e":Ljava/lang/Throwable;
    .restart local v10    # "action":Ljava/lang/String;
    .restart local v15    # "attributionString":Ljava/lang/String;
    .restart local v20    # "dateFormat":Ljava/text/SimpleDateFormat;
    .restart local v31    # "intent":Landroid/content/Intent;
    .restart local v47    # "sharedPreferences":Landroid/content/SharedPreferences;
    .restart local v49    # "uri":Landroid/net/Uri;
    :cond_28
    const/16 v16, 0x1

    .line 733
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v45

    .line 734
    .local v45, "scheduler":Ljava/util/concurrent/ScheduledExecutorService;
    const-string/jumbo v4, "AppsFlyerKey"

    invoke-static {v4}, Lcom/appsflyer/AppsFlyerLib;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 735
    .local v11, "afDevKey":Ljava/lang/String;
    new-instance v4, Lcom/appsflyer/AppsFlyerLib$ReAttributionIdFetcher;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, v45

    invoke-direct {v4, v5, v11, v0}, Lcom/appsflyer/AppsFlyerLib$ReAttributionIdFetcher;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/ScheduledExecutorService;)V

    const-wide/16 v54, 0x64

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, v45

    move-wide/from16 v1, v54

    invoke-interface {v0, v4, v1, v2, v5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto/16 :goto_11

    .line 739
    .end local v10    # "action":Ljava/lang/String;
    .end local v11    # "afDevKey":Ljava/lang/String;
    .end local v31    # "intent":Landroid/content/Intent;
    .end local v45    # "scheduler":Ljava/util/concurrent/ScheduledExecutorService;
    .end local v49    # "uri":Landroid/net/Uri;
    :cond_29
    if-nez v8, :cond_26

    .line 740
    const-string/jumbo v4, "deeplinkAttribution"

    const/4 v5, 0x0

    move-object/from16 v0, v47

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 741
    .local v21, "deeplinkAttribute":Ljava/lang/String;
    if-eqz v21, :cond_26

    .line 742
    const-string/jumbo v4, "af_deeplink_attr"

    move-object/from16 v0, v21

    invoke-interface {v6, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_0

    goto/16 :goto_12

    .line 684
    .end local v15    # "attributionString":Ljava/lang/String;
    .end local v21    # "deeplinkAttribute":Ljava/lang/String;
    .end local v47    # "sharedPreferences":Landroid/content/SharedPreferences;
    :catch_3
    move-exception v4

    goto/16 :goto_10

    .line 682
    :catch_4
    move-exception v4

    goto/16 :goto_10

    .line 665
    :catch_5
    move-exception v4

    goto/16 :goto_f

    .line 634
    .end local v20    # "dateFormat":Ljava/text/SimpleDateFormat;
    :catch_6
    move-exception v4

    goto/16 :goto_d

    .line 627
    :catch_7
    move-exception v4

    goto/16 :goto_c

    .line 621
    :catch_8
    move-exception v4

    goto/16 :goto_b

    .line 615
    :catch_9
    move-exception v4

    goto/16 :goto_a

    .line 488
    .end local v12    # "afKEy":Ljava/lang/String;
    .end local v13    # "appUserId":Ljava/lang/String;
    .end local v17    # "currencyCode":Ljava/lang/String;
    .end local v18    # "currentChannel":Ljava/lang/String;
    .end local v19    # "currentStore":Ljava/lang/String;
    .end local v26    # "facebookAttributeId":Ljava/lang/String;
    .end local v30    # "installStore":Ljava/lang/String;
    .end local v34    # "isPreInstall":Z
    .end local v35    # "isUpdate":Ljava/lang/String;
    .end local v41    # "originalChannel":Ljava/lang/String;
    .end local v43    # "preInstallName":Ljava/lang/String;
    .end local v46    # "sdkExtension":Ljava/lang/String;
    .end local v50    # "urlString":Ljava/lang/StringBuilder;
    .end local v52    # "userEmails":[Ljava/lang/String;
    :catch_a
    move-exception v4

    goto/16 :goto_4
.end method

.method private sendUninstall(Ljava/lang/String;Landroid/content/Context;)V
    .locals 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 122
    const/4 v1, 0x0

    .line 124
    .local v1, "connection":Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "https://track.appsflyer.com/api/v2.3/uninsall?buildnumber=1.17"

    .line 125
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 126
    .local v10, "urlString":Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lcom/appsflyer/AppsFlyerLib;->shouldLog(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 127
    const-string/jumbo v11, "AppsFlyer_1.17"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Calling server for uninstall url: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 131
    .local v5, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v11, "packageName"

    invoke-interface {v5, v11, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    move-object/from16 v0, p2

    invoke-static {v0, v5}, Lcom/appsflyer/AppsFlyerLib;->addAdvertiserIDData(Landroid/content/Context;Ljava/util/Map;)V

    .line 133
    move-object/from16 v0, p2

    invoke-static {v0, v5}, Lcom/appsflyer/AppsFlyerLib;->addDeviceTracking(Landroid/content/Context;Ljava/util/Map;)V

    .line 134
    invoke-static {v5}, Lcom/appsflyer/AppsFlyerLib;->mapToString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    .line 135
    .local v6, "postData":Ljava/lang/String;
    new-instance v9, Ljava/net/URL;

    invoke-direct {v9, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 136
    .local v9, "url":Ljava/net/URL;
    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 138
    const-string/jumbo v11, "POST"

    invoke-virtual {v1, v11}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    array-length v2, v11

    .line 140
    .local v2, "contentLength":I
    const-string/jumbo v11, "Content-Length"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v11, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string/jumbo v11, "Connection"

    const-string/jumbo v12, "close"

    invoke-virtual {v1, v11, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const/16 v11, 0x2710

    invoke-virtual {v1, v11}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 143
    const/4 v11, 0x1

    invoke-virtual {v1, v11}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 144
    const/4 v3, 0x0

    .line 146
    .local v3, "out":Ljava/io/OutputStreamWriter;
    :try_start_1
    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v11

    invoke-direct {v4, v11}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    .end local v3    # "out":Ljava/io/OutputStreamWriter;
    .local v4, "out":Ljava/io/OutputStreamWriter;
    :try_start_2
    invoke-virtual {v4, v6}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 149
    if-eqz v4, :cond_1

    .line 150
    :try_start_3
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V

    .line 153
    :cond_1
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    .line 155
    .local v7, "statusCode":I
    const/16 v11, 0xc8

    if-ne v7, v11, :cond_6

    .line 156
    invoke-static/range {p2 .. p2}, Lcom/appsflyer/AppsFlyerLib;->shouldLog(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 157
    const-string/jumbo v11, "AppsFlyer_1.17"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Uninstall sent successfully: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 169
    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 170
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 173
    .end local v2    # "contentLength":I
    .end local v4    # "out":Ljava/io/OutputStreamWriter;
    .end local v5    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "postData":Ljava/lang/String;
    .end local v7    # "statusCode":I
    .end local v9    # "url":Ljava/net/URL;
    .end local v10    # "urlString":Ljava/lang/String;
    :cond_3
    :goto_1
    return-void

    .line 149
    .restart local v2    # "contentLength":I
    .restart local v3    # "out":Ljava/io/OutputStreamWriter;
    .restart local v5    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v6    # "postData":Ljava/lang/String;
    .restart local v9    # "url":Ljava/net/URL;
    .restart local v10    # "urlString":Ljava/lang/String;
    :catchall_0
    move-exception v11

    :goto_2
    if-eqz v3, :cond_4

    .line 150
    :try_start_4
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V

    :cond_4
    throw v11
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 164
    .end local v2    # "contentLength":I
    .end local v3    # "out":Ljava/io/OutputStreamWriter;
    .end local v5    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "postData":Ljava/lang/String;
    .end local v9    # "url":Ljava/net/URL;
    .end local v10    # "urlString":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 165
    .local v8, "t":Ljava/lang/Throwable;
    :try_start_5
    invoke-static/range {p2 .. p2}, Lcom/appsflyer/AppsFlyerLib;->shouldLog(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 166
    const-string/jumbo v11, "AppsFlyer_1.17"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Failed to send uninstall: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v8}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 169
    :cond_5
    if-eqz v1, :cond_3

    .line 170
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    .line 160
    .end local v8    # "t":Ljava/lang/Throwable;
    .restart local v2    # "contentLength":I
    .restart local v4    # "out":Ljava/io/OutputStreamWriter;
    .restart local v5    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v6    # "postData":Ljava/lang/String;
    .restart local v7    # "statusCode":I
    .restart local v9    # "url":Ljava/net/URL;
    .restart local v10    # "urlString":Ljava/lang/String;
    :cond_6
    :try_start_6
    invoke-static/range {p2 .. p2}, Lcom/appsflyer/AppsFlyerLib;->shouldLog(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 161
    const-string/jumbo v11, "AppsFlyer_1.17"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Failed to send uninstall: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    .line 169
    .end local v2    # "contentLength":I
    .end local v4    # "out":Ljava/io/OutputStreamWriter;
    .end local v5    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "postData":Ljava/lang/String;
    .end local v7    # "statusCode":I
    .end local v9    # "url":Ljava/net/URL;
    .end local v10    # "urlString":Ljava/lang/String;
    :catchall_1
    move-exception v11

    if-eqz v1, :cond_7

    .line 170
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_7
    throw v11

    .line 149
    .restart local v2    # "contentLength":I
    .restart local v4    # "out":Ljava/io/OutputStreamWriter;
    .restart local v5    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v6    # "postData":Ljava/lang/String;
    .restart local v9    # "url":Ljava/net/URL;
    .restart local v10    # "urlString":Ljava/lang/String;
    :catchall_2
    move-exception v11

    move-object v3, v4

    .end local v4    # "out":Ljava/io/OutputStreamWriter;
    .restart local v3    # "out":Ljava/io/OutputStreamWriter;
    goto :goto_2
.end method

.method public static setAppId(Ljava/lang/String;)V
    .locals 1
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 246
    const-string/jumbo v0, "appid"

    invoke-static {v0, p0}, Lcom/appsflyer/AppsFlyerLib;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    return-void
.end method

.method public static setAppUserId(Ljava/lang/String;)V
    .locals 1
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 205
    const-string/jumbo v0, "AppUserId"

    invoke-static {v0, p0}, Lcom/appsflyer/AppsFlyerLib;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    return-void
.end method

.method public static setAppsFlyerKey(Ljava/lang/String;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 237
    const-string/jumbo v0, "AppsFlyerKey"

    invoke-static {v0, p0}, Lcom/appsflyer/AppsFlyerLib;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    invoke-static {p0}, Lcom/appsflyer/LogMessages;->setDevKey(Ljava/lang/String;)V

    .line 239
    return-void
.end method

.method public static setCollectAndroidID(Z)V
    .locals 2
    .param p0, "isCollect"    # Z

    .prologue
    .line 225
    const-string/jumbo v0, "collectAndroidId"

    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appsflyer/AppsFlyerLib;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    return-void
.end method

.method public static setCollectIMEI(Z)V
    .locals 2
    .param p0, "isCollect"    # Z

    .prologue
    .line 233
    const-string/jumbo v0, "collectIMEI"

    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appsflyer/AppsFlyerLib;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    return-void
.end method

.method public static setCollectMACAddress(Z)V
    .locals 2
    .param p0, "isCollect"    # Z

    .prologue
    .line 229
    const-string/jumbo v0, "collectMAC"

    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appsflyer/AppsFlyerLib;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    return-void
.end method

.method public static setCurrencyCode(Ljava/lang/String;)V
    .locals 2
    .param p0, "currencyCode"    # Ljava/lang/String;

    .prologue
    .line 266
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string/jumbo v1, "currencyCode"

    invoke-virtual {v0, v1, p0}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    return-void
.end method

.method public static setDeviceTrackingDisabled(Z)V
    .locals 2
    .param p0, "isDisabled"    # Z

    .prologue
    .line 300
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string/jumbo v1, "deviceTrackingDisabled"

    invoke-virtual {v0, v1, p0}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Z)V

    .line 301
    return-void
.end method

.method public static setExtension(Ljava/lang/String;)V
    .locals 2
    .param p0, "extension"    # Ljava/lang/String;

    .prologue
    .line 258
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string/jumbo v1, "sdkExtension"

    invoke-virtual {v0, v1, p0}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    return-void
.end method

.method public static setIsUpdate(Z)V
    .locals 2
    .param p0, "isUpdate"    # Z

    .prologue
    .line 262
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string/jumbo v1, "IS_UPDATE"

    invoke-virtual {v0, v1, p0}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Z)V

    .line 263
    return-void
.end method

.method protected static setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 197
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    return-void
.end method

.method public static setUseHTTPFalback(Z)V
    .locals 2
    .param p0, "isUseHttp"    # Z

    .prologue
    .line 221
    const-string/jumbo v0, "useHttpFallback"

    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appsflyer/AppsFlyerLib;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    return-void
.end method

.method public static setUserEmail(Ljava/lang/String;)V
    .locals 1
    .param p0, "email"    # Ljava/lang/String;

    .prologue
    .line 213
    const-string/jumbo v0, "userEmail"

    invoke-static {v0, p0}, Lcom/appsflyer/AppsFlyerLib;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    return-void
.end method

.method public static varargs setUserEmails([Ljava/lang/String;)V
    .locals 2
    .param p0, "emails"    # [Ljava/lang/String;

    .prologue
    .line 217
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string/jumbo v1, "userEmails"

    invoke-virtual {v0, v1, p0}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;[Ljava/lang/String;)V

    .line 218
    return-void
.end method

.method private static shouldLog(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 192
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsflyer/AppsFlyerProperties;->isDisableLog()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 277
    .local p2, "eventValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v6, Lorg/json/JSONObject;

    if-nez p2, :cond_0

    new-instance p2, Ljava/util/HashMap;

    .end local p2    # "eventValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    :cond_0
    invoke-direct {v6, p2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 278
    .local v6, "jsonObject":Lorg/json/JSONObject;
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appsflyer/AppsFlyerProperties;->getReferrer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 279
    .local v7, "referrer":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    if-nez v7, :cond_1

    const-string/jumbo v4, ""

    :goto_0
    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/appsflyer/AppsFlyerLib;->runInBackground(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 280
    return-void

    :cond_1
    move-object v4, v7

    .line 279
    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 80
    const-string/jumbo v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v7

    .line 83
    .local v7, "packageName":Ljava/lang/String;
    invoke-direct {p0, v7, p1}, Lcom/appsflyer/AppsFlyerLib;->sendUninstall(Ljava/lang/String;Landroid/content/Context;)V

    .line 119
    .end local v7    # "packageName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    const-string/jumbo v0, "shouldMonitor"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 87
    .local v9, "shouldMonitor":Ljava/lang/String;
    if-eqz v9, :cond_2

    .line 88
    const-string/jumbo v0, "AppsFlyer_1.17"

    const-string/jumbo v2, "Turning on monitoring."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string/jumbo v2, "shouldMonitor"

    const-string/jumbo v3, "true"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Z)V

    .line 90
    const-string/jumbo v0, "START_TRACKING"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v0, v2}, Lcom/appsflyer/AppsFlyerLib;->monitor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 94
    :cond_2
    const-string/jumbo v0, "AppsFlyer_1.17"

    const-string/jumbo v2, "****** onReceive called *******"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const-string/jumbo v0, "******* onReceive: "

    const-string/jumbo v2, ""

    invoke-static {v0, v2, p1}, Lcom/appsflyer/AppsFlyerLib;->debugAction(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 98
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsflyer/AppsFlyerProperties;->setOnReceiveCalled()V

    .line 100
    const-string/jumbo v0, "referrer"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 101
    .local v4, "referrer":Ljava/lang/String;
    invoke-static {p1}, Lcom/appsflyer/AppsFlyerLib;->shouldLog(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 102
    const-string/jumbo v0, "AppsFlyer_1.17"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Play store referrer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_3
    if-eqz v4, :cond_0

    .line 105
    const-string/jumbo v0, "BroadcastReceiver got referrer: "

    invoke-static {v0, v4, p1}, Lcom/appsflyer/AppsFlyerLib;->debugAction(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 106
    const-string/jumbo v0, "onRecieve called. refferer="

    invoke-static {v0, v4, p1}, Lcom/appsflyer/AppsFlyerLib;->debugAction(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 107
    const-string/jumbo v0, "appsflyer-data"

    invoke-virtual {p1, v0, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 108
    .local v8, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 109
    .local v6, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v0, "referrer"

    invoke-interface {v6, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 110
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 112
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/appsflyer/AppsFlyerProperties;->setReferrer(Ljava/lang/String;)V

    .line 114
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsflyer/AppsFlyerProperties;->isLaunchCollectedReferrerd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    const-string/jumbo v0, "AppsFlyer_1.17"

    const-string/jumbo v2, "onReceive: isLaunchCalled"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p1

    move-object v2, v1

    move-object v3, v1

    .line 116
    invoke-static/range {v0 .. v5}, Lcom/appsflyer/AppsFlyerLib;->runInBackground(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method
