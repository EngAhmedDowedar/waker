.class Lcom/helpshift/HSApiData$9;
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


# direct methods
.method constructor <init>(Lcom/helpshift/HSApiData;Ljava/lang/String;Ljava/lang/Boolean;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 743
    iput-object p1, p0, Lcom/helpshift/HSApiData$9;->this$0:Lcom/helpshift/HSApiData;

    iput-object p2, p0, Lcom/helpshift/HSApiData$9;->val$faqId:Ljava/lang/String;

    iput-object p3, p0, Lcom/helpshift/HSApiData$9;->val$helpful:Ljava/lang/Boolean;

    iput-object p4, p0, Lcom/helpshift/HSApiData$9;->val$failure:Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 746
    iget-object v1, p0, Lcom/helpshift/HSApiData$9;->this$0:Lcom/helpshift/HSApiData;

    invoke-static {v1}, Lcom/helpshift/HSApiData;->access$500(Lcom/helpshift/HSApiData;)Lcom/helpshift/storage/FaqDAO;

    move-result-object v1

    iget-object v2, p0, Lcom/helpshift/HSApiData$9;->val$faqId:Ljava/lang/String;

    iget-object v3, p0, Lcom/helpshift/HSApiData$9;->val$helpful:Ljava/lang/Boolean;

    invoke-interface {v1, v2, v3}, Lcom/helpshift/storage/FaqDAO;->setIsHelpful(Ljava/lang/String;Ljava/lang/Boolean;)I

    .line 747
    iget-object v1, p0, Lcom/helpshift/HSApiData$9;->val$failure:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 748
    .local v0, "msgToPost":Landroid/os/Message;
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 749
    iget-object v1, p0, Lcom/helpshift/HSApiData$9;->val$failure:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 750
    return-void
.end method
