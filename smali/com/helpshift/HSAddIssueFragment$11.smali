.class Lcom/helpshift/HSAddIssueFragment$11;
.super Ljava/lang/Object;
.source "HSAddIssueFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/HSAddIssueFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/HSAddIssueFragment;


# direct methods
.method constructor <init>(Lcom/helpshift/HSAddIssueFragment;)V
    .locals 0

    .prologue
    .line 432
    iput-object p1, p0, Lcom/helpshift/HSAddIssueFragment$11;->this$0:Lcom/helpshift/HSAddIssueFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 435
    iget-object v0, p0, Lcom/helpshift/HSAddIssueFragment$11;->this$0:Lcom/helpshift/HSAddIssueFragment;

    iget-object v1, p0, Lcom/helpshift/HSAddIssueFragment$11;->this$0:Lcom/helpshift/HSAddIssueFragment;

    invoke-static {v1}, Lcom/helpshift/HSAddIssueFragment;->access$800(Lcom/helpshift/HSAddIssueFragment;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/helpshift/HSAddIssueFragment;->access$2200(Lcom/helpshift/HSAddIssueFragment;Ljava/lang/String;I)V

    .line 436
    return-void
.end method
