.class Lcom/helpshift/HSMessagesFragment$20;
.super Landroid/os/Handler;
.source "HSMessagesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/HSMessagesFragment;->retryMessage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/HSMessagesFragment;

.field final synthetic val$id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/helpshift/HSMessagesFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1434
    iput-object p1, p0, Lcom/helpshift/HSMessagesFragment$20;->this$0:Lcom/helpshift/HSMessagesFragment;

    iput-object p2, p0, Lcom/helpshift/HSMessagesFragment$20;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1436
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1438
    :try_start_0
    iget-object v1, p0, Lcom/helpshift/HSMessagesFragment$20;->this$0:Lcom/helpshift/HSMessagesFragment;

    invoke-static {v1}, Lcom/helpshift/HSMessagesFragment;->access$1300(Lcom/helpshift/HSMessagesFragment;)Lcom/helpshift/HSApiData;

    move-result-object v1

    iget-object v1, v1, Lcom/helpshift/HSApiData;->storage:Lcom/helpshift/HSStorage;

    iget-object v2, p0, Lcom/helpshift/HSMessagesFragment$20;->val$id:Ljava/lang/String;

    iget-object v3, p0, Lcom/helpshift/HSMessagesFragment$20;->this$0:Lcom/helpshift/HSMessagesFragment;

    invoke-static {v3}, Lcom/helpshift/HSMessagesFragment;->access$1300(Lcom/helpshift/HSMessagesFragment;)Lcom/helpshift/HSApiData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/helpshift/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/helpshift/HSStorage;->popFailedMessage(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1442
    :goto_0
    iget-object v1, p0, Lcom/helpshift/HSMessagesFragment$20;->this$0:Lcom/helpshift/HSMessagesFragment;

    invoke-static {v1}, Lcom/helpshift/HSMessagesFragment;->access$000(Lcom/helpshift/HSMessagesFragment;)V

    .line 1443
    return-void

    .line 1439
    :catch_0
    move-exception v0

    .line 1440
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v1, "HelpShiftDebug"

    const-string/jumbo v2, "addMessageHandler"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
