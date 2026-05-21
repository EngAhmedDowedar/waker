.class Lcom/helpshift/HSApiData$10;
.super Landroid/os/Handler;
.source "HSApiData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/HSApiData;->getNotificationCount(Landroid/os/Handler;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/HSApiData;

.field final synthetic val$success:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/helpshift/HSApiData;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 826
    iput-object p1, p0, Lcom/helpshift/HSApiData$10;->this$0:Lcom/helpshift/HSApiData;

    iput-object p2, p0, Lcom/helpshift/HSApiData$10;->val$success:Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 829
    iget-object v3, p0, Lcom/helpshift/HSApiData$10;->this$0:Lcom/helpshift/HSApiData;

    iget-object v3, v3, Lcom/helpshift/HSApiData;->storage:Lcom/helpshift/HSStorage;

    iget-object v4, p0, Lcom/helpshift/HSApiData$10;->this$0:Lcom/helpshift/HSApiData;

    invoke-virtual {v4}, Lcom/helpshift/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/helpshift/HSStorage;->getActiveNotifCnt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 830
    .local v0, "activeCnt":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/helpshift/HSApiData$10;->val$success:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 831
    .local v2, "msgToPost":Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 832
    .local v1, "countData":Landroid/os/Bundle;
    const-string/jumbo v3, "value"

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 833
    const-string/jumbo v3, "cache"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 834
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 835
    iget-object v3, p0, Lcom/helpshift/HSApiData$10;->val$success:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 836
    return-void
.end method
