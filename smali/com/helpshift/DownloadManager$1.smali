.class Lcom/helpshift/DownloadManager$1;
.super Landroid/os/Handler;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/DownloadManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/DownloadManager;


# direct methods
.method constructor <init>(Lcom/helpshift/DownloadManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/helpshift/DownloadManager$1;->this$0:Lcom/helpshift/DownloadManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 59
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/helpshift/DownloadTask;

    .line 60
    .local v8, "task":Lcom/helpshift/DownloadTask;
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 109
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 111
    :cond_0
    :goto_0
    :pswitch_1
    return-void

    .line 64
    :pswitch_2
    invoke-static {}, Lcom/helpshift/DownloadManager;->access$000()Lcom/helpshift/DownloadTaskCallBacks;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    invoke-static {}, Lcom/helpshift/DownloadManager;->access$000()Lcom/helpshift/DownloadTaskCallBacks;

    move-result-object v1

    invoke-virtual {v8}, Lcom/helpshift/DownloadTask;->getProgress()D

    move-result-wide v2

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v8}, Lcom/helpshift/DownloadTask;->getMsgId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8}, Lcom/helpshift/DownloadTask;->getIssueId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8}, Lcom/helpshift/DownloadTask;->getDownloadType()I

    move-result v7

    invoke-interface/range {v1 .. v7}, Lcom/helpshift/DownloadTaskCallBacks;->onProgressChanged(DILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 73
    :pswitch_3
    invoke-static {}, Lcom/helpshift/DownloadManager;->access$000()Lcom/helpshift/DownloadTaskCallBacks;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    invoke-static {}, Lcom/helpshift/DownloadManager;->access$000()Lcom/helpshift/DownloadTaskCallBacks;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v8}, Lcom/helpshift/DownloadTask;->getMsgId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Lcom/helpshift/DownloadTask;->getIssueId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/helpshift/DownloadTask;->getDownloadType()I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/helpshift/DownloadTaskCallBacks;->onDownloadTaskPaused(ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 81
    :pswitch_4
    invoke-static {}, Lcom/helpshift/DownloadManager;->access$000()Lcom/helpshift/DownloadTaskCallBacks;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    invoke-static {}, Lcom/helpshift/DownloadManager;->access$000()Lcom/helpshift/DownloadTaskCallBacks;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v8}, Lcom/helpshift/DownloadTask;->getMsgId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Lcom/helpshift/DownloadTask;->getIssueId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/helpshift/DownloadTask;->getDownloadType()I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/helpshift/DownloadTaskCallBacks;->onDownloadTaskResumed(ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 89
    :pswitch_5
    iget-object v0, p0, Lcom/helpshift/DownloadManager$1;->this$0:Lcom/helpshift/DownloadManager;

    invoke-virtual {v8}, Lcom/helpshift/DownloadTask;->getMsgId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/helpshift/DownloadManager;->access$100(Lcom/helpshift/DownloadManager;Ljava/lang/String;)V

    .line 90
    invoke-static {}, Lcom/helpshift/DownloadManager;->access$000()Lcom/helpshift/DownloadTaskCallBacks;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 91
    invoke-static {}, Lcom/helpshift/DownloadManager;->access$000()Lcom/helpshift/DownloadTaskCallBacks;

    move-result-object v0

    invoke-virtual {v8}, Lcom/helpshift/DownloadTask;->getDownloadedFilePath()Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v8}, Lcom/helpshift/DownloadTask;->getMsgId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/helpshift/DownloadTask;->getIssueId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8}, Lcom/helpshift/DownloadTask;->getDownloadType()I

    move-result v5

    invoke-interface/range {v0 .. v5}, Lcom/helpshift/DownloadTaskCallBacks;->onDownloadTaskComplete(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/helpshift/DownloadManager$1;->this$0:Lcom/helpshift/DownloadManager;

    invoke-virtual {v0, v8}, Lcom/helpshift/DownloadManager;->recycleTask(Lcom/helpshift/DownloadTask;)V

    goto/16 :goto_0

    .line 100
    :pswitch_6
    invoke-static {}, Lcom/helpshift/DownloadManager;->access$000()Lcom/helpshift/DownloadTaskCallBacks;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 101
    invoke-static {}, Lcom/helpshift/DownloadManager;->access$000()Lcom/helpshift/DownloadTaskCallBacks;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v8}, Lcom/helpshift/DownloadTask;->getMsgId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Lcom/helpshift/DownloadTask;->getIssueId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/helpshift/DownloadTask;->getDownloadType()I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/helpshift/DownloadTaskCallBacks;->onDownloadTaskFailed(ILjava/lang/String;Ljava/lang/String;I)V

    .line 106
    :cond_2
    iget-object v0, p0, Lcom/helpshift/DownloadManager$1;->this$0:Lcom/helpshift/DownloadManager;

    invoke-virtual {v0, v8}, Lcom/helpshift/DownloadManager;->recycleTask(Lcom/helpshift/DownloadTask;)V

    goto/16 :goto_0

    .line 60
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_2
    .end packed-switch
.end method
