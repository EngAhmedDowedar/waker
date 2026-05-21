.class Lcom/anansimobile/nge/NGWebView$2;
.super Ljava/lang/Object;
.source "NGWebView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anansimobile/nge/NGWebView;->InitWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/anansimobile/nge/NGWebView;


# direct methods
.method constructor <init>(Lcom/anansimobile/nge/NGWebView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/anansimobile/nge/NGWebView;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/anansimobile/nge/NGWebView$2;->this$0:Lcom/anansimobile/nge/NGWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/anansimobile/nge/NGWebView$2;->this$0:Lcom/anansimobile/nge/NGWebView;

    invoke-static {v0}, Lcom/anansimobile/nge/NGWebView;->access$200(Lcom/anansimobile/nge/NGWebView;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    .line 102
    return-void
.end method
