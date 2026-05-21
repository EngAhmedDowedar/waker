.class Lcom/helpshift/HSActivity$1;
.super Ljava/lang/Object;
.source "HSActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/HSActivity;->startPoller()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/HSActivity;


# direct methods
.method constructor <init>(Lcom/helpshift/HSActivity;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/helpshift/HSActivity$1;->this$0:Lcom/helpshift/HSActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 79
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 80
    iget-object v1, p0, Lcom/helpshift/HSActivity$1;->this$0:Lcom/helpshift/HSActivity;

    new-instance v2, Lcom/helpshift/HSActivity$1$1;

    invoke-direct {v2, p0}, Lcom/helpshift/HSActivity$1$1;-><init>(Lcom/helpshift/HSActivity$1;)V

    invoke-static {v1, v2}, Lcom/helpshift/HSActivity;->access$002(Lcom/helpshift/HSActivity;Landroid/os/Handler;)Landroid/os/Handler;

    .line 90
    new-instance v0, Lcom/helpshift/HSActivity$1$2;

    invoke-direct {v0, p0}, Lcom/helpshift/HSActivity$1$2;-><init>(Lcom/helpshift/HSActivity$1;)V

    .line 102
    .local v0, "m_handlerTask":Ljava/lang/Runnable;
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 103
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 104
    return-void
.end method
