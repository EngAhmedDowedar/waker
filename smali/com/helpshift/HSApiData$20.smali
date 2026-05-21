.class Lcom/helpshift/HSApiData$20;
.super Landroid/os/Handler;
.source "HSApiData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/HSApiData;->getApiSuccessHandler(Landroid/os/Handler;Ljava/lang/String;ILorg/json/JSONObject;)Landroid/os/Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/HSApiData;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$success:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/helpshift/HSApiData;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1472
    iput-object p1, p0, Lcom/helpshift/HSApiData$20;->this$0:Lcom/helpshift/HSApiData;

    iput-object p2, p0, Lcom/helpshift/HSApiData$20;->val$success:Landroid/os/Handler;

    iput-object p3, p0, Lcom/helpshift/HSApiData$20;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1475
    iget-object v2, p0, Lcom/helpshift/HSApiData$20;->val$success:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 1476
    .local v1, "msgToPost":Landroid/os/Message;
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1477
    iget-object v2, p0, Lcom/helpshift/HSApiData$20;->val$success:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1480
    :try_start_0
    iget-object v2, p0, Lcom/helpshift/HSApiData$20;->this$0:Lcom/helpshift/HSApiData;

    iget-object v2, v2, Lcom/helpshift/HSApiData;->storage:Lcom/helpshift/HSStorage;

    iget-object v3, p0, Lcom/helpshift/HSApiData$20;->val$key:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/helpshift/HSStorage;->storeFailedApiCall(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1484
    :goto_0
    return-void

    .line 1481
    :catch_0
    move-exception v0

    .line 1482
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v3, "JSONException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
