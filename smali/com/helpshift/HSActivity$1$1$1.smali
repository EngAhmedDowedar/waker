.class Lcom/helpshift/HSActivity$1$1$1;
.super Ljava/lang/Object;
.source "HSActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/HSActivity$1$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/helpshift/HSActivity$1$1;


# direct methods
.method constructor <init>(Lcom/helpshift/HSActivity$1$1;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/helpshift/HSActivity$1$1$1;->this$2:Lcom/helpshift/HSActivity$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/helpshift/HSActivity$1$1$1;->this$2:Lcom/helpshift/HSActivity$1$1;

    iget-object v0, v0, Lcom/helpshift/HSActivity$1$1;->this$1:Lcom/helpshift/HSActivity$1;

    iget-object v0, v0, Lcom/helpshift/HSActivity$1;->this$0:Lcom/helpshift/HSActivity;

    iget-object v1, p0, Lcom/helpshift/HSActivity$1$1$1;->this$2:Lcom/helpshift/HSActivity$1$1;

    iget-object v1, v1, Lcom/helpshift/HSActivity$1$1;->this$1:Lcom/helpshift/HSActivity$1;

    iget-object v1, v1, Lcom/helpshift/HSActivity$1;->this$0:Lcom/helpshift/HSActivity;

    invoke-static {v1}, Lcom/helpshift/HSActivity;->access$100(Lcom/helpshift/HSActivity;)Lcom/helpshift/HSApiData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/helpshift/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/helpshift/HSActivity;->access$200(Lcom/helpshift/HSActivity;Ljava/lang/String;)V

    .line 85
    return-void
.end method
