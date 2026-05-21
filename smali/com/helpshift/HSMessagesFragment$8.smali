.class Lcom/helpshift/HSMessagesFragment$8;
.super Ljava/lang/Object;
.source "HSMessagesFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/HSMessagesFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/HSMessagesFragment;


# direct methods
.method constructor <init>(Lcom/helpshift/HSMessagesFragment;)V
    .locals 0

    .prologue
    .line 676
    iput-object p1, p0, Lcom/helpshift/HSMessagesFragment$8;->this$0:Lcom/helpshift/HSMessagesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 679
    iget-object v0, p0, Lcom/helpshift/HSMessagesFragment$8;->this$0:Lcom/helpshift/HSMessagesFragment;

    invoke-static {v0}, Lcom/helpshift/HSMessagesFragment;->access$1400(Lcom/helpshift/HSMessagesFragment;)Landroid/widget/EditText;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 680
    iget-object v0, p0, Lcom/helpshift/HSMessagesFragment$8;->this$0:Lcom/helpshift/HSMessagesFragment;

    invoke-static {v0}, Lcom/helpshift/HSMessagesFragment;->access$1500(Lcom/helpshift/HSMessagesFragment;)Lcom/helpshift/HSStorage;

    move-result-object v0

    const-string/jumbo v1, ""

    iget-object v2, p0, Lcom/helpshift/HSMessagesFragment$8;->this$0:Lcom/helpshift/HSMessagesFragment;

    invoke-static {v2}, Lcom/helpshift/HSMessagesFragment;->access$1300(Lcom/helpshift/HSMessagesFragment;)Lcom/helpshift/HSApiData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/helpshift/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/helpshift/HSStorage;->storeReply(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    iget-object v0, p0, Lcom/helpshift/HSMessagesFragment$8;->this$0:Lcom/helpshift/HSMessagesFragment;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/helpshift/HSMessagesFragment;->access$1600(Lcom/helpshift/HSMessagesFragment;Ljava/lang/Boolean;)V

    .line 682
    iget-object v0, p0, Lcom/helpshift/HSMessagesFragment$8;->this$0:Lcom/helpshift/HSMessagesFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/helpshift/HSMessagesFragment;->access$1702(Lcom/helpshift/HSMessagesFragment;Z)Z

    .line 683
    iget-object v0, p0, Lcom/helpshift/HSMessagesFragment$8;->this$0:Lcom/helpshift/HSMessagesFragment;

    invoke-static {v0}, Lcom/helpshift/HSMessagesFragment;->access$300(Lcom/helpshift/HSMessagesFragment;)V

    .line 684
    iget-object v0, p0, Lcom/helpshift/HSMessagesFragment$8;->this$0:Lcom/helpshift/HSMessagesFragment;

    invoke-static {v0}, Lcom/helpshift/HSMessagesFragment;->access$1800(Lcom/helpshift/HSMessagesFragment;)Lcom/helpshift/Helpshift$HelpshiftDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 685
    iget-object v0, p0, Lcom/helpshift/HSMessagesFragment$8;->this$0:Lcom/helpshift/HSMessagesFragment;

    invoke-static {v0}, Lcom/helpshift/HSMessagesFragment;->access$1800(Lcom/helpshift/HSMessagesFragment;)Lcom/helpshift/Helpshift$HelpshiftDelegate;

    move-result-object v0

    const-string/jumbo v1, "User accepted the solution"

    invoke-interface {v0, v1}, Lcom/helpshift/Helpshift$HelpshiftDelegate;->userRepliedToConversation(Ljava/lang/String;)V

    .line 687
    :cond_0
    return-void
.end method
