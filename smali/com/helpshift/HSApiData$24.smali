.class Lcom/helpshift/HSApiData$24;
.super Landroid/os/Handler;
.source "HSApiData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/HSApiData;->login(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/HSApiData;


# direct methods
.method constructor <init>(Lcom/helpshift/HSApiData;)V
    .locals 0

    .prologue
    .line 1820
    iput-object p1, p0, Lcom/helpshift/HSApiData$24;->this$0:Lcom/helpshift/HSApiData;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1823
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1824
    iget-object v0, p0, Lcom/helpshift/HSApiData$24;->this$0:Lcom/helpshift/HSApiData;

    invoke-virtual {v0}, Lcom/helpshift/HSApiData;->showNotifications()V

    .line 1825
    return-void
.end method
