.class Lcom/helpshift/HSMessagesFragment$7;
.super Ljava/lang/Object;
.source "HSMessagesFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/HSMessagesFragment;->startPoller()V
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
    .line 499
    iput-object p1, p0, Lcom/helpshift/HSMessagesFragment$7;->this$0:Lcom/helpshift/HSMessagesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 502
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 503
    iget-object v1, p0, Lcom/helpshift/HSMessagesFragment$7;->this$0:Lcom/helpshift/HSMessagesFragment;

    new-instance v2, Lcom/helpshift/HSMessagesFragment$7$1;

    invoke-direct {v2, p0}, Lcom/helpshift/HSMessagesFragment$7$1;-><init>(Lcom/helpshift/HSMessagesFragment$7;)V

    invoke-static {v1, v2}, Lcom/helpshift/HSMessagesFragment;->access$602(Lcom/helpshift/HSMessagesFragment;Landroid/os/Handler;)Landroid/os/Handler;

    .line 511
    new-instance v0, Lcom/helpshift/HSMessagesFragment$7$2;

    invoke-direct {v0, p0}, Lcom/helpshift/HSMessagesFragment$7$2;-><init>(Lcom/helpshift/HSMessagesFragment$7;)V

    .line 525
    .local v0, "m_handlerTask":Ljava/lang/Runnable;
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 526
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 527
    return-void
.end method
