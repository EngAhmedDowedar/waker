.class public abstract Lcom/anansimobile/nge/RootActivity;
.super Landroid/app/Activity;
.source "RootActivity.java"


# static fields
.field public static final UI_MSG_ALERT:I = 0x4b0

.field public static final UI_MSG_APPRATER:I = 0x776

.field public static final UI_MSG_TEXTINPUT:I = 0x514

.field public static curProgressDialog:Landroid/app/ProgressDialog;


# instance fields
.field private mClsStoreKit:Ljava/lang/Class;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mKeyboardHeight:I

.field private mKeyboardHelper:Lcom/anansimobile/nge/SoftKeyboardStateHelper;

.field private mNavigationBarHeight:I

.field private mResourceProvicer:Lcom/anansimobile/nge/ResourceProvider;

.field private mServiceConn:Landroid/content/ServiceConnection;

.field private mSizeScaleFactor:F

.field private mWebView:Lcom/anansimobile/nge/NGWebView;

.field private m_UIMsgHandler:Landroid/os/Handler;

.field private m_glView:Lcom/anansimobile/nge/NGGLSurfaceView;

.field private m_rootLayout:Landroid/widget/RelativeLayout;

.field private m_systemUIVisibility:I

.field private m_viewPool:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 847
    const/4 v0, 0x0

    sput-object v0, Lcom/anansimobile/nge/RootActivity;->curProgressDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 56
    iput-object v1, p0, Lcom/anansimobile/nge/RootActivity;->m_glView:Lcom/anansimobile/nge/NGGLSurfaceView;

    .line 57
    iput-object v1, p0, Lcom/anansimobile/nge/RootActivity;->m_rootLayout:Landroid/widget/RelativeLayout;

    .line 58
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/anansimobile/nge/RootActivity;->mSizeScaleFactor:F

    .line 61
    iput v2, p0, Lcom/anansimobile/nge/RootActivity;->mKeyboardHeight:I

    .line 62
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/anansimobile/nge/RootActivity;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 63
    iput v2, p0, Lcom/anansimobile/nge/RootActivity;->m_systemUIVisibility:I

    .line 64
    iput v2, p0, Lcom/anansimobile/nge/RootActivity;->mNavigationBarHeight:I

    .line 66
    iput-object v1, p0, Lcom/anansimobile/nge/RootActivity;->mClsStoreKit:Ljava/lang/Class;

    .line 67
    iput-object v1, p0, Lcom/anansimobile/nge/RootActivity;->mKeyboardHelper:Lcom/anansimobile/nge/SoftKeyboardStateHelper;

    .line 69
    iput-object v1, p0, Lcom/anansimobile/nge/RootActivity;->mResourceProvicer:Lcom/anansimobile/nge/ResourceProvider;

    .line 71
    new-instance v0, Lcom/anansimobile/nge/RootActivity$1;

    invoke-direct {v0, p0}, Lcom/anansimobile/nge/RootActivity$1;-><init>(Lcom/anansimobile/nge/RootActivity;)V

    iput-object v0, p0, Lcom/anansimobile/nge/RootActivity;->mServiceConn:Landroid/content/ServiceConnection;

    .line 447
    new-instance v0, Lcom/anansimobile/nge/NGMsgHandler;

    invoke-direct {v0}, Lcom/anansimobile/nge/NGMsgHandler;-><init>()V

    iput-object v0, p0, Lcom/anansimobile/nge/RootActivity;->m_UIMsgHandler:Landroid/os/Handler;

    .line 510
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/anansimobile/nge/RootActivity;->m_viewPool:Ljava/util/HashMap;

    .line 718
    iput-object v1, p0, Lcom/anansimobile/nge/RootActivity;->mWebView:Lcom/anansimobile/nge/NGWebView;

    return-void
.end method

.method private native HandleSystemBackEvent()V
.end method

.method private InitSystemUiVisibility()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 168
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/anansimobile/nge/RootActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 170
    .local v0, "decorView":Landroid/view/View;
    const/16 v1, 0x500

    .line 171
    .local v1, "option":I
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 178
    .end local v0    # "decorView":Landroid/view/View;
    .end local v1    # "option":I
    :cond_0
    return-void
.end method

.method private initDisplayMetrics()V
    .locals 3

    .prologue
    .line 361
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 362
    .local v1, "metric":Landroid/util/DisplayMetrics;
    sget-object v2, Lcom/anansimobile/nge/NextGenEngine;->sMainActivity:Lcom/anansimobile/nge/RootActivity;

    invoke-virtual {v2}, Lcom/anansimobile/nge/RootActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 365
    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 368
    .local v0, "density":F
    const/high16 v2, 0x3f800000    # 1.0f

    div-float/2addr v2, v0

    iput v2, p0, Lcom/anansimobile/nge/RootActivity;->mSizeScaleFactor:F

    .line 369
    return-void
.end method

.method private native onGamePause()V
.end method

.method private native onGameResume()V
.end method

.method private native setSystemUIFrame(II)V
.end method


