.class Lcom/helpshift/HSQuestionFragment$3;
.super Landroid/os/Handler;
.source "HSQuestionFragment.java"


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
    .line 269
    iput-object p1, p0, Lcom/helpshift/HSQuestionFragment$3;->this$0:Lcom/helpshift/HSQuestionFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 271
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 272
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    .line 273
    .local v0, "result":Ljava/util/HashMap;
    const-string/jumbo v2, "status"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 275
    .local v1, "status":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/helpshift/HSQuestionFragment$3;->this$0:Lcom/helpshift/HSQuestionFragment;

    invoke-static {v4}, Lcom/helpshift/HSQuestionFragment;->access$000(Lcom/helpshift/HSQuestionFragment;)Lcom/helpshift/HSActivity;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/helpshift/util/HSErrors;->showFailToast(ILandroid/app/ProgressDialog;Landroid/content/Context;)V

    .line 276
    return-void
.end method
