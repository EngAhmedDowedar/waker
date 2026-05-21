.class Lcom/appsflyer/AppsFlyerLib$InstallAttributionIdFetcher;
.super Lcom/appsflyer/AppsFlyerLib$AttributionIdFetcher;
.source "AppsFlyerLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/AppsFlyerLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InstallAttributionIdFetcher"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appsFlyerDevKey"    # Ljava/lang/String;
    .param p3, "executorService"    # Ljava/util/concurrent/ScheduledExecutorService;

    .prologue
    .line 1295
    invoke-direct {p0, p1, p2, p3}, Lcom/appsflyer/AppsFlyerLib$AttributionIdFetcher;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 1296
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
    .line 1304
    .local p1, "conversionData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->access$800()Lcom/appsflyer/AppsFlyerConversionListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/appsflyer/AppsFlyerConversionListener;->onInstallConversionDataLoaded(Ljava/util/Map;)V

    .line 1305
    return-void
.end method

.method protected callbackFailure(Ljava/lang/String;)V
    .locals 1
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 1308
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->access$800()Lcom/appsflyer/AppsFlyerConversionListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/appsflyer/AppsFlyerConversionListener;->onInstallConversionFailure(Ljava/lang/String;)V

    .line 1309
    return-void
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1300
    const-string/jumbo v0, "https://api.appsflyer.com/install_data/v3/"

    return-object v0
.end method