# virtual methods
.method public GetRootLayout()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/anansimobile/nge/RootActivity;->m_rootLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public MsgHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lcom/anansimobile/nge/RootActivity;->m_UIMsgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public SetNavigationVisible(Z)V
    .locals 4
    .param p1, "visible"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 198
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_0

    .line 199
    invoke-virtual {p0}, Lcom/anansimobile/nge/RootActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 200
    .local v0, "decorView":Landroid/view/View;
    if-eqz p1, :cond_1

    .line 201
    const/16 v1, 0x500

    .line 203
    .local v1, "uiOptions":I
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 214
    .end local v0    # "decorView":Landroid/view/View;
    .end local v1    # "uiOptions":I
    :cond_0
    :goto_0
    return-void

    .line 205
    .restart local v0    # "decorView":Landroid/view/View;
    :cond_1
    const/16 v1, 0x1706

    .line 211
    .restart local v1    # "uiOptions":I
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0
.end method

.method public SetUseGooglePlayExtractImage()V
    .locals 0

    .prologue
    .line 873
    invoke-static {}, Lcom/anansimobile/nge/NextGenEngine;->SetUseGooglePlayExtractImage()V

    .line 874
    return-void
.end method

.method public SetUseStrokeUseHightSpace()V
    .locals 0

    .prologue
    .line 878
    invoke-static {}, Lcom/anansimobile/nge/NextGenEngine;->SetUseStrokeUseHightSpace()V

    .line 879
    return-void
.end method

.method public ToastMessage(Ljava/lang/String;I)V
    .locals 3
    .param p1, "toastMsg"    # Ljava/lang/String;
    .param p2, "duration"    # I

    .prologue
    .line 676
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 677
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x1388

    iput v1, v0, Landroid/os/Message;->what:I

    .line 678
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "msg"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "duration"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 680
    iget-object v1, p0, Lcom/anansimobile/nge/RootActivity;->m_UIMsgHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 681
    return-void
.end method

