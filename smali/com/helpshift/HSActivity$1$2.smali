.class Lcom/helpshift/HSActivity$1$2;
.super Ljava/lang/Object;
.source "HSActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 90
    iput-object p1, p0, Lcom/helpshift/HSActivity$1$2;->this$1:Lcom/helpshift/HSActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 94
    :try_start_0
    iget-object v1, p0, Lcom/helpshift/HSActivity$1$2;->this$1:Lcom/helpshift/HSActivity$1;

    iget-object v1, v1, Lcom/helpshift/HSActivity$1;->this$0:Lcom/helpshift/HSActivity;

    invoke-static {v1}, Lcom/helpshift/HSActivity;->access$100(Lcom/helpshift/HSActivity;)Lcom/helpshift/HSApiData;

    move-result-object v1

    iget-object v2, p0, Lcom/helpshift/HSActivity$1$2;->this$1:Lcom/helpshift/HSActivity$1;

    iget-object v2, v2, Lcom/helpshift/HSActivity$1;->this$0:Lcom/helpshift/HSActivity;

    invoke-static {v2}, Lcom/helpshift/HSActivity;->access$000(Lcom/helpshift/HSActivity;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v1, v2, v3}, Lcom/helpshift/HSApiData;->getLatestIssues(Landroid/os/Handler;Landroid/os/Handler;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :goto_0
    iget-object v1, p0, Lcom/helpshift/HSActivity$1$2;->this$1:Lcom/helpshift/HSActivity$1;

    iget-object v1, v1, Lcom/helpshift/HSActivity$1;->this$0:Lcom/helpshift/HSActivity;

    invoke-static {v1}, Lcom/helpshift/HSActivity;->access$000(Lcom/helpshift/HSActivity;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 100
    return-void

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v1, "HelpShiftDebug"

    const-string/jumbo v2, "get issues"

    invoke-static {v1, v2, v0}, Lcom/helpshift/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
