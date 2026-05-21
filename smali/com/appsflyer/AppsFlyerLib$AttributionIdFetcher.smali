.class abstract Lcom/appsflyer/AppsFlyerLib$AttributionIdFetcher;
.super Ljava/lang/Object;
.source "AppsFlyerLib.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/AppsFlyerLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "AttributionIdFetcher"
.end annotation


# static fields
.field private static currentRequestsCounter:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private appsFlyerDevKey:Ljava/lang/String;

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

.field private executorService:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1346
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/appsflyer/AppsFlyerLib$AttributionIdFetcher;->currentRequestsCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appsFlyerDevKey"    # Ljava/lang/String;
    .param p3, "executorService"    # Ljava/util/concurrent/ScheduledExecutorService;

    .prologue
    .line 1348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1338
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appsflyer/AppsFlyerLib$AttributionIdFetcher;->ctxReference:Ljava/lang/ref/WeakReference;

    .line 1349
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/appsflyer/AppsFlyerLib$AttributionIdFetcher;->ctxReference:Ljava/lang/ref/WeakReference;

    .line 1350
    iput-object p2, p0, Lcom/appsflyer/AppsFlyerLib$AttributionIdFetcher;->appsFlyerDevKey:Ljava/lang/String;

    .line 1351
    iput-object p3, p0, Lcom/appsflyer/AppsFlyerLib$AttributionIdFetcher;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 1352
    return-void
.end method


# virtual methods
.method protected abstract callback(Ljava/util/Map;)V
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
.end method

.method protected abstract callbackFailure(Ljava/lang/String;)V
.end method

.method public abstract getUrl()Ljava/lang/String;
.end method

