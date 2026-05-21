.class Lcom/helpshift/HSMessagesFragment$14;
.super Landroid/os/Handler;
.source "HSMessagesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/HSMessagesFragment;->replyConfirmation(Ljava/lang/String;Ljava/lang/Boolean;I)V
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
    .line 876
    iput-object p1, p0, Lcom/helpshift/HSMessagesFragment$14;->this$0:Lcom/helpshift/HSMessagesFragment;

    iput p2, p0, Lcom/helpshift/HSMessagesFragment$14;->val$position:I

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 878
    iget-object v1, p0, Lcom/helpshift/HSMessagesFragment$14;->this$0:Lcom/helpshift/HSMessagesFragment;

    invoke-static {v1}, Lcom/helpshift/HSMessagesFragment;->access$2500(Lcom/helpshift/HSMessagesFragment;)Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcom/helpshift/HSMessagesFragment$14;->val$position:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/viewstructs/HSMsg;

    .line 879
    .local v0, "msgData":Lcom/helpshift/viewstructs/HSMsg;
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/helpshift/viewstructs/HSMsg;->clickable:Ljava/lang/Boolean;

    .line 880
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/helpshift/viewstructs/HSMsg;->invisible:Ljava/lang/Boolean;

    .line 881
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/helpshift/viewstructs/HSMsg;->inProgress:Ljava/lang/Boolean;

    .line 882
    iget-object v1, p0, Lcom/helpshift/HSMessagesFragment$14;->this$0:Lcom/helpshift/HSMessagesFragment;

    invoke-static {v1}, Lcom/helpshift/HSMessagesFragment;->access$400(Lcom/helpshift/HSMessagesFragment;)Lcom/helpshift/customadapters/MessagesAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/helpshift/customadapters/MessagesAdapter;->notifyDataSetChanged()V

    .line 883
    iget-object v1, v0, Lcom/helpshift/viewstructs/HSMsg;->id:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/helpshift/models/Message;->setInvisible(Ljava/lang/String;Z)V

    .line 884
    iget-object v1, v0, Lcom/helpshift/viewstructs/HSMsg;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/helpshift/models/Message;->setInProgress(Ljava/lang/String;Z)V

    .line 885
    iget-object v1, p0, Lcom/helpshift/HSMessagesFragment$14;->this$0:Lcom/helpshift/HSMessagesFragment;

    invoke-static {v1, p1}, Lcom/helpshift/HSMessagesFragment;->access$800(Lcom/helpshift/HSMessagesFragment;Landroid/os/Message;)V

    .line 886
    return-void
.end method
