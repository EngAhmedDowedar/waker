.class public final Lcom/helpshift/HSSectionFragment;
.super Landroid/support/v4/app/ListFragment;
.source "HSSectionFragment.java"

# interfaces
.implements Lcom/helpshift/view/SimpleMenuItemCompat$QueryTextActions;
.implements Lcom/helpshift/view/SimpleMenuItemCompat$MenuItemActions;
.implements Lcom/helpshift/HSFaqSyncStatusEvents;


# static fields
.field public static final TAG:Ljava/lang/String; = "HelpShiftDebug"


# instance fields
.field private actionBarHelper:Lcom/helpshift/app/ActionBarHelper;

.field private activity:Lcom/helpshift/HSActivity;

.field private adapter:Landroid/widget/ArrayAdapter;

.field private currentLang:Ljava/lang/String;

.field private data:Lcom/helpshift/HSApiData;

.field private eventSent:Z

.field private faqItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/helpshift/Faq;",
            ">;"
        }
    .end annotation
.end field

.field private isDecomp:Ljava/lang/Boolean;

.field private isVisible:Z

.field private listFooter:Landroid/view/View;

.field private listView:Landroid/widget/ListView;

.field private mSearchItem:Landroid/view/MenuItem;

.field private prevSearchQuery:Ljava/lang/String;

.field private publishId:Ljava/lang/String;

.field private searchAdapter:Landroid/widget/ArrayAdapter;

.field private searchCache:Ljava/lang/String;

.field private searchItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/helpshift/Faq;",
            ">;"
        }
    .end annotation
.end field

.field private searchQuery:Ljava/lang/String;

.field private searchStarted:Z

.field private sectionFailHandler:Landroid/os/Handler;

.field private sectionId:Ljava/lang/String;

.field private sectionPubId:Ljava/lang/String;

.field private sectionSuccessHandler:Landroid/os/Handler;

.field private showReportIssue:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/helpshift/HSSectionFragment;->faqItems:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/helpshift/HSSectionFragment;->searchItems:Ljava/util/ArrayList;

    .line 62
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/helpshift/HSSectionFragment;->searchCache:Ljava/lang/String;

    .line 63
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/HSSectionFragment;->isDecomp:Ljava/lang/Boolean;

    .line 64
    iput-boolean v1, p0, Lcom/helpshift/HSSectionFragment;->searchStarted:Z

    .line 67
    iput-boolean v1, p0, Lcom/helpshift/HSSectionFragment;->eventSent:Z

    .line 291
    new-instance v0, Lcom/helpshift/HSSectionFragment$4;

    invoke-direct {v0, p0}, Lcom/helpshift/HSSectionFragment$4;-><init>(Lcom/helpshift/HSSectionFragment;)V

    iput-object v0, p0, Lcom/helpshift/HSSectionFragment;->sectionSuccessHandler:Landroid/os/Handler;

    .line 300
    new-instance v0, Lcom/helpshift/HSSectionFragment$5;

    invoke-direct {v0, p0}, Lcom/helpshift/HSSectionFragment$5;-><init>(Lcom/helpshift/HSSectionFragment;)V

    iput-object v0, p0, Lcom/helpshift/HSSectionFragment;->sectionFailHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/helpshift/HSSectionFragment;)Landroid/view/MenuItem;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/HSSectionFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/helpshift/HSSectionFragment;->mSearchItem:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$100(Lcom/helpshift/HSSectionFragment;)Lcom/helpshift/app/ActionBarHelper;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/HSSectionFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/helpshift/HSSectionFragment;->actionBarHelper:Lcom/helpshift/app/ActionBarHelper;

    return-object v0
.end method

.method static synthetic access$200(Lcom/helpshift/HSSectionFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/helpshift/HSSectionFragment;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/helpshift/HSSectionFragment;->performedSearch()V

    return-void
.end method

.method static synthetic access$300(Lcom/helpshift/HSSectionFragment;)Lcom/helpshift/HSActivity;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/HSSectionFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/helpshift/HSSectionFragment;->activity:Lcom/helpshift/HSActivity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/helpshift/HSSectionFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/HSSectionFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/helpshift/HSSectionFragment;->searchQuery:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/helpshift/HSSectionFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/HSSectionFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/helpshift/HSSectionFragment;->searchCache:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/helpshift/HSSectionFragment;Lcom/helpshift/Section;)V
    .locals 0
    .param p0, "x0"    # Lcom/helpshift/HSSectionFragment;
    .param p1, "x1"    # Lcom/helpshift/Section;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/helpshift/HSSectionFragment;->updateSectionData(Lcom/helpshift/Section;)V

    return-void
