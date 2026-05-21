.class Lcom/helpshift/HSAddIssueFragment$2;
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
    .line 147
    iput-object p1, p0, Lcom/helpshift/HSAddIssueFragment$2;->this$0:Lcom/helpshift/HSAddIssueFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 150
    :try_start_0
    iget-object v13, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Ljava/util/HashMap;

    .line 151
    .local v13, "result":Ljava/util/HashMap;
    const-string/jumbo v0, "response"

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/json/JSONObject;

    .line 152
    .local v10, "issue":Lorg/json/JSONObject;
    iget-object v0, p0, Lcom/helpshift/HSAddIssueFragment$2;->this$0:Lcom/helpshift/HSAddIssueFragment;

    const-string/jumbo v1, "id"

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/helpshift/HSAddIssueFragment;->access$202(Lcom/helpshift/HSAddIssueFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 153
    new-instance v11, Lorg/json/JSONArray;

    invoke-direct {v11}, Lorg/json/JSONArray;-><init>()V

    .line 154
    .local v11, "issues":Lorg/json/JSONArray;
    invoke-virtual {v11, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 155
    iget-object v0, p0, Lcom/helpshift/HSAddIssueFragment$2;->this$0:Lcom/helpshift/HSAddIssueFragment;

    invoke-static {v0}, Lcom/helpshift/HSAddIssueFragment;->access$400(Lcom/helpshift/HSAddIssueFragment;)Lcom/helpshift/HSStorage;

    move-result-object v0

    const-string/jumbo v1, "created_at"

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/helpshift/HSAddIssueFragment$2;->this$0:Lcom/helpshift/HSAddIssueFragment;

    invoke-static {v2}, Lcom/helpshift/HSAddIssueFragment;->access$300(Lcom/helpshift/HSAddIssueFragment;)Lcom/helpshift/HSApiData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/helpshift/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/helpshift/HSStorage;->setIssuesTs(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/helpshift/HSAddIssueFragment$2;->this$0:Lcom/helpshift/HSAddIssueFragment;

    invoke-static {v0}, Lcom/helpshift/HSAddIssueFragment;->access$400(Lcom/helpshift/HSAddIssueFragment;)Lcom/helpshift/HSStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/helpshift/HSAddIssueFragment$2;->this$0:Lcom/helpshift/HSAddIssueFragment;

    invoke-static {v1}, Lcom/helpshift/HSAddIssueFragment;->access$300(Lcom/helpshift/HSAddIssueFragment;)Lcom/helpshift/HSApiData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/helpshift/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v11, v1}, Lcom/helpshift/HSStorage;->storeIssues(Lorg/json/JSONArray;Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/helpshift/HSAddIssueFragment$2;->this$0:Lcom/helpshift/HSAddIssueFragment;

    invoke-static {v0}, Lcom/helpshift/HSAddIssueFragment;->access$300(Lcom/helpshift/HSAddIssueFragment;)Lcom/helpshift/HSApiData;

    move-result-object v0

    iget-object v1, p0, Lcom/helpshift/HSAddIssueFragment$2;->this$0:Lcom/helpshift/HSAddIssueFragment;

    invoke-static {v1}, Lcom/helpshift/HSAddIssueFragment;->access$500(Lcom/helpshift/HSAddIssueFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/helpshift/HSApiData;->setUsername(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/helpshift/HSAddIssueFragment$2;->this$0:Lcom/helpshift/HSAddIssueFragment;

    invoke-static {v0}, Lcom/helpshift/HSAddIssueFragment;->access$300(Lcom/helpshift/HSAddIssueFragment;)Lcom/helpshift/HSApiData;

    move-result-object v0

    iget-object v1, p0, Lcom/helpshift/HSAddIssueFragment$2;->this$0:Lcom/helpshift/HSAddIssueFragment;

    invoke-static {v1}, Lcom/helpshift/HSAddIssueFragment;->access$600(Lcom/helpshift/HSAddIssueFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/helpshift/HSApiData;->setEmail(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/helpshift/HSAddIssueFragment$2;->this$0:Lcom/helpshift/HSAddIssueFragment;

    invoke-static {v0}, Lcom/helpshift/HSAddIssueFragment;->access$400(Lcom/helpshift/HSAddIssueFragment;)Lcom/helpshift/HSStorage;

    move-result-object v0

    const-string/jumbo v1, ""

    iget-object v2, p0, Lcom/helpshift/HSAddIssueFragment$2;->this$0:Lcom/helpshift/HSAddIssueFragment;

    invoke-static {v2}, Lcom/helpshift/HSAddIssueFragment;->access$300(Lcom/helpshift/HSAddIssueFragment;)Lcom/helpshift/HSApiData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/helpshift/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/helpshift/HSStorage;->storeReply(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/helpshift/HSAddIssueFragment$2;->this$0:Lcom/helpshift/HSAddIssueFragment;

    invoke-static {v0}, Lcom/helpshift/HSAddIssueFragment;->access$400(Lcom/helpshift/HSAddIssueFragment;)Lcom/helpshift/HSStorage;

    move-result-object v0

    const-string/jumbo v1, ""

    iget-object v2, p0, Lcom/helpshift/HSAddIssueFragment$2;->this$0:Lcom/helpshift/HSAddIssueFragment;

    invoke-static {v2}, Lcom/helpshift/HSAddIssueFragment;->access$300(Lcom/helpshift/HSAddIssueFragment;)Lcom/helpshift/HSApiData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/helpshift/HSApiData;->getLoginId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/helpshift/HSStorage;->storeConversationDetail(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/helpshift/HSAddIssueFragment$2;->this$0:Lcom/helpshift/HSAddIssueFragment;

    invoke-static {v0}, Lcom/helpshift/HSAddIssueFragment;->access$700(Lcom/helpshift/HSAddIssueFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 162
    .local v12, "newConversationMessage":Ljava/lang/String;
    iget-object v0, p0, Lcom/helpshift/HSAddIssueFragment$2;->this$0:Lcom/helpshift/HSAddIssueFragment;

    invoke-static {v0}, Lcom/helpshift/HSAddIssueFragment;->access$700(Lcom/helpshift/HSAddIssueFragment;)Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    const-string/jumbo v0, "p"

    invoke-static {v0}, Lcom/helpshift/HSFunnel;->pushEvent(Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/helpshift/HSAddIssueFragment$2;->this$0:Lcom/helpshift/HSAddIssueFragment;

    invoke-static {v0}, Lcom/helpshift/HSAddIssueFragment;->access$800(Lcom/helpshift/HSAddIssueFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/helpshift/HSAddIssueFragment$2;->this$0:Lcom/helpshift/HSAddIssueFragment;

    invoke-static {v0}, Lcom/helpshift/HSAddIssueFragment;->access$400(Lcom/helpshift/HSAddIssueFragment;)Lcom/helpshift/HSStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/helpshift/HSAddIssueFragment$2;->this$0:Lcom/helpshift/HSAddIssueFragment;

    invoke-static {v1}, Lcom/helpshift/HSAddIssueFragment;->access$200(Lcom/helpshift/HSAddIssueFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/helpshift/HSStorage;->setForegroundIssue(Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/helpshift/HSAddIssueFragment$2;->this$0:Lcom/helpshift/HSAddIssueFragment;

    iget-object v1, p0, Lcom/helpshift/HSAddIssueFragment$2;->this$0:Lcom/helpshift/HSAddIssueFragment;

    invoke-static {v1}, Lcom/helpshift/HSAddIssueFragment;->access$400(Lcom/helpshift/HSAddIssueFragment;)Lcom/helpshift/HSStorage;

    move-result-object v1

    iget-object v2, p0, Lcom/helpshift/HSAddIssueFragment$2;->this$0:Lcom/helpshift/HSAddIssueFragment;

    invoke-static {v2}, Lcom/helpshift/HSAddIssueFragment;->access$200(Lcom/helpshift/HSAddIssueFragment;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/helpshift/HSAddIssueFragment$2;->this$0:Lcom/helpshift/HSAddIssueFragment;

    invoke-static {v3}, Lcom/helpshift/HSAddIssueFragment;->access$800(Lcom/helpshift/HSAddIssueFragment;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lcom/helpshift/util/AttachmentUtil;->addAndGetLocalRscMsg(Lcom/helpshift/HSStorage;Ljava/lang/String;Ljava/lang/String;Z)Lcom/helpshift/viewstructs/HSMsg;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/helpshift/HSAddIssueFragment;->access$902(Lcom/helpshift/HSAddIssueFragment;Lcom/helpshift/viewstructs/HSMsg;)Lcom/helpshift/viewstructs/HSMsg;

    .line 169
    iget-object v0, p0, Lcom/helpshift/HSAddIssueFragment$2;->this$0:Lcom/helpshift/HSAddIssueFragment;

    invoke-static {v0}, Lcom/helpshift/HSAddIssueFragment;->access$1200(Lcom/helpshift/HSAddIssueFragment;)Lcom/helpshift/HSApiClient;

    move-result-object v0

    iget-object v1, p0, Lcom/helpshift/HSAddIssueFragment$2;->this$0:Lcom/helpshift/HSAddIssueFragment;

    invoke-static {v1}, Lcom/helpshift/HSAddIssueFragment;->access$1000(Lcom/helpshift/HSAddIssueFragment;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/helpshift/HSAddIssueFragment$2;->this$0:Lcom/helpshift/HSAddIssueFragment;

    invoke-static {v2}, Lcom/helpshift/HSAddIssueFragment;->access$1100(Lcom/helpshift/HSAddIssueFragment;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/helpshift/HSAddIssueFragment$2;->this$0:Lcom/helpshift/HSAddIssueFragment;

    invoke-static {v3}, Lcom/helpshift/HSAddIssueFragment;->access$300(Lcom/helpshift/HSAddIssueFragment;)Lcom/helpshift/HSApiData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/helpshift/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/helpshift/HSAddIssueFragment$2;->this$0:Lcom/helpshift/HSAddIssueFragment;

    invoke-static {v4}, Lcom/helpshift/HSAddIssueFragment;->access$200(Lcom/helpshift/HSAddIssueFragment;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    const-string/jumbo v6, "sc"

    iget-object v7, p0, Lcom/helpshift/HSAddIssueFragment$2;->this$0:Lcom/helpshift/HSAddIssueFragment;

    invoke-static {v7}, Lcom/helpshift/HSAddIssueFragment;->access$900(Lcom/helpshift/HSAddIssueFragment;)Lcom/helpshift/viewstructs/HSMsg;

    move-result-object v7

    iget-object v7, v7, Lcom/helpshift/viewstructs/HSMsg;->id:Ljava/lang/String;

    iget-object v8, p0, Lcom/helpshift/HSAddIssueFragment$2;->this$0:Lcom/helpshift/HSAddIssueFragment;

    invoke-static {v8}, Lcom/helpshift/HSAddIssueFragment;->access$900(Lcom/helpshift/HSAddIssueFragment;)Lcom/helpshift/viewstructs/HSMsg;

    move-result-object v8

    iget-object v8, v8, Lcom/helpshift/viewstructs/HSMsg;->screenshot:Ljava/lang/String;

    invoke-virtual/range {v0 .. v8}, Lcom/helpshift/HSApiClient;->addScMessage(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :goto_0
    iget-object v0, p0, Lcom/helpshift/HSAddIssueFragment$2;->this$0:Lcom/helpshift/HSAddIssueFragment;

    invoke-static {v0}, Lcom/helpshift/HSAddIssueFragment;->access$300(Lcom/helpshift/HSAddIssueFragment;)Lcom/helpshift/HSApiData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpshift/HSApiData;->startInAppService()V

    .line 176
    iget-object v0, p0, Lcom/helpshift/HSAddIssueFragment$2;->this$0:Lcom/helpshift/HSAddIssueFragment;

    invoke-static {v0}, Lcom/helpshift/HSAddIssueFragment;->access$1400(Lcom/helpshift/HSAddIssueFragment;)Lcom/helpshift/Helpshift$HelpshiftDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/helpshift/HSAddIssueFragment$2;->this$0:Lcom/helpshift/HSAddIssueFragment;

    invoke-static {v0}, Lcom/helpshift/HSAddIssueFragment;->access$1400(Lcom/helpshift/HSAddIssueFragment;)Lcom/helpshift/Helpshift$HelpshiftDelegate;

    move-result-object v0

    invoke-interface {v0, v12}, Lcom/helpshift/Helpshift$HelpshiftDelegate;->newConversationStarted(Ljava/lang/String;)V

    .line 182
    .end local v10    # "issue":Lorg/json/JSONObject;
    .end local v11    # "issues":Lorg/json/JSONArray;
    .end local v12    # "newConversationMessage":Ljava/lang/String;
    .end local v13    # "result":Ljava/util/HashMap;
    :cond_0
    :goto_1
    return-void

    .line 173
    .restart local v10    # "issue":Lorg/json/JSONObject;
    .restart local v11    # "issues":Lorg/json/JSONArray;
    .restart local v12    # "newConversationMessage":Ljava/lang/String;
    .restart local v13    # "result":Ljava/util/HashMap;
    :cond_1
    iget-object v0, p0, Lcom/helpshift/HSAddIssueFragment$2;->this$0:Lcom/helpshift/HSAddIssueFragment;

    invoke-static {v0}, Lcom/helpshift/HSAddIssueFragment;->access$1300(Lcom/helpshift/HSAddIssueFragment;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 179
    .end local v10    # "issue":Lorg/json/JSONObject;
    .end local v11    # "issues":Lorg/json/JSONArray;
    .end local v12    # "newConversationMessage":Ljava/lang/String;
    .end local v13    # "result":Ljava/util/HashMap;
    :catch_0
    move-exception v9

    .line 180
    .local v9, "e":Lorg/json/JSONException;
    const-string/jumbo v0, "HelpShiftDebug"

    invoke-virtual {v9}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
