.class final Lcom/helpshift/Helpshift$1;
.super Landroid/os/Handler;
.source "Helpshift.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/Helpshift;->install(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 417
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 419
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/helpshift/res/values/HSConfig;->updateConfig(Lorg/json/JSONObject;)V

    .line 420
    invoke-static {}, Lcom/helpshift/Helpshift;->access$100()Lcom/helpshift/HSStorage;

    move-result-object v0

    invoke-static {}, Lcom/helpshift/Helpshift;->access$000()Lcom/helpshift/HSApiData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/helpshift/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/helpshift/HSStorage;->updateActiveConversation(Ljava/lang/String;)V

    .line 421
    return-void
.end method
