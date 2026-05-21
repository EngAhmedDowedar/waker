.class Lcom/helpshift/HSReviewFragment$2;
.super Ljava/lang/Object;
.source "HSReviewFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/HSReviewFragment;->initAlertDialog(Landroid/support/v4/app/FragmentActivity;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/HSReviewFragment;


# direct methods
.method constructor <init>(Lcom/helpshift/HSReviewFragment;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/helpshift/HSReviewFragment$2;->this$0:Lcom/helpshift/HSReviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x1

    .line 113
    const-string/jumbo v1, "feedback"

    invoke-static {v1}, Lcom/helpshift/HSFunnel;->pushAppReviewedEvent(Ljava/lang/String;)V

    .line 114
    iget-object v1, p0, Lcom/helpshift/HSReviewFragment$2;->this$0:Lcom/helpshift/HSReviewFragment;

    sget-object v2, Lcom/helpshift/Helpshift$HS_RATE_ALERT;->FEEDBACK:Lcom/helpshift/Helpshift$HS_RATE_ALERT;

    invoke-static {v1, v2}, Lcom/helpshift/HSReviewFragment;->access$300(Lcom/helpshift/HSReviewFragment;Lcom/helpshift/Helpshift$HS_RATE_ALERT;)V

    .line 115
    iget-object v1, p0, Lcom/helpshift/HSReviewFragment$2;->this$0:Lcom/helpshift/HSReviewFragment;

    invoke-static {v1}, Lcom/helpshift/HSReviewFragment;->access$100(Lcom/helpshift/HSReviewFragment;)Lcom/helpshift/HSStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/helpshift/HSStorage;->getIsConversationShowing()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 116
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/helpshift/HSReviewFragment$2;->this$0:Lcom/helpshift/HSReviewFragment;

    invoke-virtual {v1}, Lcom/helpshift/HSReviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/helpshift/HSConversation;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 117
    .local v0, "i":Landroid/content/Intent;
    const-string/jumbo v1, "decomp"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 118
    const-string/jumbo v1, "showInFullScreen"

    iget-object v2, p0, Lcom/helpshift/HSReviewFragment$2;->this$0:Lcom/helpshift/HSReviewFragment;

    invoke-virtual {v2}, Lcom/helpshift/HSReviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/helpshift/util/HSActivityUtil;->isFullScreen(Landroid/app/Activity;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 120
    const-string/jumbo v1, "chatLaunchSource"

    const-string/jumbo v2, "support"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    const-string/jumbo v1, "isRoot"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 122
    const-string/jumbo v1, "search_performed"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 123
    iget-object v1, p0, Lcom/helpshift/HSReviewFragment$2;->this$0:Lcom/helpshift/HSReviewFragment;

    invoke-virtual {v1}, Lcom/helpshift/HSReviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 125
    .end local v0    # "i":Landroid/content/Intent;
    :cond_0
    return-void
.end method
