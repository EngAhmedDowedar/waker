.class Lcom/helpshift/HSMessagesFragment$19;
.super Landroid/os/Handler;
.source "HSMessagesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/HSMessagesFragment;->attachImage(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/HSMessagesFragment;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/helpshift/HSMessagesFragment;I)V
    .locals 0

    .prologue
    .line 1105
    iput-object p1, p0, Lcom/helpshift/HSMessagesFragment$19;->this$0:Lcom/helpshift/HSMessagesFragment;

    iput p2, p0, Lcom/helpshift/HSMessagesFragment$19;->val$position:I

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    .line 1107
    iget-object v3, p0, Lcom/helpshift/HSMessagesFragment$19;->this$0:Lcom/helpshift/HSMessagesFragment;

    invoke-static {v3}, Lcom/helpshift/HSMessagesFragment;->access$2500(Lcom/helpshift/HSMessagesFragment;)Ljava/util/ArrayList;

    move-result-object v3

    iget v4, p0, Lcom/helpshift/HSMessagesFragment$19;->val$position:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/viewstructs/HSMsg;

    .line 1108
    .local v0, "msgData":Lcom/helpshift/viewstructs/HSMsg;
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v0, Lcom/helpshift/viewstructs/HSMsg;->clickable:Ljava/lang/Boolean;

    .line 1109
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v0, Lcom/helpshift/viewstructs/HSMsg;->inProgress:Ljava/lang/Boolean;

    .line 1110
    iget-object v3, v0, Lcom/helpshift/viewstructs/HSMsg;->id:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/helpshift/models/Message;->setInProgress(Ljava/lang/String;Z)V

    .line 1112
    iget-object v3, p0, Lcom/helpshift/HSMessagesFragment$19;->this$0:Lcom/helpshift/HSMessagesFragment;

    invoke-static {v3}, Lcom/helpshift/HSMessagesFragment;->access$400(Lcom/helpshift/HSMessagesFragment;)Lcom/helpshift/customadapters/MessagesAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/helpshift/customadapters/MessagesAdapter;->notifyDataSetChanged()V

    .line 1113
    iget-object v3, p0, Lcom/helpshift/HSMessagesFragment$19;->this$0:Lcom/helpshift/HSMessagesFragment;

    invoke-static {v3}, Lcom/helpshift/HSMessagesFragment;->access$2500(Lcom/helpshift/HSMessagesFragment;)Ljava/util/ArrayList;

    move-result-object v3

    iget v4, p0, Lcom/helpshift/HSMessagesFragment$19;->val$position:I

    invoke-virtual {v3, v4, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1114
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    .line 1115
    .local v1, "result":Ljava/util/HashMap;
    const-string/jumbo v3, "status"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1116
    .local v2, "status":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/helpshift/HSMessagesFragment$19;->this$0:Lcom/helpshift/HSMessagesFragment;

    invoke-static {v5}, Lcom/helpshift/HSMessagesFragment;->access$700(Lcom/helpshift/HSMessagesFragment;)Lcom/helpshift/HSActivity;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/helpshift/util/HSErrors;->showFailToast(ILandroid/app/ProgressDialog;Landroid/content/Context;)V

    .line 1117
    return-void
.end method
