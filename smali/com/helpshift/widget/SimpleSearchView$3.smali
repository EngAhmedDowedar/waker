.class Lcom/helpshift/widget/SimpleSearchView$3;
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
    .line 73
    iput-object p1, p0, Lcom/helpshift/widget/SimpleSearchView$3;->this$0:Lcom/helpshift/widget/SimpleSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/helpshift/widget/SimpleSearchView$3;->this$0:Lcom/helpshift/widget/SimpleSearchView;

    invoke-static {v0}, Lcom/helpshift/widget/SimpleSearchView;->access$300(Lcom/helpshift/widget/SimpleSearchView;)Landroid/widget/EditText;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v0, p0, Lcom/helpshift/widget/SimpleSearchView$3;->this$0:Lcom/helpshift/widget/SimpleSearchView;

    invoke-static {v0}, Lcom/helpshift/widget/SimpleSearchView;->access$400(Lcom/helpshift/widget/SimpleSearchView;)V

    .line 78
    return-void
.end method
