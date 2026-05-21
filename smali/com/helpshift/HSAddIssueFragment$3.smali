.class Lcom/helpshift/HSAddIssueFragment$3;
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
    .line 185
    iput-object p1, p0, Lcom/helpshift/HSAddIssueFragment$3;->this$0:Lcom/helpshift/HSAddIssueFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/helpshift/HSAddIssueFragment$3;->this$0:Lcom/helpshift/HSAddIssueFragment;

    invoke-static {v0}, Lcom/helpshift/HSAddIssueFragment;->access$1500(Lcom/helpshift/HSAddIssueFragment;)V

    .line 189
    iget-object v0, p0, Lcom/helpshift/HSAddIssueFragment$3;->this$0:Lcom/helpshift/HSAddIssueFragment;

    invoke-static {v0}, Lcom/helpshift/HSAddIssueFragment;->access$1300(Lcom/helpshift/HSAddIssueFragment;)V

    .line 190
    return-void
.end method
