.class Lcom/helpshift/SearchResultActivity$2;
.super Ljava/lang/Object;
.source "SearchResultActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/SearchResultActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/SearchResultActivity;


# direct methods
.method constructor <init>(Lcom/helpshift/SearchResultActivity;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/helpshift/SearchResultActivity$2;->this$0:Lcom/helpshift/SearchResultActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 98
    const-string/jumbo v1, "taf"

    invoke-static {v1}, Lcom/helpshift/HSFunnel;->pushEvent(Ljava/lang/String;)V

    .line 99
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 100
    .local v0, "returnIntent":Landroid/content/Intent;
    const-string/jumbo v1, "action"

    const-string/jumbo v2, "startConversation"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    iget-object v1, p0, Lcom/helpshift/SearchResultActivity$2;->this$0:Lcom/helpshift/SearchResultActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/helpshift/SearchResultActivity;->setResult(ILandroid/content/Intent;)V

    .line 102
    iget-object v1, p0, Lcom/helpshift/SearchResultActivity$2;->this$0:Lcom/helpshift/SearchResultActivity;

    invoke-virtual {v1}, Lcom/helpshift/SearchResultActivity;->finish()V

    .line 103
    return-void
.end method
