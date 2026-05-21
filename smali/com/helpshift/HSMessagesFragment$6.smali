.class Lcom/helpshift/HSMessagesFragment$6;
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
    .line 163
    iput-object p1, p0, Lcom/helpshift/HSMessagesFragment$6;->this$0:Lcom/helpshift/HSMessagesFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 165
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 166
    iget-object v0, p0, Lcom/helpshift/HSMessagesFragment$6;->this$0:Lcom/helpshift/HSMessagesFragment;

    invoke-static {v0}, Lcom/helpshift/HSMessagesFragment;->access$600(Lcom/helpshift/HSMessagesFragment;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/helpshift/HSMessagesFragment$6;->this$0:Lcom/helpshift/HSMessagesFragment;

    invoke-static {v0}, Lcom/helpshift/HSMessagesFragment;->access$600(Lcom/helpshift/HSMessagesFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/helpshift/HSMessagesFragment$6;->this$0:Lcom/helpshift/HSMessagesFragment;

    invoke-static {v0}, Lcom/helpshift/HSMessagesFragment;->access$000(Lcom/helpshift/HSMessagesFragment;)V

    .line 170
    return-void
.end method
