.class Lcom/helpshift/HSApiData$8;
.super Landroid/os/Handler;
.source "HSApiData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/HSApiData;->markQuestion(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/HSApiData;

.field final synthetic val$failure:Landroid/os/Handler;

.field final synthetic val$faqId:Ljava/lang/String;

.field final synthetic val$helpful:Ljava/lang/Boolean;

.field final synthetic val$success:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/helpshift/HSApiData;Ljava/lang/String;Ljava/lang/Boolean;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 722
    iput-object p1, p0, Lcom/helpshift/HSApiData$8;->this$0:Lcom/helpshift/HSApiData;

    iput-object p2, p0, Lcom/helpshift/HSApiData$8;->val$faqId:Ljava/lang/String;

    iput-object p3, p0, Lcom/helpshift/HSApiData$8;->val$helpful:Ljava/lang/Boolean;

    iput-object p4, p0, Lcom/helpshift/HSApiData$8;->val$success:Landroid/os/Handler;

    iput-object p5, p0, Lcom/helpshift/HSApiData$8;->val$failure:Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 726
    :try_start_0
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/util/HashMap;

    .line 727
    .local v3, "result":Ljava/util/HashMap;
    const-string/jumbo v4, "response"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 728
    .local v1, "markResult":Lorg/json/JSONObject;
    const-string/jumbo v4, "status"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "marked"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 729
    iget-object v4, p0, Lcom/helpshift/HSApiData$8;->this$0:Lcom/helpshift/HSApiData;

    invoke-static {v4}, Lcom/helpshift/HSApiData;->access$500(Lcom/helpshift/HSApiData;)Lcom/helpshift/storage/FaqDAO;

    move-result-object v4

    iget-object v5, p0, Lcom/helpshift/HSApiData$8;->val$faqId:Ljava/lang/String;

    iget-object v6, p0, Lcom/helpshift/HSApiData$8;->val$helpful:Ljava/lang/Boolean;

    invoke-interface {v4, v5, v6}, Lcom/helpshift/storage/FaqDAO;->setIsHelpful(Ljava/lang/String;Ljava/lang/Boolean;)I

    .line 731
    iget-object v4, p0, Lcom/helpshift/HSApiData$8;->val$success:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 732
    .local v2, "msgToPost":Landroid/os/Message;
    iget-object v4, p0, Lcom/helpshift/HSApiData$8;->val$helpful:Ljava/lang/Boolean;

    iput-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 733
    iget-object v4, p0, Lcom/helpshift/HSApiData$8;->val$success:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 740
    .end local v1    # "markResult":Lorg/json/JSONObject;
    .end local v2    # "msgToPost":Landroid/os/Message;
    .end local v3    # "result":Ljava/util/HashMap;
    :cond_0
    :goto_0
    return-void

    .line 735
    :catch_0
    move-exception v0

    .line 736
    .local v0, "e":Lorg/json/JSONException;
    iget-object v4, p0, Lcom/helpshift/HSApiData$8;->val$failure:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 737
    .restart local v2    # "msgToPost":Landroid/os/Message;
    iget-object v4, p0, Lcom/helpshift/HSApiData$8;->val$failure:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 738
    const-string/jumbo v4, "HelpShiftDebug"

    const-string/jumbo v5, "JSON Exception"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
