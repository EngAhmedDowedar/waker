.class Lcom/helpshift/HSActivity$1$1;
.super Landroid/os/Handler;
.source "HSActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/HSActivity$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/helpshift/HSActivity$1;


# direct methods
.method constructor <init>(Lcom/helpshift/HSActivity$1;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/helpshift/HSActivity$1$1;->this$1:Lcom/helpshift/HSActivity$1;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/helpshift/HSActivity$1$1;->this$1:Lcom/helpshift/HSActivity$1;

    iget-object v0, v0, Lcom/helpshift/HSActivity$1;->this$0:Lcom/helpshift/HSActivity;

    new-instance v1, Lcom/helpshift/HSActivity$1$1$1;

    invoke-direct {v1, p0}, Lcom/helpshift/HSActivity$1$1$1;-><init>(Lcom/helpshift/HSActivity$1$1;)V

    invoke-virtual {v0, v1}, Lcom/helpshift/HSActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 87
    return-void
.end method
