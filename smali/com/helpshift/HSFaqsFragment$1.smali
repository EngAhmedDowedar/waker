.class Lcom/helpshift/HSFaqsFragment$1;
.super Ljava/lang/Object;
.source "HSFaqsFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/HSFaqsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/HSFaqsFragment;


# direct methods
.method constructor <init>(Lcom/helpshift/HSFaqsFragment;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/helpshift/HSFaqsFragment$1;->this$0:Lcom/helpshift/HSFaqsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/helpshift/HSFaqsFragment$1;->this$0:Lcom/helpshift/HSFaqsFragment;

    invoke-static {v0}, Lcom/helpshift/HSFaqsFragment;->access$000(Lcom/helpshift/HSFaqsFragment;)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/helpshift/HSFaqsFragment$1;->this$0:Lcom/helpshift/HSFaqsFragment;

    invoke-static {v0}, Lcom/helpshift/HSFaqsFragment;->access$100(Lcom/helpshift/HSFaqsFragment;)Lcom/helpshift/app/ActionBarHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/helpshift/HSFaqsFragment$1;->this$0:Lcom/helpshift/HSFaqsFragment;

    invoke-static {v1}, Lcom/helpshift/HSFaqsFragment;->access$000(Lcom/helpshift/HSFaqsFragment;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/helpshift/app/ActionBarHelper;->clearFocus(Landroid/view/MenuItem;)V

    .line 133
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
