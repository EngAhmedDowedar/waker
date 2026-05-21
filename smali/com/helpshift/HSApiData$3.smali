.class Lcom/helpshift/HSApiData$3;
.super Landroid/os/Handler;
.source "HSApiData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/HSApiData;->getAndStoreConfig(Landroid/os/Handler;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/HSApiData;

.field final synthetic val$callback:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/helpshift/HSApiData;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/helpshift/HSApiData$3;->this$0:Lcom/helpshift/HSApiData;

    iput-object p2, p0, Lcom/helpshift/HSApiData$3;->val$callback:Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v9, 0xa

    .line 178
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/util/HashMap;

    .line 181
    .local v3, "result":Ljava/util/HashMap;
    if-eqz v3, :cond_2

    .line 182
    const-string/jumbo v7, "response"

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 183
    .local v0, "config":Lorg/json/JSONObject;
    iget-object v7, p0, Lcom/helpshift/HSApiData$3;->this$0:Lcom/helpshift/HSApiData;

    iget-object v7, v7, Lcom/helpshift/HSApiData;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {v7}, Lcom/helpshift/HSStorage;->getBreadCrumbsLimit()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const-string/jumbo v8, "bcl"

    invoke-virtual {v0, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    if-eq v7, v8, :cond_0

    .line 184
    iget-object v7, p0, Lcom/helpshift/HSApiData$3;->this$0:Lcom/helpshift/HSApiData;

    iget-object v7, v7, Lcom/helpshift/HSApiData;->storage:Lcom/helpshift/HSStorage;

    const-string/jumbo v8, "bcl"

    invoke-virtual {v0, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/helpshift/HSStorage;->updateBreadCrumbsLimit(Ljava/lang/Integer;)V

    .line 187
    :cond_0
    :try_start_0
    iget-object v7, p0, Lcom/helpshift/HSApiData$3;->this$0:Lcom/helpshift/HSApiData;

    iget-object v7, v7, Lcom/helpshift/HSApiData;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {v7}, Lcom/helpshift/HSStorage;->getConfig()Lorg/json/JSONObject;

    move-result-object v5

    .line 188
    .local v5, "storedConfig":Lorg/json/JSONObject;
    const-string/jumbo v7, "pr"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 189
    .local v6, "storedReviewConfig":Lorg/json/JSONObject;
    const-string/jumbo v7, "pr"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 190
    .local v4, "reviewConfig":Lorg/json/JSONObject;
    if-eqz v6, :cond_1

    const-string/jumbo v7, "t"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "t"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 192
    iget-object v7, p0, Lcom/helpshift/HSApiData$3;->this$0:Lcom/helpshift/HSApiData;

    invoke-virtual {v7}, Lcom/helpshift/HSApiData;->resetReviewCounter()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    .end local v4    # "reviewConfig":Lorg/json/JSONObject;
    .end local v5    # "storedConfig":Lorg/json/JSONObject;
    .end local v6    # "storedReviewConfig":Lorg/json/JSONObject;
    :cond_1
    :goto_0
    iget-object v7, p0, Lcom/helpshift/HSApiData$3;->this$0:Lcom/helpshift/HSApiData;

    iget-object v7, v7, Lcom/helpshift/HSApiData;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {v7, v0}, Lcom/helpshift/HSStorage;->setConfig(Lorg/json/JSONObject;)V

    .line 198
    iget-object v7, p0, Lcom/helpshift/HSApiData$3;->val$callback:Landroid/os/Handler;

    invoke-virtual {v7}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 199
    .local v2, "msgToPost":Landroid/os/Message;
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 200
    iget-object v7, p0, Lcom/helpshift/HSApiData$3;->val$callback:Landroid/os/Handler;

    invoke-virtual {v7, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 202
    .end local v0    # "config":Lorg/json/JSONObject;
    .end local v2    # "msgToPost":Landroid/os/Message;
    :cond_2
    return-void

    .line 194
    .restart local v0    # "config":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 195
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v7, "HelpShiftDebug"

    const-string/jumbo v8, "Reseting counter"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
