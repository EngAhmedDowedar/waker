.class Lcom/helpshift/widget/SimpleSearchView$1;
.super Ljava/lang/Object;
.source "SimpleSearchView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/widget/SimpleSearchView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/widget/SimpleSearchView;


# direct methods
.method constructor <init>(Lcom/helpshift/widget/SimpleSearchView;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/helpshift/widget/SimpleSearchView$1;->this$0:Lcom/helpshift/widget/SimpleSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/helpshift/widget/SimpleSearchView$1;->this$0:Lcom/helpshift/widget/SimpleSearchView;

    invoke-static {v0}, Lcom/helpshift/widget/SimpleSearchView;->access$000(Lcom/helpshift/widget/SimpleSearchView;)V

    .line 50
    return-void
.end method
