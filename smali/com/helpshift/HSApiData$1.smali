.class Lcom/helpshift/HSApiData$1;
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

.field final synthetic val$callback:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/helpshift/HSApiData;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/helpshift/HSApiData$1;->this$0:Lcom/helpshift/HSApiData;

    iput-object p2, p0, Lcom/helpshift/HSApiData$1;->val$callback:Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 132
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/util/HashMap;

    .line 135
    .local v3, "result":Ljava/util/HashMap;
    if-eqz v3, :cond_0

    .line 136
    const-string/jumbo v4, "response"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    .line 138
    .local v0, "faqs":Lorg/json/JSONArray;
    iget-object v4, p0, Lcom/helpshift/HSApiData$1;->this$0:Lcom/helpshift/HSApiData;

    invoke-static {v4}, Lcom/helpshift/HSApiData;->access$000(Lcom/helpshift/HSApiData;)Lcom/helpshift/storage/SectionDAO;

    move-result-object v4

    invoke-interface {v4}, Lcom/helpshift/storage/SectionDAO;->clearSectionsData()V

    .line 139
    iget-object v4, p0, Lcom/helpshift/HSApiData$1;->this$0:Lcom/helpshift/HSApiData;

    invoke-static {v4}, Lcom/helpshift/HSApiData;->access$000(Lcom/helpshift/HSApiData;)Lcom/helpshift/storage/SectionDAO;

    move-result-object v4

    invoke-interface {v4, v0}, Lcom/helpshift/storage/SectionDAO;->storeSections(Lorg/json/JSONArray;)V

    .line 140
    iget-object v4, p0, Lcom/helpshift/HSApiData$1;->val$callback:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 141
    .local v2, "msgToPost":Landroid/os/Message;
    iget-object v4, p0, Lcom/helpshift/HSApiData$1;->this$0:Lcom/helpshift/HSApiData;

    invoke-static {v4}, Lcom/helpshift/HSApiData;->access$000(Lcom/helpshift/HSApiData;)Lcom/helpshift/storage/SectionDAO;

    move-result-object v4

    invoke-interface {v4}, Lcom/helpshift/storage/SectionDAO;->getAllSections()Ljava/util/List;

    move-result-object v4

    iput-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 142
    iget-object v4, p0, Lcom/helpshift/HSApiData$1;->val$callback:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 143
    new-instance v1, Ljava/lang/Thread;

    new-instance v4, Lcom/helpshift/HSApiData$1$1;

    invoke-direct {v4, p0}, Lcom/helpshift/HSApiData$1$1;-><init>(Lcom/helpshift/HSApiData$1;)V

    invoke-direct {v1, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 150
    .local v1, "indexThread":Ljava/lang/Thread;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 151
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 154
    .end local v0    # "faqs":Lorg/json/JSONArray;
    .end local v1    # "indexThread":Ljava/lang/Thread;
    .end local v2    # "msgToPost":Landroid/os/Message;
    :cond_0
    invoke-static {}, Lcom/helpshift/HSApiData;->signalFaqsUpdated()V

    .line 155
    return-void
.end method
