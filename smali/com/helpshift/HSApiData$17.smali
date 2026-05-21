.class Lcom/helpshift/HSApiData$17;
.super Landroid/os/Handler;
.source "HSApiData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/HSApiData;->getQuestionAsync(Ljava/lang/String;Landroid/os/Handler;Landroid/os/Handler;)V
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
    .line 1301
    iput-object p1, p0, Lcom/helpshift/HSApiData$17;->this$0:Lcom/helpshift/HSApiData;

    iput-object p2, p0, Lcom/helpshift/HSApiData$17;->val$success:Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 18
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1304
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/helpshift/HSApiData$17;->val$success:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v14

    .line 1305
    .local v14, "msgToPost":Landroid/os/Message;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Ljava/util/HashMap;

    .line 1307
    .local v16, "result":Ljava/util/HashMap;
    if-eqz v16, :cond_0

    .line 1308
    :try_start_0
    const-string/jumbo v4, "response"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/json/JSONObject;

    .line 1309
    .local v15, "question":Lorg/json/JSONObject;
    new-instance v3, Lcom/helpshift/Faq;

    const-wide/16 v4, 0x0

    const-string/jumbo v6, "id"

    invoke-virtual {v15, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "publish_id"

    invoke-virtual {v15, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/helpshift/HSApiData$17;->this$0:Lcom/helpshift/HSApiData;

    const-string/jumbo v9, "section_id"

    invoke-virtual {v15, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/helpshift/HSApiData;->access$600(Lcom/helpshift/HSApiData;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "title"

    invoke-virtual {v15, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "body"

    invoke-virtual {v15, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const-string/jumbo v12, "is_rtl"

    invoke-virtual {v15, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "true"

    if-ne v12, v13, :cond_1

    const/4 v12, 0x1

    :goto_0
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const-string/jumbo v13, "stags"

    invoke-virtual {v15, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v13, v0, :cond_2

    const-string/jumbo v13, "stags"

    invoke-virtual {v15, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/helpshift/util/HSJSONUtils;->jsonToStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    :goto_1
    invoke-direct/range {v3 .. v13}, Lcom/helpshift/Faq;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Boolean;Ljava/util/List;)V

    .line 1318
    .local v3, "newFaq":Lcom/helpshift/Faq;
    iput-object v3, v14, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1319
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/helpshift/HSApiData$17;->val$success:Landroid/os/Handler;

    invoke-virtual {v4, v14}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1320
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/helpshift/HSApiData$17;->this$0:Lcom/helpshift/HSApiData;

    invoke-static {v4}, Lcom/helpshift/HSApiData;->access$500(Lcom/helpshift/HSApiData;)Lcom/helpshift/storage/FaqDAO;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/helpshift/storage/FaqDAO;->addFaq(Lcom/helpshift/Faq;)V

    .line 1325
    .end local v3    # "newFaq":Lcom/helpshift/Faq;
    .end local v15    # "question":Lorg/json/JSONObject;
    :cond_0
    :goto_2
    return-void

    .line 1309
    .restart local v15    # "question":Lorg/json/JSONObject;
    :cond_1
    const/4 v12, 0x0

    goto :goto_0

    :cond_2
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1322
    .end local v15    # "question":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 1323
    .local v2, "e":Lorg/json/JSONException;
    const-string/jumbo v4, "HelpShiftDebug"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Exception in getting question "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
