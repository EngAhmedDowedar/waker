.class Lcom/helpshift/HSApiData$23;
.super Landroid/os/Handler;
.source "HSApiData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/HSApiData;->sendCustomerSatisfactionSurvey(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/HSApiData;

.field final synthetic val$apiFailHandler:Landroid/os/Handler;

.field final synthetic val$issueId:Ljava/lang/String;

.field final synthetic val$success:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/helpshift/HSApiData;Ljava/lang/String;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 1660
    iput-object p1, p0, Lcom/helpshift/HSApiData$23;->this$0:Lcom/helpshift/HSApiData;

    iput-object p2, p0, Lcom/helpshift/HSApiData$23;->val$issueId:Ljava/lang/String;

    iput-object p3, p0, Lcom/helpshift/HSApiData$23;->val$success:Landroid/os/Handler;

    iput-object p4, p0, Lcom/helpshift/HSApiData$23;->val$apiFailHandler:Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1663
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 1664
    iget-object v2, p0, Lcom/helpshift/HSApiData$23;->this$0:Lcom/helpshift/HSApiData;

    iget-object v3, p0, Lcom/helpshift/HSApiData$23;->val$issueId:Ljava/lang/String;

    sget-object v4, Lcom/helpshift/HSApiData$HS_ISSUE_CSAT_STATE;->CSAT_RETRYING:Lcom/helpshift/HSApiData$HS_ISSUE_CSAT_STATE;

    invoke-virtual {v2, v3, v4}, Lcom/helpshift/HSApiData;->setCSatState(Ljava/lang/String;Lcom/helpshift/HSApiData$HS_ISSUE_CSAT_STATE;)Ljava/lang/Boolean;

    .line 1666
    iget-object v2, p0, Lcom/helpshift/HSApiData$23;->val$success:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 1667
    .local v1, "result":Landroid/os/Message;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1668
    .local v0, "failureMessage":Ljava/util/HashMap;
    const-string/jumbo v2, "status"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1669
    const-string/jumbo v2, "id"

    iget-object v3, p0, Lcom/helpshift/HSApiData$23;->val$issueId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1671
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1672
    iget-object v2, p0, Lcom/helpshift/HSApiData$23;->val$apiFailHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1674
    .end local v0    # "failureMessage":Ljava/util/HashMap;
    .end local v1    # "result":Landroid/os/Message;
    :cond_0
    return-void
.end method
