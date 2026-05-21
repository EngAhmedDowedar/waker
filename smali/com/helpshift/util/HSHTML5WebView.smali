.class public final Lcom/helpshift/util/HSHTML5WebView;
.super Landroid/webkit/WebView;
.source "HSHTML5WebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpshift/util/HSHTML5WebView$1;,
        Lcom/helpshift/util/HSHTML5WebView$MyWebViewClient;,
        Lcom/helpshift/util/HSHTML5WebView$HSWebChromeClient;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "HelpShiftDebug"


# instance fields
.field private mActivity:Lcom/helpshift/app/ActionBarActivity;

.field private mBrowserFrameLayout:Landroid/widget/FrameLayout;

.field private mContentView:Landroid/widget/FrameLayout;

.field private mContext:Landroid/content/Context;

.field private mCustomView:Landroid/view/View;

.field private mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private mCustomViewContainer:Landroid/widget/FrameLayout;

.field private mFragment:Lcom/helpshift/HSQuestionFragment;

.field private mWebChromeClient:Lcom/helpshift/util/HSHTML5WebView$HSWebChromeClient;

.field private unhandledUrl:Ljava/lang/String;

.field private unhandledUrlSchemeNotFound:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/helpshift/HSQuestionFragment;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fragment"    # Lcom/helpshift/HSQuestionFragment;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 90
    invoke-direct {p0, p1, p2}, Lcom/helpshift/util/HSHTML5WebView;->init(Landroid/content/Context;Lcom/helpshift/HSQuestionFragment;)V

    .line 91
    return-void
.end method

.method static synthetic access$1000(Lcom/helpshift/util/HSHTML5WebView;Ljava/net/URL;)Z
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/util/HSHTML5WebView;
    .param p1, "x1"    # Ljava/net/URL;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/helpshift/util/HSHTML5WebView;->isImage(Ljava/net/URL;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/helpshift/util/HSHTML5WebView;Ljava/net/URL;Ljava/io/File;)V
    .locals 0
    .param p0, "x0"    # Lcom/helpshift/util/HSHTML5WebView;
    .param p1, "x1"    # Ljava/net/URL;
    .param p2, "x2"    # Ljava/io/File;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/helpshift/util/HSHTML5WebView;->saveFile(Ljava/net/URL;Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$200(Lcom/helpshift/util/HSHTML5WebView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/util/HSHTML5WebView;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/helpshift/util/HSHTML5WebView;->mCustomView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$202(Lcom/helpshift/util/HSHTML5WebView;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/helpshift/util/HSHTML5WebView;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/helpshift/util/HSHTML5WebView;->mCustomView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$300(Lcom/helpshift/util/HSHTML5WebView;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/util/HSHTML5WebView;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/helpshift/util/HSHTML5WebView;->mCustomViewContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/helpshift/util/HSHTML5WebView;)Landroid/webkit/WebChromeClient$CustomViewCallback;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/util/HSHTML5WebView;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/helpshift/util/HSHTML5WebView;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-object v0
.end method

.method static synthetic access$402(Lcom/helpshift/util/HSHTML5WebView;Landroid/webkit/WebChromeClient$CustomViewCallback;)Landroid/webkit/WebChromeClient$CustomViewCallback;
    .locals 0
    .param p0, "x0"    # Lcom/helpshift/util/HSHTML5WebView;
    .param p1, "x1"    # Landroid/webkit/WebChromeClient$CustomViewCallback;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/helpshift/util/HSHTML5WebView;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-object p1
.end method

.method static synthetic access$500(Lcom/helpshift/util/HSHTML5WebView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/util/HSHTML5WebView;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/helpshift/util/HSHTML5WebView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/helpshift/util/HSHTML5WebView;)Lcom/helpshift/app/ActionBarActivity;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/util/HSHTML5WebView;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/helpshift/util/HSHTML5WebView;->mActivity:Lcom/helpshift/app/ActionBarActivity;

    return-object v0
.end method

