.class final Lcom/helpshift/Helpshift$2;
.super Landroid/os/Handler;
.source "Helpshift.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/Helpshift;->getNotificationCount(Landroid/os/Handler;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$failure:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 494
    iput-object p1, p0, Lcom/helpshift/Helpshift$2;->val$failure:Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 497
    iget-object v1, p0, Lcom/helpshift/Helpshift$2;->val$failure:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 498
    iget-object v1, p0, Lcom/helpshift/Helpshift$2;->val$failure:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 499
    .local v0, "msgToPost":Landroid/os/Message;
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 500
    iget-object v1, p0, Lcom/helpshift/Helpshift$2;->val$failure:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 502
    .end local v0    # "msgToPost":Landroid/os/Message;
    :cond_0
    return-void
.end method
