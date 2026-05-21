.class Lcom/helpshift/HSAddIssueFragment$4;
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
    .line 193
    iput-object p1, p0, Lcom/helpshift/HSAddIssueFragment$4;->this$0:Lcom/helpshift/HSAddIssueFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 196
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/util/HashMap;

    .line 197
    .local v4, "result":Ljava/util/HashMap;
    const-string/jumbo v5, "response"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 199
    .local v2, "message":Lorg/json/JSONObject;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 200
    .local v1, "eventData":Lorg/json/JSONObject;
    const-string/jumbo v5, "type"

    const-string/jumbo v6, "url"

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 201
    const-string/jumbo v5, "body"

    const-string/jumbo v6, "meta"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string/jumbo v7, "attachments"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string/jumbo v7, "url"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 202
    const-string/jumbo v5, "id"

    iget-object v6, p0, Lcom/helpshift/HSAddIssueFragment$4;->this$0:Lcom/helpshift/HSAddIssueFragment;

    invoke-static {v6}, Lcom/helpshift/HSAddIssueFragment;->access$200(Lcom/helpshift/HSAddIssueFragment;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 203
    const-string/jumbo v5, "m"

    invoke-static {v5, v1}, Lcom/helpshift/HSFunnel;->pushEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 204
    iget-object v5, p0, Lcom/helpshift/HSAddIssueFragment$4;->this$0:Lcom/helpshift/HSAddIssueFragment;

    invoke-static {v5}, Lcom/helpshift/HSAddIssueFragment;->access$1400(Lcom/helpshift/HSAddIssueFragment;)Lcom/helpshift/Helpshift$HelpshiftDelegate;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 205
    iget-object v5, p0, Lcom/helpshift/HSAddIssueFragment$4;->this$0:Lcom/helpshift/HSAddIssueFragment;

    invoke-static {v5}, Lcom/helpshift/HSAddIssueFragment;->access$1400(Lcom/helpshift/HSAddIssueFragment;)Lcom/helpshift/Helpshift$HelpshiftDelegate;

    move-result-object v5

    const-string/jumbo v6, "User sent a screenshot"

    invoke-interface {v5, v6}, Lcom/helpshift/Helpshift$HelpshiftDelegate;->userRepliedToConversation(Ljava/lang/String;)V

    .line 209
    :cond_0
    iget-object v5, p0, Lcom/helpshift/HSAddIssueFragment$4;->this$0:Lcom/helpshift/HSAddIssueFragment;

    invoke-virtual {v5}, Lcom/helpshift/HSAddIssueFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    iget-object v6, p0, Lcom/helpshift/HSAddIssueFragment$4;->this$0:Lcom/helpshift/HSAddIssueFragment;

    invoke-static {v6}, Lcom/helpshift/HSAddIssueFragment;->access$300(Lcom/helpshift/HSAddIssueFragment;)Lcom/helpshift/HSApiData;

    move-result-object v6

    iget-object v7, p0, Lcom/helpshift/HSAddIssueFragment$4;->this$0:Lcom/helpshift/HSAddIssueFragment;

    invoke-static {v7}, Lcom/helpshift/HSAddIssueFragment;->access$800(Lcom/helpshift/HSAddIssueFragment;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "meta"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    const-string/jumbo v9, "refers"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Lcom/helpshift/util/AttachmentUtil;->copyAttachment(Landroid/app/Activity;Lcom/helpshift/HSApiData;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 218
    .end local v1    # "eventData":Lorg/json/JSONObject;
    :goto_0
    :try_start_1
    const-string/jumbo v5, "meta"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string/jumbo v6, "refers"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 219
    .local v3, "refers":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 220
    invoke-static {v3}, Lcom/helpshift/storage/IssuesDataSource;->deleteMessage(Ljava/lang/String;)V

    .line 222
    :cond_1
    iget-object v5, p0, Lcom/helpshift/HSAddIssueFragment$4;->this$0:Lcom/helpshift/HSAddIssueFragment;

    invoke-static {v5}, Lcom/helpshift/HSAddIssueFragment;->access$300(Lcom/helpshift/HSAddIssueFragment;)Lcom/helpshift/HSApiData;

    move-result-object v5

    iget-object v6, p0, Lcom/helpshift/HSAddIssueFragment$4;->this$0:Lcom/helpshift/HSAddIssueFragment;

    invoke-static {v6}, Lcom/helpshift/HSAddIssueFragment;->access$1600(Lcom/helpshift/HSAddIssueFragment;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/helpshift/HSAddIssueFragment$4;->this$0:Lcom/helpshift/HSAddIssueFragment;

    invoke-static {v7}, Lcom/helpshift/HSAddIssueFragment;->access$1600(Lcom/helpshift/HSAddIssueFragment;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/helpshift/HSApiData;->getLatestIssues(Landroid/os/Handler;Landroid/os/Handler;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    .line 226
    .end local v3    # "refers":Ljava/lang/String;
    :goto_1
    return-void

    .line 211
    :catch_0
    move-exception v0

    .line 212
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v5, "HelpShiftDebug"

    const-string/jumbo v6, "Saving uploaded screenshot"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 213
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 214
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v5, "HelpShiftDebug"

    const-string/jumbo v6, "uploadSuccessHandler"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 223
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_2
    move-exception v0

    .line 224
    .restart local v0    # "e":Lorg/json/JSONException;
    const-string/jumbo v5, "HelpShiftDebug"

    const-string/jumbo v6, "uploadSuccessHandler"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
