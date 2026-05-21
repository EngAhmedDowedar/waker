.class public Lcom/anansimobile/nge/NGWebView;
.super Landroid/widget/RelativeLayout;
.source "NGWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anansimobile/nge/NGWebView$NGWebViewClient;,
        Lcom/anansimobile/nge/NGWebView$NGWebChromeClient;
    }
.end annotation


# instance fields
.field private mListener:I

.field private webview:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/anansimobile/nge/NGWebView;->mListener:I

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anansimobile/nge/NGWebView;->webview:Landroid/webkit/WebView;

    .line 23
    invoke-virtual {p0}, Lcom/anansimobile/nge/NGWebView;->InitWebView()V

    .line 24
    invoke-virtual {p0}, Lcom/anansimobile/nge/NGWebView;->requestFocus()Z

    .line 25
    return-void
.end method

.method private OnClose()V
    .locals 3

    .prologue
    .line 156
    sget-object v1, Lcom/anansimobile/nge/NextGenEngine;->sMainActivity:Lcom/anansimobile/nge/RootActivity;

    invoke-virtual {v1, p0}, Lcom/anansimobile/nge/RootActivity;->removeSubView(Landroid/view/View;)V

    .line 157
    sget-object v1, Lcom/anansimobile/nge/NextGenEngine;->sMainActivity:Lcom/anansimobile/nge/RootActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/anansimobile/nge/RootActivity;->setWebView(Lcom/anansimobile/nge/NGWebView;)V

    .line 158
    invoke-virtual {p0}, Lcom/anansimobile/nge/NGWebView;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    sget-object v1, Lcom/anansimobile/nge/NextGenEngine;->sMainActivity:Lcom/anansimobile/nge/RootActivity;

    const-string/jumbo v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/anansimobile/nge/RootActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 160
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/anansimobile/nge/NGWebView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 163
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    iget v1, p0, Lcom/anansimobile/nge/NGWebView;->mListener:I

    invoke-direct {p0, v1}, Lcom/anansimobile/nge/NGWebView;->OnWebViewDismissed(I)V

    .line 164
    return-void
.end method

.method private native OnWebViewDismissed(I)V
.end method

.method private native OnWebViewLoaded(I)V
.end method

.method static synthetic access$100(Lcom/anansimobile/nge/NGWebView;)V
    .locals 0
    .param p0, "x0"    # Lcom/anansimobile/nge/NGWebView;

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/anansimobile/nge/NGWebView;->OnClose()V

    return-void
.end method

.method static synthetic access$200(Lcom/anansimobile/nge/NGWebView;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Lcom/anansimobile/nge/NGWebView;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/anansimobile/nge/NGWebView;->webview:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/anansimobile/nge/NGWebView;)I
    .locals 1
    .param p0, "x0"    # Lcom/anansimobile/nge/NGWebView;

    .prologue
    .line 15
    iget v0, p0, Lcom/anansimobile/nge/NGWebView;->mListener:I

    return v0
.end method

