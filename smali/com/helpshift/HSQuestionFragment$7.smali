.class Lcom/helpshift/HSQuestionFragment$7;
.super Ljava/lang/Object;
.source "HSQuestionFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/HSQuestionFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/HSQuestionFragment;


# direct methods
.method constructor <init>(Lcom/helpshift/HSQuestionFragment;)V
    .locals 0

    .prologue
    .line 471
    iput-object p1, p0, Lcom/helpshift/HSQuestionFragment$7;->this$0:Lcom/helpshift/HSQuestionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 474
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/helpshift/HSQuestionFragment$7;->this$0:Lcom/helpshift/HSQuestionFragment;

    invoke-static {v1}, Lcom/helpshift/HSQuestionFragment;->access$000(Lcom/helpshift/HSQuestionFragment;)Lcom/helpshift/HSActivity;

    move-result-object v1

    const-class v2, Lcom/helpshift/HSConversation;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 475
    .local v0, "i":Landroid/content/Intent;
    const-string/jumbo v1, "showInFullScreen"

    iget-object v2, p0, Lcom/helpshift/HSQuestionFragment$7;->this$0:Lcom/helpshift/HSQuestionFragment;

    invoke-static {v2}, Lcom/helpshift/HSQuestionFragment;->access$000(Lcom/helpshift/HSQuestionFragment;)Lcom/helpshift/HSActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/helpshift/util/HSActivityUtil;->isFullScreen(Landroid/app/Activity;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 476
    const-string/jumbo v1, "chatLaunchSource"

    const-string/jumbo v2, "support"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 477
    iget-object v1, p0, Lcom/helpshift/HSQuestionFragment$7;->this$0:Lcom/helpshift/HSQuestionFragment;

    invoke-static {v1}, Lcom/helpshift/HSQuestionFragment;->access$1200(Lcom/helpshift/HSQuestionFragment;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 478
    const-string/jumbo v1, "isRoot"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 479
    const-string/jumbo v1, "search_performed"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 480
    iget-object v1, p0, Lcom/helpshift/HSQuestionFragment$7;->this$0:Lcom/helpshift/HSQuestionFragment;

    invoke-virtual {v1}, Lcom/helpshift/HSQuestionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Landroid/support/v4/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 481
    return-void
.end method
