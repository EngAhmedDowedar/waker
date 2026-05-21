.class Lcom/helpshift/HSAddIssueFragment$6;
.super Landroid/os/Handler;
.source "HSAddIssueFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/HSAddIssueFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/HSAddIssueFragment;


# direct methods
.method constructor <init>(Lcom/helpshift/HSAddIssueFragment;)V
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Lcom/helpshift/HSAddIssueFragment$6;->this$0:Lcom/helpshift/HSAddIssueFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 251
    :try_start_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashMap;

    .line 252
    .local v2, "result":Ljava/util/HashMap;
    const-string/jumbo v3, "response"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 253
    .local v1, "profileResult":Lorg/json/JSONObject;
    iget-object v3, p0, Lcom/helpshift/HSAddIssueFragment$6;->this$0:Lcom/helpshift/HSAddIssueFragment;

    invoke-static {v3}, Lcom/helpshift/HSAddIssueFragment;->access$300(Lcom/helpshift/HSAddIssueFragment;)Lcom/helpshift/HSApiData;

    move-result-object v3

    const-string/jumbo v4, "id"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/helpshift/HSApiData;->setProfileId(Ljava/lang/String;)V

    .line 254
    iget-object v3, p0, Lcom/helpshift/HSAddIssueFragment$6;->this$0:Lcom/helpshift/HSAddIssueFragment;

    invoke-static {v3}, Lcom/helpshift/HSAddIssueFragment;->access$300(Lcom/helpshift/HSAddIssueFragment;)Lcom/helpshift/HSApiData;

    move-result-object v3

    new-instance v4, Lcom/helpshift/HSAddIssueFragment$6$1;

    invoke-direct {v4, p0}, Lcom/helpshift/HSAddIssueFragment$6$1;-><init>(Lcom/helpshift/HSAddIssueFragment$6;)V

    iget-object v5, p0, Lcom/helpshift/HSAddIssueFragment$6;->this$0:Lcom/helpshift/HSAddIssueFragment;

    invoke-static {v5}, Lcom/helpshift/HSAddIssueFragment;->access$1700(Lcom/helpshift/HSAddIssueFragment;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/helpshift/HSApiData;->getIssues(Landroid/os/Handler;Landroid/os/Handler;)V

    .line 265
    iget-object v3, p0, Lcom/helpshift/HSAddIssueFragment$6;->this$0:Lcom/helpshift/HSAddIssueFragment;

    invoke-static {v3}, Lcom/helpshift/HSAddIssueFragment;->access$300(Lcom/helpshift/HSAddIssueFragment;)Lcom/helpshift/HSApiData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/helpshift/HSApiData;->updateUAToken()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    .end local v1    # "profileResult":Lorg/json/JSONObject;
    .end local v2    # "result":Ljava/util/HashMap;
    :goto_0
    return-void

    .line 266
    :catch_0
    move-exception v0

    .line 267
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v3, "HelpShiftDebug"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
