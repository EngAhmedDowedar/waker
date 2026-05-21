.class public final Lcom/helpshift/util/Meta;
.super Ljava/lang/Object;
.source "Meta.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "HelpShiftDebug"

.field private static metaFn:Lcom/helpshift/HSCallable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static cleanMetaForTags(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 3
    .param p0, "meta"    # Ljava/util/HashMap;

    .prologue
    .line 402
    const-string/jumbo v2, "hs-tags"

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 403
    .local v0, "tags":Ljava/lang/Object;
    const-string/jumbo v2, "hs-tags"

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    instance-of v2, v0, [Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 405
    new-instance v1, Lorg/json/JSONArray;

    check-cast v0, [Ljava/lang/String;

    .end local v0    # "tags":Ljava/lang/Object;
    check-cast v0, [Ljava/lang/String;

    invoke-static {v0}, Lcom/helpshift/util/Meta;->cleanTags([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 406
    .local v1, "tagsJSON":Lorg/json/JSONArray;
    const-string/jumbo v2, "hs-tags"

    invoke-virtual {p0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    .end local v1    # "tagsJSON":Lorg/json/JSONArray;
    :cond_0
    return-object p0
.end method

.method private static cleanTags([Ljava/lang/String;)[Ljava/lang/String;
    .locals 7
    .param p0, "input"    # [Ljava/lang/String;

    .prologue
    .line 383
    move-object v3, p0

    .line 385
    .local v3, "v":[Ljava/lang/String;
    array-length v4, v3

    .local v4, "w":I
    move v1, v4

    .local v1, "r":I
    move v0, v4

    .line 386
    .local v0, "n":I
    :cond_0
    :goto_0
    if-lez v1, :cond_1

    .line 387
    add-int/lit8 v1, v1, -0x1

    aget-object v2, v3, v1

    .line 388
    .local v2, "s":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 390
    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    goto :goto_0

    .line 394
    .end local v2    # "s":Ljava/lang/String;
    :cond_1
    invoke-static {v3, v4, v0}, Lcom/helpshift/util/ArraysCompat;->copyOfRange([Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object v3

    .line 396
    new-instance v5, Ljava/util/HashSet;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "v":[Ljava/lang/String;
    check-cast v3, [Ljava/lang/String;

    .line 398
    .restart local v3    # "v":[Ljava/lang/String;
    return-object v3
.end method

.method private static formatLog(Ljava/util/HashMap;)Lorg/json/JSONObject;
    .locals 4
    .param p0, "log"    # Ljava/util/HashMap;

    .prologue
    .line 328
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 330
    .local v1, "outputLog":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "message"

    const-string/jumbo v3, "message"

    invoke-virtual {p0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 331
    const-string/jumbo v2, "level"

    const-string/jumbo v3, "level"

    invoke-virtual {p0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 332
    const-string/jumbo v2, "tag"

    const-string/jumbo v3, "tag"

    invoke-virtual {p0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 333
    const-string/jumbo v2, "exception"

    const-string/jumbo v3, "exception"

    invoke-virtual {p0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    :goto_0
    return-object v1

    .line 334
    :catch_0
    move-exception v0

    .line 335
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v3, "Format debug lgos"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static formatLogList(Ljava/util/ArrayList;)Lorg/json/JSONArray;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .prologue
    .line 342
    .local p0, "logs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap;>;"
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 343
    .local v1, "outputList":Lorg/json/JSONArray;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 344
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    invoke-static {v2}, Lcom/helpshift/util/Meta;->formatLog(Ljava/util/HashMap;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 343
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 346
    :cond_0
    return-object v1
.end method

.method private static getAppName(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 225
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 228
    .local v3, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 232
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    :goto_1
    check-cast v4, Ljava/lang/String;

    move-object v1, v4

    check-cast v1, Ljava/lang/String;

    .line 234
    .local v1, "applicationName":Ljava/lang/String;
    return-object v1

    .line 229
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "applicationName":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 230
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v0, 0x0

    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    goto :goto_0

    .line 232
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    const-string/jumbo v4, "(unknown)"

    goto :goto_1
.end method

.method public static getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 316
    const/4 v0, 0x0

    .line 318
    .local v0, "appVersion":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 319
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 320
    .local v2, "p":Landroid/content/pm/PackageInfo;
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    .end local v2    # "p":Landroid/content/pm/PackageInfo;
    .end local v3    # "packageName":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 321
    :catch_0
    move-exception v1

    .line 322
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v4, "HelpShiftDebug"

    const-string/jumbo v5, "Package not found exception"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static getBatteryLevel(Landroid/content/Intent;)Ljava/lang/String;
    .locals 5
    .param p0, "batteryStatus"    # Landroid/content/Intent;

    .prologue
    const/4 v4, -0x1

    .line 294
    const-string/jumbo v3, "level"

    invoke-virtual {p0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 295
    .local v1, "level":I
    const-string/jumbo v3, "scale"

    invoke-virtual {p0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 297
    .local v2, "scale":I
    int-to-float v3, v1

    int-to-float v4, v2

    div-float/2addr v3, v4

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v3, v4

    float-to-int v0, v3

    .line 298
    .local v0, "batteryPct":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static getBatteryStatus(Landroid/content/Intent;)Ljava/lang/String;
    .locals 4
    .param p0, "batteryStatus"    # Landroid/content/Intent;

    .prologue
    .line 309
    const-string/jumbo v2, "status"

    const/4 v3, -0x1

    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 310
    .local v1, "status":I
    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 312
    .local v0, "isCharging":Z
    :goto_0
    if-eqz v0, :cond_2

    const-string/jumbo v2, "Charging"

    :goto_1
    return-object v2

    .line 310
    .end local v0    # "isCharging":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 312
    .restart local v0    # "isCharging":Z
    :cond_2
    const-string/jumbo v2, "Not charging"

    goto :goto_1
.end method

.method private static getBreadCrumbs(Landroid/content/Context;)Lorg/json/JSONArray;
    .locals 2
    .param p0, "c"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 139
    new-instance v0, Lcom/helpshift/HSStorage;

    invoke-direct {v0, p0}, Lcom/helpshift/HSStorage;-><init>(Landroid/content/Context;)V

    .line 140
    .local v0, "storage":Lcom/helpshift/HSStorage;
    invoke-virtual {v0}, Lcom/helpshift/HSStorage;->getBreadCrumbs()Lorg/json/JSONArray;

    move-result-object v1

    return-object v1
.end method

.method public static getCustomMeta()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 354
    sget-object v1, Lcom/helpshift/util/Meta;->metaFn:Lcom/helpshift/HSCallable;

    if-eqz v1, :cond_0

    .line 355
    sget-object v1, Lcom/helpshift/util/Meta;->metaFn:Lcom/helpshift/HSCallable;

    invoke-interface {v1}, Lcom/helpshift/HSCallable;->call()Ljava/util/HashMap;

    move-result-object v0

    .line 356
    .local v0, "meta":Ljava/util/HashMap;
    if-eqz v0, :cond_0

    .line 357
    invoke-static {v0}, Lcom/helpshift/util/Meta;->removeEmptyKeyOrValue(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    .line 358
    new-instance v1, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/helpshift/util/Meta;->cleanMetaForTags(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 361
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getDeviceInfo(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 9
    .param p0, "c"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 150
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 152
    .local v1, "deviceInfo":Lorg/json/JSONObject;
    const-string/jumbo v7, "platform"

    const-string/jumbo v8, "android"

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 153
    const-string/jumbo v7, "library-version"

    const-string/jumbo v8, "3.10.0"

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 154
    const-string/jumbo v7, "device-model"

    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 155
    const-string/jumbo v7, "os-version"

    sget-object v8, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 158
    :try_start_0
    const-string/jumbo v7, "language-code"

    invoke-static {}, Lcom/helpshift/util/LocaleUtil;->getAcceptLanguageHeader()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :goto_0
    sget-object v7, Lcom/helpshift/util/HSFormat;->deviceInfoTsFormat:Ljava/text/SimpleDateFormat;

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 164
    .local v6, "ts":Ljava/lang/String;
    const-string/jumbo v7, "timestamp"

    invoke-virtual {v1, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 167
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 168
    .local v4, "packageName":Ljava/lang/String;
    const-string/jumbo v7, "application-identifier"

    invoke-virtual {v1, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 170
    const-string/jumbo v7, "application-name"

    invoke-static {p0}, Lcom/helpshift/util/Meta;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 173
    const-string/jumbo v7, "application-version"

    invoke-static {p0}, Lcom/helpshift/util/Meta;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 176
    const-string/jumbo v7, "disk-space"

    invoke-static {p0}, Lcom/helpshift/util/Meta;->getDiskSpace(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 178
    const-string/jumbo v7, "phone"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 179
    .local v5, "tm":Landroid/telephony/TelephonyManager;
    const-string/jumbo v7, "country-code"

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 181
    const-string/jumbo v7, "carrier-name"

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 186
    :try_start_1
    const-string/jumbo v7, "network-type"

    invoke-static {p0}, Lcom/helpshift/util/Meta;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 192
    :goto_1
    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v7, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v3, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 193
    .local v3, "ifilter":Landroid/content/IntentFilter;
    const/4 v7, 0x0

    invoke-virtual {p0, v7, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 194
    .local v0, "batteryStatus":Landroid/content/Intent;
    const-string/jumbo v7, "battery-level"

    invoke-static {v0}, Lcom/helpshift/util/Meta;->getBatteryLevel(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 195
    const-string/jumbo v7, "battery-status"

    invoke-static {v0}, Lcom/helpshift/util/Meta;->getBatteryStatus(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 197
    return-object v1

    .line 159
    .end local v0    # "batteryStatus":Landroid/content/Intent;
    .end local v3    # "ifilter":Landroid/content/IntentFilter;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "tm":Landroid/telephony/TelephonyManager;
    .end local v6    # "ts":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 160
    .local v2, "e":Ljava/util/MissingResourceException;
    const-string/jumbo v7, "HelpShiftDebug"

    const-string/jumbo v8, "Device Info - MissingResourceException"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 187
    .end local v2    # "e":Ljava/util/MissingResourceException;
    .restart local v4    # "packageName":Ljava/lang/String;
    .restart local v5    # "tm":Landroid/telephony/TelephonyManager;
    .restart local v6    # "ts":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 188
    .local v2, "e":Ljava/lang/SecurityException;
    const-string/jumbo v7, "HelpShiftDebug"

    const-string/jumbo v8, "No permission for Network Access"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private static getDiskSpace(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 16
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 244
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 246
    .local v0, "diskSpace":Lorg/json/JSONObject;
    new-instance v6, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v6, v12}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 247
    .local v6, "phoneStat":Landroid/os/StatFs;
    new-instance v7, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v7, v12}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 249
    .local v7, "sdStat":Landroid/os/StatFs;
    invoke-virtual {v6}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v12

    int-to-double v12, v12

    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSize()I

    move-result v14

    int-to-double v14, v14

    mul-double/2addr v12, v14

    const-wide/high16 v14, 0x41d0000000000000L    # 1.073741824E9

    div-double v2, v12, v14

    .line 250
    .local v2, "free_phone_memory":D
    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    mul-double/2addr v12, v2

    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    long-to-double v12, v12

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    div-double v2, v12, v14

    .line 251
    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockCount()I

    move-result v12

    int-to-double v12, v12

    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSize()I

    move-result v14

    int-to-double v14, v14

    mul-double/2addr v12, v14

    const-wide/high16 v14, 0x41d0000000000000L    # 1.073741824E9

    div-double v8, v12, v14

    .line 252
    .local v8, "total_phone_memory":D
    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    mul-double/2addr v12, v8

    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    long-to-double v12, v12

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    div-double v8, v12, v14

    .line 254
    invoke-virtual {v7}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v12

    int-to-double v12, v12

    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockSize()I

    move-result v14

    int-to-double v14, v14

    mul-double/2addr v12, v14

    const-wide/high16 v14, 0x41d0000000000000L    # 1.073741824E9

    div-double v4, v12, v14

    .line 255
    .local v4, "free_sd_memory":D
    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    mul-double/2addr v12, v4

    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    long-to-double v12, v12

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    div-double v4, v12, v14

    .line 256
    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockCount()I

    move-result v12

    int-to-double v12, v12

    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockSize()I

    move-result v14

    int-to-double v14, v14

    mul-double/2addr v12, v14

    const-wide/high16 v14, 0x41d0000000000000L    # 1.073741824E9

    div-double v10, v12, v14

    .line 257
    .local v10, "total_sd_memory":D
    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    mul-double/2addr v12, v10

    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    long-to-double v12, v12

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    div-double v10, v12, v14

    .line 260
    :try_start_0
    const-string/jumbo v12, "free-space-phone"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " GB"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 261
    const-string/jumbo v12, "total-space-phone"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " GB"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 262
    const-string/jumbo v12, "free-space-sd"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " GB"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 263
    const-string/jumbo v12, "total-space-sd"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " GB"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    :goto_0
    return-object v0

    .line 264
    :catch_0
    move-exception v1

    .line 265
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v12, "HelpShiftDebug"

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static getExtra(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3
    .param p0, "customIdentifier"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 207
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 208
    .local v0, "extra":Lorg/json/JSONObject;
    const-string/jumbo v1, "api-version"

    const-string/jumbo v2, "2"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 209
    const-string/jumbo v1, "library-version"

    const-string/jumbo v2, "3.10.0"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 210
    if-eqz p0, :cond_0

    .line 211
    const-string/jumbo v1, "user-id"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 214
    :cond_0
    return-object v0
.end method

.method public static getMetaInfo(Landroid/content/Context;Ljava/lang/Boolean;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 8
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "attachDeviceInfo"    # Ljava/lang/Boolean;
    .param p2, "customIdentifier"    # Ljava/lang/String;

    .prologue
    .line 56
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 60
    .local v3, "meta":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v6, "breadcrumbs"

    invoke-static {p0}, Lcom/helpshift/util/Meta;->getBreadCrumbs(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 68
    const-string/jumbo v6, "device_info"

    invoke-static {p0}, Lcom/helpshift/util/Meta;->getDeviceInfo(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 80
    :goto_1
    :try_start_2
    const-string/jumbo v6, "extra"

    invoke-static {p2}, Lcom/helpshift/util/Meta;->getExtra(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 87
    :goto_2
    :try_start_3
    sget-object v6, Lcom/helpshift/res/values/HSConfig;->configData:Ljava/util/Map;

    const-string/jumbo v7, "dbgl"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 88
    .local v2, "logLimit":Ljava/lang/Integer;
    const-string/jumbo v6, "logs"

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Lcom/helpshift/Log;->getLogs(I)Ljava/util/ArrayList;

    move-result-object v7

    invoke-static {v7}, Lcom/helpshift/util/Meta;->formatLogList(Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    .line 96
    .end local v2    # "logLimit":Ljava/lang/Integer;
    :goto_3
    :try_start_4
    new-instance v4, Lcom/helpshift/HSStorage;

    invoke-direct {v4, p0}, Lcom/helpshift/HSStorage;-><init>(Landroid/content/Context;)V

    .line 97
    .local v4, "storage":Lcom/helpshift/HSStorage;
    const-string/jumbo v6, "device_token"

    invoke-virtual {v4}, Lcom/helpshift/HSStorage;->getDeviceToken()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    .line 102
    .end local v4    # "storage":Lcom/helpshift/HSStorage;
    :goto_4
    new-instance v4, Lcom/helpshift/HSStorage;

    invoke-direct {v4, p0}, Lcom/helpshift/HSStorage;-><init>(Landroid/content/Context;)V

    .line 104
    .restart local v4    # "storage":Lcom/helpshift/HSStorage;
    sget-object v6, Lcom/helpshift/util/Meta;->metaFn:Lcom/helpshift/HSCallable;

    if-eqz v6, :cond_3

    .line 106
    :try_start_5
    invoke-static {}, Lcom/helpshift/util/Meta;->getCustomMeta()Lorg/json/JSONObject;

    move-result-object v0

    .line 107
    .local v0, "customMeta":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 108
    const-string/jumbo v6, "custom_meta"

    invoke-virtual {v3, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 113
    :cond_0
    invoke-virtual {v4, v0}, Lcom/helpshift/HSStorage;->setCustomMetaData(Lorg/json/JSONObject;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_5

    .line 129
    .end local v0    # "customMeta":Lorg/json/JSONObject;
    :cond_1
    :goto_5
    return-object v3

    .line 61
    .end local v4    # "storage":Lcom/helpshift/HSStorage;
    :catch_0
    move-exception v1

    .line 62
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v6, "HelpShiftDebug"

    const-string/jumbo v7, "Error while getting device info"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 71
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_2
    :try_start_6
    const-string/jumbo v6, "device_info"

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 73
    :catch_1
    move-exception v1

    .line 74
    .restart local v1    # "e":Lorg/json/JSONException;
    const-string/jumbo v6, "HelpShiftDebug"

    const-string/jumbo v7, "Error while getting device info"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 81
    .end local v1    # "e":Lorg/json/JSONException;
    :catch_2
    move-exception v1

    .line 82
    .restart local v1    # "e":Lorg/json/JSONException;
    const-string/jumbo v6, "HelpShiftDebug"

    const-string/jumbo v7, "Error while getting extra info"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 90
    .end local v1    # "e":Lorg/json/JSONException;
    :catch_3
    move-exception v1

    .line 91
    .restart local v1    # "e":Lorg/json/JSONException;
    const-string/jumbo v6, "HelpShiftDebug"

    const-string/jumbo v7, "Error while getting debug logs"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 98
    .end local v1    # "e":Lorg/json/JSONException;
    :catch_4
    move-exception v1

    .line 99
    .restart local v1    # "e":Lorg/json/JSONException;
    const-string/jumbo v6, "HelpShiftDebug"

    const-string/jumbo v7, "Error while getting device token"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 114
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v4    # "storage":Lcom/helpshift/HSStorage;
    :catch_5
    move-exception v1

    .line 115
    .restart local v1    # "e":Lorg/json/JSONException;
    const-string/jumbo v6, "HelpShiftDebug"

    const-string/jumbo v7, "Error while getting extra meta"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 119
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_3
    :try_start_7
    invoke-virtual {v4}, Lcom/helpshift/HSStorage;->getCustomMetaData()Lorg/json/JSONObject;

    move-result-object v5

    .line 120
    .local v5, "storageMeta":Lorg/json/JSONObject;
    if-eqz v5, :cond_1

    .line 121
    const-string/jumbo v6, "custom_meta"

    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_5

    .line 123
    .end local v5    # "storageMeta":Lorg/json/JSONObject;
    :catch_6
    move-exception v1

    .line 124
    .restart local v1    # "e":Lorg/json/JSONException;
    const-string/jumbo v6, "HelpShiftDebug"

    const-string/jumbo v7, "Exception in getting meta from storage "

    invoke-static {v6, v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method private static getNetworkType(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 277
    const-string/jumbo v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 278
    .local v1, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 279
    .local v0, "ani":Landroid/net/NetworkInfo;
    const-string/jumbo v2, "Unknown"

    .line 280
    .local v2, "type":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 281
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    .line 283
    :cond_0
    return-object v2
.end method

.method private static removeEmptyKeyOrValue(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 6
    .param p0, "metadata"    # Ljava/util/HashMap;

    .prologue
    .line 365
    invoke-virtual {p0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 367
    .local v2, "newMetaData":Ljava/util/HashMap;
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 368
    .local v1, "key":Ljava/lang/Object;
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 369
    .local v3, "value":Ljava/lang/Object;
    instance-of v4, v1, Ljava/lang/String;

    if-eqz v4, :cond_1

    move-object v4, v1

    .line 370
    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 371
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    :cond_1
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 374
    check-cast v3, Ljava/lang/String;

    .end local v3    # "value":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 375
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 378
    .end local v1    # "key":Ljava/lang/Object;
    :cond_2
    return-object v2
.end method

.method public static setMetadataCallback(Lcom/helpshift/HSCallable;)V
    .locals 0
    .param p0, "f"    # Lcom/helpshift/HSCallable;

    .prologue
    .line 350
    sput-object p0, Lcom/helpshift/util/Meta;->metaFn:Lcom/helpshift/HSCallable;

    .line 351
    return-void
.end method