.method public run()V
    .locals 24

    .prologue
    .line 1355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appsflyer/AppsFlyerLib$AttributionIdFetcher;->appsFlyerDevKey:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appsflyer/AppsFlyerLib$AttributionIdFetcher;->appsFlyerDevKey:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    if-nez v21, :cond_1

    .line 1462
    :cond_0
    :goto_0
    return-void

    .line 1358
    :cond_1
    sget-object v21, Lcom/appsflyer/AppsFlyerLib$AttributionIdFetcher;->currentRequestsCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1359
    const/4 v6, 0x0

    .line 1361
    .local v6, "connection":Ljava/net/HttpURLConnection;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appsflyer/AppsFlyerLib$AttributionIdFetcher;->ctxReference:Ljava/lang/ref/WeakReference;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1362
    .local v7, "context":Landroid/content/Context;
    if-nez v7, :cond_2

    .line 1456
    sget-object v21, Lcom/appsflyer/AppsFlyerLib$AttributionIdFetcher;->currentRequestsCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1457
    if-eqz v6, :cond_0

    .line 1458
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .line 1366
    :cond_2
    :try_start_1
    invoke-static {v7}, Lcom/appsflyer/AppsFlyerLib;->access$900(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v7, v0}, Lcom/appsflyer/AppsFlyerLib;->access$1000(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1367
    .local v4, "channel":Ljava/lang/String;
    const-string/jumbo v5, ""

    .line 1368
    .local v5, "channelPostfix":Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 1369
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "-"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1371
    :cond_3
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    .line 1372
    invoke-virtual/range {p0 .. p0}, Lcom/appsflyer/AppsFlyerLib$AttributionIdFetcher;->getUrl()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 1373
    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 1374
    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "?devkey="

    .line 1375
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appsflyer/AppsFlyerLib$AttributionIdFetcher;->appsFlyerDevKey:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "&device_id="

    .line 1376
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static {v7}, Lcom/appsflyer/AppsFlyerLib;->getAppsFlyerUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 1377
    .local v20, "urlString":Ljava/lang/StringBuilder;
    invoke-static {v7}, Lcom/appsflyer/AppsFlyerLib;->access$1100(Landroid/content/Context;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 1379
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Calling server for attribution url: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/appsflyer/LogMessages;->logMessageMaskKey(Ljava/lang/String;)V

    .line 1381
    :cond_4
    new-instance v21, Ljava/net/URL;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v21

    move-object/from16 v0, v21

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v6, v0

    .line 1383
    const-string/jumbo v21, "GET"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1384
    const/16 v21, 0x2710

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1385
    const-string/jumbo v21, "Connection"

    const-string/jumbo v22, "close"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v6, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1386
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->connect()V

    .line 1388
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v21

    const/16 v22, 0xc8

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_10

    .line 1390
    const/4 v15, 0x0

    .line 1391
    .local v15, "reader":Ljava/io/BufferedReader;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1392
    .local v18, "stringBuilder":Ljava/lang/StringBuilder;
    const/4 v11, 0x0

    .line 1394
    .local v11, "inputStreamReader":Ljava/io/InputStreamReader;
    :try_start_2
    new-instance v12, Ljava/io/InputStreamReader;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v12, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1395
    .end local v11    # "inputStreamReader":Ljava/io/InputStreamReader;
    .local v12, "inputStreamReader":Ljava/io/InputStreamReader;
    :try_start_3
    new-instance v16, Ljava/io/BufferedReader;

    move-object/from16 v0, v16

    invoke-direct {v0, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1397
    .end local v15    # "reader":Ljava/io/BufferedReader;
    .local v16, "reader":Ljava/io/BufferedReader;
    const/4 v14, 0x0

    .line 1398
    .local v14, "line":Ljava/lang/String;
    :goto_1
    :try_start_4
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_9

    .line 1399
    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0xa

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 1402
    :catchall_0
    move-exception v21

    move-object v11, v12

    .end local v12    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v11    # "inputStreamReader":Ljava/io/InputStreamReader;
    move-object/from16 v15, v16

    .end local v14    # "line":Ljava/lang/String;
    .end local v16    # "reader":Ljava/io/BufferedReader;
    .restart local v15    # "reader":Ljava/io/BufferedReader;
    :goto_2
    if-eqz v15, :cond_5

    .line 1403
    :try_start_5
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V

    .line 1405
    :cond_5
    if-eqz v11, :cond_6

    .line 1406
    invoke-virtual {v11}, Ljava/io/InputStreamReader;->close()V

    :cond_6
    throw v21
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1450
    .end local v4    # "channel":Ljava/lang/String;
    .end local v5    # "channelPostfix":Ljava/lang/String;
    .end local v7    # "context":Landroid/content/Context;
    .end local v11    # "inputStreamReader":Ljava/io/InputStreamReader;
    .end local v15    # "reader":Ljava/io/BufferedReader;
    .end local v18    # "stringBuilder":Ljava/lang/StringBuilder;
    .end local v20    # "urlString":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v19

    .line 1451
    .local v19, "t":Ljava/lang/Throwable;
    :try_start_6
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->access$800()Lcom/appsflyer/AppsFlyerConversionListener;

    move-result-object v21

    if-eqz v21, :cond_7

    .line 1452
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/appsflyer/AppsFlyerLib$AttributionIdFetcher;->callbackFailure(Ljava/lang/String;)V

    .line 1454
    :cond_7
    const-string/jumbo v21, "AppsFlyer_1.17"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1456
    sget-object v21, Lcom/appsflyer/AppsFlyerLib$AttributionIdFetcher;->currentRequestsCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1457
    if-eqz v6, :cond_8

    .line 1458
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1461
    .end local v19    # "t":Ljava/lang/Throwable;
    :cond_8
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appsflyer/AppsFlyerLib$AttributionIdFetcher;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    goto/16 :goto_0

    .line 1402
    .restart local v4    # "channel":Ljava/lang/String;
    .restart local v5    # "channelPostfix":Ljava/lang/String;
    .restart local v7    # "context":Landroid/content/Context;
    .restart local v12    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v14    # "line":Ljava/lang/String;
    .restart local v16    # "reader":Ljava/io/BufferedReader;
    .restart local v18    # "stringBuilder":Ljava/lang/StringBuilder;
    .restart local v20    # "urlString":Ljava/lang/StringBuilder;
    :cond_9
    if-eqz v16, :cond_a

    .line 1403
    :try_start_7
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedReader;->close()V

    .line 1405
    :cond_a
    if-eqz v12, :cond_b

    .line 1406
    invoke-virtual {v12}, Ljava/io/InputStreamReader;->close()V

    .line 1409
    :cond_b
    invoke-static {v7}, Lcom/appsflyer/AppsFlyerLib;->access$1100(Landroid/content/Context;)Z

    move-result v21

    if-eqz v21, :cond_c

    .line 1411
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Attribution data: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/appsflyer/LogMessages;->logMessageMaskKey(Ljava/lang/String;)V

    .line 1413
    :cond_c
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->length()I

    move-result v21

    if-lez v21, :cond_f

    if-eqz v7, :cond_f

    .line 1414
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/appsflyer/AppsFlyerLib;->access$1200(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v9

    .line 1415
    .local v9, "conversionDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v21, "iscache"

    move-object/from16 v0, v21

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 1418
    .local v13, "isCache":Ljava/lang/String;
    if-eqz v13, :cond_d

    const-string/jumbo v21, "true"

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_e

    .line 1419
    :cond_d
    const-string/jumbo v21, "appsflyer-data"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 1421
    .local v17, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    .line 1422
    .local v10, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v21, "attributionId"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1423
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1424
    invoke-static {v7}, Lcom/appsflyer/AppsFlyerLib;->access$1100(Landroid/content/Context;)Z

    move-result v21

    if-eqz v21, :cond_e

    .line 1425
    const-string/jumbo v21, "AppsFlyer_1.17"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "iscache="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " caching conversion data"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1428
    .end local v10    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v17    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_e
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->access$800()Lcom/appsflyer/AppsFlyerConversionListener;

    move-result-object v21

    if-eqz v21, :cond_f

    .line 1429
    sget-object v21, Lcom/appsflyer/AppsFlyerLib$AttributionIdFetcher;->currentRequestsCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-gt v0, v1, :cond_f

    .line 1432
    :try_start_8
    invoke-static {v7}, Lcom/appsflyer/AppsFlyerLib;->getConversionData(Landroid/content/Context;)Ljava/util/Map;
    :try_end_8
    .catch Lcom/appsflyer/AttributionIDNotReady; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result-object v8

    .line 1436
    .local v8, "conversionData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_4
    :try_start_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/appsflyer/AppsFlyerLib$AttributionIdFetcher;->callback(Ljava/util/Map;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1456
    .end local v8    # "conversionData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "conversionDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12    # "inputStreamReader":Ljava/io/InputStreamReader;
    .end local v13    # "isCache":Ljava/lang/String;
    .end local v14    # "line":Ljava/lang/String;
    .end local v16    # "reader":Ljava/io/BufferedReader;
    .end local v18    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_f
    :goto_5
    sget-object v21, Lcom/appsflyer/AppsFlyerLib$AttributionIdFetcher;->currentRequestsCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1457
    if-eqz v6, :cond_8

    .line 1458
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_3

    .line 1433
    .restart local v9    # "conversionDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v12    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v13    # "isCache":Ljava/lang/String;
    .restart local v14    # "line":Ljava/lang/String;
    .restart local v16    # "reader":Ljava/io/BufferedReader;
    .restart local v18    # "stringBuilder":Ljava/lang/StringBuilder;
    :catch_1
    move-exception v3

    .line 1434
    .local v3, "ae":Lcom/appsflyer/AttributionIDNotReady;
    move-object v8, v9

    .restart local v8    # "conversionData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_4

    .line 1442
    .end local v3    # "ae":Lcom/appsflyer/AttributionIDNotReady;
    .end local v8    # "conversionData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "conversionDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12    # "inputStreamReader":Ljava/io/InputStreamReader;
    .end local v13    # "isCache":Ljava/lang/String;
    .end local v14    # "line":Ljava/lang/String;
    .end local v16    # "reader":Ljava/io/BufferedReader;
    .end local v18    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_10
    :try_start_a
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->access$800()Lcom/appsflyer/AppsFlyerConversionListener;

    move-result-object v21

    if-eqz v21, :cond_11

    .line 1443
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Error connection to server: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/appsflyer/AppsFlyerLib$AttributionIdFetcher;->callbackFailure(Ljava/lang/String;)V

    .line 1445
    :cond_11
    invoke-static {v7}, Lcom/appsflyer/AppsFlyerLib;->access$1100(Landroid/content/Context;)Z

    move-result v21

    if-eqz v21, :cond_f

    .line 1447
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "AttributionIdFetcher response code: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "  url: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/appsflyer/LogMessages;->logMessageMaskKey(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_5

    .line 1456
    .end local v4    # "channel":Ljava/lang/String;
    .end local v5    # "channelPostfix":Ljava/lang/String;
    .end local v7    # "context":Landroid/content/Context;
    .end local v20    # "urlString":Ljava/lang/StringBuilder;
    :catchall_1
    move-exception v21

    sget-object v22, Lcom/appsflyer/AppsFlyerLib$AttributionIdFetcher;->currentRequestsCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual/range {v22 .. v22}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1457
    if-eqz v6, :cond_12

    .line 1458
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_12
    throw v21

    .line 1402
    .restart local v4    # "channel":Ljava/lang/String;
    .restart local v5    # "channelPostfix":Ljava/lang/String;
    .restart local v7    # "context":Landroid/content/Context;
    .restart local v11    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v15    # "reader":Ljava/io/BufferedReader;
    .restart local v18    # "stringBuilder":Ljava/lang/StringBuilder;
    .restart local v20    # "urlString":Ljava/lang/StringBuilder;
    :catchall_2
    move-exception v21

    goto/16 :goto_2

    .end local v11    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v12    # "inputStreamReader":Ljava/io/InputStreamReader;
    :catchall_3
    move-exception v21

    move-object v11, v12

    .end local v12    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v11    # "inputStreamReader":Ljava/io/InputStreamReader;
    goto/16 :goto_2
.end method