.method static synthetic access$400(Lcom/anansimobile/nge/NGWebView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/anansimobile/nge/NGWebView;
    .param p1, "x1"    # I

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/anansimobile/nge/NGWebView;->OnWebViewLoaded(I)V

    return-void
.end method


# virtual methods
.method public InitWebView()V
    .locals 15
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v14, 0x0

    const/4 v13, -0x1

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 50
    const/4 v3, 0x0

    .line 52
    .local v3, "layout_view":Landroid/view/View;
    :try_start_0
    sget-object v8, Lcom/anansimobile/nge/NextGenEngine;->sMainActivity:Lcom/anansimobile/nge/RootActivity;

    invoke-virtual {v8}, Lcom/anansimobile/nge/RootActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    .line 53
    .local v4, "li":Landroid/view/LayoutInflater;
    sget-object v8, Lcom/anansimobile/nge/NextGenEngine;->sMainActivity:Lcom/anansimobile/nge/RootActivity;

    .line 54
    invoke-virtual {v8}, Lcom/anansimobile/nge/RootActivity;->getResourceProvider()Lcom/anansimobile/nge/ResourceProvider;

    move-result-object v8

    const-string/jumbo v9, "defaultwebview"

    invoke-virtual {v8, v9}, Lcom/anansimobile/nge/ResourceProvider;->getLayoutIdByName(Ljava/lang/String;)I

    move-result v8

    .line 53
    invoke-virtual {v4, v8, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
    :try_end_0
    .catch Landroid/view/InflateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 62
    .end local v4    # "li":Landroid/view/LayoutInflater;
    :goto_0
    if-eqz v3, :cond_0

    .line 66
    sget-object v8, Lcom/anansimobile/nge/NextGenEngine;->sMainActivity:Lcom/anansimobile/nge/RootActivity;

    .line 67
    invoke-virtual {v8}, Lcom/anansimobile/nge/RootActivity;->getResourceProvider()Lcom/anansimobile/nge/ResourceProvider;

    move-result-object v8

    const-string/jumbo v9, "webview"

    invoke-virtual {v8, v9}, Lcom/anansimobile/nge/ResourceProvider;->getIdByName(Ljava/lang/String;)I

    move-result v8

    .line 66
    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/webkit/WebView;

    iput-object v8, p0, Lcom/anansimobile/nge/NGWebView;->webview:Landroid/webkit/WebView;

    .line 70
    iget-object v8, p0, Lcom/anansimobile/nge/NGWebView;->webview:Landroid/webkit/WebView;

    invoke-virtual {v8}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v8

    invoke-virtual {v8, v12}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 71
    iget-object v8, p0, Lcom/anansimobile/nge/NGWebView;->webview:Landroid/webkit/WebView;

    new-instance v9, Lcom/anansimobile/nge/NGWebView$NGWebChromeClient;

    invoke-direct {v9, p0, v14}, Lcom/anansimobile/nge/NGWebView$NGWebChromeClient;-><init>(Lcom/anansimobile/nge/NGWebView;Lcom/anansimobile/nge/NGWebView$1;)V

    invoke-virtual {v8, v9}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 72
    iget-object v8, p0, Lcom/anansimobile/nge/NGWebView;->webview:Landroid/webkit/WebView;

    new-instance v9, Lcom/anansimobile/nge/NGWebView$NGWebViewClient;

    invoke-direct {v9, p0, p0}, Lcom/anansimobile/nge/NGWebView$NGWebViewClient;-><init>(Lcom/anansimobile/nge/NGWebView;Lcom/anansimobile/nge/NGWebView;)V

    invoke-virtual {v8, v9}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 74
    invoke-virtual {p0, v13}, Lcom/anansimobile/nge/NGWebView;->setBackgroundColor(I)V

    .line 78
    sget-object v8, Lcom/anansimobile/nge/NextGenEngine;->sMainActivity:Lcom/anansimobile/nge/RootActivity;

    .line 79
    invoke-virtual {v8}, Lcom/anansimobile/nge/RootActivity;->getResourceProvider()Lcom/anansimobile/nge/ResourceProvider;

    move-result-object v8

    const-string/jumbo v9, "imageButtonClose"

    invoke-virtual {v8, v9}, Lcom/anansimobile/nge/ResourceProvider;->getIdByName(Ljava/lang/String;)I

    move-result v8

    .line 78
    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 81
    .local v0, "btnClose":Landroid/widget/ImageButton;
    new-instance v8, Lcom/anansimobile/nge/NGWebView$1;

    invoke-direct {v8, p0}, Lcom/anansimobile/nge/NGWebView$1;-><init>(Lcom/anansimobile/nge/NGWebView;)V

    invoke-virtual {v0, v8}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    sget-object v8, Lcom/anansimobile/nge/NextGenEngine;->sMainActivity:Lcom/anansimobile/nge/RootActivity;

    .line 93
    invoke-virtual {v8}, Lcom/anansimobile/nge/RootActivity;->getResourceProvider()Lcom/anansimobile/nge/ResourceProvider;

    move-result-object v8

    const-string/jumbo v9, "imageButtonReload"

    invoke-virtual {v8, v9}, Lcom/anansimobile/nge/ResourceProvider;->getIdByName(Ljava/lang/String;)I

    move-result v8

    .line 92
    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 95
    .local v1, "btnReload":Landroid/widget/ImageButton;
    new-instance v8, Lcom/anansimobile/nge/NGWebView$2;

    invoke-direct {v8, p0}, Lcom/anansimobile/nge/NGWebView$2;-><init>(Lcom/anansimobile/nge/NGWebView;)V

    invoke-virtual {v1, v8}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    .end local v0    # "btnClose":Landroid/widget/ImageButton;
    .end local v1    # "btnReload":Landroid/widget/ImageButton;
    :goto_1
    return-void

    .line 58
    :catch_0
    move-exception v2

    .line 59
    .local v2, "e":Landroid/view/InflateException;
    const-string/jumbo v8, "load web view layout failed (\"%s\"), use simple view!~"

    new-array v9, v12, [Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/view/InflateException;->getMessage()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Lcom/anansimobile/nge/NextGenEngine;->nge_logf(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 112
    .end local v2    # "e":Landroid/view/InflateException;
    :cond_0
    new-instance v8, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/anansimobile/nge/NGWebView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/anansimobile/nge/NGWebView;->webview:Landroid/webkit/WebView;

    .line 113
    iget-object v8, p0, Lcom/anansimobile/nge/NGWebView;->webview:Landroid/webkit/WebView;

    invoke-virtual {v8}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v8

    invoke-virtual {v8, v12}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 115
    iget-object v8, p0, Lcom/anansimobile/nge/NGWebView;->webview:Landroid/webkit/WebView;

    new-instance v9, Lcom/anansimobile/nge/NGWebView$NGWebChromeClient;

    invoke-direct {v9, p0, v14}, Lcom/anansimobile/nge/NGWebView$NGWebChromeClient;-><init>(Lcom/anansimobile/nge/NGWebView;Lcom/anansimobile/nge/NGWebView$1;)V

    invoke-virtual {v8, v9}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 116
    iget-object v8, p0, Lcom/anansimobile/nge/NGWebView;->webview:Landroid/webkit/WebView;

    new-instance v9, Lcom/anansimobile/nge/NGWebView$NGWebViewClient;

    invoke-direct {v9, p0, p0}, Lcom/anansimobile/nge/NGWebView$NGWebViewClient;-><init>(Lcom/anansimobile/nge/NGWebView;Lcom/anansimobile/nge/NGWebView;)V

    invoke-virtual {v8, v9}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 117
    iget-object v8, p0, Lcom/anansimobile/nge/NGWebView;->webview:Landroid/webkit/WebView;

    invoke-virtual {p0, v8}, Lcom/anansimobile/nge/NGWebView;->addView(Landroid/view/View;)V

    .line 142
    invoke-static {}, Lcom/anansimobile/nge/NGDevice;->getScreenWidth()I

    move-result v7

    .line 143
    .local v7, "sw":I
    invoke-static {}, Lcom/anansimobile/nge/NGDevice;->getScreenHeight()I

    move-result v6

    .line 144
    .local v6, "sh":I
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v7, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 145
    .local v5, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iput v11, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 146
    iput v11, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 147
    iget-object v8, p0, Lcom/anansimobile/nge/NGWebView;->webview:Landroid/webkit/WebView;

    invoke-virtual {v8, v5}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    invoke-virtual {p0, v13}, Lcom/anansimobile/nge/NGWebView;->setBackgroundColor(I)V

    goto :goto_1
.end method

.method public OnBackPressed()V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/anansimobile/nge/NGWebView;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/anansimobile/nge/NGWebView;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 173
    :goto_0
    return-void

    .line 171
    :cond_0
    invoke-direct {p0}, Lcom/anansimobile/nge/NGWebView;->OnClose()V

    goto :goto_0
.end method

.method public SetListener(I)V
    .locals 0
    .param p1, "l"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/anansimobile/nge/NGWebView;->mListener:I

    .line 29
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/anansimobile/nge/NGWebView;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 153
    return-void
.end method
