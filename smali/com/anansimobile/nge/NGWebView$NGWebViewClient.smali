.class Lcom/anansimobile/nge/NGWebView$NGWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "NGWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anansimobile/nge/NGWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NGWebViewClient"
.end annotation


# instance fields
.field private mNGWebView:Lcom/anansimobile/nge/NGWebView;

.field final synthetic this$0:Lcom/anansimobile/nge/NGWebView;


# direct methods
.method public constructor <init>(Lcom/anansimobile/nge/NGWebView;Lcom/anansimobile/nge/NGWebView;)V
    .locals 1
    .param p2, "w"    # Lcom/anansimobile/nge/NGWebView;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/anansimobile/nge/NGWebView$NGWebViewClient;->this$0:Lcom/anansimobile/nge/NGWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 190
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anansimobile/nge/NGWebView$NGWebViewClient;->mNGWebView:Lcom/anansimobile/nge/NGWebView;

    .line 192
    iput-object p2, p0, Lcom/anansimobile/nge/NGWebView$NGWebViewClient;->mNGWebView:Lcom/anansimobile/nge/NGWebView;

    .line 193
    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 195
    const-string/jumbo v0, "http://close_view"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/anansimobile/nge/NGWebView$NGWebViewClient;->mNGWebView:Lcom/anansimobile/nge/NGWebView;

    invoke-static {v0}, Lcom/anansimobile/nge/NGWebView;->access$100(Lcom/anansimobile/nge/NGWebView;)V

    .line 201
    :goto_0
    return v1

    .line 200
    :cond_0
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method
