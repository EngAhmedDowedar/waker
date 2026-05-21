.class Lcom/helpshift/HSSectionFragment$2;
.super Ljava/lang/Object;
.source "HSSectionFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/HSSectionFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/HSSectionFragment;


# direct methods
.method constructor <init>(Lcom/helpshift/HSSectionFragment;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/helpshift/HSSectionFragment$2;->this$0:Lcom/helpshift/HSSectionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 134
    iget-object v1, p0, Lcom/helpshift/HSSectionFragment$2;->this$0:Lcom/helpshift/HSSectionFragment;

    invoke-static {v1}, Lcom/helpshift/HSSectionFragment;->access$200(Lcom/helpshift/HSSectionFragment;)V

    .line 135
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/helpshift/HSSectionFragment$2;->this$0:Lcom/helpshift/HSSectionFragment;

    invoke-static {v1}, Lcom/helpshift/HSSectionFragment;->access$300(Lcom/helpshift/HSSectionFragment;)Lcom/helpshift/HSActivity;

    move-result-object v1

    const-class v2, Lcom/helpshift/HSConversation;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 136
    .local v0, "i":Landroid/content/Intent;
    const-string/jumbo v1, "message"

    iget-object v2, p0, Lcom/helpshift/HSSectionFragment$2;->this$0:Lcom/helpshift/HSSectionFragment;

    invoke-static {v2}, Lcom/helpshift/HSSectionFragment;->access$400(Lcom/helpshift/HSSectionFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    iget-object v1, p0, Lcom/helpshift/HSSectionFragment$2;->this$0:Lcom/helpshift/HSSectionFragment;

    invoke-static {v1}, Lcom/helpshift/HSSectionFragment;->access$100(Lcom/helpshift/HSSectionFragment;)Lcom/helpshift/app/ActionBarHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/helpshift/HSSectionFragment$2;->this$0:Lcom/helpshift/HSSectionFragment;

    invoke-static {v2}, Lcom/helpshift/HSSectionFragment;->access$000(Lcom/helpshift/HSSectionFragment;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/helpshift/app/ActionBarHelper;->collapseActionView(Landroid/view/MenuItem;)V

    .line 138
    const-string/jumbo v1, "showInFullScreen"

    iget-object v2, p0, Lcom/helpshift/HSSectionFragment$2;->this$0:Lcom/helpshift/HSSectionFragment;

    invoke-static {v2}, Lcom/helpshift/HSSectionFragment;->access$300(Lcom/helpshift/HSSectionFragment;)Lcom/helpshift/HSActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/helpshift/util/HSActivityUtil;->isFullScreen(Landroid/app/Activity;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 139
    const-string/jumbo v1, "showConvOnReportIssue"

    iget-object v2, p0, Lcom/helpshift/HSSectionFragment$2;->this$0:Lcom/helpshift/HSSectionFragment;

    invoke-static {v2}, Lcom/helpshift/HSSectionFragment;->access$300(Lcom/helpshift/HSSectionFragment;)Lcom/helpshift/HSActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/helpshift/HSActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "showConvOnReportIssue"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 140
    const-string/jumbo v1, "chatLaunchSource"

    const-string/jumbo v2, "support"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    const-string/jumbo v1, "search_performed"

    iget-object v2, p0, Lcom/helpshift/HSSectionFragment$2;->this$0:Lcom/helpshift/HSSectionFragment;

    invoke-virtual {v2}, Lcom/helpshift/HSSectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "search_performed"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 143
    iget-object v1, p0, Lcom/helpshift/HSSectionFragment$2;->this$0:Lcom/helpshift/HSSectionFragment;

    invoke-virtual {v1}, Lcom/helpshift/HSSectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 144
    return-void
.end method
