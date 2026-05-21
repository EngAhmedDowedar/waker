.class public Lcom/anansimobile/extra/statistics/MobileAppTracking/MATInterface;
.super Ljava/lang/Object;
.source "MATInterface.java"


# static fields
.field public static appCtx:Landroid/content/Context;

.field public static isAppCpaSet:Z

.field public static isAppsFlyerSet:Z

.field public static isApsalarSet:Z

.field public static isCustomTracker:Z

.field public static isWappier:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/anansimobile/extra/statistics/MobileAppTracking/MATInterface;->appCtx:Landroid/content/Context;

    .line 17
    sput-boolean v1, Lcom/anansimobile/extra/statistics/MobileAppTracking/MATInterface;->isAppsFlyerSet:Z

    .line 18
    sput-boolean v1, Lcom/anansimobile/extra/statistics/MobileAppTracking/MATInterface;->isAppCpaSet:Z

    .line 19
    sput-boolean v1, Lcom/anansimobile/extra/statistics/MobileAppTracking/MATInterface;->isApsalarSet:Z

    .line 20
    sput-boolean v1, Lcom/anansimobile/extra/statistics/MobileAppTracking/MATInterface;->isWappier:Z

    .line 21
    sput-boolean v1, Lcom/anansimobile/extra/statistics/MobileAppTracking/MATInterface;->isCustomTracker:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static InitCustomTracker(Landroid/content/Context;Z)V
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "isDebug"    # Z

    .prologue
    .line 65
    const/4 v0, 0x1

    sput-boolean v0, Lcom/anansimobile/extra/statistics/MobileAppTracking/MATInterface;->isCustomTracker:Z

    .line 66
    sput-object p0, Lcom/anansimobile/extra/statistics/MobileAppTracking/MATInterface;->appCtx:Landroid/content/Context;

    .line 67
    invoke-static {p0, p1}, Lcom/anansimobile/extra/statistics/MobileAppTracking/CustomTrackerInterface;->init(Landroid/content/Context;Z)V

    .line 68
    return-void
.end method

.method public static addCustomTracker(Lcom/anansimobile/extra/statistics/MobileAppTracking/CustomTrackerNode;)V
    .locals 0
    .param p0, "newTracker"    # Lcom/anansimobile/extra/statistics/MobileAppTracking/CustomTrackerNode;

    .prologue
    .line 61
    invoke-static {p0}, Lcom/anansimobile/extra/statistics/MobileAppTracking/CustomTrackerInterface;->AddCustomTracker(Lcom/anansimobile/extra/statistics/MobileAppTracking/CustomTrackerNode;)V

    .line 62
    return-void
.end method

.method public static endApsalar()V
    .locals 0

    .prologue
    .line 80
    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "advertiserId"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "isDebug"    # Z

    .prologue
    .line 26
    sput-object p0, Lcom/anansimobile/extra/statistics/MobileAppTracking/MATInterface;->appCtx:Landroid/content/Context;

    .line 33
    return-void
.end method

.method public static onPause(Landroid/app/Activity;)V
    .locals 1
    .param p0, "ctx"    # Landroid/app/Activity;

    .prologue
    .line 212
    sget-boolean v0, Lcom/anansimobile/extra/statistics/MobileAppTracking/MATInterface;->isWappier:Z

    if-eqz v0, :cond_0

    .line 216
    :cond_0
    sget-boolean v0, Lcom/anansimobile/extra/statistics/MobileAppTracking/MATInterface;->isCustomTracker:Z

    if-eqz v0, :cond_1

    .line 217
    invoke-static {p0}, Lcom/anansimobile/extra/statistics/MobileAppTracking/CustomTrackerInterface;->onPause(Landroid/app/Activity;)V

    .line 219
    :cond_1
    return-void
.end method

.method public static onResume(Landroid/app/Activity;)V
    .locals 1
    .param p0, "ctx"    # Landroid/app/Activity;

    .prologue
    .line 222
    sget-boolean v0, Lcom/anansimobile/extra/statistics/MobileAppTracking/MATInterface;->isWappier:Z

    if-eqz v0, :cond_0

    .line 225
    :cond_0
    sget-boolean v0, Lcom/anansimobile/extra/statistics/MobileAppTracking/MATInterface;->isCustomTracker:Z

    if-eqz v0, :cond_1

    .line 226
    invoke-static {p0}, Lcom/anansimobile/extra/statistics/MobileAppTracking/CustomTrackerInterface;->onResume(Landroid/app/Activity;)V

    .line 228
    :cond_1
    return-void
.end method

