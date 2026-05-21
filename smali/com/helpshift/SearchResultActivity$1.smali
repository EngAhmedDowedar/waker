.class Lcom/helpshift/SearchResultActivity$1;
.super Ljava/lang/Object;
.source "SearchResultActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

.field final synthetic val$searchItems:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/helpshift/SearchResultActivity;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/helpshift/SearchResultActivity$1;->this$0:Lcom/helpshift/SearchResultActivity;

    iput-object p2, p0, Lcom/helpshift/SearchResultActivity$1;->val$searchItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "l"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/helpshift/SearchResultActivity$1;->val$searchItems:Ljava/util/ArrayList;

    add-int/lit8 v3, p3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/Faq;

    .line 84
    .local v0, "clickedItem":Lcom/helpshift/Faq;
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/helpshift/SearchResultActivity$1;->this$0:Lcom/helpshift/SearchResultActivity;

    const-class v3, Lcom/helpshift/HSQuestion;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 85
    .local v1, "questionIntent":Landroid/content/Intent;
    const-string/jumbo v2, "questionPublishId"

    invoke-virtual {v0}, Lcom/helpshift/Faq;->getPublishId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    const-string/jumbo v2, "searchTerms"

    invoke-virtual {v0}, Lcom/helpshift/Faq;->getSearchTerms()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 87
    const-string/jumbo v2, "questionFlow"

    const-string/jumbo v3, "showSearchOnNewConversationFlow"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    const-string/jumbo v2, "showInFullScreen"

    iget-object v3, p0, Lcom/helpshift/SearchResultActivity$1;->this$0:Lcom/helpshift/SearchResultActivity;

    invoke-static {v3}, Lcom/helpshift/util/HSActivityUtil;->isFullScreen(Landroid/app/Activity;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 90
    iget-object v2, p0, Lcom/helpshift/SearchResultActivity$1;->this$0:Lcom/helpshift/SearchResultActivity;

    const/16 v3, 0x7fbb

    invoke-virtual {v2, v1, v3}, Lcom/helpshift/SearchResultActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 91
    return-void
.end method
