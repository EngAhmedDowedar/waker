.class Lcom/helpshift/HSFaqsFragment$4;
.super Landroid/os/Handler;
.source "HSFaqsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/HSFaqsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/HSFaqsFragment;


# direct methods
.method constructor <init>(Lcom/helpshift/HSFaqsFragment;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/helpshift/HSFaqsFragment$4;->this$0:Lcom/helpshift/HSFaqsFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v10, 0x1

    .line 218
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 219
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 220
    .local v4, "sections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/helpshift/Section;>;"
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v4    # "sections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/helpshift/Section;>;"
    check-cast v4, Ljava/util/ArrayList;

    .line 221
    .restart local v4    # "sections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/helpshift/Section;>;"
    iget-object v5, p0, Lcom/helpshift/HSFaqsFragment$4;->this$0:Lcom/helpshift/HSFaqsFragment;

    invoke-static {v5}, Lcom/helpshift/HSFaqsFragment;->access$800(Lcom/helpshift/HSFaqsFragment;)Lcom/helpshift/HSApiData;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/helpshift/HSApiData;->getPopulatedSections(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    .line 222
    iget-object v5, p0, Lcom/helpshift/HSFaqsFragment$4;->this$0:Lcom/helpshift/HSFaqsFragment;

    invoke-static {v5}, Lcom/helpshift/HSFaqsFragment;->access$900(Lcom/helpshift/HSFaqsFragment;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 224
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v10, :cond_0

    .line 225
    iget-object v5, p0, Lcom/helpshift/HSFaqsFragment$4;->this$0:Lcom/helpshift/HSFaqsFragment;

    invoke-static {v5}, Lcom/helpshift/HSFaqsFragment;->access$800(Lcom/helpshift/HSFaqsFragment;)Lcom/helpshift/HSApiData;

    move-result-object v6

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/helpshift/Section;

    invoke-virtual {v5}, Lcom/helpshift/Section;->getPublishId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/helpshift/HSApiData;->getFaqsForSection(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 226
    .local v1, "faqs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/helpshift/Faq;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 227
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/Faq;

    .line 228
    .local v0, "faqItem":Lcom/helpshift/Faq;
    iget-object v5, p0, Lcom/helpshift/HSFaqsFragment$4;->this$0:Lcom/helpshift/HSFaqsFragment;

    invoke-static {v5}, Lcom/helpshift/HSFaqsFragment;->access$900(Lcom/helpshift/HSFaqsFragment;)Ljava/util/List;

    move-result-object v5

    new-instance v6, Lcom/helpshift/Faq;

    invoke-virtual {v0}, Lcom/helpshift/Faq;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/helpshift/Faq;->getPublishId()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "question"

    invoke-direct {v6, v7, v8, v9}, Lcom/helpshift/Faq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 233
    .end local v0    # "faqItem":Lcom/helpshift/Faq;
    .end local v1    # "faqs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/helpshift/Faq;>;"
    .end local v2    # "i":I
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 234
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/helpshift/Section;

    .line 235
    .local v3, "sectionItem":Lcom/helpshift/Section;
    iget-object v5, p0, Lcom/helpshift/HSFaqsFragment$4;->this$0:Lcom/helpshift/HSFaqsFragment;

    invoke-static {v5}, Lcom/helpshift/HSFaqsFragment;->access$800(Lcom/helpshift/HSFaqsFragment;)Lcom/helpshift/HSApiData;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/helpshift/HSApiData;->isSectionEmpty(Lcom/helpshift/Section;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 236
    iget-object v5, p0, Lcom/helpshift/HSFaqsFragment$4;->this$0:Lcom/helpshift/HSFaqsFragment;

    invoke-static {v5}, Lcom/helpshift/HSFaqsFragment;->access$900(Lcom/helpshift/HSFaqsFragment;)Ljava/util/List;

    move-result-object v5

    new-instance v6, Lcom/helpshift/Faq;

    invoke-virtual {v3}, Lcom/helpshift/Section;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lcom/helpshift/Section;->getPublishId()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "section"

    invoke-direct {v6, v7, v8, v9}, Lcom/helpshift/Faq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 243
    .end local v3    # "sectionItem":Lcom/helpshift/Section;
    :cond_2
    iget-object v5, p0, Lcom/helpshift/HSFaqsFragment$4;->this$0:Lcom/helpshift/HSFaqsFragment;

    invoke-static {v5}, Lcom/helpshift/HSFaqsFragment;->access$900(Lcom/helpshift/HSFaqsFragment;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_3

    .line 244
    iget-object v5, p0, Lcom/helpshift/HSFaqsFragment$4;->this$0:Lcom/helpshift/HSFaqsFragment;

    invoke-static {v5}, Lcom/helpshift/HSFaqsFragment;->access$900(Lcom/helpshift/HSFaqsFragment;)Ljava/util/List;

    move-result-object v5

    new-instance v6, Lcom/helpshift/Faq;

    iget-object v7, p0, Lcom/helpshift/HSFaqsFragment$4;->this$0:Lcom/helpshift/HSFaqsFragment;

    invoke-virtual {v7}, Lcom/helpshift/HSFaqsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/helpshift/D$string;->hs__faqs_search_footer:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "0"

    const-string/jumbo v9, "empty_status"

    invoke-direct {v6, v7, v8, v9}, Lcom/helpshift/Faq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    :cond_3
    iget-object v5, p0, Lcom/helpshift/HSFaqsFragment$4;->this$0:Lcom/helpshift/HSFaqsFragment;

    invoke-virtual {v5}, Lcom/helpshift/HSFaqsFragment;->isResumed()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 249
    iget-object v5, p0, Lcom/helpshift/HSFaqsFragment$4;->this$0:Lcom/helpshift/HSFaqsFragment;

    invoke-virtual {v5, v10}, Lcom/helpshift/HSFaqsFragment;->setListShown(Z)V

    .line 251
    :cond_4
    iget-object v5, p0, Lcom/helpshift/HSFaqsFragment$4;->this$0:Lcom/helpshift/HSFaqsFragment;

    invoke-static {v5}, Lcom/helpshift/HSFaqsFragment;->access$1000(Lcom/helpshift/HSFaqsFragment;)Landroid/widget/ArrayAdapter;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 252
    return-void
.end method
