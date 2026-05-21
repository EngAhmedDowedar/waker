.class Lcom/helpshift/HSMessagesFragment$7$1;
.super Landroid/os/Handler;
.source "HSMessagesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/HSMessagesFragment$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/helpshift/HSMessagesFragment$7;


# direct methods
.method constructor <init>(Lcom/helpshift/HSMessagesFragment$7;)V
    .locals 0

    .prologue
    .line 503
    iput-object p1, p0, Lcom/helpshift/HSMessagesFragment$7$1;->this$1:Lcom/helpshift/HSMessagesFragment$7;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 505
    iget-object v1, p0, Lcom/helpshift/HSMessagesFragment$7$1;->this$1:Lcom/helpshift/HSMessagesFragment$7;

    iget-object v1, v1, Lcom/helpshift/HSMessagesFragment$7;->this$0:Lcom/helpshift/HSMessagesFragment;

    invoke-static {v1}, Lcom/helpshift/HSMessagesFragment;->access$1000(Lcom/helpshift/HSMessagesFragment;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 506
    .local v0, "newMsg":Landroid/os/Message;
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 507
    iget-object v1, p0, Lcom/helpshift/HSMessagesFragment$7$1;->this$1:Lcom/helpshift/HSMessagesFragment$7;

    iget-object v1, v1, Lcom/helpshift/HSMessagesFragment$7;->this$0:Lcom/helpshift/HSMessagesFragment;

    invoke-static {v1}, Lcom/helpshift/HSMessagesFragment;->access$1000(Lcom/helpshift/HSMessagesFragment;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 508
    return-void
.end method