.end method

.method private initSearchList(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/helpshift/Faq;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 353
    .local p1, "searchArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/helpshift/Faq;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/helpshift/HSSectionFragment;->showReportIssue:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 354
    :cond_0
    iget-object v2, p0, Lcom/helpshift/HSSectionFragment;->listFooter:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 359
    :goto_0
    iget-object v2, p0, Lcom/helpshift/HSSectionFragment;->searchItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 360
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 361
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/helpshift/Faq;

    .line 362
    .local v1, "searchItem":Lcom/helpshift/Faq;
    invoke-virtual {v1}, Lcom/helpshift/Faq;->getSectionPublishId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/helpshift/HSSectionFragment;->sectionPubId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 363
    iget-object v2, p0, Lcom/helpshift/HSSectionFragment;->searchItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 356
    .end local v0    # "i":I
    .end local v1    # "searchItem":Lcom/helpshift/Faq;
    :cond_2
    iget-object v2, p0, Lcom/helpshift/HSSectionFragment;->listFooter:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 366
    .restart local v0    # "i":I
    :cond_3
    iget-object v2, p0, Lcom/helpshift/HSSectionFragment;->searchAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 367
    return-void
.end method

.method private performedSearch()V
    .locals 4

    .prologue
    .line 392
    invoke-virtual {p0}, Lcom/helpshift/HSSectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "search_performed"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 393
    iget-object v1, p0, Lcom/helpshift/HSSectionFragment;->actionBarHelper:Lcom/helpshift/app/ActionBarHelper;

    iget-object v2, p0, Lcom/helpshift/HSSectionFragment;->mSearchItem:Landroid/view/MenuItem;

    invoke-virtual {v1, v2}, Lcom/helpshift/app/ActionBarHelper;->getQuery(Landroid/view/MenuItem;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 394
    .local v0, "searchString":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/helpshift/HSSectionFragment;->performedSearch(Ljava/lang/String;)V

    .line 395
    return-void
.end method

.method private performedSearch(Ljava/lang/String;)V
    .locals 4
    .param p1, "searchString"    # Ljava/lang/String;

    .prologue
    .line 398
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/helpshift/HSSectionFragment;->prevSearchQuery:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 400
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 402
    .local v1, "eventObj":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "s"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    :goto_0
    const-string/jumbo v2, "s"

    invoke-static {v2, v1}, Lcom/helpshift/HSFunnel;->pushEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 407
    iput-object p1, p0, Lcom/helpshift/HSSectionFragment;->prevSearchQuery:Ljava/lang/String;

    .line 409
    .end local v1    # "eventObj":Lorg/json/JSONObject;
    :cond_0
    return-void

    .line 403
    .restart local v1    # "eventObj":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 404
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v3, "JSONException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private updateSectionData(Lcom/helpshift/Section;)V
    .locals 11
    .param p1, "section"    # Lcom/helpshift/Section;

    .prologue
    .line 245
    iget-object v6, p0, Lcom/helpshift/HSSectionFragment;->data:Lcom/helpshift/HSApiData;

    iget-object v7, p0, Lcom/helpshift/HSSectionFragment;->publishId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/helpshift/HSApiData;->getFaqsForSection(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 246
    .local v5, "sectionFAQArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/helpshift/Faq;>;"
    iget-object v6, p0, Lcom/helpshift/HSSectionFragment;->isDecomp:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz p1, :cond_0

    .line 247
    iget-object v6, p0, Lcom/helpshift/HSSectionFragment;->activity:Lcom/helpshift/HSActivity;

    invoke-virtual {v6}, Lcom/helpshift/app/ActionBarActivity;->getActionBarHelper()Lcom/helpshift/app/ActionBarHelper;

    move-result-object v0

    .line 248
    .local v0, "actionBarHelper":Lcom/helpshift/app/ActionBarHelper;
    invoke-virtual {p1}, Lcom/helpshift/Section;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/helpshift/app/ActionBarHelper;->setTitle(Ljava/lang/String;)V

    .line 251
    .end local v0    # "actionBarHelper":Lcom/helpshift/app/ActionBarHelper;
    :cond_0
    if-nez p1, :cond_1

    .line 252
    const/16 v6, 0x194

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/helpshift/HSSectionFragment;->activity:Lcom/helpshift/HSActivity;

    invoke-static {v6, v7, v8}, Lcom/helpshift/util/HSErrors;->showFailToast(ILandroid/app/ProgressDialog;Landroid/content/Context;)V

    .line 288
    :goto_0
    return-void

    .line 254
    :cond_1
    iget-object v6, p0, Lcom/helpshift/HSSectionFragment;->faqItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 255
    invoke-virtual {p1}, Lcom/helpshift/Section;->getSectionId()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/helpshift/HSSectionFragment;->sectionId:Ljava/lang/String;

    .line 256
    invoke-virtual {p1}, Lcom/helpshift/Section;->getPublishId()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/helpshift/HSSectionFragment;->sectionPubId:Ljava/lang/String;

    .line 266
    invoke-virtual {p0}, Lcom/helpshift/HSSectionFragment;->getUserVisibleHint()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/helpshift/HSSectionFragment;->sectionId:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-boolean v6, p0, Lcom/helpshift/HSSectionFragment;->eventSent:Z

    if-nez v6, :cond_2

    .line 268
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 269
    .local v2, "eventData":Lorg/json/JSONObject;
    const-string/jumbo v6, "id"

    iget-object v7, p0, Lcom/helpshift/HSSectionFragment;->sectionId:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 270
    const-string/jumbo v6, "b"

    invoke-static {v6, v2}, Lcom/helpshift/HSFunnel;->pushEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 271
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/helpshift/HSSectionFragment;->eventSent:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    .end local v2    # "eventData":Lorg/json/JSONObject;
    :cond_2
    :goto_1
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_3

    .line 277
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/helpshift/Faq;

    .line 278
    .local v3, "faqItem":Lcom/helpshift/Faq;
    iget-object v6, p0, Lcom/helpshift/HSSectionFragment;->faqItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 272
    .end local v3    # "faqItem":Lcom/helpshift/Faq;
    .end local v4    # "i":I
    :catch_0
    move-exception v1

    .line 273
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v6, "HelpShiftDebug"

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 281
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v4    # "i":I
    :cond_3
    iget-object v6, p0, Lcom/helpshift/HSSectionFragment;->faqItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_4

    .line 282
    iget-object v6, p0, Lcom/helpshift/HSSectionFragment;->faqItems:Ljava/util/ArrayList;

    new-instance v7, Lcom/helpshift/Faq;

    invoke-virtual {p0}, Lcom/helpshift/HSSectionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/helpshift/D$string;->hs__faqs_search_footer:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "0"

    const-string/jumbo v10, "empty_status"

    invoke-direct {v7, v8, v9, v10}, Lcom/helpshift/Faq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    :cond_4
    iget-object v6, p0, Lcom/helpshift/HSSectionFragment;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v6}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method


# virtual methods
.method public faqsUpdated()V
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/helpshift/HSSectionFragment;->data:Lcom/helpshift/HSApiData;

    iget-object v1, p0, Lcom/helpshift/HSSectionFragment;->publishId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/helpshift/HSApiData;->getSection(Ljava/lang/String;)Lcom/helpshift/Section;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/helpshift/HSSectionFragment;->updateSectionData(Lcom/helpshift/Section;)V

    .line 231
    return-void
.end method

.method protected initSearchList()V
    .locals 2

    .prologue
    .line 349
    iget-object v0, p0, Lcom/helpshift/HSSectionFragment;->data:Lcom/helpshift/HSApiData;

    iget-object v1, p0, Lcom/helpshift/HSSectionFragment;->sectionPubId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/helpshift/HSApiData;->getFaqsForSection(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/helpshift/HSSectionFragment;->initSearchList(Ljava/util/ArrayList;)V

    .line 350
    return-void
.end method

.method protected initSearchList(Ljava/lang/String;)V
    .locals 4
    .param p1, "searchQuery"    # Ljava/lang/String;

    .prologue
    .line 335
    const/4 v0, 0x0

    .line 336
    .local v0, "searchWithAny":Z
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/helpshift/HSSectionFragment;->searchQuery:Ljava/lang/String;

    .line 337
    iget-object v1, p0, Lcom/helpshift/HSSectionFragment;->currentLang:Ljava/lang/String;

    const-string/jumbo v2, "zh"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/helpshift/HSSectionFragment;->currentLang:Ljava/lang/String;

    const-string/jumbo v2, "ja"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/helpshift/HSSectionFragment;->currentLang:Ljava/lang/String;

    const-string/jumbo v2, "ko"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 338
    :cond_0
    const/4 v0, 0x1

    .line 340
    :cond_1
    iget-object v1, p0, Lcom/helpshift/HSSectionFragment;->searchQuery:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/helpshift/HSSectionFragment;->searchQuery:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_3

    if-nez v0, :cond_3

    .line 342
    :cond_2
    invoke-virtual {p0}, Lcom/helpshift/HSSectionFragment;->initSearchList()V

    .line 346
    :goto_0
    return-void

    .line 344
    :cond_3
    iget-object v1, p0, Lcom/helpshift/HSSectionFragment;->data:Lcom/helpshift/HSApiData;

    iget-object v2, p0, Lcom/helpshift/HSSectionFragment;->searchQuery:Ljava/lang/String;

    sget-object v3, Lcom/helpshift/HSSearch$HS_SEARCH_OPTIONS;->FULL_SEARCH:Lcom/helpshift/HSSearch$HS_SEARCH_OPTIONS;

    invoke-virtual {v1, v2, v3}, Lcom/helpshift/HSApiData;->localFaqSearch(Ljava/lang/String;Lcom/helpshift/HSSearch$HS_SEARCH_OPTIONS;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/helpshift/HSSectionFragment;->initSearchList(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public menuItemCollapsed()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 440
    invoke-direct {p0}, Lcom/helpshift/HSSectionFragment;->performedSearch()V

    .line 441
    invoke-virtual {p0}, Lcom/helpshift/HSSectionFragment;->searchCompleted()V

    .line 442
    sget-object v0, Lcom/helpshift/ContactUsFilter$LOCATION;->ACTION_BAR:Lcom/helpshift/ContactUsFilter$LOCATION;

    invoke-static {v0}, Lcom/helpshift/ContactUsFilter;->showContactUs(Lcom/helpshift/ContactUsFilter$LOCATION;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/helpshift/HSSectionFragment;->activity:Lcom/helpshift/HSActivity;

    invoke-virtual {v0, v1}, Lcom/helpshift/HSActivity;->showConversationMenu(Z)V

    .line 445
    :cond_0
    return v1
.end method

.method public menuItemExpanded()Z
    .locals 2

    .prologue
    .line 430
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/helpshift/HSSectionFragment;->prevSearchQuery:Ljava/lang/String;

    .line 431
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/helpshift/HSSectionFragment;->searchCache:Ljava/lang/String;

    .line 432
    invoke-virtual {p0}, Lcom/helpshift/HSSectionFragment;->searchStarted()V

    .line 433
    iget-object v0, p0, Lcom/helpshift/HSSectionFragment;->activity:Lcom/helpshift/HSActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/helpshift/HSActivity;->showConversationMenu(Z)V

    .line 434
    iget-object v0, p0, Lcom/helpshift/HSSectionFragment;->actionBarHelper:Lcom/helpshift/app/ActionBarHelper;

    invoke-virtual {p0}, Lcom/helpshift/HSSectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/helpshift/util/Xml;->getLogoResourceValue(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/helpshift/app/ActionBarHelper;->setIcon(I)V

    .line 435
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 73
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0}, Lcom/helpshift/HSSectionFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 75
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 76
    const-string/jumbo v1, "sectionPublishId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/helpshift/HSSectionFragment;->publishId:Ljava/lang/String;

    .line 77
    iget-object v1, p0, Lcom/helpshift/HSSectionFragment;->publishId:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 78
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/helpshift/HSSectionFragment;->publishId:Ljava/lang/String;

    .line 80
    :cond_0
    sget-object v1, Lcom/helpshift/ContactUsFilter$LOCATION;->SEARCH_FOOTER:Lcom/helpshift/ContactUsFilter$LOCATION;

    invoke-static {v1}, Lcom/helpshift/ContactUsFilter;->showContactUs(Lcom/helpshift/ContactUsFilter$LOCATION;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/helpshift/HSSectionFragment;->showReportIssue:Z

    .line 81
    const-string/jumbo v1, "decomp"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 82
    sput-boolean v2, Lcom/helpshift/HSAnalytics;->decomp:Z

    .line 83
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/helpshift/HSSectionFragment;->isDecomp:Ljava/lang/Boolean;

    .line 86
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/helpshift/HSSectionFragment;->isDecomp:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    sget v0, Lcom/helpshift/D$id;->hs__action_search:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/HSSectionFragment;->mSearchItem:Landroid/view/MenuItem;

    .line 218
    iget-object v0, p0, Lcom/helpshift/HSSectionFragment;->activity:Lcom/helpshift/HSActivity;

    iget-object v1, p0, Lcom/helpshift/HSSectionFragment;->mSearchItem:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/helpshift/util/Styles;->setActionButtonIconColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 220
    iget-object v0, p0, Lcom/helpshift/HSSectionFragment;->actionBarHelper:Lcom/helpshift/app/ActionBarHelper;

    iget-object v1, p0, Lcom/helpshift/HSSectionFragment;->mSearchItem:Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/helpshift/HSSectionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/helpshift/D$string;->hs__search_hint:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/helpshift/app/ActionBarHelper;->setQueryHint(Landroid/view/MenuItem;Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/helpshift/HSSectionFragment;->actionBarHelper:Lcom/helpshift/app/ActionBarHelper;

    iget-object v1, p0, Lcom/helpshift/HSSectionFragment;->mSearchItem:Landroid/view/MenuItem;

    invoke-virtual {v0, v1, p0}, Lcom/helpshift/app/ActionBarHelper;->setOnQueryTextListener(Landroid/view/MenuItem;Lcom/helpshift/view/SimpleMenuItemCompat$QueryTextActions;)V

    .line 222
    iget-object v0, p0, Lcom/helpshift/HSSectionFragment;->actionBarHelper:Lcom/helpshift/app/ActionBarHelper;

    iget-object v1, p0, Lcom/helpshift/HSSectionFragment;->mSearchItem:Landroid/view/MenuItem;

    invoke-virtual {v0, v1, p0}, Lcom/helpshift/app/ActionBarHelper;->setOnActionExpandListener(Landroid/view/MenuItem;Lcom/helpshift/view/SimpleMenuItemCompat$MenuItemActions;)V

    .line 224
    iget-object v0, p0, Lcom/helpshift/HSSectionFragment;->data:Lcom/helpshift/HSApiData;

    invoke-virtual {v0}, Lcom/helpshift/HSApiData;->loadIndex()V

    .line 226
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 91
    invoke-virtual {p0}, Lcom/helpshift/HSSectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/helpshift/HSActivity;

    iput-object v0, p0, Lcom/helpshift/HSSectionFragment;->activity:Lcom/helpshift/HSActivity;

    .line 92
    iget-object v0, p0, Lcom/helpshift/HSSectionFragment;->activity:Lcom/helpshift/HSActivity;

    invoke-virtual {v0}, Lcom/helpshift/HSActivity;->getActionBarHelper()Lcom/helpshift/app/ActionBarHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/HSSectionFragment;->actionBarHelper:Lcom/helpshift/app/ActionBarHelper;

    .line 93
    new-instance v0, Lcom/helpshift/HSApiData;

    iget-object v1, p0, Lcom/helpshift/HSSectionFragment;->activity:Lcom/helpshift/HSActivity;

    invoke-direct {v0, v1}, Lcom/helpshift/HSApiData;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/helpshift/HSSectionFragment;->data:Lcom/helpshift/HSApiData;

    .line 95
    iget-boolean v0, p0, Lcom/helpshift/HSSectionFragment;->showReportIssue:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 96
    sget v0, Lcom/helpshift/D$layout;->hs__search_list_footer:I

    invoke-virtual {p1, v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/HSSectionFragment;->listFooter:Landroid/view/View;

    .line 103
    :goto_0
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/helpshift/HSSectionFragment;->activity:Lcom/helpshift/HSActivity;

    sget v2, Lcom/helpshift/D$layout;->hs__simple_list_item_1:I

    iget-object v3, p0, Lcom/helpshift/HSSectionFragment;->faqItems:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/helpshift/HSSectionFragment;->adapter:Landroid/widget/ArrayAdapter;

    .line 106
    new-instance v0, Lcom/helpshift/customadapters/SearchAdapter;

    iget-object v1, p0, Lcom/helpshift/HSSectionFragment;->activity:Lcom/helpshift/HSActivity;

    sget v2, Lcom/helpshift/D$layout;->hs__simple_list_item_1:I

    iget-object v3, p0, Lcom/helpshift/HSSectionFragment;->searchItems:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, v3}, Lcom/helpshift/customadapters/SearchAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/helpshift/HSSectionFragment;->searchAdapter:Landroid/widget/ArrayAdapter;

    .line 109
    iget-object v0, p0, Lcom/helpshift/HSSectionFragment;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p0, v0}, Lcom/helpshift/HSSectionFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 110
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/HSSectionFragment;->currentLang:Ljava/lang/String;

    .line 111
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/ListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 99
    :cond_0
    sget v0, Lcom/helpshift/D$layout;->hs__no_faqs:I

    invoke-virtual {p1, v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/HSSectionFragment;->listFooter:Landroid/view/View;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 209
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onDestroy()V

    .line 210
    invoke-static {p0}, Lcom/helpshift/HSApiData;->removeFaqSyncStatusObserver(Lcom/helpshift/HSFaqSyncStatusEvents;)V

    .line 211
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4
    .param p1, "list"    # Landroid/widget/ListView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "questionPosition"    # I
    .param p4, "arg3"    # J

    .prologue
    .line 316
    iget-boolean v2, p0, Lcom/helpshift/HSSectionFragment;->searchStarted:Z

    if-eqz v2, :cond_1

    .line 317
    invoke-direct {p0}, Lcom/helpshift/HSSectionFragment;->performedSearch()V

    .line 318
    iget-object v2, p0, Lcom/helpshift/HSSectionFragment;->searchItems:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/Faq;

    .line 322
    .local v0, "clickedItem":Lcom/helpshift/Faq;
    :goto_0
    invoke-virtual {v0}, Lcom/helpshift/Faq;->getType()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "empty_status"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 323
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/helpshift/HSSectionFragment;->activity:Lcom/helpshift/HSActivity;

    const-class v3, Lcom/helpshift/HSQuestion;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 324
    .local v1, "i":Landroid/content/Intent;
    const-string/jumbo v2, "questionPublishId"

    invoke-virtual {v0}, Lcom/helpshift/Faq;->getPublishId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 325
    const-string/jumbo v2, "decomp"

    iget-object v3, p0, Lcom/helpshift/HSSectionFragment;->isDecomp:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 326
    const-string/jumbo v2, "showInFullScreen"

    iget-object v3, p0, Lcom/helpshift/HSSectionFragment;->activity:Lcom/helpshift/HSActivity;

    invoke-static {v3}, Lcom/helpshift/util/HSActivityUtil;->isFullScreen(Landroid/app/Activity;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 327
    const-string/jumbo v2, "searchTerms"

    invoke-virtual {v0}, Lcom/helpshift/Faq;->getSearchTerms()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 328
    invoke-virtual {p0}, Lcom/helpshift/HSSectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 329
    const-string/jumbo v2, "isRoot"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 330
    invoke-virtual {p0}, Lcom/helpshift/HSSectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/support/v4/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 332
    .end local v1    # "i":Landroid/content/Intent;
    :cond_0
    return-void

    .line 320
    .end local v0    # "clickedItem":Lcom/helpshift/Faq;
    :cond_1
    iget-object v2, p0, Lcom/helpshift/HSSectionFragment;->faqItems:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/Faq;

    .restart local v0    # "clickedItem":Lcom/helpshift/Faq;
    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 185
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onResume()V

    .line 190
    iget-object v3, p0, Lcom/helpshift/HSSectionFragment;->isDecomp:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/helpshift/HSSectionFragment;->isVisible:Z

    if-eqz v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/helpshift/HSSectionFragment;->sectionId:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 193
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 194
    .local v1, "eventData":Lorg/json/JSONObject;
    const-string/jumbo v3, "id"

    iget-object v4, p0, Lcom/helpshift/HSSectionFragment;->sectionId:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 195
    const-string/jumbo v3, "b"

    invoke-static {v3, v1}, Lcom/helpshift/HSFunnel;->pushEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 196
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/helpshift/HSSectionFragment;->eventSent:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    .end local v1    # "eventData":Lorg/json/JSONObject;
    :cond_1
    :goto_0
    sget-object v3, Lcom/helpshift/ContactUsFilter$LOCATION;->ACTION_BAR:Lcom/helpshift/ContactUsFilter$LOCATION;

    invoke-static {v3}, Lcom/helpshift/ContactUsFilter;->showContactUs(Lcom/helpshift/ContactUsFilter$LOCATION;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 202
    iget-object v3, p0, Lcom/helpshift/HSSectionFragment;->activity:Lcom/helpshift/HSActivity;

    iget-boolean v4, p0, Lcom/helpshift/HSSectionFragment;->searchStarted:Z

    if-nez v4, :cond_3

    :goto_1
    invoke-virtual {v3, v2}, Lcom/helpshift/HSActivity;->showConversationMenu(Z)V

    .line 204
    :cond_2
    return-void

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v3, "HelpShiftDebug"

    const-string/jumbo v4, "event data"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 202
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    .line 117
    invoke-virtual {p0}, Lcom/helpshift/HSSectionFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    iput-object v2, p0, Lcom/helpshift/HSSectionFragment;->listView:Landroid/widget/ListView;

    .line 119
    iget-object v2, p0, Lcom/helpshift/HSSectionFragment;->isDecomp:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-ne v2, v6, :cond_1

    .line 120
    iget-object v2, p0, Lcom/helpshift/HSSectionFragment;->listView:Landroid/widget/ListView;

    new-instance v3, Lcom/helpshift/HSSectionFragment$1;

    invoke-direct {v3, p0}, Lcom/helpshift/HSSectionFragment$1;-><init>(Lcom/helpshift/HSSectionFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 130
    iget-boolean v2, p0, Lcom/helpshift/HSSectionFragment;->showReportIssue:Z

    if-ne v2, v6, :cond_0

    .line 131
    iget-object v2, p0, Lcom/helpshift/HSSectionFragment;->listFooter:Landroid/view/View;

    sget v3, Lcom/helpshift/D$id;->report_issue:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 132
    .local v1, "reportIssueBtn":Landroid/widget/Button;
    new-instance v2, Lcom/helpshift/HSSectionFragment$2;

    invoke-direct {v2, p0}, Lcom/helpshift/HSSectionFragment$2;-><init>(Lcom/helpshift/HSSectionFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    .end local v1    # "reportIssueBtn":Landroid/widget/Button;
    :cond_0
    invoke-virtual {p0, v6}, Lcom/helpshift/HSSectionFragment;->setHasOptionsMenu(Z)V

    .line 149
    :cond_1
    invoke-static {p0}, Lcom/helpshift/HSApiData;->addFaqSyncStatusObserver(Lcom/helpshift/HSFaqSyncStatusEvents;)V

    .line 151
    iget-object v2, p0, Lcom/helpshift/HSSectionFragment;->isDecomp:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-ne v2, v6, :cond_2

    .line 152
    iget-object v2, p0, Lcom/helpshift/HSSectionFragment;->data:Lcom/helpshift/HSApiData;

    iget-object v3, p0, Lcom/helpshift/HSSectionFragment;->publishId:Ljava/lang/String;

    iget-object v4, p0, Lcom/helpshift/HSSectionFragment;->sectionSuccessHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/helpshift/HSSectionFragment;->sectionFailHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v4, v5}, Lcom/helpshift/HSApiData;->getSection(Ljava/lang/String;Landroid/os/Handler;Landroid/os/Handler;)V

    .line 157
    :goto_0
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    iget-object v2, p0, Lcom/helpshift/HSSectionFragment;->activity:Lcom/helpshift/HSActivity;

    sget v3, Lcom/helpshift/D$attr;->hs__contentSeparatorColor:I

    invoke-static {v2, v3}, Lcom/helpshift/util/Styles;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 158
    .local v0, "listDividerColorDrawable":Landroid/graphics/drawable/ColorDrawable;
    iget-object v2, p0, Lcom/helpshift/HSSectionFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 159
    iget-object v2, p0, Lcom/helpshift/HSSectionFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v2, v6}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 160
    return-void

    .line 154
    .end local v0    # "listDividerColorDrawable":Landroid/graphics/drawable/ColorDrawable;
    :cond_2
    iget-object v2, p0, Lcom/helpshift/HSSectionFragment;->data:Lcom/helpshift/HSApiData;

    iget-object v3, p0, Lcom/helpshift/HSSectionFragment;->publishId:Ljava/lang/String;

    iget-object v4, p0, Lcom/helpshift/HSSectionFragment;->sectionSuccessHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/helpshift/HSSectionFragment;->sectionFailHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v4, v5}, Lcom/helpshift/HSApiData;->getSectionSync(Ljava/lang/String;Landroid/os/Handler;Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public queryTextChanged(Ljava/lang/String;)Z
    .locals 1
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    .line 419
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/helpshift/HSSectionFragment;->searchCache:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/helpshift/HSSectionFragment;->performedSearch(Ljava/lang/String;)V

    .line 424
    :goto_0
    invoke-virtual {p0, p1}, Lcom/helpshift/HSSectionFragment;->initSearchList(Ljava/lang/String;)V

    .line 425
    const/4 v0, 0x0

    return v0

    .line 422
    :cond_0
    iput-object p1, p0, Lcom/helpshift/HSSectionFragment;->searchCache:Ljava/lang/String;

    goto :goto_0
.end method

.method public queryTextSubmitted(Ljava/lang/String;)Z
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 414
    const/4 v0, 0x0

    return v0
.end method

.method protected searchCompleted()V
    .locals 2

    .prologue
    .line 370
    iget-object v0, p0, Lcom/helpshift/HSSectionFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/helpshift/HSSectionFragment;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/helpshift/HSSectionFragment;->listFooter:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/helpshift/HSSectionFragment;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p0, v0}, Lcom/helpshift/HSSectionFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 374
    iget-object v0, p0, Lcom/helpshift/HSSectionFragment;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 375
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/helpshift/HSSectionFragment;->searchStarted:Z

    .line 376
    return-void
.end method

.method public searchIndexesUpdated()V
    .locals 2

    .prologue
    .line 235
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 236
    .local v0, "mainThreadHandler":Landroid/os/Handler;
    new-instance v1, Lcom/helpshift/HSSectionFragment$3;

    invoke-direct {v1, p0}, Lcom/helpshift/HSSectionFragment$3;-><init>(Lcom/helpshift/HSSectionFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 241
    return-void
.end method

.method protected searchStarted()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 379
    iget-object v0, p0, Lcom/helpshift/HSSectionFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/helpshift/HSSectionFragment;->showReportIssue:Z

    if-ne v0, v4, :cond_0

    .line 380
    iget-object v0, p0, Lcom/helpshift/HSSectionFragment;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/helpshift/HSSectionFragment;->listFooter:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 385
    :goto_0
    invoke-virtual {p0}, Lcom/helpshift/HSSectionFragment;->initSearchList()V

    .line 386
    iget-object v0, p0, Lcom/helpshift/HSSectionFragment;->searchAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p0, v0}, Lcom/helpshift/HSSectionFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 387
    iget-object v0, p0, Lcom/helpshift/HSSectionFragment;->searchAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 388
    iput-boolean v4, p0, Lcom/helpshift/HSSectionFragment;->searchStarted:Z

    .line 389
    return-void

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/helpshift/HSSectionFragment;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/helpshift/HSSectionFragment;->listFooter:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 383
    iget-object v0, p0, Lcom/helpshift/HSSectionFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    goto :goto_0
.end method

.method public setUserVisibleHint(Z)V
    .locals 4
    .param p1, "isVisibleToUser"    # Z

    .prologue
    .line 164
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->setUserVisibleHint(Z)V

    .line 165
    iput-boolean p1, p0, Lcom/helpshift/HSSectionFragment;->isVisible:Z

    .line 171
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/helpshift/HSSectionFragment;->sectionId:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 173
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 174
    .local v1, "eventData":Lorg/json/JSONObject;
    const-string/jumbo v2, "id"

    iget-object v3, p0, Lcom/helpshift/HSSectionFragment;->sectionId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 175
    const-string/jumbo v2, "b"

    invoke-static {v2, v1}, Lcom/helpshift/HSFunnel;->pushEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 176
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/helpshift/HSSectionFragment;->eventSent:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    .end local v1    # "eventData":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v2, "HelpShiftDebug"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
