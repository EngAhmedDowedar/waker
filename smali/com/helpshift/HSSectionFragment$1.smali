.class Lcom/helpshift/HSSectionFragment$1;
.super Ljava/lang/Object;
.source "HSSectionFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/HSSectionFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/HSSectionFragment;


# direct methods
.method constructor <init>(Lcom/helpshift/HSSectionFragment;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/helpshift/HSSectionFragment$1;->this$0:Lcom/helpshift/HSSectionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/helpshift/HSSectionFragment$1;->this$0:Lcom/helpshift/HSSectionFragment;

    invoke-static {v0}, Lcom/helpshift/HSSectionFragment;->access$000(Lcom/helpshift/HSSectionFragment;)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/helpshift/HSSectionFragment$1;->this$0:Lcom/helpshift/HSSectionFragment;

    invoke-static {v0}, Lcom/helpshift/HSSectionFragment;->access$100(Lcom/helpshift/HSSectionFragment;)Lcom/helpshift/app/ActionBarHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/helpshift/HSSectionFragment$1;->this$0:Lcom/helpshift/HSSectionFragment;

    invoke-static {v1}, Lcom/helpshift/HSSectionFragment;->access$000(Lcom/helpshift/HSSectionFragment;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/helpshift/app/ActionBarHelper;->clearFocus(Landroid/view/MenuItem;)V

    .line 126
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
