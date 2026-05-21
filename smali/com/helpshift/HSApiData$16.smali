.class Lcom/helpshift/HSApiData$16;
.super Landroid/os/Handler;
.source "HSApiData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/HSApiData;->getSection(Ljava/lang/String;Landroid/os/Handler;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/HSApiData;

.field final synthetic val$publishId:Ljava/lang/String;

.field final synthetic val$success:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/helpshift/HSApiData;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 1248
    iput-object p1, p0, Lcom/helpshift/HSApiData$16;->this$0:Lcom/helpshift/HSApiData;

    iput-object p2, p0, Lcom/helpshift/HSApiData$16;->val$publishId:Ljava/lang/String;

    iput-object p3, p0, Lcom/helpshift/HSApiData$16;->val$success:Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1251
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1252
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    .line 1253
    .local v1, "sections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/helpshift/Section;>;"
    iget-object v3, p0, Lcom/helpshift/HSApiData$16;->this$0:Lcom/helpshift/HSApiData;

    invoke-static {v3}, Lcom/helpshift/HSApiData;->access$000(Lcom/helpshift/HSApiData;)Lcom/helpshift/storage/SectionDAO;

    move-result-object v3

    iget-object v4, p0, Lcom/helpshift/HSApiData$16;->val$publishId:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/helpshift/storage/SectionDAO;->getSection(Ljava/lang/String;)Lcom/helpshift/Section;

    move-result-object v2

    .line 1255
    .local v2, "toReturn":Lcom/helpshift/Section;
    iget-object v3, p0, Lcom/helpshift/HSApiData$16;->val$success:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1256
    .local v0, "msgToPost":Landroid/os/Message;
    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1257
    iget-object v3, p0, Lcom/helpshift/HSApiData$16;->val$success:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1258
    return-void
.end method
