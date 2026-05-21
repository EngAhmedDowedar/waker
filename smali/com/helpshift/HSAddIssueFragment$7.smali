.class Lcom/helpshift/HSAddIssueFragment$7;
.super Landroid/os/Handler;
.source "HSAddIssueFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/HSAddIssueFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 334
    iput-object p1, p0, Lcom/helpshift/HSAddIssueFragment$7;->this$0:Lcom/helpshift/HSAddIssueFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 337
    iget-object v0, p0, Lcom/helpshift/HSAddIssueFragment$7;->this$0:Lcom/helpshift/HSAddIssueFragment;

    invoke-static {v0}, Lcom/helpshift/HSAddIssueFragment;->access$300(Lcom/helpshift/HSAddIssueFragment;)Lcom/helpshift/HSApiData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpshift/HSApiData;->loadIndex()V

    .line 338
    invoke-static {}, Lcom/helpshift/util/HSTransliterator;->init()V

    .line 339
    return-void
.end method
