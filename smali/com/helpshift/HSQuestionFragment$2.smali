.class Lcom/helpshift/HSQuestionFragment$2;
.super Landroid/os/Handler;
.source "HSQuestionFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/HSQuestionFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/HSQuestionFragment;


# direct methods
.method constructor <init>(Lcom/helpshift/HSQuestionFragment;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lcom/helpshift/HSQuestionFragment$2;->this$0:Lcom/helpshift/HSQuestionFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 247
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/helpshift/Faq;

    .line 248
    .local v2, "question":Lcom/helpshift/Faq;
    iget-object v3, p0, Lcom/helpshift/HSQuestionFragment$2;->this$0:Lcom/helpshift/HSQuestionFragment;

    invoke-virtual {v3}, Lcom/helpshift/HSQuestionFragment;->isResumed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 249
    iget-object v3, p0, Lcom/helpshift/HSQuestionFragment$2;->this$0:Lcom/helpshift/HSQuestionFragment;

    invoke-static {v3, v2}, Lcom/helpshift/HSQuestionFragment;->access$100(Lcom/helpshift/HSQuestionFragment;Lcom/helpshift/Faq;)V

    .line 255
    :cond_0
    iget-object v3, p0, Lcom/helpshift/HSQuestionFragment$2;->this$0:Lcom/helpshift/HSQuestionFragment;

    invoke-static {v3}, Lcom/helpshift/HSQuestionFragment;->access$200(Lcom/helpshift/HSQuestionFragment;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    .line 257
    :try_start_0
    iget-object v3, p0, Lcom/helpshift/HSQuestionFragment$2;->this$0:Lcom/helpshift/HSQuestionFragment;

    invoke-virtual {v2}, Lcom/helpshift/Faq;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/helpshift/HSQuestionFragment;->access$302(Lcom/helpshift/HSQuestionFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 258
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 259
    .local v1, "eventData":Lorg/json/JSONObject;
    const-string/jumbo v3, "id"

    iget-object v4, p0, Lcom/helpshift/HSQuestionFragment$2;->this$0:Lcom/helpshift/HSQuestionFragment;

    invoke-static {v4}, Lcom/helpshift/HSQuestionFragment;->access$300(Lcom/helpshift/HSQuestionFragment;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 260
    const-string/jumbo v3, "f"

    invoke-static {v3, v1}, Lcom/helpshift/HSFunnel;->pushEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 261
    iget-object v3, p0, Lcom/helpshift/HSQuestionFragment$2;->this$0:Lcom/helpshift/HSQuestionFragment;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/helpshift/HSQuestionFragment;->access$202(Lcom/helpshift/HSQuestionFragment;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    .end local v1    # "eventData":Lorg/json/JSONObject;
    :cond_1
    :goto_0
    return-void

    .line 262
    :catch_0
    move-exception v0

    .line 263
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v3, "HelpShiftDebug"

    const-string/jumbo v4, "JSONException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
