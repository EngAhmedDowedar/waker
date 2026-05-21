.class Lcom/helpshift/HSApiData$2;
.super Landroid/os/Handler;
.source "HSApiData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/HSApiData;->getAndStoreSections(Landroid/os/Handler;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/HSApiData;

.field final synthetic val$failure:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/helpshift/HSApiData;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/helpshift/HSApiData$2;->this$0:Lcom/helpshift/HSApiData;

    iput-object p2, p0, Lcom/helpshift/HSApiData$2;->val$failure:Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 161
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    .line 162
    .local v1, "result":Ljava/util/HashMap;
    const/4 v2, 0x0

    sput-boolean v2, Lcom/helpshift/HSApiData;->faqsSyncing:Z

    .line 163
    iget-object v2, p0, Lcom/helpshift/HSApiData$2;->val$failure:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 164
    .local v0, "msgToPost":Landroid/os/Message;
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 165
    iget-object v2, p0, Lcom/helpshift/HSApiData$2;->val$failure:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 166
    return-void
.end method
