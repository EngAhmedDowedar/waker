.class Lcom/appsflyer/AppsFlyerLib$CachedRequestSender;
.super Ljava/lang/Object;
.source "AppsFlyerLib.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/AppsFlyerLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CachedRequestSender"
.end annotation


# instance fields
.field private ctxReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1469
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1467
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appsflyer/AppsFlyerLib$CachedRequestSender;->ctxReference:Ljava/lang/ref/WeakReference;

    .line 1470
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/appsflyer/AppsFlyerLib$CachedRequestSender;->ctxReference:Ljava/lang/ref/WeakReference;

    .line 1471
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 1474
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->access$1300()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1510
    :cond_0
    :goto_0
    return-void

    .line 1477
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/appsflyer/AppsFlyerLib;->access$1402(J)J

    .line 1478
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLib$CachedRequestSender;->ctxReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 1481
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/appsflyer/AppsFlyerLib;->access$1302(Z)Z

    .line 1483
    :try_start_0
    const-string/jumbo v0, "AppsFlyerKey"

    invoke-static {v0}, Lcom/appsflyer/AppsFlyerLib;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1484
    .local v2, "afDevKey":Ljava/lang/String;
    iget-object v9, p0, Lcom/appsflyer/AppsFlyerLib$CachedRequestSender;->ctxReference:Ljava/lang/ref/WeakReference;

    monitor-enter v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1485
    :try_start_1
    invoke-static {}, Lcom/appsflyer/cache/CacheManager;->getInstance()Lcom/appsflyer/cache/CacheManager;

    move-result-object v1

    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLib$CachedRequestSender;->ctxReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v1, v0}, Lcom/appsflyer/cache/CacheManager;->getCachedRequests(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/appsflyer/cache/RequestCacheData;

    .line 1486
    .local v8, "requestCacheData":Lcom/appsflyer/cache/RequestCacheData;
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLib$CachedRequestSender;->ctxReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/appsflyer/AppsFlyerLib;->access$1100(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1487
    const-string/jumbo v0, "AppsFlyer_1.17"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resending request: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Lcom/appsflyer/cache/RequestCacheData;->getRequestURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1490
    :cond_2
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/appsflyer/cache/RequestCacheData;->getRequestURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&isCachedRequest=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1491
    invoke-virtual {v8}, Lcom/appsflyer/cache/RequestCacheData;->getPostData()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/appsflyer/AppsFlyerLib$CachedRequestSender;->ctxReference:Ljava/lang/ref/WeakReference;

    .line 1494
    invoke-virtual {v8}, Lcom/appsflyer/cache/RequestCacheData;->getCacheKey()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "AppsFlyer_1.17"

    const/4 v6, 0x0

    .line 1490
    invoke-static/range {v0 .. v6}, Lcom/appsflyer/AppsFlyerLib;->access$700(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1498
    :catch_0
    move-exception v7

    .line 1499
    .local v7, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v0, "AppsFlyer_1.17"

    const-string/jumbo v1, "Failed to resend cached request"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1502
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v8    # "requestCacheData":Lcom/appsflyer/cache/RequestCacheData;
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1503
    .end local v2    # "afDevKey":Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 1504
    .restart local v7    # "e":Ljava/lang/Exception;
    :try_start_5
    const-string/jumbo v0, "AppsFlyer_1.17"

    const-string/jumbo v1, "failed to check cache."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1506
    invoke-static {v11}, Lcom/appsflyer/AppsFlyerLib;->access$1302(Z)Z

    .line 1508
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_2
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->access$1500()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 1509
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/appsflyer/AppsFlyerLib;->access$1502(Ljava/util/concurrent/ScheduledExecutorService;)Ljava/util/concurrent/ScheduledExecutorService;

    goto/16 :goto_0

    .line 1502
    .restart local v2    # "afDevKey":Ljava/lang/String;
    :cond_3
    :try_start_6
    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1506
    invoke-static {v11}, Lcom/appsflyer/AppsFlyerLib;->access$1302(Z)Z

    goto :goto_2

    .end local v2    # "afDevKey":Ljava/lang/String;
    :catchall_1
    move-exception v0

    invoke-static {v11}, Lcom/appsflyer/AppsFlyerLib;->access$1302(Z)Z

    throw v0
.end method
