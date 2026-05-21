.class Lcom/helpshift/HSMessagesFragment$2;
.super Landroid/content/BroadcastReceiver;
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
    .line 61
    iput-object p1, p0, Lcom/helpshift/HSMessagesFragment$2;->this$0:Lcom/helpshift/HSMessagesFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/helpshift/HSMessagesFragment$2;->this$0:Lcom/helpshift/HSMessagesFragment;

    invoke-virtual {v0}, Lcom/helpshift/HSMessagesFragment;->startPoller()V

    .line 65
    return-void
.end method
