.class Lcom/helpshift/HSApiData$6;
.super Landroid/os/Handler;
.source "HSApiData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/HSApiData;->createIssue(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/HSApiData;

.field final synthetic val$failure:Landroid/os/Handler;

.field final synthetic val$messageText:Ljava/lang/String;

.field final synthetic val$metaInfo:Lorg/json/JSONObject;

.field final synthetic val$profileId:Ljava/lang/String;

.field final synthetic val$success:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/helpshift/HSApiData;Lorg/json/JSONObject;Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 637
    iput-object p1, p0, Lcom/helpshift/HSApiData$6;->this$0:Lcom/helpshift/HSApiData;

    iput-object p2, p0, Lcom/helpshift/HSApiData$6;->val$metaInfo:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/helpshift/HSApiData$6;->val$success:Landroid/os/Handler;

    iput-object p4, p0, Lcom/helpshift/HSApiData$6;->val$failure:Landroid/os/Handler;

    iput-object p5, p0, Lcom/helpshift/HSApiData$6;->val$profileId:Ljava/lang/String;

    iput-object p6, p0, Lcom/helpshift/HSApiData$6;->val$messageText:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 640
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/util/HashMap;

    .line 641
    .local v7, "result":Ljava/util/HashMap;
    const-string/jumbo v0, "status"

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 642
    .local v8, "status":Ljava/lang/Integer;
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x19d

    if-ne v0, v1, :cond_0

    .line 643
    iget-object v0, p0, Lcom/helpshift/HSApiData$6;->val$metaInfo:Lorg/json/JSONObject;

    const-string/jumbo v1, "custom_meta"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 644
    iget-object v0, p0, Lcom/helpshift/HSApiData$6;->this$0:Lcom/helpshift/HSApiData;

    iget-object v0, v0, Lcom/helpshift/HSApiData;->client:Lcom/helpshift/HSApiClient;

    iget-object v1, p0, Lcom/helpshift/HSApiData$6;->val$success:Landroid/os/Handler;

    iget-object v2, p0, Lcom/helpshift/HSApiData$6;->val$failure:Landroid/os/Handler;

    iget-object v3, p0, Lcom/helpshift/HSApiData$6;->val$profileId:Ljava/lang/String;

    iget-object v4, p0, Lcom/helpshift/HSApiData$6;->val$messageText:Ljava/lang/String;

    iget-object v5, p0, Lcom/helpshift/HSApiData$6;->val$metaInfo:Lorg/json/JSONObject;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/helpshift/HSApiClient;->createIssue(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    :goto_0
    return-void

    .line 647
    :cond_0
    iget-object v0, p0, Lcom/helpshift/HSApiData$6;->val$failure:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v6

    .line 648
    .local v6, "fmsg":Landroid/os/Message;
    iput-object v7, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 649
    iget-object v0, p0, Lcom/helpshift/HSApiData$6;->val$failure:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
