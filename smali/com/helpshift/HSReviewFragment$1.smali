.class Lcom/helpshift/HSReviewFragment$1;
.super Ljava/lang/Object;
.source "HSReviewFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/HSReviewFragment;->initAlertDialog(Landroid/support/v4/app/FragmentActivity;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/HSReviewFragment;


# direct methods
.method constructor <init>(Lcom/helpshift/HSReviewFragment;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/helpshift/HSReviewFragment$1;->this$0:Lcom/helpshift/HSReviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 92
    :try_start_0
    iget-object v1, p0, Lcom/helpshift/HSReviewFragment$1;->this$0:Lcom/helpshift/HSReviewFragment;

    invoke-static {v1}, Lcom/helpshift/HSReviewFragment;->access$000(Lcom/helpshift/HSReviewFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    iget-object v1, p0, Lcom/helpshift/HSReviewFragment$1;->this$0:Lcom/helpshift/HSReviewFragment;

    iget-object v2, p0, Lcom/helpshift/HSReviewFragment$1;->this$0:Lcom/helpshift/HSReviewFragment;

    invoke-static {v2}, Lcom/helpshift/HSReviewFragment;->access$100(Lcom/helpshift/HSReviewFragment;)Lcom/helpshift/HSStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/helpshift/HSStorage;->getConfig()Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v3, "rurl"

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/helpshift/HSReviewFragment;->access$002(Lcom/helpshift/HSReviewFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 95
    :cond_0
    iget-object v1, p0, Lcom/helpshift/HSReviewFragment$1;->this$0:Lcom/helpshift/HSReviewFragment;

    iget-object v2, p0, Lcom/helpshift/HSReviewFragment$1;->this$0:Lcom/helpshift/HSReviewFragment;

    invoke-static {v2}, Lcom/helpshift/HSReviewFragment;->access$000(Lcom/helpshift/HSReviewFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/helpshift/HSReviewFragment;->access$002(Lcom/helpshift/HSReviewFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 96
    iget-object v1, p0, Lcom/helpshift/HSReviewFragment$1;->this$0:Lcom/helpshift/HSReviewFragment;

    invoke-static {v1}, Lcom/helpshift/HSReviewFragment;->access$000(Lcom/helpshift/HSReviewFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 97
    iget-object v1, p0, Lcom/helpshift/HSReviewFragment$1;->this$0:Lcom/helpshift/HSReviewFragment;

    iget-object v2, p0, Lcom/helpshift/HSReviewFragment$1;->this$0:Lcom/helpshift/HSReviewFragment;

    invoke-static {v2}, Lcom/helpshift/HSReviewFragment;->access$000(Lcom/helpshift/HSReviewFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/helpshift/HSReviewFragment;->access$200(Lcom/helpshift/HSReviewFragment;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :cond_1
    :goto_0
    const-string/jumbo v1, "reviewed"

    invoke-static {v1}, Lcom/helpshift/HSFunnel;->pushAppReviewedEvent(Ljava/lang/String;)V

    .line 103
    iget-object v1, p0, Lcom/helpshift/HSReviewFragment$1;->this$0:Lcom/helpshift/HSReviewFragment;

    sget-object v2, Lcom/helpshift/Helpshift$HS_RATE_ALERT;->SUCCESS:Lcom/helpshift/Helpshift$HS_RATE_ALERT;

    invoke-static {v1, v2}, Lcom/helpshift/HSReviewFragment;->access$300(Lcom/helpshift/HSReviewFragment;Lcom/helpshift/Helpshift$HS_RATE_ALERT;)V

    .line 104
    return-void

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v1, "HelpShiftDebug"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/helpshift/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
