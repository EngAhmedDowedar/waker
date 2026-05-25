.class public Lcom/anansimobile/city_ar/Main;
.super Lcom/anansimobile/nge/RootActivity;
.source "Main.java"

# interfaces
.implements Lcom/google/android/vending/expansion/downloader/IDownloaderClient;


# instance fields
.field private final base64EncodedPublicKey:Ljava/lang/String;

.field private expansionFileSize:J

.field private mDownloaderClientStub:Lcom/google/android/vending/expansion/downloader/IStub;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRemoteService:Lcom/google/android/vending/expansion/downloader/IDownloaderService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 172
    const-string/jumbo v0, "city_ar"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 173
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/anansimobile/nge/RootActivity;-><init>()V

    .line 49
    const-string/jumbo v0, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAgd8SYj+8N+tMCVElpVMDKTTUZONwDK4LBG3a1IuUqAj0Q+6ashOfugRlZtT6Z3C0HO5AbW55eVsQV7vGrjEz4TEsZ2fMCwLy1AETU3ufAf1RT4f+yqd3GeWjnfAxoesL0zrnwkyGSYim3WdFo/X32V63XiFca9MDW1oTDAmCoZmy3W/XsxYHgQ2IWwq1UIJy1Z7L8nAr9pEXed0MBu5NoZ7B8R5Rn905fBVr3708eDyVGFlO8qKOZJo8A8j6lbecuGR2WSNshYpTCPIY08r8SyEsRxMsqQwVSeh73kunuoemOBl4emhro/PA2t4nzF6bLPXlhkgYbXM0kzkJ6KLbeQIDAQAB"

    iput-object v0, p0, Lcom/anansimobile/city_ar/Main;->base64EncodedPublicKey:Ljava/lang/String;

    .line 56
    const-wide/32 v0, 0x166d5b3

    iput-wide v0, p0, Lcom/anansimobile/city_ar/Main;->expansionFileSize:J

    return-void
.end method

