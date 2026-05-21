.class Lcom/helpshift/HSApiData$22;
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

.field final synthetic val$issueId:Ljava/lang/String;

.field final synthetic val$success:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/helpshift/HSApiData;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1634
    iput-object p1, p0, Lcom/helpshift/HSApiData$22;->this$0:Lcom/helpshift/HSApiData;

    iput-object p2, p0, Lcom/helpshift/HSApiData$22;->val$success:Landroid/os/Handler;

    iput-object p3, p0, Lcom/helpshift/HSApiData$22;->val$issueId:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1637
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 1638
    iget-object v2, p0, Lcom/helpshift/HSApiData$22;->val$success:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1639
    .local v0, "result":Landroid/os/Message;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1640
    .local v1, "successMessage":Ljava/util/HashMap;
    const-string/jumbo v2, "status"

    const/16 v3, 0xc8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1641
    const-string/jumbo v2, "id"

    iget-object v3, p0, Lcom/helpshift/HSApiData$22;->val$issueId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1642
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1643
    iget-object v2, p0, Lcom/helpshift/HSApiData$22;->val$success:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1645
    .end local v0    # "result":Landroid/os/Message;
    .end local v1    # "successMessage":Ljava/util/HashMap;
    :cond_0
    return-void
.end method
