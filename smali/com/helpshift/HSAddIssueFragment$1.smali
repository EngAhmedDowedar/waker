.class Lcom/helpshift/HSAddIssueFragment$1;
.super Landroid/os/Handler;
.source "HSAddIssueFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/HSAddIssueFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/HSAddIssueFragment;


# direct methods
.method constructor <init>(Lcom/helpshift/HSAddIssueFragment;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/helpshift/HSAddIssueFragment$1;->this$0:Lcom/helpshift/HSAddIssueFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 100
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 101
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    .line 102
    .local v0, "result":Ljava/util/HashMap;
    const-string/jumbo v2, "status"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 103
    .local v1, "status":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/helpshift/HSAddIssueFragment$1;->this$0:Lcom/helpshift/HSAddIssueFragment;

    invoke-static {v4}, Lcom/helpshift/HSAddIssueFragment;->access$000(Lcom/helpshift/HSAddIssueFragment;)Lcom/helpshift/HSActivity;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/helpshift/util/HSErrors;->showFailToast(ILandroid/app/ProgressDialog;Landroid/content/Context;)V

    .line 104
    iget-object v2, p0, Lcom/helpshift/HSAddIssueFragment$1;->this$0:Lcom/helpshift/HSAddIssueFragment;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/helpshift/HSAddIssueFragment;->access$100(Lcom/helpshift/HSAddIssueFragment;Z)V

    .line 105
    return-void
.end method
