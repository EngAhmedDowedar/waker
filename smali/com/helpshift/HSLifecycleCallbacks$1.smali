.class Lcom/helpshift/HSLifecycleCallbacks$1;
.super Landroid/os/Handler;
.source "HSLifecycleCallbacks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/HSLifecycleCallbacks;->onActivityStarted(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/HSLifecycleCallbacks;


# direct methods
.method constructor <init>(Lcom/helpshift/HSLifecycleCallbacks;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/helpshift/HSLifecycleCallbacks$1;->this$0:Lcom/helpshift/HSLifecycleCallbacks;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 65
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lorg/json/JSONObject;

    invoke-static {v1}, Lcom/helpshift/res/values/HSConfig;->updateConfig(Lorg/json/JSONObject;)V

    .line 66
    invoke-static {}, Lcom/helpshift/HSLifecycleCallbacks;->access$000()Lcom/helpshift/HSApiData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/helpshift/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "profileId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 68
    invoke-static {}, Lcom/helpshift/HSLifecycleCallbacks;->access$100()Lcom/helpshift/HSStorage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/helpshift/HSStorage;->updateActiveConversation(Ljava/lang/String;)V

    .line 70
    :cond_0
    return-void
.end method