.method static synthetic access$700(Lcom/helpshift/util/HSHTML5WebView;)Lcom/helpshift/HSQuestionFragment;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/util/HSHTML5WebView;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/helpshift/util/HSHTML5WebView;->mFragment:Lcom/helpshift/HSQuestionFragment;

    return-object v0
.end method

.method static synthetic access$800(Lcom/helpshift/util/HSHTML5WebView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/util/HSHTML5WebView;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/helpshift/util/HSHTML5WebView;->unhandledUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/helpshift/util/HSHTML5WebView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/helpshift/util/HSHTML5WebView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/helpshift/util/HSHTML5WebView;->unhandledUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$902(Lcom/helpshift/util/HSHTML5WebView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/helpshift/util/HSHTML5WebView;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/helpshift/util/HSHTML5WebView;->unhandledUrlSchemeNotFound:Z

    return p1
.end method

.method private init(Landroid/content/Context;Lcom/helpshift/HSQuestionFragment;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fragment"    # Lcom/helpshift/HSQuestionFragment;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 53
    iput-object p2, p0, Lcom/helpshift/util/HSHTML5WebView;->mFragment:Lcom/helpshift/HSQuestionFragment;

    .line 54
    iput-object p1, p0, Lcom/helpshift/util/HSHTML5WebView;->mContext:Landroid/content/Context;

    .line 55
    iget-object v1, p0, Lcom/helpshift/util/HSHTML5WebView;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/helpshift/app/ActionBarActivity;

    iput-object v1, p0, Lcom/helpshift/util/HSHTML5WebView;->mActivity:Lcom/helpshift/app/ActionBarActivity;

    .line 57
    iget-object v1, p0, Lcom/helpshift/util/HSHTML5WebView;->mActivity:Lcom/helpshift/app/ActionBarActivity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/helpshift/D$layout;->hs__webview_custom_content:I

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/helpshift/util/HSHTML5WebView;->mBrowserFrameLayout:Landroid/widget/FrameLayout;

    .line 58
    iget-object v1, p0, Lcom/helpshift/util/HSHTML5WebView;->mBrowserFrameLayout:Landroid/widget/FrameLayout;

    sget v2, Lcom/helpshift/D$id;->hs__webview_main_content:I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/helpshift/util/HSHTML5WebView;->mContentView:Landroid/widget/FrameLayout;

    .line 59
    iget-object v1, p0, Lcom/helpshift/util/HSHTML5WebView;->mActivity:Lcom/helpshift/app/ActionBarActivity;

    sget v2, Lcom/helpshift/D$id;->hs__customViewContainer:I

    invoke-virtual {v1, v2}, Lcom/helpshift/app/ActionBarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/helpshift/util/HSHTML5WebView;->mCustomViewContainer:Landroid/widget/FrameLayout;

    .line 61
    new-instance v1, Lcom/helpshift/util/HSHTML5WebView$HSWebChromeClient;

    invoke-direct {v1, p0, v4}, Lcom/helpshift/util/HSHTML5WebView$HSWebChromeClient;-><init>(Lcom/helpshift/util/HSHTML5WebView;Lcom/helpshift/util/HSHTML5WebView$1;)V

    iput-object v1, p0, Lcom/helpshift/util/HSHTML5WebView;->mWebChromeClient:Lcom/helpshift/util/HSHTML5WebView$HSWebChromeClient;

    .line 62
    iget-object v1, p0, Lcom/helpshift/util/HSHTML5WebView;->mWebChromeClient:Lcom/helpshift/util/HSHTML5WebView$HSWebChromeClient;

    invoke-virtual {p0, v1}, Lcom/helpshift/util/HSHTML5WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 64
    new-instance v1, Lcom/helpshift/util/HSHTML5WebView$MyWebViewClient;

    invoke-direct {v1, p0, v4}, Lcom/helpshift/util/HSHTML5WebView$MyWebViewClient;-><init>(Lcom/helpshift/util/HSHTML5WebView;Lcom/helpshift/util/HSHTML5WebView$1;)V

    invoke-virtual {p0, v1}, Lcom/helpshift/util/HSHTML5WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 67
    invoke-virtual {p0}, Lcom/helpshift/util/HSHTML5WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 68
    .local v0, "s":Landroid/webkit/WebSettings;
    sget-object v1, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 69
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 70
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 71
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 72
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 75
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 78
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 79
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 80
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 81
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 82
    sget-object v1, Landroid/webkit/WebSettings$PluginState;->OFF:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 83
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 85
    iget-object v1, p0, Lcom/helpshift/util/HSHTML5WebView;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 86
    return-void
.end method

.method private isImage(Ljava/net/URL;)Z
    .locals 6
    .param p1, "url"    # Ljava/net/URL;

    .prologue
    const/4 v2, 0x0

    .line 270
    new-instance v0, Ljava/util/HashSet;

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "image/jpeg"

    aput-object v4, v3, v2

    const/4 v4, 0x1

    const-string/jumbo v5, "image/png"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "image/gif"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string/jumbo v5, "image/x-png"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string/jumbo v5, "image/x-citrix-pjpeg"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string/jumbo v5, "image/x-citrix-gif"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string/jumbo v5, "image/pjpeg"

    aput-object v5, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 279
    .local v0, "allowedMimeTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 283
    :goto_0
    return v2

    .line 280
    :catch_0
    move-exception v1

    .line 281
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "HelpShiftDebug"

    const-string/jumbo v4, "openConnection() Exception :"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private saveFile(Ljava/net/URL;Ljava/io/File;)V
    .locals 7
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "saveFile"    # Ljava/io/File;

    .prologue
    .line 288
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v3

    .line 289
    .local v3, "input":Ljava/io/InputStream;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    .local v4, "output":Ljava/io/OutputStream;
    const/16 v5, 0x1f4

    :try_start_1
    new-array v0, v5, [B

    .line 293
    .local v0, "buffer":[B
    const/4 v1, 0x0

    .line 294
    .local v1, "bytesRead":I
    :goto_0
    const/4 v5, 0x0

    array-length v6, v0

    invoke-virtual {v3, v0, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-ltz v1, :cond_0

    .line 295
    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 298
    .end local v0    # "buffer":[B
    .end local v1    # "bytesRead":I
    :catchall_0
    move-exception v5

    :try_start_2
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 299
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    throw v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 301
    .end local v3    # "input":Ljava/io/InputStream;
    .end local v4    # "output":Ljava/io/OutputStream;
    :catch_0
    move-exception v2

    .line 302
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "HelpShiftDebug"

    const-string/jumbo v6, "saveFile Exception :"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 304
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 298
    .restart local v0    # "buffer":[B
    .restart local v1    # "bytesRead":I
    .restart local v3    # "input":Ljava/io/InputStream;
    .restart local v4    # "output":Ljava/io/OutputStream;
    :cond_0
    :try_start_3
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 299
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public getLayout()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/helpshift/util/HSHTML5WebView;->mBrowserFrameLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public hideCustomView()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/helpshift/util/HSHTML5WebView;->mWebChromeClient:Lcom/helpshift/util/HSHTML5WebView$HSWebChromeClient;

    invoke-virtual {v0}, Lcom/helpshift/util/HSHTML5WebView$HSWebChromeClient;->onHideCustomView()V

    .line 103
    return-void
.end method

.method public inCustomView()Z
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/helpshift/util/HSHTML5WebView;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 107
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/helpshift/util/HSHTML5WebView;->mCustomView:Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/helpshift/util/HSHTML5WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    iget-boolean v0, p0, Lcom/helpshift/util/HSHTML5WebView;->unhandledUrlSchemeNotFound:Z

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/helpshift/util/HSHTML5WebView;->mFragment:Lcom/helpshift/HSQuestionFragment;

    invoke-virtual {v0}, Lcom/helpshift/HSQuestionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 114
    :goto_0
    const/4 v0, 0x1

    .line 117
    :goto_1
    return v0

    .line 112
    :cond_0
    invoke-virtual {p0}, Lcom/helpshift/util/HSHTML5WebView;->goBack()V

    goto :goto_0

    .line 117
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method
