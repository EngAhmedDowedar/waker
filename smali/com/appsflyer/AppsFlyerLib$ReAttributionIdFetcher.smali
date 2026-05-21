.class Lcom/appsflyer/AppsFlyerLib$ReAttributionIdFetcher;
.super Lcom/appsflyer/AppsFlyerLib$AttributionIdFetcher;
.source "AppsFlyerLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/AppsFlyerLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReAttributionIdFetcher"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appsFlyerDevKey"    # Ljava/lang/String;
    .param p3, "executorService"    # Ljava/util/concurrent/ScheduledExecutorService;

    .prologue
    .line 1316
    invoke-direct {p0, p1, p2, p3}, Lcom/appsflyer/AppsFlyerLib$AttributionIdFetcher;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 1317
    return-void
.end method


# virtual methods
.method protected callback(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1326
    .local p1, "attributionData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->access$800()Lcom/appsflyer/AppsFlyerConversionListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/appsflyer/AppsFlyerConversionListener;->onAppOpenAttribution(Ljava/util/Map;)V

    .line 1327
    return-void
.end method

.method protected callbackFailure(Ljava/lang/String;)V
    .locals 1
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 1331
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->access$800()Lcom/appsflyer/AppsFlyerConversionListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/appsflyer/AppsFlyerConversionListener;->onAttributionFailure(Ljava/lang/String;)V

    .line 1332
    return-void
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1321
    const-string/jumbo v0, "https://sdk.appsflyer.com/reattr_data/"

    return-object v0
.end method
