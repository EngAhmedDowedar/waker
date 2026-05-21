.class Lcom/helpshift/util/HSHTML5WebView$HSWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "HSHTML5WebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/util/HSHTML5WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HSWebChromeClient"
.end annotation


# instance fields
.field private mDefaultVideoPoster:Landroid/graphics/Bitmap;

.field private mVideoProgressView:Landroid/view/View;

.field final synthetic this$0:Lcom/helpshift/util/HSHTML5WebView;


# direct methods
.method private constructor <init>(Lcom/helpshift/util/HSHTML5WebView;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/helpshift/util/HSHTML5WebView$HSWebChromeClient;->this$0:Lcom/helpshift/util/HSHTML5WebView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/helpshift/util/HSHTML5WebView;Lcom/helpshift/util/HSHTML5WebView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/helpshift/util/HSHTML5WebView;
    .param p2, "x1"    # Lcom/helpshift/util/HSHTML5WebView$1;

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/helpshift/util/HSHTML5WebView$HSWebChromeClient;-><init>(Lcom/helpshift/util/HSHTML5WebView;)V

    return-void
.end method


# virtual methods
.method public getDefaultVideoPoster()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/helpshift/util/HSHTML5WebView$HSWebChromeClient;->mDefaultVideoPoster:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/helpshift/util/HSHTML5WebView$HSWebChromeClient;->mDefaultVideoPoster:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getVideoLoadingProgressView()Landroid/view/View;
    .locals 3

    .prologue
    .line 173
    iget-object v1, p0, Lcom/helpshift/util/HSHTML5WebView$HSWebChromeClient;->mVideoProgressView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 174
    iget-object v1, p0, Lcom/helpshift/util/HSHTML5WebView$HSWebChromeClient;->this$0:Lcom/helpshift/util/HSHTML5WebView;

    invoke-static {v1}, Lcom/helpshift/util/HSHTML5WebView;->access$500(Lcom/helpshift/util/HSHTML5WebView;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 175
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Lcom/helpshift/D$layout;->hs__video_loading_progress:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/helpshift/util/HSHTML5WebView$HSWebChromeClient;->mVideoProgressView:Landroid/view/View;

    .line 177
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    iget-object v1, p0, Lcom/helpshift/util/HSHTML5WebView$HSWebChromeClient;->mVideoProgressView:Landroid/view/View;

    return-object v1
.end method

.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 1
    .param p1, "consoleMessage"    # Landroid/webkit/ConsoleMessage;

    .prologue
    .line 160
    const/4 v0, 0x1

    return v0
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 2
    .param p1, "origin"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/webkit/GeolocationPermissions$Callback;

    .prologue
    .line 192
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p2, p1, v0, v1}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    .line 193
    return-void
.end method

.method public onHideCustomView()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 143
    iget-object v0, p0, Lcom/helpshift/util/HSHTML5WebView$HSWebChromeClient;->this$0:Lcom/helpshift/util/HSHTML5WebView;

    invoke-static {v0}, Lcom/helpshift/util/HSHTML5WebView;->access$200(Lcom/helpshift/util/HSHTML5WebView;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 156
    :goto_0
    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/helpshift/util/HSHTML5WebView$HSWebChromeClient;->this$0:Lcom/helpshift/util/HSHTML5WebView;

    invoke-static {v0}, Lcom/helpshift/util/HSHTML5WebView;->access$200(Lcom/helpshift/util/HSHTML5WebView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 150
    iget-object v0, p0, Lcom/helpshift/util/HSHTML5WebView$HSWebChromeClient;->this$0:Lcom/helpshift/util/HSHTML5WebView;

    invoke-static {v0}, Lcom/helpshift/util/HSHTML5WebView;->access$300(Lcom/helpshift/util/HSHTML5WebView;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/helpshift/util/HSHTML5WebView$HSWebChromeClient;->this$0:Lcom/helpshift/util/HSHTML5WebView;

    invoke-static {v1}, Lcom/helpshift/util/HSHTML5WebView;->access$200(Lcom/helpshift/util/HSHTML5WebView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 151
    iget-object v0, p0, Lcom/helpshift/util/HSHTML5WebView$HSWebChromeClient;->this$0:Lcom/helpshift/util/HSHTML5WebView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/helpshift/util/HSHTML5WebView;->access$202(Lcom/helpshift/util/HSHTML5WebView;Landroid/view/View;)Landroid/view/View;

    .line 152
    iget-object v0, p0, Lcom/helpshift/util/HSHTML5WebView$HSWebChromeClient;->this$0:Lcom/helpshift/util/HSHTML5WebView;

    invoke-static {v0}, Lcom/helpshift/util/HSHTML5WebView;->access$300(Lcom/helpshift/util/HSHTML5WebView;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 153
    iget-object v0, p0, Lcom/helpshift/util/HSHTML5WebView$HSWebChromeClient;->this$0:Lcom/helpshift/util/HSHTML5WebView;

    invoke-static {v0}, Lcom/helpshift/util/HSHTML5WebView;->access$400(Lcom/helpshift/util/HSHTML5WebView;)Landroid/webkit/WebChromeClient$CustomViewCallback;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 155
    iget-object v0, p0, Lcom/helpshift/util/HSHTML5WebView$HSWebChromeClient;->this$0:Lcom/helpshift/util/HSHTML5WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/helpshift/util/HSHTML5WebView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "newProgress"    # I

    .prologue
    .line 187
    iget-object v0, p0, Lcom/helpshift/util/HSHTML5WebView$HSWebChromeClient;->this$0:Lcom/helpshift/util/HSHTML5WebView;

    invoke-static {v0}, Lcom/helpshift/util/HSHTML5WebView;->access$500(Lcom/helpshift/util/HSHTML5WebView;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/helpshift/app/ActionBarActivity;

    invoke-virtual {v0}, Lcom/helpshift/app/ActionBarActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    mul-int/lit8 v2, p2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFeatureInt(II)V

    .line 188
    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/helpshift/util/HSHTML5WebView$HSWebChromeClient;->this$0:Lcom/helpshift/util/HSHTML5WebView;

    invoke-static {v0}, Lcom/helpshift/util/HSHTML5WebView;->access$500(Lcom/helpshift/util/HSHTML5WebView;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/helpshift/app/ActionBarActivity;

    invoke-virtual {v0, p2}, Lcom/helpshift/app/ActionBarActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 183
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/webkit/WebChromeClient$CustomViewCallback;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/helpshift/util/HSHTML5WebView$HSWebChromeClient;->this$0:Lcom/helpshift/util/HSHTML5WebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/helpshift/util/HSHTML5WebView;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/helpshift/util/HSHTML5WebView$HSWebChromeClient;->this$0:Lcom/helpshift/util/HSHTML5WebView;

    invoke-static {v0}, Lcom/helpshift/util/HSHTML5WebView;->access$200(Lcom/helpshift/util/HSHTML5WebView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    invoke-interface {p2}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 139
    :goto_0
    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/helpshift/util/HSHTML5WebView$HSWebChromeClient;->this$0:Lcom/helpshift/util/HSHTML5WebView;

    invoke-static {v0}, Lcom/helpshift/util/HSHTML5WebView;->access$300(Lcom/helpshift/util/HSHTML5WebView;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 136
    iget-object v0, p0, Lcom/helpshift/util/HSHTML5WebView$HSWebChromeClient;->this$0:Lcom/helpshift/util/HSHTML5WebView;

    invoke-static {v0, p1}, Lcom/helpshift/util/HSHTML5WebView;->access$202(Lcom/helpshift/util/HSHTML5WebView;Landroid/view/View;)Landroid/view/View;

    .line 137
    iget-object v0, p0, Lcom/helpshift/util/HSHTML5WebView$HSWebChromeClient;->this$0:Lcom/helpshift/util/HSHTML5WebView;

    invoke-static {v0, p2}, Lcom/helpshift/util/HSHTML5WebView;->access$402(Lcom/helpshift/util/HSHTML5WebView;Landroid/webkit/WebChromeClient$CustomViewCallback;)Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 138
    iget-object v0, p0, Lcom/helpshift/util/HSHTML5WebView$HSWebChromeClient;->this$0:Lcom/helpshift/util/HSHTML5WebView;

    invoke-static {v0}, Lcom/helpshift/util/HSHTML5WebView;->access$300(Lcom/helpshift/util/HSHTML5WebView;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0
.end method