.method private CheckExpansionFile()V
    .locals 12

    .prologue
    .line 192
    .line 194
    :try_start_0
    invoke-virtual {p0}, Lcom/anansimobile/city_ar/Main;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 196
    invoke-virtual {p0}, Lcom/anansimobile/city_ar/Main;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x80

    .line 195
    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 198
    .local v0, "appi":Landroid/content/pm/ApplicationInfo;
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 199
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v9, "ANANSI_CHANNEL"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 201
    .local v8, "value":Ljava/lang/Object;
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "GPAr_inhouse"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 202
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "MoboMarket"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    if-eqz v9, :cond_1

    .line 253
    .end local v0    # "appi":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v8    # "value":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 205
    :catch_0
    move-exception v3

    .line 206
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 209
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    const-class v9, Lcom/anansimobile/city_ar/OwnDownloaderService;

    .line 210
    invoke-static {p0, v9}, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller;->CreateStub(Lcom/google/android/vending/expansion/downloader/IDownloaderClient;Ljava/lang/Class;)Lcom/google/android/vending/expansion/downloader/IStub;

    move-result-object v9

    iput-object v9, p0, Lcom/anansimobile/city_ar/Main;->mDownloaderClientStub:Lcom/google/android/vending/expansion/downloader/IStub;

    .line 212
    invoke-direct {p0}, Lcom/anansimobile/city_ar/Main;->expansionFilesDelivered()Z

    move-result v9

    if-nez v9, :cond_0

    .line 216
    :try_start_1
    invoke-virtual {p0}, Lcom/anansimobile/city_ar/Main;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 217
    .local v5, "launchIntent":Landroid/content/Intent;
    new-instance v4, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-direct {v4, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 218
    .local v4, "intentToLaunchThisActivityFromNotification":Landroid/content/Intent;
    const/high16 v9, 0x14000000

    invoke-virtual {v4, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 220
    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    invoke-virtual {v5}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 223
    invoke-virtual {v5}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 224
    .local v2, "category":Ljava/lang/String;
    invoke-virtual {v4, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 247
    .end local v2    # "category":Ljava/lang/String;
    .end local v4    # "intentToLaunchThisActivityFromNotification":Landroid/content/Intent;
    .end local v5    # "launchIntent":Landroid/content/Intent;
    :catch_1
    move-exception v3

    .line 248
    .restart local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v9, "WildCityDownloader"

    const-string/jumbo v10, "Cannot find own package! MAYDAY!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 230
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v4    # "intentToLaunchThisActivityFromNotification":Landroid/content/Intent;
    .restart local v5    # "launchIntent":Landroid/content/Intent;
    :cond_2
    const/4 v9, 0x0

    const/high16 v10, 0x8000000

    :try_start_2
    invoke-static {p0, v9, v4, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 235
    .local v6, "pendingIntent":Landroid/app/PendingIntent;
    const-class v9, Lcom/anansimobile/city_ar/OwnDownloaderService;

    invoke-static {p0, v6, v9}, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller;->startDownloadServiceIfRequired(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/Class;)I

    move-result v7

    .line 238
    .local v7, "startResult":I
    if-eqz v7, :cond_0

    .line 242
    const-class v9, Lcom/anansimobile/city_ar/OwnDownloaderService;

    .line 243
    invoke-static {p0, v9}, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller;->CreateStub(Lcom/google/android/vending/expansion/downloader/IDownloaderClient;Ljava/lang/Class;)Lcom/google/android/vending/expansion/downloader/IStub;

    move-result-object v9

    iput-object v9, p0, Lcom/anansimobile/city_ar/Main;->mDownloaderClientStub:Lcom/google/android/vending/expansion/downloader/IStub;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0
.end method

.method private expansionFilesDelivered()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public ChangeInputStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    .param p1, "aInput"    # Ljava/lang/String;
    .param p2, "aKey"    # Ljava/lang/String;

    .prologue
    .line 435
    new-instance v4, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    const/4 v15, 0x0

    invoke-static {v14, v15}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v14

    invoke-direct {v4, v14}, Ljava/lang/String;-><init>([B)V

    .line 436
    .end local p1    # "aInput":Ljava/lang/String;
    .local v4, "aInput":Ljava/lang/String;
    const/16 v14, 0x100

    new-array v1, v14, [I

    .line 437
    .local v1, "S":[I
    const/16 v14, 0x100

    new-array v3, v14, [I

    .line 438
    .local v3, "T":[I
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v14

    new-array v8, v14, [C

    .line 439
    .local v8, "key":[C
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v14

    new-array v6, v14, [C

    .line 440
    .local v6, "inputStr":[C
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v14

    new-array v11, v14, [C

    .line 441
    .local v11, "outputStr":[C
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    .line 442
    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    .line 444
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    const/16 v14, 0x100

    if-ge v5, v14, :cond_0

    .line 445
    aput v5, v1, v5

    .line 446
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v14

    rem-int v14, v5, v14

    aget-char v14, v8, v14

    aput v14, v3, v5

    .line 444
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 449
    :cond_0
    const/4 v7, 0x0

    .line 450
    .local v7, "j":I
    const/4 v5, 0x0

    :goto_1
    const/16 v14, 0x100

    if-ge v5, v14, :cond_1

    .line 452
    aget v14, v1, v5

    add-int/2addr v14, v7

    aget v15, v3, v5

    add-int/2addr v14, v15

    rem-int/lit16 v7, v14, 0x100

    .line 453
    aget v13, v1, v5

    .line 454
    .local v13, "temp":I
    aget v14, v1, v7

    aput v14, v1, v5

    .line 455
    aput v13, v1, v7

    .line 450
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 459
    .end local v13    # "temp":I
    :cond_1
    const/4 v10, 0x0

    .local v10, "n":I
    move v9, v10

    .line 460
    .local v9, "m":I
    const/16 v14, 0x100

    new-array v0, v14, [I

    .line 461
    .local v0, "K":[I
    const/4 v5, 0x0

    :goto_2
    array-length v14, v6

    if-ge v5, v14, :cond_2

    .line 463
    add-int/lit8 v14, v9, 0x1

    rem-int/lit16 v9, v14, 0x100

    .line 464
    aget v14, v1, v10

    add-int/2addr v14, v10

    rem-int/lit16 v10, v14, 0x100

    .line 465
    aget v13, v1, v9

    .line 466
    .restart local v13    # "temp":I
    aget v14, v1, v10

    aput v14, v1, v9

    .line 467
    aput v13, v1, v10

    .line 468
    aget v14, v1, v9

    aget v15, v1, v10

    add-int/2addr v14, v15

    rem-int/lit16 v12, v14, 0x100

    .line 469
    .local v12, "q":I
    aget v14, v1, v12

    aput v14, v0, v5

    .line 470
    aget-char v14, v6, v5

    aget v15, v0, v5

    xor-int/2addr v14, v15

    int-to-char v14, v14

    aput-char v14, v11, v5

    .line 461
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 474
    .end local v12    # "q":I
    .end local v13    # "temp":I
    :cond_2
    invoke-static {v11}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v2

    .line 475
    .local v2, "Str":Ljava/lang/String;
    return-object v2
.end method

.method public CheckPackageName(Ljava/lang/String;)Z
    .locals 13
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/16 v12, 0x20

    .line 403
    const/4 v6, 0x0

    .line 404
    .local v6, "isOk":Z
    const-string/jumbo v4, "9w955N809w65evcDcv1ja84w5Y5z50a1awfq888a4a8c0OaT3M0g5j9D0s7Wef3ChcOHcsO6wrTCpsK5"

    .line 405
    .local v4, "eccryptStr":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    .line 406
    .local v10, "size":I
    new-array v2, v10, [C

    .line 407
    .local v2, "eccryptArray":[C
    new-array v9, v12, [C

    .line 408
    .local v9, "keyArray":[C
    add-int/lit8 v11, v10, -0x20

    new-array v0, v11, [C

    .line 409
    .local v0, "compareArray":[C
    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 412
    const/4 v7, 0x0

    .line 413
    .local v7, "j":I
    const/4 v8, 0x0

    .line 414
    .local v8, "k":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v10, :cond_1

    .line 415
    rem-int/lit8 v11, v5, 0x2

    if-nez v11, :cond_0

    if-ge v7, v12, :cond_0

    .line 416
    aget-char v11, v2, v5

    aput-char v11, v9, v7

    .line 417
    add-int/lit8 v7, v7, 0x1

    .line 414
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 419
    :cond_0
    aget-char v11, v2, v5

    aput-char v11, v0, v8

    .line 420
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 423
    :cond_1
    invoke-static {v9}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v3

    .line 424
    .local v3, "eccryptKey":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    .line 427
    .local v1, "compareStr":Ljava/lang/String;
    invoke-virtual {p0, v1, v3}, Lcom/anansimobile/city_ar/Main;->ChangeInputStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_2

    .line 428
    const/4 v6, 0x1

    .line 430
    :cond_2
    return v6
.end method

.method public getNotificationIcon()I
    .locals 1

    .prologue
    .line 294
    const v0, 0x7f06008e

    return v0
.end method

.method public handleBackPressed()V
    .locals 0

    .prologue
    .line 317
    invoke-super {p0}, Lcom/anansimobile/nge/RootActivity;->handleBackPressed()V

    .line 318
    invoke-static {p0}, Lcom/anansimobile/extra/statistics/MobileAppTracking/MATInterface;->onPause(Landroid/app/Activity;)V

    .line 319
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 332
    invoke-super {p0, p1, p2, p3}, Lcom/anansimobile/nge/RootActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 333
    invoke-static {p1, p2, p3}, Lcom/anansimobile/extra/platform/facebookshare/FacebookShare;->onActivityResult(IILandroid/content/Intent;)V

    .line 334
    invoke-static {p1, p2, p3}, Lcom/anansimobile/extra/payment/PayssionInterface;->onActivityResult(IILandroid/content/Intent;)V

    .line 335
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/anansimobile/nge/RootActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0}, Lcom/anansimobile/city_ar/Main;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string/jumbo v3, "65e07fe08e7bb3d90d21be2f0c27ecd2"

    const-string/jumbo v4, "anansi.helpshift.com"

    const-string/jumbo v5, "anansi_platform_20150525035205769-fdcd5211eecc829"

    invoke-static {p0, v2, v3, v4, v5}, Lcom/anansimobile/extra/gamehelper/helpshift/HelpShiftInterface;->Init(Landroid/app/Activity;Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string/jumbo v2, "ar"

    invoke-static {v2}, Lcom/anansimobile/extra/gamehelper/helpshift/HelpShiftInterface;->SetLanguage(Ljava/lang/String;)V

    .line 70
    const-string/jumbo v2, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAgd8SYj+8N+tMCVElpVMDKTTUZONwDK4LBG3a1IuUqAj0Q+6ashOfugRlZtT6Z3C0HO5AbW55eVsQV7vGrjEz4TEsZ2fMCwLy1AETU3ufAf1RT4f+yqd3GeWjnfAxoesL0zrnwkyGSYim3WdFo/X32V63XiFca9MDW1oTDAmCoZmy3W/XsxYHgQ2IWwq1UIJy1Z7L8nAr9pEXed0MBu5NoZ7B8R5Rn905fBVr3708eDyVGFlO8qKOZJo8A8j6lbecuGR2WSNshYpTCPIY08r8SyEsRxMsqQwVSeh73kunuoemOBl4emhro/PA2t4nzF6bLPXlhkgYbXM0kzkJ6KLbeQIDAQAB"

    invoke-virtual {p0, v2}, Lcom/anansimobile/city_ar/Main;->initStoreKit(Ljava/lang/String;)V

    .line 73
    invoke-static {p0}, Lcom/anansimobile/nge/extra/statistics/UMStatistics;->init(Landroid/content/Context;)V

    .line 76
    invoke-static {p0}, Lcom/anansimobile/nge/extra/statistics/FlurryStatistics;->init(Landroid/content/Context;)V

    .line 79
    const-string/jumbo v2, "0e918b35fbf90c49"

    const-string/jumbo v3, "437ff604bc3d184d6bf7556cffe6f3e5"

    invoke-static {p0, v2, v3}, Lcom/anansimobile/extra/payment/PayssionInterface;->init(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string/jumbo v2, "F9787EDB1C66AB10BBB9BFB162DB7755"

    const-string/jumbo v3, "GooglePlayAr"

    invoke-static {p0, v2, v3}, Lcom/anansimobile/extra/statistics/talkingdata/TalkingDataStatistics;->init(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string/jumbo v2, "THtZS56BYcUriT6j3GQzvi"

    invoke-static {p0, v2}, Lcom/anansimobile/extra/statistics/MobileAppTracking/MATInterface;->setAppsFlyer(Landroid/content/Context;Ljava/lang/String;)V

    .line 118
    new-instance v2, Lcom/anansimobile/city_ar/CCTGoogleConversionTrack;

    invoke-direct {v2}, Lcom/anansimobile/city_ar/CCTGoogleConversionTrack;-><init>()V

    invoke-static {v2}, Lcom/anansimobile/extra/statistics/MobileAppTracking/MATInterface;->addCustomTracker(Lcom/anansimobile/extra/statistics/MobileAppTracking/CustomTrackerNode;)V

    .line 119
    invoke-static {}, Lcom/anansimobile/nge/NextGenEngine;->isDebugMode()Z

    move-result v2

    invoke-static {p0, v2}, Lcom/anansimobile/extra/statistics/MobileAppTracking/MATInterface;->InitCustomTracker(Landroid/content/Context;Z)V

    .line 121
    invoke-static {}, Lcom/anansimobile/extra/statistics/MobileAppTracking/MATInterface;->trackInstall()V

    .line 125
    invoke-static {p0}, Lcom/anansimobile/extra/platform/facebookshare/FacebookShare;->init(Landroid/app/Activity;)V

    .line 129
    const-string/jumbo v2, "537c304858b06c437600008b"

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Lcom/anansimobile/extra/ads/VungleVideoAd/VVAdInterface;->init(Landroid/app/Activity;Ljava/lang/String;Z)V

    .line 133
    invoke-static {p0}, Lcom/anansimobile/extra/googleAdFaGetter/GoogleAdfaGetter;->init(Landroid/content/Context;)V

    .line 136
    invoke-static {p0}, Lcom/anansimobile/extra/Notification/FCMMessagingService;->initFirebaseMessagingService(Landroid/app/Activity;)V

    .line 139
    new-instance v2, Lcom/anansimobile/city_ar/Main$1;

    invoke-direct {v2, p0}, Lcom/anansimobile/city_ar/Main$1;-><init>(Lcom/anansimobile/city_ar/Main;)V

    iput-object v2, p0, Lcom/anansimobile/city_ar/Main;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 150
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 151
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 153
    iget-object v2, p0, Lcom/anansimobile/city_ar/Main;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/anansimobile/city_ar/Main;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 155
    invoke-virtual {p0}, Lcom/anansimobile/city_ar/Main;->SetUseGooglePlayExtractImage()V

    .line 156
    invoke-virtual {p0}, Lcom/anansimobile/city_ar/Main;->SetUseStrokeUseHightSpace()V

    .line 159
    invoke-virtual {p0}, Lcom/anansimobile/city_ar/Main;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 160
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/anansimobile/city_ar/Main;->CheckPackageName(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 161
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string/jumbo v3, "Invalid package name!!!"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string/jumbo v3, "OK"

    new-instance v4, Lcom/anansimobile/city_ar/Main$2;

    invoke-direct {v4, p0}, Lcom/anansimobile/city_ar/Main$2;-><init>(Lcom/anansimobile/city_ar/Main;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 167
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 169
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 257
    invoke-super {p0}, Lcom/anansimobile/nge/RootActivity;->onDestroy()V

    .line 262
    invoke-static {}, Lcom/anansimobile/extra/platform/facebookshare/FacebookShare;->onDestroy()V

    .line 263
    return-void
.end method

.method public onDownloadProgress(Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;)V
    .locals 0
    .param p1, "progress"    # Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;

    .prologue
    .line 399
    return-void
.end method

.method public onDownloadStateChanged(I)V
    .locals 0
    .param p1, "newState"    # I

    .prologue
    .line 353
    packed-switch p1, :pswitch_data_0

    .line 391
    :pswitch_0
    return-void

    .line 353
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onExitGameCancel()V
    .locals 0

    .prologue
    .line 322
    invoke-super {p0}, Lcom/anansimobile/nge/RootActivity;->onExitGameCancel()V

    .line 323
    invoke-static {p0}, Lcom/anansimobile/extra/statistics/MobileAppTracking/MATInterface;->onResume(Landroid/app/Activity;)V

    .line 324
    return-void
.end method

.method public onExitGameNo()V
    .locals 0

    .prologue
    .line 327
    invoke-super {p0}, Lcom/anansimobile/nge/RootActivity;->onExitGameNo()V

    .line 329
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 281
    invoke-super {p0}, Lcom/anansimobile/nge/RootActivity;->onPause()V

    .line 282
    invoke-static {p0}, Lcom/anansimobile/nge/extra/statistics/UMStatistics;->onPause(Landroid/content/Context;)V

    .line 283
    invoke-static {p0}, Lcom/anansimobile/extra/statistics/talkingdata/TalkingDataStatistics;->onPause(Landroid/app/Activity;)V

    .line 287
    invoke-static {}, Lcom/anansimobile/extra/ads/VungleVideoAd/VVAdInterface;->OnPause()V

    .line 289
    invoke-static {p0}, Lcom/anansimobile/extra/statistics/MobileAppTracking/MATInterface;->onPause(Landroid/app/Activity;)V

    .line 290
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 267
    invoke-super {p0}, Lcom/anansimobile/nge/RootActivity;->onResume()V

    .line 268
    invoke-static {p0}, Lcom/anansimobile/nge/extra/statistics/UMStatistics;->onResume(Landroid/content/Context;)V

    .line 269
    invoke-static {p0}, Lcom/anansimobile/extra/statistics/talkingdata/TalkingDataStatistics;->onResume(Landroid/app/Activity;)V

    .line 274
    invoke-static {}, Lcom/anansimobile/extra/ads/VungleVideoAd/VVAdInterface;->OnResume()V

    .line 276
    invoke-static {p0}, Lcom/anansimobile/extra/statistics/MobileAppTracking/MATInterface;->onResume(Landroid/app/Activity;)V

    .line 277
    return-void
.end method

.method public onServiceConnected(Landroid/os/Messenger;)V
    .locals 2
    .param p1, "m"    # Landroid/os/Messenger;

    .prologue
    .line 344
    invoke-static {p1}, Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller;->CreateProxy(Landroid/os/Messenger;)Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    move-result-object v0

    iput-object v0, p0, Lcom/anansimobile/city_ar/Main;->mRemoteService:Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    .line 345
    iget-object v0, p0, Lcom/anansimobile/city_ar/Main;->mRemoteService:Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    iget-object v1, p0, Lcom/anansimobile/city_ar/Main;->mDownloaderClientStub:Lcom/google/android/vending/expansion/downloader/IStub;

    invoke-interface {v1}, Lcom/google/android/vending/expansion/downloader/IStub;->getMessenger()Landroid/os/Messenger;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/vending/expansion/downloader/IDownloaderService;->onClientUpdated(Landroid/os/Messenger;)V

    .line 346
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/anansimobile/city_ar/Main;->mDownloaderClientStub:Lcom/google/android/vending/expansion/downloader/IStub;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/anansimobile/city_ar/Main;->mDownloaderClientStub:Lcom/google/android/vending/expansion/downloader/IStub;

    invoke-interface {v0, p0}, Lcom/google/android/vending/expansion/downloader/IStub;->connect(Landroid/content/Context;)V

    .line 302
    :cond_0
    invoke-super {p0}, Lcom/anansimobile/nge/RootActivity;->onStart()V

    .line 303
    const-string/jumbo v0, "W8NX2P6M4KVW79BF6R6K"

    invoke-static {v0}, Lcom/anansimobile/nge/extra/statistics/FlurryStatistics;->onStart(Ljava/lang/String;)V

    .line 304
    invoke-virtual {p0}, Lcom/anansimobile/city_ar/Main;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/anansimobile/extra/statistics/MobileAppTracking/MATInterface;->trackOpen(Ljava/lang/String;)V

    .line 305
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/anansimobile/city_ar/Main;->mDownloaderClientStub:Lcom/google/android/vending/expansion/downloader/IStub;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/anansimobile/city_ar/Main;->mDownloaderClientStub:Lcom/google/android/vending/expansion/downloader/IStub;

    invoke-interface {v0, p0}, Lcom/google/android/vending/expansion/downloader/IStub;->disconnect(Landroid/content/Context;)V

    .line 312
    :cond_0
    invoke-super {p0}, Lcom/anansimobile/nge/RootActivity;->onStop()V

    .line 313
    const-string/jumbo v0, "cityActivity"

    invoke-static {v0}, Lcom/anansimobile/nge/extra/statistics/FlurryStatistics;->onEnd(Ljava/lang/String;)V

    .line 314
    return-void
.end method
