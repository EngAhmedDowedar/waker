.class Lcom/helpshift/HSMessagesFragment$9;
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
    .line 690
    iput-object p1, p0, Lcom/helpshift/HSMessagesFragment$9;->this$0:Lcom/helpshift/HSMessagesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 693
    const-string/jumbo v0, "message-filing"

    invoke-static {v0}, Lcom/helpshift/HelpshiftContext;->setViewState(Ljava/lang/String;)V

    .line 694
    iget-object v0, p0, Lcom/helpshift/HSMessagesFragment$9;->this$0:Lcom/helpshift/HSMessagesFragment;

    invoke-static {v0}, Lcom/helpshift/HSMessagesFragment;->access$000(Lcom/helpshift/HSMessagesFragment;)V

    .line 695
    iget-object v0, p0, Lcom/helpshift/HSMessagesFragment$9;->this$0:Lcom/helpshift/HSMessagesFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/helpshift/HSMessagesFragment;->access$1702(Lcom/helpshift/HSMessagesFragment;Z)Z

    .line 696
    iget-object v0, p0, Lcom/helpshift/HSMessagesFragment$9;->this$0:Lcom/helpshift/HSMessagesFragment;

    invoke-static {v0}, Lcom/helpshift/HSMessagesFragment;->access$1900(Lcom/helpshift/HSMessagesFragment;)V

    .line 697
    iget-object v0, p0, Lcom/helpshift/HSMessagesFragment$9;->this$0:Lcom/helpshift/HSMessagesFragment;

    invoke-static {v0}, Lcom/helpshift/HSMessagesFragment;->access$1400(Lcom/helpshift/HSMessagesFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 698
    iget-object v0, p0, Lcom/helpshift/HSMessagesFragment$9;->this$0:Lcom/helpshift/HSMessagesFragment;

    iget-object v1, p0, Lcom/helpshift/HSMessagesFragment$9;->this$0:Lcom/helpshift/HSMessagesFragment;

    invoke-static {v1}, Lcom/helpshift/HSMessagesFragment;->access$1400(Lcom/helpshift/HSMessagesFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/helpshift/HSMessagesFragment;->access$2000(Lcom/helpshift/HSMessagesFragment;Landroid/view/View;)V

    .line 700
    :cond_0
    iget-object v0, p0, Lcom/helpshift/HSMessagesFragment$9;->this$0:Lcom/helpshift/HSMessagesFragment;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/helpshift/HSMessagesFragment;->access$1600(Lcom/helpshift/HSMessagesFragment;Ljava/lang/Boolean;)V

    .line 701
    iget-object v0, p0, Lcom/helpshift/HSMessagesFragment$9;->this$0:Lcom/helpshift/HSMessagesFragment;

    invoke-static {v0}, Lcom/helpshift/HSMessagesFragment;->access$1800(Lcom/helpshift/HSMessagesFragment;)Lcom/helpshift/Helpshift$HelpshiftDelegate;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 702
    iget-object v0, p0, Lcom/helpshift/HSMessagesFragment$9;->this$0:Lcom/helpshift/HSMessagesFragment;

    invoke-static {v0}, Lcom/helpshift/HSMessagesFragment;->access$1800(Lcom/helpshift/HSMessagesFragment;)Lcom/helpshift/Helpshift$HelpshiftDelegate;

    move-result-object v0

    const-string/jumbo v1, "User rejected the solution"

    invoke-interface {v0, v1}, Lcom/helpshift/Helpshift$HelpshiftDelegate;->userRepliedToConversation(Ljava/lang/String;)V

    .line 704
    :cond_1
    return-void
.end method
