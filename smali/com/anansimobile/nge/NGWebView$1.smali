.class Lcom/anansimobile/nge/NGWebView$1;
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
    .line 81
    iput-object p1, p0, Lcom/anansimobile/nge/NGWebView$1;->this$0:Lcom/anansimobile/nge/NGWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/anansimobile/nge/NGWebView$1;->this$0:Lcom/anansimobile/nge/NGWebView;

    invoke-static {v0}, Lcom/anansimobile/nge/NGWebView;->access$100(Lcom/anansimobile/nge/NGWebView;)V

    .line 88
    return-void
.end method
