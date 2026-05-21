.class Lcom/helpshift/HSMessagesFragment$10;
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
    .line 707
    iput-object p1, p0, Lcom/helpshift/HSMessagesFragment$10;->this$0:Lcom/helpshift/HSMessagesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 710
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/helpshift/HSMessagesFragment$10;->this$0:Lcom/helpshift/HSMessagesFragment;

    invoke-static {v1}, Lcom/helpshift/HSMessagesFragment;->access$700(Lcom/helpshift/HSMessagesFragment;)Lcom/helpshift/HSActivity;

    move-result-object v1

    const-class v2, Lcom/helpshift/HSConversation;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 711
    .local v0, "i":Landroid/content/Intent;
    const-string/jumbo v1, "showInFullScreen"

    iget-object v2, p0, Lcom/helpshift/HSMessagesFragment$10;->this$0:Lcom/helpshift/HSMessagesFragment;

    invoke-static {v2}, Lcom/helpshift/HSMessagesFragment;->access$700(Lcom/helpshift/HSMessagesFragment;)Lcom/helpshift/HSActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/helpshift/util/HSActivityUtil;->isFullScreen(Landroid/app/Activity;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 712
    const-string/jumbo v1, "newConversation"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 713
    iget-object v1, p0, Lcom/helpshift/HSMessagesFragment$10;->this$0:Lcom/helpshift/HSMessagesFragment;

    invoke-static {v1}, Lcom/helpshift/HSMessagesFragment;->access$2100(Lcom/helpshift/HSMessagesFragment;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 714
    const-string/jumbo v1, "isRoot"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 715
    iget-object v1, p0, Lcom/helpshift/HSMessagesFragment$10;->this$0:Lcom/helpshift/HSMessagesFragment;

    invoke-virtual {v1}, Lcom/helpshift/HSMessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Landroid/support/v4/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 716
    iget-object v1, p0, Lcom/helpshift/HSMessagesFragment$10;->this$0:Lcom/helpshift/HSMessagesFragment;

    invoke-static {v1}, Lcom/helpshift/HSMessagesFragment;->access$1500(Lcom/helpshift/HSMessagesFragment;)Lcom/helpshift/HSStorage;

    move-result-object v1

    const-string/jumbo v2, ""

    iget-object v3, p0, Lcom/helpshift/HSMessagesFragment$10;->this$0:Lcom/helpshift/HSMessagesFragment;

    invoke-static {v3}, Lcom/helpshift/HSMessagesFragment;->access$1300(Lcom/helpshift/HSMessagesFragment;)Lcom/helpshift/HSApiData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/helpshift/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/helpshift/HSStorage;->setArchivedConversation(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    return-void
.end method
