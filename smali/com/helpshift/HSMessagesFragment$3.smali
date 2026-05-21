.class Lcom/helpshift/HSMessagesFragment$3;
.super Landroid/os/Handler;
.source "HSMessagesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/HSMessagesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/HSMessagesFragment;


# direct methods
.method constructor <init>(Lcom/helpshift/HSMessagesFragment;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/helpshift/HSMessagesFragment$3;->this$0:Lcom/helpshift/HSMessagesFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 122
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 123
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONArray;

    .line 124
    .local v0, "messages":Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 125
    iget-object v1, p0, Lcom/helpshift/HSMessagesFragment$3;->this$0:Lcom/helpshift/HSMessagesFragment;

    iget-object v2, p0, Lcom/helpshift/HSMessagesFragment$3;->this$0:Lcom/helpshift/HSMessagesFragment;

    invoke-static {v2}, Lcom/helpshift/HSMessagesFragment;->access$200(Lcom/helpshift/HSMessagesFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/helpshift/models/Issue;->isShowAgentNameEnabled(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/helpshift/HSMessagesFragment;->access$102(Lcom/helpshift/HSMessagesFragment;Z)Z

    .line 126
    iget-object v1, p0, Lcom/helpshift/HSMessagesFragment$3;->this$0:Lcom/helpshift/HSMessagesFragment;

    invoke-static {v1}, Lcom/helpshift/HSMessagesFragment;->access$000(Lcom/helpshift/HSMessagesFragment;)V

    .line 127
    iget-object v1, p0, Lcom/helpshift/HSMessagesFragment$3;->this$0:Lcom/helpshift/HSMessagesFragment;

    invoke-static {v1}, Lcom/helpshift/HSMessagesFragment;->access$300(Lcom/helpshift/HSMessagesFragment;)V

    .line 128
    iget-object v1, p0, Lcom/helpshift/HSMessagesFragment$3;->this$0:Lcom/helpshift/HSMessagesFragment;

    invoke-static {v1}, Lcom/helpshift/HSMessagesFragment;->access$500(Lcom/helpshift/HSMessagesFragment;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/helpshift/HSMessagesFragment$3;->this$0:Lcom/helpshift/HSMessagesFragment;

    invoke-static {v2}, Lcom/helpshift/HSMessagesFragment;->access$400(Lcom/helpshift/HSMessagesFragment;)Lcom/helpshift/customadapters/MessagesAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/helpshift/customadapters/MessagesAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 130
    :cond_0
    return-void
.end method
