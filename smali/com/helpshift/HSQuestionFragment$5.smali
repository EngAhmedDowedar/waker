.class Lcom/helpshift/HSQuestionFragment$5;
.super Ljava/lang/Object;
.source "HSQuestionFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/HSQuestionFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/HSQuestionFragment;


# direct methods
.method constructor <init>(Lcom/helpshift/HSQuestionFragment;)V
    .locals 0

    .prologue
    .line 448
    iput-object p1, p0, Lcom/helpshift/HSQuestionFragment$5;->this$0:Lcom/helpshift/HSQuestionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 451
    iget-object v0, p0, Lcom/helpshift/HSQuestionFragment$5;->this$0:Lcom/helpshift/HSQuestionFragment;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/helpshift/HSQuestionFragment;->access$1002(Lcom/helpshift/HSQuestionFragment;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 452
    iget-object v0, p0, Lcom/helpshift/HSQuestionFragment$5;->this$0:Lcom/helpshift/HSQuestionFragment;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iget-object v2, p0, Lcom/helpshift/HSQuestionFragment$5;->this$0:Lcom/helpshift/HSQuestionFragment;

    iget-object v2, v2, Lcom/helpshift/HSQuestionFragment;->markFailHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/helpshift/HSQuestionFragment$5;->this$0:Lcom/helpshift/HSQuestionFragment;

    invoke-static {v3}, Lcom/helpshift/HSQuestionFragment;->access$300(Lcom/helpshift/HSQuestionFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/helpshift/HSQuestionFragment;->access$500(Lcom/helpshift/HSQuestionFragment;Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 453
    const-string/jumbo v0, "u"

    iget-object v1, p0, Lcom/helpshift/HSQuestionFragment$5;->this$0:Lcom/helpshift/HSQuestionFragment;

    invoke-static {v1}, Lcom/helpshift/HSQuestionFragment;->access$600(Lcom/helpshift/HSQuestionFragment;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/helpshift/HSFunnel;->pushEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 454
    iget-object v0, p0, Lcom/helpshift/HSQuestionFragment$5;->this$0:Lcom/helpshift/HSQuestionFragment;

    invoke-static {v0}, Lcom/helpshift/HSQuestionFragment;->access$1100(Lcom/helpshift/HSQuestionFragment;)V

    .line 455
    iget-object v0, p0, Lcom/helpshift/HSQuestionFragment$5;->this$0:Lcom/helpshift/HSQuestionFragment;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/helpshift/HSQuestionFragment;->access$800(Lcom/helpshift/HSQuestionFragment;Ljava/lang/Boolean;)V

    .line 456
    return-void
.end method
