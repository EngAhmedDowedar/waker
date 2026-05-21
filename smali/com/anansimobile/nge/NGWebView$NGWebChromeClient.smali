.class Lcom/anansimobile/nge/NGWebView$NGWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "NGWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anansimobile/nge/NGWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NGWebChromeClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/anansimobile/nge/NGWebView;


# direct methods
.method private constructor <init>(Lcom/anansimobile/nge/NGWebView;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/anansimobile/nge/NGWebView$NGWebChromeClient;->this$0:Lcom/anansimobile/nge/NGWebView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/anansimobile/nge/NGWebView;Lcom/anansimobile/nge/NGWebView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/anansimobile/nge/NGWebView;
    .param p2, "x1"    # Lcom/anansimobile/nge/NGWebView$1;

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lcom/anansimobile/nge/NGWebView$NGWebChromeClient;-><init>(Lcom/anansimobile/nge/NGWebView;)V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "newProgress"    # I

    .prologue
    .line 180
    const-string/jumbo v0, "web view progress: %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/anansimobile/nge/NextGenEngine;->nge_logf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/anansimobile/nge/NGWebView$NGWebChromeClient;->this$0:Lcom/anansimobile/nge/NGWebView;

    iget-object v1, p0, Lcom/anansimobile/nge/NGWebView$NGWebChromeClient;->this$0:Lcom/anansimobile/nge/NGWebView;

    invoke-static {v1}, Lcom/anansimobile/nge/NGWebView;->access$300(Lcom/anansimobile/nge/NGWebView;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/anansimobile/nge/NGWebView;->access$400(Lcom/anansimobile/nge/NGWebView;I)V

    .line 186
    :cond_0
    return-void
.end method
