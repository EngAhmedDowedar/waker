.class Lcom/helpshift/HSApiData$18;
.super Landroid/os/Handler;
.source "HSApiData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/HSApiData;->sendFailedMessages()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/HSApiData;


# direct methods
.method constructor <init>(Lcom/helpshift/HSApiData;)V
    .locals 0

    .prologue
    .line 1407
    iput-object p1, p0, Lcom/helpshift/HSApiData$18;->this$0:Lcom/helpshift/HSApiData;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1410
    iget-object v1, p0, Lcom/helpshift/HSApiData$18;->this$0:Lcom/helpshift/HSApiData;

    invoke-virtual {v1}, Lcom/helpshift/HSApiData;->sendFailedMessages()V

    .line 1411
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.helpshift.failedMessageRequest"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1412
    .local v0, "i":Landroid/content/Intent;
    iget-object v1, p0, Lcom/helpshift/HSApiData$18;->this$0:Lcom/helpshift/HSApiData;

    invoke-static {v1}, Lcom/helpshift/HSApiData;->access$400(Lcom/helpshift/HSApiData;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1413
    return-void
.end method