.method public static setAppCpa(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "appKey"    # Ljava/lang/String;
    .param p2, "channelId"    # Ljava/lang/String;

    .prologue
    .line 42
    const/4 v0, 0x1

    sput-boolean v0, Lcom/anansimobile/extra/statistics/MobileAppTracking/MATInterface;->isAppCpaSet:Z

    .line 43
    sput-object p0, Lcom/anansimobile/extra/statistics/MobileAppTracking/MATInterface;->appCtx:Landroid/content/Context;

    .line 45
    return-void
.end method

.method public static setAppsFlyer(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "dev_key"    # Ljava/lang/String;

    .prologue
    .line 36
    const/4 v0, 0x1

    sput-boolean v0, Lcom/anansimobile/extra/statistics/MobileAppTracking/MATInterface;->isAppsFlyerSet:Z

    .line 37
    sput-object p0, Lcom/anansimobile/extra/statistics/MobileAppTracking/MATInterface;->appCtx:Landroid/content/Context;

    .line 38
    invoke-static {p1}, Lcom/appsflyer/AppsFlyerLib;->setAppsFlyerKey(Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public static setApsalar(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "apiKey"    # Ljava/lang/String;
    .param p2, "secret"    # Ljava/lang/String;

    .prologue
    .line 48
    const/4 v0, 0x1

    sput-boolean v0, Lcom/anansimobile/extra/statistics/MobileAppTracking/MATInterface;->isApsalarSet:Z

    .line 49
    sput-object p0, Lcom/anansimobile/extra/statistics/MobileAppTracking/MATInterface;->appCtx:Landroid/content/Context;

    .line 51
    return-void
.end method

.method public static setWappier(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "appKey"    # Ljava/lang/String;

    .prologue
    .line 54
    const/4 v0, 0x1

    sput-boolean v0, Lcom/anansimobile/extra/statistics/MobileAppTracking/MATInterface;->isWappier:Z

    .line 55
    sput-object p0, Lcom/anansimobile/extra/statistics/MobileAppTracking/MATInterface;->appCtx:Landroid/content/Context;

    .line 58
    return-void
.end method

.method public static trackEvent(Ljava/lang/String;)V
    .locals 2
    .param p0, "event"    # Ljava/lang/String;

    .prologue
    .line 178
    sget-boolean v0, Lcom/anansimobile/extra/statistics/MobileAppTracking/MATInterface;->isAppsFlyerSet:Z

    if-eqz v0, :cond_0

    .line 179
    sget-object v0, Lcom/anansimobile/extra/statistics/MobileAppTracking/MATInterface;->appCtx:Landroid/content/Context;

    const-string/jumbo v1, ""

    invoke-static {v0, p0, v1}, Lcom/appsflyer/AppsFlyerLib;->sendTrackingWithEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    :cond_0
    sget-boolean v0, Lcom/anansimobile/extra/statistics/MobileAppTracking/MATInterface;->isWappier:Z

    if-eqz v0, :cond_1

    .line 196
    :cond_1
    sget-boolean v0, Lcom/anansimobile/extra/statistics/MobileAppTracking/MATInterface;->isCustomTracker:Z

    if-eqz v0, :cond_2

    .line 197
    invoke-static {p0}, Lcom/anansimobile/extra/statistics/MobileAppTracking/CustomTrackerInterface;->trackEvent(Ljava/lang/String;)V

    .line 199
    :cond_2
    return-void
.end method

.method public static trackInstall()V
    .locals 1

    .prologue
    .line 87
    sget-boolean v0, Lcom/anansimobile/extra/statistics/MobileAppTracking/MATInterface;->isAppsFlyerSet:Z

    if-eqz v0, :cond_0

    .line 88
    sget-object v0, Lcom/anansimobile/extra/statistics/MobileAppTracking/MATInterface;->appCtx:Landroid/content/Context;

    invoke-static {v0}, Lcom/appsflyer/AppsFlyerLib;->sendTracking(Landroid/content/Context;)V

    .line 91
    :cond_0
    sget-boolean v0, Lcom/anansimobile/extra/statistics/MobileAppTracking/MATInterface;->isCustomTracker:Z

    if-eqz v0, :cond_1

    .line 92
    invoke-static {}, Lcom/anansimobile/extra/statistics/MobileAppTracking/CustomTrackerInterface;->trackInstall()V

    .line 94
    :cond_1
    return-void
.end method

.method public static trackLogin(Ljava/lang/String;)V
    .locals 1
    .param p0, "userId"    # Ljava/lang/String;

    .prologue
    .line 202
    sget-boolean v0, Lcom/anansimobile/extra/statistics/MobileAppTracking/MATInterface;->isAppCpaSet:Z

    if-eqz v0, :cond_0

    .line 206
    :cond_0
    sget-boolean v0, Lcom/anansimobile/extra/statistics/MobileAppTracking/MATInterface;->isCustomTracker:Z

    if-eqz v0, :cond_1

    .line 207
    invoke-static {p0}, Lcom/anansimobile/extra/statistics/MobileAppTracking/CustomTrackerInterface;->trackLogin(Ljava/lang/String;)V

    .line 209
    :cond_1
    return-void
.end method

.method public static trackOpen(Ljava/lang/String;)V
    .locals 1
    .param p0, "ref"    # Ljava/lang/String;

    .prologue
    .line 102
    sget-boolean v0, Lcom/anansimobile/extra/statistics/MobileAppTracking/MATInterface;->isAppsFlyerSet:Z

    if-eqz v0, :cond_0

    .line 103
    sget-object v0, Lcom/anansimobile/extra/statistics/MobileAppTracking/MATInterface;->appCtx:Landroid/content/Context;

    invoke-static {v0}, Lcom/appsflyer/AppsFlyerLib;->sendTracking(Landroid/content/Context;)V

    .line 106
    :cond_0
    sget-boolean v0, Lcom/anansimobile/extra/statistics/MobileAppTracking/MATInterface;->isApsalarSet:Z

    if-eqz v0, :cond_1

    .line 110
    :cond_1
    sget-boolean v0, Lcom/anansimobile/extra/statistics/MobileAppTracking/MATInterface;->isCustomTracker:Z

    if-eqz v0, :cond_2

    .line 111
    invoke-static {p0}, Lcom/anansimobile/extra/statistics/MobileAppTracking/CustomTrackerInterface;->trackOpen(Ljava/lang/String;)V

    .line 113
    :cond_2
    return-void
.end method

.method public static trackPurchase(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;)V
    .locals 4
    .param p0, "userId"    # Ljava/lang/String;
    .param p1, "orderId"    # Ljava/lang/String;
    .param p2, "cost"    # D
    .param p4, "currency"    # Ljava/lang/String;

    .prologue
    .line 142
    sget-boolean v1, Lcom/anansimobile/extra/statistics/MobileAppTracking/MATInterface;->isAppsFlyerSet:Z

    if-eqz v1, :cond_0

    .line 143
    invoke-static {p2, p3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "strCost":Ljava/lang/String;
    invoke-static {p4}, Lcom/appsflyer/AppsFlyerLib;->setCurrencyCode(Ljava/lang/String;)V

    .line 145
    sget-object v1, Lcom/anansimobile/extra/statistics/MobileAppTracking/MATInterface;->appCtx:Landroid/content/Context;

    const-string/jumbo v2, "purchase"

    invoke-static {v1, v2, v0}, Lcom/appsflyer/AppsFlyerLib;->sendTrackingWithEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    .end local v0    # "strCost":Ljava/lang/String;
    :cond_0
    sget-boolean v1, Lcom/anansimobile/extra/statistics/MobileAppTracking/MATInterface;->isAppCpaSet:Z

    if-eqz v1, :cond_1

    .line 153
    :cond_1
    sget-boolean v1, Lcom/anansimobile/extra/statistics/MobileAppTracking/MATInterface;->isApsalarSet:Z

    if-eqz v1, :cond_2

    .line 163
    :cond_2
    sget-boolean v1, Lcom/anansimobile/extra/statistics/MobileAppTracking/MATInterface;->isWappier:Z

    if-eqz v1, :cond_3

    .line 168
    :cond_3
    sget-boolean v1, Lcom/anansimobile/extra/statistics/MobileAppTracking/MATInterface;->isCustomTracker:Z

    if-eqz v1, :cond_4

    .line 169
    invoke-static {p0, p1, p2, p3, p4}, Lcom/anansimobile/extra/statistics/MobileAppTracking/CustomTrackerInterface;->trackPurchase(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;)V

    .line 171
    :cond_4
    return-void
.end method

.method public static trackRegistration(Ljava/lang/String;)V
    .locals 3
    .param p0, "userId"    # Ljava/lang/String;

    .prologue
    .line 120
    sget-boolean v0, Lcom/anansimobile/extra/statistics/MobileAppTracking/MATInterface;->isAppsFlyerSet:Z

    if-eqz v0, :cond_0

    .line 121
    sget-object v0, Lcom/anansimobile/extra/statistics/MobileAppTracking/MATInterface;->appCtx:Landroid/content/Context;

    const-string/jumbo v1, "registration"

    const-string/jumbo v2, ""

    invoke-static {v0, v1, v2}, Lcom/appsflyer/AppsFlyerLib;->sendTrackingWithEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :cond_0
    sget-boolean v0, Lcom/anansimobile/extra/statistics/MobileAppTracking/MATInterface;->isAppCpaSet:Z

    if-eqz v0, :cond_1

    .line 128
    :cond_1
    sget-boolean v0, Lcom/anansimobile/extra/statistics/MobileAppTracking/MATInterface;->isApsalarSet:Z

    if-eqz v0, :cond_2

    .line 132
    :cond_2
    sget-boolean v0, Lcom/anansimobile/extra/statistics/MobileAppTracking/MATInterface;->isCustomTracker:Z

    if-eqz v0, :cond_3

    .line 133
    invoke-static {p0}, Lcom/anansimobile/extra/statistics/MobileAppTracking/CustomTrackerInterface;->trackRegistration(Ljava/lang/String;)V

    .line 135
    :cond_3
    return-void
.end method
