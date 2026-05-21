.class Lcom/helpshift/HSMessagesFragment$5;
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
    .line 157
    iput-object p1, p0, Lcom/helpshift/HSMessagesFragment$5;->this$0:Lcom/helpshift/HSMessagesFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/helpshift/HSMessagesFragment$5;->this$0:Lcom/helpshift/HSMessagesFragment;

    invoke-static {v0, p1}, Lcom/helpshift/HSMessagesFragment;->access$800(Lcom/helpshift/HSMessagesFragment;Landroid/os/Message;)V

    .line 160
    return-void
.end method