.method public TryOpenPermission(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "askAlert"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 226
    invoke-static {}, Lcom/anansimobile/nge/NGDevice;->getDeviceSDKVersion()I

    move-result v4

    const/16 v5, 0x17

    if-ge v4, v5, :cond_1

    .line 249
    :cond_0
    :goto_0
    return v2

    .line 229
    :cond_1
    invoke-virtual {p0, p1}, Lcom/anansimobile/nge/RootActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    .line 230
    .local v1, "permissionCheck":I
    if-eqz v1, :cond_0

    .line 231
    invoke-virtual {p0, p1}, Lcom/anansimobile/nge/RootActivity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 235
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 236
    .local v0, "msg":Landroid/os/Message;
    const/16 v2, 0x1784

    iput v2, v0, Landroid/os/Message;->what:I

    .line 237
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v4, "ask"

    invoke-virtual {v2, v4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v4, "permission"

    invoke-virtual {v2, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object v2, p0, Lcom/anansimobile/nge/RootActivity;->m_UIMsgHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .end local v0    # "msg":Landroid/os/Message;
    :goto_1
    move v2, v3

    .line 247
    goto :goto_0

    .line 244
    :cond_2
    new-array v4, v2, [Ljava/lang/String;

    aput-object p1, v4, v3

    invoke-virtual {p0, v4, v2}, Lcom/anansimobile/nge/RootActivity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_1
.end method

.method public appendSubView(I)V
    .locals 3
    .param p1, "ptr"    # I

    .prologue
    .line 411
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 412
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x3ea

    iput v1, v0, Landroid/os/Message;->what:I

    .line 413
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "ptr"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 414
    iget-object v1, p0, Lcom/anansimobile/nge/RootActivity;->m_UIMsgHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 415
    return-void
.end method

.method public appendSubView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 391
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 396
    :goto_0
    return-void

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/anansimobile/nge/RootActivity;->m_rootLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected checkImageAssets(Ljava/lang/String;F)V
    .locals 28
    .param p1, "suffix"    # Ljava/lang/String;
    .param p2, "scalefactor"    # F

    .prologue
    .line 745
    const/high16 v24, 0x3f800000    # 1.0f

    cmpl-float v24, p2, v24

    if-nez v24, :cond_1

    .line 844
    :cond_0
    :goto_0
    return-void

    .line 749
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/anansimobile/nge/RootActivity;->getExpansionFileVersionCode()I

    move-result v23

    .line 750
    .local v23, "versionCode":I
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "assets_"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 751
    .local v5, "currentOutputRoot":Ljava/lang/String;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "_assets_"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 753
    .local v6, "currentTempOutputRoot":Ljava/lang/String;
    const-string/jumbo v11, "@2x.png"

    .line 754
    .local v11, "fixedSuffix":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/anansimobile/nge/RootActivity;->getFilesDir()Ljava/io/File;

    move-result-object v19

    .line 756
    .local v19, "outputRootFile":Ljava/io/File;
    new-instance v24, Lcom/anansimobile/nge/RootActivity$2;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/anansimobile/nge/RootActivity$2;-><init>(Lcom/anansimobile/nge/RootActivity;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v8

    .line 767
    .local v8, "existedOutput":[Ljava/io/File;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    array-length v0, v8

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v12, v0, :cond_3

    .line 768
    aget-object v24, v8, v12

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_0

    .line 770
    aget-object v24, v8, v12

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v9

    .line 771
    .local v9, "files":[Ljava/io/File;
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_2
    array-length v0, v9

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v13, v0, :cond_2

    .line 772
    aget-object v24, v9, v13

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->delete()Z

    .line 771
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 774
    :cond_2
    aget-object v24, v8, v12

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->delete()Z

    .line 767
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 783
    .end local v9    # "files":[Ljava/io/File;
    .end local v13    # "j":I
    :cond_3
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 784
    .local v10, "fixedAssets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v21, 0x0

    .line 786
    .local v21, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v22, Ljava/io/BufferedReader;

    new-instance v24, Ljava/io/InputStreamReader;

    invoke-virtual/range {p0 .. p0}, Lcom/anansimobile/nge/RootActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v25

    const-string/jumbo v26, "fixed.assets"

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v25

    const-string/jumbo v26, "utf-8"

    invoke-direct/range {v24 .. v26}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 787
    .end local v21    # "reader":Ljava/io/BufferedReader;
    .local v22, "reader":Ljava/io/BufferedReader;
    const/4 v14, 0x0

    .line 788
    .local v14, "line":Ljava/lang/String;
    :goto_3
    :try_start_1
    invoke-virtual/range {v22 .. v22}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_6

    .line 789
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_3

    .line 791
    :catch_0
    move-exception v7

    move-object/from16 v21, v22

    .line 792
    .end local v14    # "line":Ljava/lang/String;
    .end local v22    # "reader":Ljava/io/BufferedReader;
    .local v7, "e":Ljava/io/UnsupportedEncodingException;
    .restart local v21    # "reader":Ljava/io/BufferedReader;
    :goto_4
    const-string/jumbo v24, "check image assets failed, msg: %s!~"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual {v7}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Lcom/anansimobile/nge/NextGenEngine;->nge_logf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 798
    .end local v7    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_5
    new-instance v20, Ljava/io/File;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 799
    .local v20, "outputTempPath":Ljava/io/File;
    new-instance v18, Ljava/io/File;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 801
    .local v18, "outputPath":Ljava/io/File;
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->exists()Z

    move-result v24

    if-nez v24, :cond_4

    .line 802
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->mkdirs()Z

    .line 806
    :cond_4
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/anansimobile/nge/RootActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v24

    const-string/jumbo v25, ""

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 807
    .local v4, "allAssets":[Ljava/lang/String;
    array-length v0, v4

    move/from16 v24, v0

    if-lez v24, :cond_8

    .line 809
    new-instance v17, Landroid/os/Message;

    invoke-direct/range {v17 .. v17}, Landroid/os/Message;-><init>()V

    .line 810
    .local v17, "msgStart":Landroid/os/Message;
    const/16 v24, 0x1771

    move/from16 v0, v24

    move-object/from16 v1, v17

    iput v0, v1, Landroid/os/Message;->what:I

    .line 811
    invoke-virtual/range {v17 .. v17}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v24

    const-string/jumbo v25, "title"

    const-string/jumbo v26, "Check Resources"

    invoke-virtual/range {v24 .. v26}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    invoke-virtual/range {v17 .. v17}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v24

    const-string/jumbo v25, "max"

    array-length v0, v4

    move/from16 v26, v0

    invoke-virtual/range {v24 .. v26}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 813
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/anansimobile/nge/RootActivity;->sendMessage(Landroid/os/Message;)V

    .line 815
    const/4 v12, 0x0

    :goto_6
    array-length v0, v4

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v12, v0, :cond_9

    .line 816
    aget-object v24, v4, v12

    const-string/jumbo v25, "@2x.png"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_5

    .line 817
    aget-object v24, v4, v12

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_5

    .line 818
    aget-object v24, v4, v12

    const-string/jumbo v25, "fnt@"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_7

    .line 820
    aget-object v24, v4, v12

    const/high16 v25, 0x3f800000    # 1.0f

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    move/from16 v2, v25

    move-object/from16 v3, v26

    invoke-static {v0, v1, v2, v3}, Lcom/anansimobile/nge/NextGenEngine;->exportImageAssets(Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;)V

    .line 826
    :cond_5
    :goto_7
    new-instance v16, Landroid/os/Message;

    invoke-direct/range {v16 .. v16}, Landroid/os/Message;-><init>()V

    .line 827
    .local v16, "msgProgress":Landroid/os/Message;
    const/16 v24, 0x1772

    move/from16 v0, v24

    move-object/from16 v1, v16

    iput v0, v1, Landroid/os/Message;->what:I

    .line 828
    invoke-virtual/range {v16 .. v16}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v24

    const-string/jumbo v25, "progress"

    add-int/lit8 v26, v12, 0x1

    invoke-virtual/range {v24 .. v26}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 829
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/anansimobile/nge/RootActivity;->sendMessage(Landroid/os/Message;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 815
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .end local v4    # "allAssets":[Ljava/lang/String;
    .end local v16    # "msgProgress":Landroid/os/Message;
    .end local v17    # "msgStart":Landroid/os/Message;
    .end local v18    # "outputPath":Ljava/io/File;
    .end local v20    # "outputTempPath":Ljava/io/File;
    .end local v21    # "reader":Ljava/io/BufferedReader;
    .restart local v14    # "line":Ljava/lang/String;
    .restart local v22    # "reader":Ljava/io/BufferedReader;
    :cond_6
    move-object/from16 v21, v22

    .line 795
    .end local v22    # "reader":Ljava/io/BufferedReader;
    .restart local v21    # "reader":Ljava/io/BufferedReader;
    goto/16 :goto_5

    .line 793
    .end local v14    # "line":Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 794
    .local v7, "e":Ljava/io/IOException;
    :goto_8
    const-string/jumbo v24, "check image assets failed, msg: %s!~"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Lcom/anansimobile/nge/NextGenEngine;->nge_logf(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 822
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v4    # "allAssets":[Ljava/lang/String;
    .restart local v17    # "msgStart":Landroid/os/Message;
    .restart local v18    # "outputPath":Ljava/io/File;
    .restart local v20    # "outputTempPath":Ljava/io/File;
    :cond_7
    :try_start_3
    aget-object v24, v4, v12

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/anansimobile/nge/NextGenEngine;->exportImageAssets(Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_7

    .line 837
    .end local v4    # "allAssets":[Ljava/lang/String;
    .end local v17    # "msgStart":Landroid/os/Message;
    :catch_2
    move-exception v7

    .line 838
    .restart local v7    # "e":Ljava/io/IOException;
    const-string/jumbo v24, "check image assets failed, msg: %s!~"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Lcom/anansimobile/nge/NextGenEngine;->nge_logf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 839
    invoke-virtual/range {p0 .. p0}, Lcom/anansimobile/nge/RootActivity;->onExitGame()V

    .line 840
    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/System;->exit(I)V

    .line 843
    .end local v7    # "e":Ljava/io/IOException;
    :cond_8
    :goto_9
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto/16 :goto_0

    .line 832
    .restart local v4    # "allAssets":[Ljava/lang/String;
    .restart local v17    # "msgStart":Landroid/os/Message;
    :cond_9
    :try_start_4
    new-instance v15, Landroid/os/Message;

    invoke-direct {v15}, Landroid/os/Message;-><init>()V

    .line 833
    .local v15, "msgDone":Landroid/os/Message;
    const/16 v24, 0x1773

    move/from16 v0, v24

    iput v0, v15, Landroid/os/Message;->what:I

    .line 834
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/anansimobile/nge/RootActivity;->sendMessage(Landroid/os/Message;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_9

    .line 793
    .end local v4    # "allAssets":[Ljava/lang/String;
    .end local v15    # "msgDone":Landroid/os/Message;
    .end local v17    # "msgStart":Landroid/os/Message;
    .end local v18    # "outputPath":Ljava/io/File;
    .end local v20    # "outputTempPath":Ljava/io/File;
    .end local v21    # "reader":Ljava/io/BufferedReader;
    .restart local v14    # "line":Ljava/lang/String;
    .restart local v22    # "reader":Ljava/io/BufferedReader;
    :catch_3
    move-exception v7

    move-object/from16 v21, v22

    .end local v22    # "reader":Ljava/io/BufferedReader;
    .restart local v21    # "reader":Ljava/io/BufferedReader;
    goto :goto_8

    .line 791
    .end local v14    # "line":Ljava/lang/String;
    :catch_4
    move-exception v7

    goto/16 :goto_4
.end method

.method public getChannelId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 851
    const-string/jumbo v1, "ANANSI_CHANNEL"

    invoke-static {p0, v1}, Lcom/anansimobile/nge/ManifestMetaData;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 852
    .local v0, "channelId":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 853
    const-string/jumbo v0, "android"

    .line 855
    :cond_0
    return-object v0
.end method

.method public getDensity()F
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/anansimobile/nge/RootActivity;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0
.end method

.method public getExpansionFileVersionCode()I
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 663
    const/4 v2, 0x0

    .line 665
    .local v2, "versionCode":I
    :try_start_0
    invoke-virtual {p0}, Lcom/anansimobile/nge/RootActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/anansimobile/nge/RootActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x4000

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 666
    .local v1, "pinfo":Landroid/content/pm/PackageInfo;
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 672
    .end local v1    # "pinfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return v2

    .line 667
    :catch_0
    move-exception v0

    .line 668
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v3, "get version failed!~"

    invoke-virtual {p0, v3, v6}, Lcom/anansimobile/nge/RootActivity;->ToastMessage(Ljava/lang/String;I)V

    .line 669
    invoke-virtual {p0}, Lcom/anansimobile/nge/RootActivity;->onExitGame()V

    .line 670
    invoke-static {v6}, Ljava/lang/System;->exit(I)V

    goto :goto_0
.end method

.method public getKeyboardHeight()I
    .locals 1

    .prologue
    .line 217
    iget v0, p0, Lcom/anansimobile/nge/RootActivity;->mKeyboardHeight:I

    return v0
.end method

.method public getMainExpansionFile()Ljava/lang/String;
    .locals 2

    .prologue
    .line 647
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "main."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/anansimobile/nge/RootActivity;->getExpansionFileVersionCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/anansimobile/nge/RootActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".obb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMetadata(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 859
    invoke-static {p0, p1}, Lcom/anansimobile/nge/ManifestMetaData;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 860
    .local v0, "metaValue":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 861
    const-string/jumbo v0, ""

    .line 864
    :cond_0
    return-object v0
.end method

.method public getNavigationBarHeight()I
    .locals 1

    .prologue
    .line 222
    iget v0, p0, Lcom/anansimobile/nge/RootActivity;->mNavigationBarHeight:I

    return v0
.end method

.method public getNotificationIcon()I
    .locals 1

    .prologue
    .line 715
    const/4 v0, -0x1

    return v0
.end method

.method public getPatchExpansionFile()Ljava/lang/String;
    .locals 2

    .prologue
    .line 652
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "patch."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/anansimobile/nge/RootActivity;->getExpansionFileVersionCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/anansimobile/nge/RootActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".obb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResourceProvider()Lcom/anansimobile/nge/ResourceProvider;
    .locals 1

    .prologue
    .line 868
    iget-object v0, p0, Lcom/anansimobile/nge/RootActivity;->mResourceProvicer:Lcom/anansimobile/nge/ResourceProvider;

    return-object v0
.end method

.method public getSizeScaleFactor()F
    .locals 1

    .prologue
    .line 380
    iget v0, p0, Lcom/anansimobile/nge/RootActivity;->mSizeScaleFactor:F

    return v0
.end method

.method public getViewWithKey(J)Landroid/view/View;
    .locals 3
    .param p1, "ptr"    # J

    .prologue
    .line 514
    iget-object v0, p0, Lcom/anansimobile/nge/RootActivity;->m_viewPool:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public handleBackPressed()V
    .locals 2

    .prologue
    .line 595
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 596
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x177a

    iput v1, v0, Landroid/os/Message;->what:I

    .line 597
    invoke-virtual {p0, v0}, Lcom/anansimobile/nge/RootActivity;->sendMessage(Landroid/os/Message;)V

    .line 598
    return-void
.end method

.method protected initGame()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 279
    new-instance v0, Lcom/anansimobile/nge/NGGLSurfaceView;

    invoke-direct {v0, p0}, Lcom/anansimobile/nge/NGGLSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anansimobile/nge/RootActivity;->m_glView:Lcom/anansimobile/nge/NGGLSurfaceView;

    .line 280
    iget-object v0, p0, Lcom/anansimobile/nge/RootActivity;->m_rootLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/anansimobile/nge/RootActivity;->m_glView:Lcom/anansimobile/nge/NGGLSurfaceView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 282
    iget-object v0, p0, Lcom/anansimobile/nge/RootActivity;->m_glView:Lcom/anansimobile/nge/NGGLSurfaceView;

    invoke-virtual {v0, v2}, Lcom/anansimobile/nge/NGGLSurfaceView;->setFocusable(Z)V

    .line 283
    iget-object v0, p0, Lcom/anansimobile/nge/RootActivity;->m_glView:Lcom/anansimobile/nge/NGGLSurfaceView;

    invoke-virtual {v0, v2}, Lcom/anansimobile/nge/NGGLSurfaceView;->setFocusableInTouchMode(Z)V

    .line 286
    invoke-static {}, Lcom/anansimobile/nge/NGDevice;->getDeviceSDKVersion()I

    move-result v0

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 287
    iget-object v0, p0, Lcom/anansimobile/nge/RootActivity;->m_glView:Lcom/anansimobile/nge/NGGLSurfaceView;

    invoke-virtual {v0, v2}, Lcom/anansimobile/nge/NGGLSurfaceView;->setPreserveEGLContextOnPause(Z)V

    .line 289
    :cond_0
    return-void
.end method

.method public initScreenSizeInfo()V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 603
    invoke-static {}, Lcom/anansimobile/nge/NGDevice;->getDeviceSDKVersion()I

    move-result v6

    const/16 v7, 0xb

    if-lt v6, v7, :cond_0

    .line 610
    const/4 v4, 0x0

    .line 611
    .local v4, "sw":I
    const/4 v2, 0x0

    .line 613
    .local v2, "sh":I
    invoke-static {}, Lcom/anansimobile/nge/NGDevice;->getDeviceSDKVersion()I

    move-result v6

    const/16 v7, 0x11

    if-lt v6, v7, :cond_1

    .line 615
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 616
    .local v3, "size":Landroid/graphics/Point;
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 617
    .local v0, "rsize":Landroid/graphics/Point;
    sget-object v6, Lcom/anansimobile/nge/NextGenEngine;->sMainActivity:Lcom/anansimobile/nge/RootActivity;

    invoke-virtual {v6}, Lcom/anansimobile/nge/RootActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    .line 618
    .local v5, "wm":Landroid/view/WindowManager;
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 619
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 620
    iget v6, v0, Landroid/graphics/Point;->x:I

    iget v7, v3, Landroid/graphics/Point;->x:I

    sub-int v4, v6, v7

    .line 621
    iget v6, v0, Landroid/graphics/Point;->y:I

    iget v7, v3, Landroid/graphics/Point;->y:I

    sub-int v2, v6, v7

    .line 633
    .end local v0    # "rsize":Landroid/graphics/Point;
    .end local v3    # "size":Landroid/graphics/Point;
    .end local v5    # "wm":Landroid/view/WindowManager;
    :goto_0
    invoke-direct {p0, v4, v2}, Lcom/anansimobile/nge/RootActivity;->setSystemUIFrame(II)V

    .line 635
    .end local v2    # "sh":I
    .end local v4    # "sw":I
    :cond_0
    return-void

    .line 624
    .restart local v2    # "sh":I
    .restart local v4    # "sw":I
    :cond_1
    invoke-virtual {p0}, Lcom/anansimobile/nge/RootActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v1, v6, Landroid/util/DisplayMetrics;->density:F

    .line 626
    .local v1, "scale":F
    const/high16 v6, 0x42400000    # 48.0f

    mul-float/2addr v6, v1

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v6, v7

    float-to-int v2, v6

    move v4, v2

    .line 630
    const/4 v4, 0x0

    goto :goto_0
.end method

.method protected initStoreKit(Ljava/lang/String;)V
    .locals 7
    .param p1, "base64EncodedPublicKey"    # Ljava/lang/String;

    .prologue
    .line 339
    iget-object v2, p0, Lcom/anansimobile/nge/RootActivity;->mClsStoreKit:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 342
    :try_start_0
    iget-object v2, p0, Lcom/anansimobile/nge/RootActivity;->mClsStoreKit:Ljava/lang/Class;

    const-string/jumbo v3, "initIabHelper"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 343
    .local v1, "mtInit":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    .line 358
    .end local v1    # "mtInit":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    .line 344
    :catch_0
    move-exception v0

    .line 346
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 347
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    .line 349
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 350
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 352
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 353
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 355
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method public intentFilter(Landroid/content/Intent;)V
    .locals 0
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    .line 707
    return-void
.end method

.method public isAPKExpansionFileAvailable()Z
    .locals 4

    .prologue
    .line 657
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/anansimobile/nge/NGDevice;->getObbPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/anansimobile/nge/RootActivity;->getMainExpansionFile()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    .local v0, "main":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/anansimobile/nge/NGDevice;->getObbPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/anansimobile/nge/RootActivity;->getPatchExpansionFile()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    .local v1, "patch":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public layoutSubView(IIIII)V
    .locals 3
    .param p1, "ptr"    # I
    .param p2, "posX"    # I
    .param p3, "posY"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 419
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 420
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "ptr"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 421
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "posX"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 422
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "posY"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 423
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "width"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 424
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "height"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 426
    const/16 v1, 0x3e9

    iput v1, v0, Landroid/os/Message;->what:I

    .line 428
    iget-object v1, p0, Lcom/anansimobile/nge/RootActivity;->m_UIMsgHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 429
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 528
    iget-object v3, p0, Lcom/anansimobile/nge/RootActivity;->mClsStoreKit:Ljava/lang/Class;

    if-eqz v3, :cond_0

    .line 531
    :try_start_0
    iget-object v3, p0, Lcom/anansimobile/nge/RootActivity;->mClsStoreKit:Ljava/lang/Class;

    const-string/jumbo v4, "HandleActivityResult"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-class v7, Landroid/content/Intent;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 532
    .local v2, "mtInit":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object p3, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v0

    .line 533
    .local v0, "bHandled":Z
    if-eqz v0, :cond_0

    .line 577
    .end local v0    # "bHandled":Z
    .end local v2    # "mtInit":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 536
    :catch_0
    move-exception v1

    .line 538
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 551
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :cond_0
    :goto_1
    const/4 v3, -0x1

    if-ne p2, v3, :cond_1

    .line 552
    packed-switch p1, :pswitch_data_0

    .line 576
    :cond_1
    :goto_2
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 539
    :catch_1
    move-exception v1

    .line 541
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 542
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v1

    .line 544
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 545
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v1

    .line 547
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    .line 558
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :pswitch_0
    invoke-static {p3}, Lcom/anansimobile/nge/NGImagePicker;->onPicFromCamera(Landroid/content/Intent;)V

    goto :goto_2

    .line 565
    :pswitch_1
    invoke-static {p3}, Lcom/anansimobile/nge/NGImagePicker;->onPicFromAlbum(Landroid/content/Intent;)V

    goto :goto_2

    .line 569
    :pswitch_2
    invoke-static {p3}, Lcom/anansimobile/nge/NGImagePicker;->onPicFromEditor(Landroid/content/Intent;)V

    goto :goto_2

    .line 552
    :pswitch_data_0
    .packed-switch 0xbb9
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 584
    iget-object v0, p0, Lcom/anansimobile/nge/RootActivity;->mWebView:Lcom/anansimobile/nge/NGWebView;

    if-eqz v0, :cond_0

    .line 585
    iget-object v0, p0, Lcom/anansimobile/nge/RootActivity;->mWebView:Lcom/anansimobile/nge/NGWebView;

    invoke-virtual {v0}, Lcom/anansimobile/nge/NGWebView;->OnBackPressed()V

    .line 590
    :goto_0
    return-void

    .line 589
    :cond_0
    invoke-direct {p0}, Lcom/anansimobile/nge/RootActivity;->HandleSystemBackEvent()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 685
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 686
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 90
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 94
    :try_start_0
    const-string/jumbo v1, "com.anansimobile.nge.IAB.NGStoreKit"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lcom/anansimobile/nge/RootActivity;->mClsStoreKit:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :goto_0
    sput-object p0, Lcom/anansimobile/nge/NextGenEngine;->sMainActivity:Lcom/anansimobile/nge/RootActivity;

    .line 100
    invoke-direct {p0}, Lcom/anansimobile/nge/RootActivity;->initDisplayMetrics()V

    .line 101
    invoke-static {}, Lcom/anansimobile/nge/NGDevice;->InitDeviceId()V

    .line 102
    new-instance v1, Lcom/anansimobile/nge/ResourceProvider;

    invoke-direct {v1, p0}, Lcom/anansimobile/nge/ResourceProvider;-><init>(Lcom/anansimobile/nge/RootActivity;)V

    iput-object v1, p0, Lcom/anansimobile/nge/RootActivity;->mResourceProvicer:Lcom/anansimobile/nge/ResourceProvider;

    .line 104
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/anansimobile/nge/RootActivity;->requestWindowFeature(I)Z

    .line 105
    invoke-virtual {p0}, Lcom/anansimobile/nge/RootActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 106
    invoke-virtual {p0}, Lcom/anansimobile/nge/RootActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x100

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 107
    invoke-virtual {p0}, Lcom/anansimobile/nge/RootActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 110
    invoke-virtual {p0}, Lcom/anansimobile/nge/RootActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iget-object v2, p0, Lcom/anansimobile/nge/RootActivity;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 117
    invoke-static {p0}, Lcom/anansimobile/nge/RootService;->StartService(Landroid/app/Activity;)V

    .line 122
    invoke-static {}, Lcom/anansimobile/nge/NGMediaPlayer;->initSounds()V

    .line 124
    invoke-virtual {p0}, Lcom/anansimobile/nge/RootActivity;->initScreenSizeInfo()V

    .line 126
    new-instance v1, Lcom/anansimobile/nge/NGRootActivityLayout;

    invoke-direct {v1, p0}, Lcom/anansimobile/nge/NGRootActivityLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/anansimobile/nge/RootActivity;->m_rootLayout:Landroid/widget/RelativeLayout;

    .line 129
    invoke-direct {p0}, Lcom/anansimobile/nge/RootActivity;->InitSystemUiVisibility()V

    .line 134
    invoke-virtual {p0}, Lcom/anansimobile/nge/RootActivity;->initGame()V

    .line 136
    iget-object v1, p0, Lcom/anansimobile/nge/RootActivity;->m_rootLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1}, Lcom/anansimobile/nge/RootActivity;->setContentView(Landroid/view/View;)V

    .line 139
    iget-object v1, p0, Lcom/anansimobile/nge/RootActivity;->m_rootLayout:Landroid/widget/RelativeLayout;

    invoke-static {v1}, Lcom/anansimobile/nge/NGLayoutHelper;->InitLayoutHelper(Landroid/widget/RelativeLayout;)V

    .line 141
    invoke-static {p0}, Lcom/anansimobile/nge/NGMail;->Init(Landroid/content/Context;)V

    .line 142
    new-instance v1, Lcom/anansimobile/nge/SoftKeyboardStateHelper;

    iget-object v2, p0, Lcom/anansimobile/nge/RootActivity;->m_rootLayout:Landroid/widget/RelativeLayout;

    invoke-direct {v1, v2}, Lcom/anansimobile/nge/SoftKeyboardStateHelper;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/anansimobile/nge/RootActivity;->mKeyboardHelper:Lcom/anansimobile/nge/SoftKeyboardStateHelper;

    .line 143
    iget-object v1, p0, Lcom/anansimobile/nge/RootActivity;->mKeyboardHelper:Lcom/anansimobile/nge/SoftKeyboardStateHelper;

    invoke-static {}, Lcom/anansimobile/nge/NGTextInputConn;->getInstance()Lcom/anansimobile/nge/NGTextInputConn;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/anansimobile/nge/SoftKeyboardStateHelper;->addSoftKeyboardStateListener(Lcom/anansimobile/nge/SoftKeyboardStateHelper$SoftKeyboardStateListener;)V

    .line 163
    return-void

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/anansimobile/nge/RootActivity;->mClsStoreKit:Ljava/lang/Class;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 303
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 304
    iget-object v2, p0, Lcom/anansimobile/nge/RootActivity;->mClsStoreKit:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 307
    :try_start_0
    iget-object v2, p0, Lcom/anansimobile/nge/RootActivity;->mClsStoreKit:Ljava/lang/Class;

    const-string/jumbo v3, "close"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 308
    .local v1, "mtClose":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    .line 323
    .end local v1    # "mtClose":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    sput-object v5, Lcom/anansimobile/nge/NextGenEngine;->sMainActivity:Lcom/anansimobile/nge/RootActivity;

    .line 324
    return-void

    .line 309
    :catch_0
    move-exception v0

    .line 311
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 312
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    .line 314
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 315
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 317
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 318
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 320
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method public onExitGame()V
    .locals 0

    .prologue
    .line 328
    return-void
.end method

.method public onExitGameCancel()V
    .locals 0

    .prologue
    .line 332
    return-void
.end method

.method public onExitGameNo()V
    .locals 0

    .prologue
    .line 336
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 458
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 460
    invoke-direct {p0}, Lcom/anansimobile/nge/RootActivity;->onGamePause()V

    .line 463
    invoke-static {}, Lcom/anansimobile/nge/NGDevice;->getDeviceSDKVersion()I

    move-result v0

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 464
    iget-object v0, p0, Lcom/anansimobile/nge/RootActivity;->m_glView:Lcom/anansimobile/nge/NGGLSurfaceView;

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/anansimobile/nge/RootActivity;->m_glView:Lcom/anansimobile/nge/NGGLSurfaceView;

    invoke-virtual {v0}, Lcom/anansimobile/nge/NGGLSurfaceView;->onPause()V

    .line 477
    :cond_0
    invoke-static {}, Lcom/anansimobile/nge/NGMediaPlayer;->pauseBackgroundMusic()V

    .line 479
    sget-object v0, Lcom/anansimobile/nge/NextGenEngine;->sMainService:Lcom/anansimobile/nge/RootService;

    if-eqz v0, :cond_1

    .line 480
    sget-object v0, Lcom/anansimobile/nge/NextGenEngine;->sMainService:Lcom/anansimobile/nge/RootService;

    invoke-virtual {v0}, Lcom/anansimobile/nge/RootService;->CheckNotification()V

    .line 482
    :cond_1
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 255
    packed-switch p1, :pswitch_data_0

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 258
    :pswitch_0
    array-length v0, p3

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget v0, p3, v0

    if-nez v0, :cond_0

    .line 261
    invoke-static {}, Lcom/anansimobile/nge/NGImagePicker;->CameraPermissionGranted()V

    goto :goto_0

    .line 255
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 486
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 488
    invoke-direct {p0}, Lcom/anansimobile/nge/RootActivity;->onGameResume()V

    .line 491
    invoke-static {}, Lcom/anansimobile/nge/NGDevice;->getDeviceSDKVersion()I

    move-result v0

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 492
    iget-object v0, p0, Lcom/anansimobile/nge/RootActivity;->m_glView:Lcom/anansimobile/nge/NGGLSurfaceView;

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/anansimobile/nge/RootActivity;->m_glView:Lcom/anansimobile/nge/NGGLSurfaceView;

    invoke-virtual {v0}, Lcom/anansimobile/nge/NGGLSurfaceView;->onResume()V

    .line 497
    :cond_0
    invoke-static {}, Lcom/anansimobile/nge/NGMediaPlayer;->resumeBackgroundMuisc()V

    .line 499
    sget-object v0, Lcom/anansimobile/nge/NextGenEngine;->sMainService:Lcom/anansimobile/nge/RootService;

    if-eqz v0, :cond_1

    .line 500
    sget-object v0, Lcom/anansimobile/nge/NextGenEngine;->sMainService:Lcom/anansimobile/nge/RootService;

    invoke-virtual {v0}, Lcom/anansimobile/nge/RootService;->ClearNotification()V

    .line 504
    :cond_1
    iget-object v0, p0, Lcom/anansimobile/nge/RootActivity;->m_rootLayout:Landroid/widget/RelativeLayout;

    check-cast v0, Lcom/anansimobile/nge/NGRootActivityLayout;

    invoke-virtual {v0}, Lcom/anansimobile/nge/NGRootActivityLayout;->SetPreCurBoardId()V

    .line 505
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 182
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 194
    return-void
.end method

.method public openUrl(ILjava/lang/String;)V
    .locals 3
    .param p1, "ptr"    # I
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 403
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 404
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x44f

    iput v1, v0, Landroid/os/Message;->what:I

    .line 405
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "ptr"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 406
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    iget-object v1, p0, Lcom/anansimobile/nge/RootActivity;->m_UIMsgHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 408
    return-void
.end method

.method public putView(JLandroid/view/View;)V
    .locals 3
    .param p1, "ptr"    # J
    .param p3, "view"    # Landroid/view/View;

    .prologue
    .line 519
    iget-object v0, p0, Lcom/anansimobile/nge/RootActivity;->m_viewPool:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    return-void
.end method

.method public removeSubView(I)V
    .locals 3
    .param p1, "ptr"    # I

    .prologue
    .line 432
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 433
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x3eb

    iput v1, v0, Landroid/os/Message;->what:I

    .line 434
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "ptr"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 435
    iget-object v1, p0, Lcom/anansimobile/nge/RootActivity;->m_UIMsgHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 436
    return-void
.end method

.method public removeSubView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 399
    iget-object v0, p0, Lcom/anansimobile/nge/RootActivity;->m_rootLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 400
    return-void
.end method

.method public removeView(J)Landroid/view/View;
    .locals 3
    .param p1, "ptr"    # J

    .prologue
    .line 523
    iget-object v0, p0, Lcom/anansimobile/nge/RootActivity;->m_viewPool:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public sendMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 689
    iget-object v0, p0, Lcom/anansimobile/nge/RootActivity;->m_UIMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 690
    return-void
.end method

.method public sendMessageDelay(Landroid/os/Message;J)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "delayMS"    # J

    .prologue
    .line 693
    iget-object v0, p0, Lcom/anansimobile/nge/RootActivity;->m_UIMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 694
    return-void
.end method

.method public setSubViewVisible(IZ)V
    .locals 3
    .param p1, "ptr"    # I
    .param p2, "visible"    # Z

    .prologue
    .line 439
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 440
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x3ec

    iput v1, v0, Landroid/os/Message;->what:I

    .line 441
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "ptr"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 442
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "visible"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 443
    iget-object v1, p0, Lcom/anansimobile/nge/RootActivity;->m_UIMsgHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 444
    return-void
.end method

.method public setWebView(Lcom/anansimobile/nge/NGWebView;)V
    .locals 0
    .param p1, "v"    # Lcom/anansimobile/nge/NGWebView;

    .prologue
    .line 721
    iput-object p1, p0, Lcom/anansimobile/nge/RootActivity;->mWebView:Lcom/anansimobile/nge/NGWebView;

    .line 722
    return-void
.end method

.method public shareText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "subject"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 730
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 731
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "text/plain"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 732
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 733
    const-string/jumbo v2, "android.intent.extra.SUBJECT"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 735
    :cond_0
    const-string/jumbo v2, "android.intent.extra.TEXT"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 737
    :try_start_0
    invoke-virtual {p0}, Lcom/anansimobile/nge/RootActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/anansimobile/nge/RootActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 741
    :goto_0
    return-void

    .line 738
    :catch_0
    move-exception v0

    .line 739
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v2, "no available share interface found!~"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/anansimobile/nge/NextGenEngine;->nge_logf(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
