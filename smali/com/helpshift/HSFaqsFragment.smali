.class public final Lcom/helpshift/HSFaqsFragment;
.super Landroid/support/v4/app/ListFragment;
.source "HSFaqsFragment.java"

# interfaces
.implements Lcom/helpshift/view/SimpleMenuItemCompat$QueryTextActions;
.implements Lcom/helpshift/view/SimpleMenuItemCompat$MenuItemActions;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private actionBarHelper:Lcom/helpshift/app/ActionBarHelper;

.field private activity:Lcom/helpshift/HSActivity;

.field private adapter:Landroid/widget/ArrayAdapter;

.field private currentLang:Ljava/lang/String;

.field private data:Lcom/helpshift/HSApiData;

.field private decomp:Z

.field private extras:Landroid/os/Bundle;

.field private failureHandler:Landroid/os/Handler;

.field private faqItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/helpshift/Faq;",
            ">;"
        }
    .end annotation
.end field

.field private listFooter:Landroid/view/View;

.field private listView:Landroid/widget/ListView;

.field private mSearchItem:Landroid/view/MenuItem;

.field private mViewPager:Lcom/helpshift/view/HSViewPager;

.field private prevSearchQuery:Ljava/lang/String;

.field private searchAdapter:Landroid/widget/ArrayAdapter;

.field private searchCache:Ljava/lang/String;

.field private searchItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/helpshift/Faq;",
            ">;"
        }
    .end annotation
.end field

.field private searchQuery:Ljava/lang/String;

.field private searchStarted:Z

.field private sectionsDbHandler:Landroid/os/Handler;

.field private showReportIssue:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;-><init>()V

    .line 48
    const-string/jumbo v0, "HelpShiftDebug"

    iput-object v0, p0, Lcom/helpshift/HSFaqsFragment;->TAG:Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/helpshift/HSFaqsFragment;->faqItems:Ljava/util/List;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/helpshift/HSFaqsFragment;->searchItems:Ljava/util/List;

    .line 61
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/helpshift/HSFaqsFragment;->prevSearchQuery:Ljava/lang/String;

    .line 62
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/helpshift/HSFaqsFragment;->searchCache:Ljava/lang/String;

    .line 63
    iput-boolean v1, p0, Lcom/helpshift/HSFaqsFragment;->searchStarted:Z

    .line 64
    iput-boolean v1, p0, Lcom/helpshift/HSFaqsFragment;->decomp:Z

    .line 65
    iput-boolean v1, p0, Lcom/helpshift/HSFaqsFragment;->showReportIssue:Z

    .line 216
    new-instance v0, Lcom/helpshift/HSFaqsFragment$4;

    invoke-direct {v0, p0}, Lcom/helpshift/HSFaqsFragment$4;-><init>(Lcom/helpshift/HSFaqsFragment;)V

    iput-object v0, p0, Lcom/helpshift/HSFaqsFragment;->sectionsDbHandler:Landroid/os/Handler;

    .line 255
    new-instance v0, Lcom/helpshift/HSFaqsFragment$5;

    invoke-direct {v0, p0}, Lcom/helpshift/HSFaqsFragment$5;-><init>(Lcom/helpshift/HSFaqsFragment;)V

    iput-object v0, p0, Lcom/helpshift/HSFaqsFragment;->failureHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/helpshift/HSFaqsFragment;)Landroid/view/MenuItem;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/HSFaqsFragment;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/helpshift/HSFaqsFragment;->mSearchItem:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$100(Lcom/helpshift/HSFaqsFragment;)Lcom/helpshift/app/ActionBarHelper;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/HSFaqsFragment;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/helpshift/HSFaqsFragment;->actionBarHelper:Lcom/helpshift/app/ActionBarHelper;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/helpshift/HSFaqsFragment;)Landroid/widget/ArrayAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/HSFaqsFragment;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/helpshift/HSFaqsFragment;->adapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/helpshift/HSFaqsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/helpshift/HSFaqsFragment;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/helpshift/HSFaqsFragment;->performedSearch()V

    return-void
.end method

.method static synthetic access$300(Lcom/helpshift/HSFaqsFragment;)Lcom/helpshift/HSActivity;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/HSFaqsFragment;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/helpshift/HSFaqsFragment;->activity:Lcom/helpshift/HSActivity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/helpshift/HSFaqsFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/HSFaqsFragment;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/helpshift/HSFaqsFragment;->searchQuery:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/helpshift/HSFaqsFragment;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/HSFaqsFragment;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/helpshift/HSFaqsFragment;->extras:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$600(Lcom/helpshift/HSFaqsFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/HSFaqsFragment;

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/helpshift/HSFaqsFragment;->decomp:Z

    return v0
.end method

.method static synthetic access$700(Lcom/helpshift/HSFaqsFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/HSFaqsFragment;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/helpshift/HSFaqsFragment;->searchCache:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/helpshift/HSFaqsFragment;)Lcom/helpshift/HSApiData;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/HSFaqsFragment;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/helpshift/HSFaqsFragment;->data:Lcom/helpshift/HSApiData;

    return-object v0
.end method

.method static synthetic access$900(Lcom/helpshift/HSFaqsFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/HSFaqsFragment;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/helpshift/HSFaqsFragment;->faqItems:Ljava/util/List;

    return-object v0
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
    .line 283
    .local p1, "searchArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/helpshift/Faq;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/helpshift/HSFaqsFragment;->showReportIssue:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 284
    :cond_0
    iget-object v2, p0, Lcom/helpshift/HSFaqsFragment;->listFooter:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 289
    :goto_0
    iget-object v2, p0, Lcom/helpshift/HSFaqsFragment;->searchItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 290
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 291
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/helpshift/Faq;

    .line 292
    .local v1, "searchItem":Lcom/helpshift/Faq;
    iget-object v2, p0, Lcom/helpshift/HSFaqsFragment;->searchItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 286
    .end local v0    # "i":I
    .end local v1    # "searchItem":Lcom/helpshift/Faq;
    :cond_1
    iget-object v2, p0, Lcom/helpshift/HSFaqsFragment;->listFooter:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 295
    .restart local v0    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/helpshift/HSFaqsFragment;->searchAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 296
    return-void
.end method

.method private performedSearch()V
    .locals 4

    .prologue
    .line 321
    invoke-virtual {p0}, Lcom/helpshift/HSFaqsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "search_performed"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 322
    iget-object v1, p0, Lcom/helpshift/HSFaqsFragment;->actionBarHelper:Lcom/helpshift/app/ActionBarHelper;

    iget-object v2, p0, Lcom/helpshift/HSFaqsFragment;->mSearchItem:Landroid/view/MenuItem;

    invoke-virtual {v1, v2}, Lcom/helpshift/app/ActionBarHelper;->getQuery(Landroid/view/MenuItem;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 323
    .local v0, "searchString":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/helpshift/HSFaqsFragment;->performedSearch(Ljava/lang/String;)V

    .line 324
    return-void
.end method

.method private performedSearch(Ljava/lang/String;)V
    .locals 4
    .param p1, "searchString"    # Ljava/lang/String;

    .prologue
    .line 327
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/helpshift/HSFaqsFragment;->prevSearchQuery:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 329
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 331
    .local v1, "eventObj":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "s"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    :goto_0
    const-string/jumbo v2, "s"

    invoke-static {v2, v1}, Lcom/helpshift/HSFunnel;->pushEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 336
    iput-object p1, p0, Lcom/helpshift/HSFaqsFragment;->prevSearchQuery:Ljava/lang/String;

    .line 338
    .end local v1    # "eventObj":Lorg/json/JSONObject;
    :cond_0
    return-void

    .line 332
    .restart local v1    # "eventObj":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 333
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v3, "JSONException"

    invoke-static {v2, v3, v0}, Lcom/helpshift/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method protected initSearchList()V
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/helpshift/HSFaqsFragment;->data:Lcom/helpshift/HSApiData;

    invoke-virtual {v0}, Lcom/helpshift/HSApiData;->getAllFaqs()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/helpshift/HSFaqsFragment;->initSearchList(Ljava/util/ArrayList;)V

    .line 280
    return-void
.end method

.method protected initSearchList(Ljava/lang/String;)V
    .locals 4
    .param p1, "searchQuery"    # Ljava/lang/String;

    .prologue
    .line 265
    const/4 v0, 0x0

    .line 266
    .local v0, "searchWithAny":Z
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/helpshift/HSFaqsFragment;->searchQuery:Ljava/lang/String;

    .line 267
    iget-object v1, p0, Lcom/helpshift/HSFaqsFragment;->currentLang:Ljava/lang/String;

    const-string/jumbo v2, "zh"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/helpshift/HSFaqsFragment;->currentLang:Ljava/lang/String;

    const-string/jumbo v2, "ja"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/helpshift/HSFaqsFragment;->currentLang:Ljava/lang/String;

    const-string/jumbo v2, "ko"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 268
    :cond_0
    const/4 v0, 0x1

    .line 270
    :cond_1
    iget-object v1, p0, Lcom/helpshift/HSFaqsFragment;->searchQuery:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/helpshift/HSFaqsFragment;->searchQuery:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_3

    if-nez v0, :cond_3

    .line 272
    :cond_2
    invoke-virtual {p0}, Lcom/helpshift/HSFaqsFragment;->initSearchList()V

    .line 276
    :goto_0
    return-void

    .line 274
    :cond_3
    iget-object v1, p0, Lcom/helpshift/HSFaqsFragment;->data:Lcom/helpshift/HSApiData;

    iget-object v2, p0, Lcom/helpshift/HSFaqsFragment;->searchQuery:Ljava/lang/String;

    sget-object v3, Lcom/helpshift/HSSearch$HS_SEARCH_OPTIONS;->FULL_SEARCH:Lcom/helpshift/HSSearch$HS_SEARCH_OPTIONS;

    invoke-virtual {v1, v2, v3}, Lcom/helpshift/HSApiData;->localFaqSearch(Ljava/lang/String;Lcom/helpshift/HSSearch$HS_SEARCH_OPTIONS;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/helpshift/HSFaqsFragment;->initSearchList(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public menuItemCollapsed()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 374
    invoke-direct {p0}, Lcom/helpshift/HSFaqsFragment;->performedSearch()V

    .line 375
    iget-object v0, p0, Lcom/helpshift/HSFaqsFragment;->mViewPager:Lcom/helpshift/view/HSViewPager;

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/helpshift/HSFaqsFragment;->mViewPager:Lcom/helpshift/view/HSViewPager;

    invoke-virtual {v0, v1}, Lcom/helpshift/view/HSViewPager;->setPagingEnabled(Z)V

    .line 378
    :cond_0
    invoke-virtual {p0}, Lcom/helpshift/HSFaqsFragment;->searchCompleted()V

    .line 379
    sget-object v0, Lcom/helpshift/ContactUsFilter$LOCATION;->ACTION_BAR:Lcom/helpshift/ContactUsFilter$LOCATION;

    invoke-static {v0}, Lcom/helpshift/ContactUsFilter;->showContactUs(Lcom/helpshift/ContactUsFilter$LOCATION;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 380
    iget-object v0, p0, Lcom/helpshift/HSFaqsFragment;->activity:Lcom/helpshift/HSActivity;

    invoke-virtual {v0, v1}, Lcom/helpshift/HSActivity;->showConversationMenu(Z)V

    .line 382
    :cond_1
    return v1
.end method

.method public menuItemExpanded()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 358
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/helpshift/HSFaqsFragment;->prevSearchQuery:Ljava/lang/String;

    .line 359
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/helpshift/HSFaqsFragment;->searchCache:Ljava/lang/String;

    .line 360
    iget-object v0, p0, Lcom/helpshift/HSFaqsFragment;->mViewPager:Lcom/helpshift/view/HSViewPager;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/helpshift/HSFaqsFragment;->mViewPager:Lcom/helpshift/view/HSViewPager;

    invoke-virtual {v0, v1}, Lcom/helpshift/view/HSViewPager;->setPagingEnabled(Z)V

    .line 363
    :cond_0
    iget-boolean v0, p0, Lcom/helpshift/HSFaqsFragment;->decomp:Z

    if-nez v0, :cond_1

    .line 364
    iget-object v0, p0, Lcom/helpshift/HSFaqsFragment;->actionBarHelper:Lcom/helpshift/app/ActionBarHelper;

    invoke-virtual {v0, v1}, Lcom/helpshift/app/ActionBarHelper;->setNavigationMode(I)V

    .line 366
    :cond_1
    invoke-virtual {p0}, Lcom/helpshift/HSFaqsFragment;->searchStarted()V

    .line 367
    iget-object v0, p0, Lcom/helpshift/HSFaqsFragment;->activity:Lcom/helpshift/HSActivity;

    invoke-virtual {v0, v1}, Lcom/helpshift/HSActivity;->showConversationMenu(Z)V

    .line 368
    iget-object v0, p0, Lcom/helpshift/HSFaqsFragment;->actionBarHelper:Lcom/helpshift/app/ActionBarHelper;

    invoke-virtual {p0}, Lcom/helpshift/HSFaqsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/helpshift/util/Xml;->getLogoResourceValue(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/helpshift/app/ActionBarHelper;->setIcon(I)V

    .line 369
    const/4 v0, 0x1

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 107
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 108
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 112
    sget v0, Lcom/helpshift/D$id;->hs__action_search:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/HSFaqsFragment;->mSearchItem:Landroid/view/MenuItem;

    .line 113
    iget-object v0, p0, Lcom/helpshift/HSFaqsFragment;->activity:Lcom/helpshift/HSActivity;

    iget-object v1, p0, Lcom/helpshift/HSFaqsFragment;->mSearchItem:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/helpshift/util/Styles;->setActionButtonIconColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 115
    iget-object v0, p0, Lcom/helpshift/HSFaqsFragment;->actionBarHelper:Lcom/helpshift/app/ActionBarHelper;

    iget-object v1, p0, Lcom/helpshift/HSFaqsFragment;->mSearchItem:Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/helpshift/HSFaqsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/helpshift/D$string;->hs__search_hint:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/helpshift/app/ActionBarHelper;->setQueryHint(Landroid/view/MenuItem;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/helpshift/HSFaqsFragment;->actionBarHelper:Lcom/helpshift/app/ActionBarHelper;

    iget-object v1, p0, Lcom/helpshift/HSFaqsFragment;->mSearchItem:Landroid/view/MenuItem;

    invoke-virtual {v0, v1, p0}, Lcom/helpshift/app/ActionBarHelper;->setOnQueryTextListener(Landroid/view/MenuItem;Lcom/helpshift/view/SimpleMenuItemCompat$QueryTextActions;)V

    .line 117
    iget-object v0, p0, Lcom/helpshift/HSFaqsFragment;->actionBarHelper:Lcom/helpshift/app/ActionBarHelper;

    iget-object v1, p0, Lcom/helpshift/HSFaqsFragment;->mSearchItem:Landroid/view/MenuItem;

    invoke-virtual {v0, v1, p0}, Lcom/helpshift/app/ActionBarHelper;->setOnActionExpandListener(Landroid/view/MenuItem;Lcom/helpshift/view/SimpleMenuItemCompat$MenuItemActions;)V

    .line 119
    iget-object v0, p0, Lcom/helpshift/HSFaqsFragment;->data:Lcom/helpshift/HSApiData;

    invoke-virtual {v0}, Lcom/helpshift/HSApiData;->loadIndex()V

    .line 120
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 72
    invoke-virtual {p0}, Lcom/helpshift/HSFaqsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/helpshift/HSActivity;

    iput-object v1, p0, Lcom/helpshift/HSFaqsFragment;->activity:Lcom/helpshift/HSActivity;

    .line 73
    iget-object v1, p0, Lcom/helpshift/HSFaqsFragment;->activity:Lcom/helpshift/HSActivity;

    invoke-virtual {v1}, Lcom/helpshift/HSActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/helpshift/HSFaqsFragment;->extras:Landroid/os/Bundle;

    .line 74
    iget-object v1, p0, Lcom/helpshift/HSFaqsFragment;->extras:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/helpshift/HSFaqsFragment;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "decomp"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/helpshift/HSFaqsFragment;->decomp:Z

    .line 76
    sget-object v1, Lcom/helpshift/ContactUsFilter$LOCATION;->SEARCH_FOOTER:Lcom/helpshift/ContactUsFilter$LOCATION;

    invoke-static {v1}, Lcom/helpshift/ContactUsFilter;->showContactUs(Lcom/helpshift/ContactUsFilter$LOCATION;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/helpshift/HSFaqsFragment;->showReportIssue:Z

    .line 78
    :cond_0
    iget-object v1, p0, Lcom/helpshift/HSFaqsFragment;->activity:Lcom/helpshift/HSActivity;

    invoke-virtual {v1}, Lcom/helpshift/HSActivity;->getActionBarHelper()Lcom/helpshift/app/ActionBarHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/helpshift/HSFaqsFragment;->actionBarHelper:Lcom/helpshift/app/ActionBarHelper;

    .line 80
    new-instance v1, Lcom/helpshift/HSApiData;

    iget-object v2, p0, Lcom/helpshift/HSFaqsFragment;->activity:Lcom/helpshift/HSActivity;

    invoke-direct {v1, v2}, Lcom/helpshift/HSApiData;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/helpshift/HSFaqsFragment;->data:Lcom/helpshift/HSApiData;

    .line 82
    iget-boolean v1, p0, Lcom/helpshift/HSFaqsFragment;->showReportIssue:Z

    if-ne v1, v4, :cond_1

    .line 83
    sget v1, Lcom/helpshift/D$layout;->hs__search_list_footer:I

    invoke-virtual {p1, v1, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/helpshift/HSFaqsFragment;->listFooter:Landroid/view/View;

    .line 90
    :goto_0
    sget v0, Lcom/helpshift/D$layout;->hs__simple_list_item_1:I

    .line 92
    .local v0, "rowResId":I
    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/helpshift/HSFaqsFragment;->activity:Lcom/helpshift/HSActivity;

    iget-object v3, p0, Lcom/helpshift/HSFaqsFragment;->faqItems:Ljava/util/List;

    invoke-direct {v1, v2, v0, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v1, p0, Lcom/helpshift/HSFaqsFragment;->adapter:Landroid/widget/ArrayAdapter;

    .line 95
    new-instance v1, Lcom/helpshift/customadapters/SearchAdapter;

    iget-object v2, p0, Lcom/helpshift/HSFaqsFragment;->activity:Lcom/helpshift/HSActivity;

    iget-object v3, p0, Lcom/helpshift/HSFaqsFragment;->searchItems:Ljava/util/List;

    invoke-direct {v1, v2, v0, v3}, Lcom/helpshift/customadapters/SearchAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v1, p0, Lcom/helpshift/HSFaqsFragment;->searchAdapter:Landroid/widget/ArrayAdapter;

    .line 98
    iget-object v1, p0, Lcom/helpshift/HSFaqsFragment;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p0, v1}, Lcom/helpshift/HSFaqsFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 99
    invoke-virtual {p0, v4}, Lcom/helpshift/HSFaqsFragment;->setHasOptionsMenu(Z)V

    .line 101
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/helpshift/HSFaqsFragment;->currentLang:Ljava/lang/String;

    .line 102
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/ListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 86
    .end local v0    # "rowResId":I
    :cond_1
    sget v1, Lcom/helpshift/D$layout;->hs__no_faqs:I

    invoke-virtual {p1, v1, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/helpshift/HSFaqsFragment;->listFooter:Landroid/view/View;

    goto :goto_0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 181
    iget-boolean v2, p0, Lcom/helpshift/HSFaqsFragment;->searchStarted:Z

    if-eqz v2, :cond_1

    .line 182
    invoke-direct {p0}, Lcom/helpshift/HSFaqsFragment;->performedSearch()V

    .line 183
    iget-object v2, p0, Lcom/helpshift/HSFaqsFragment;->searchItems:Ljava/util/List;

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/Faq;

    .line 188
    .local v0, "clickedItem":Lcom/helpshift/Faq;
    :goto_0
    invoke-virtual {v0}, Lcom/helpshift/Faq;->getType()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "empty_status"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 189
    invoke-virtual {v0}, Lcom/helpshift/Faq;->getType()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "section"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 190
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/helpshift/HSFaqsFragment;->activity:Lcom/helpshift/HSActivity;

    const-class v3, Lcom/helpshift/HSQuestionsList;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 191
    .local v1, "i":Landroid/content/Intent;
    const-string/jumbo v2, "sectionPublishId"

    invoke-virtual {v0}, Lcom/helpshift/Faq;->getPublishId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    :goto_1
    const-string/jumbo v2, "showInFullScreen"

    iget-object v3, p0, Lcom/helpshift/HSFaqsFragment;->activity:Lcom/helpshift/HSActivity;

    invoke-static {v3}, Lcom/helpshift/util/HSActivityUtil;->isFullScreen(Landroid/app/Activity;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 199
    iget-object v2, p0, Lcom/helpshift/HSFaqsFragment;->extras:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 200
    const-string/jumbo v2, "isRoot"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p0}, Lcom/helpshift/HSFaqsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/support/v4/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 203
    .end local v1    # "i":Landroid/content/Intent;
    :cond_0
    return-void

    .line 185
    .end local v0    # "clickedItem":Lcom/helpshift/Faq;
    :cond_1
    iget-object v2, p0, Lcom/helpshift/HSFaqsFragment;->faqItems:Ljava/util/List;

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/Faq;

    .restart local v0    # "clickedItem":Lcom/helpshift/Faq;
    goto :goto_0

    .line 193
    :cond_2
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/helpshift/HSFaqsFragment;->activity:Lcom/helpshift/HSActivity;

    const-class v3, Lcom/helpshift/HSQuestion;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 194
    .restart local v1    # "i":Landroid/content/Intent;
    const-string/jumbo v2, "questionPublishId"

    invoke-virtual {v0}, Lcom/helpshift/Faq;->getPublishId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    const-string/jumbo v2, "decomp"

    iget-boolean v3, p0, Lcom/helpshift/HSFaqsFragment;->decomp:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 196
    const-string/jumbo v2, "searchTerms"

    invoke-virtual {v0}, Lcom/helpshift/Faq;->getSearchTerms()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_1
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 170
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onResume()V

    .line 171
    sget-object v0, Lcom/helpshift/ContactUsFilter$LOCATION;->ACTION_BAR:Lcom/helpshift/ContactUsFilter$LOCATION;

    invoke-static {v0}, Lcom/helpshift/ContactUsFilter;->showContactUs(Lcom/helpshift/ContactUsFilter$LOCATION;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v1, p0, Lcom/helpshift/HSFaqsFragment;->activity:Lcom/helpshift/HSActivity;

    iget-boolean v0, p0, Lcom/helpshift/HSFaqsFragment;->searchStarted:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/helpshift/HSActivity;->showConversationMenu(Z)V

    .line 174
    :cond_0
    return-void

    .line 172
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 124
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/ListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 126
    invoke-virtual {p0}, Lcom/helpshift/HSFaqsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v3

    iput-object v3, p0, Lcom/helpshift/HSFaqsFragment;->listView:Landroid/widget/ListView;

    .line 127
    iget-object v3, p0, Lcom/helpshift/HSFaqsFragment;->listView:Landroid/widget/ListView;

    new-instance v4, Lcom/helpshift/HSFaqsFragment$1;

    invoke-direct {v4, p0}, Lcom/helpshift/HSFaqsFragment$1;-><init>(Lcom/helpshift/HSFaqsFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 137
    iget-boolean v3, p0, Lcom/helpshift/HSFaqsFragment;->showReportIssue:Z

    if-ne v3, v6, :cond_0

    .line 138
    iget-object v3, p0, Lcom/helpshift/HSFaqsFragment;->listFooter:Landroid/view/View;

    sget v4, Lcom/helpshift/D$id;->report_issue:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 139
    .local v2, "reportIssueBtn":Landroid/widget/Button;
    iget-object v3, p0, Lcom/helpshift/HSFaqsFragment;->activity:Lcom/helpshift/HSActivity;

    invoke-virtual {v2}, Landroid/widget/Button;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-static {v3, v4}, Lcom/helpshift/util/Styles;->setButtonCompoundDrawableIconColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 140
    new-instance v3, Lcom/helpshift/HSFaqsFragment$2;

    invoke-direct {v3, p0}, Lcom/helpshift/HSFaqsFragment$2;-><init>(Lcom/helpshift/HSFaqsFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    .end local v2    # "reportIssueBtn":Landroid/widget/Button;
    :cond_0
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v3}, Lcom/helpshift/HSFaqsFragment;->setListShown(Z)V

    .line 158
    iget-object v3, p0, Lcom/helpshift/HSFaqsFragment;->data:Lcom/helpshift/HSApiData;

    iget-object v4, p0, Lcom/helpshift/HSFaqsFragment;->sectionsDbHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/helpshift/HSFaqsFragment;->failureHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v5}, Lcom/helpshift/HSApiData;->getSections(Landroid/os/Handler;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :goto_0
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    iget-object v3, p0, Lcom/helpshift/HSFaqsFragment;->activity:Lcom/helpshift/HSActivity;

    sget v4, Lcom/helpshift/D$attr;->hs__contentSeparatorColor:I

    invoke-static {v3, v4}, Lcom/helpshift/util/Styles;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v1, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 164
    .local v1, "listDividerColorDrawable":Landroid/graphics/drawable/ColorDrawable;
    iget-object v3, p0, Lcom/helpshift/HSFaqsFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 165
    iget-object v3, p0, Lcom/helpshift/HSFaqsFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 166
    return-void

    .line 159
    .end local v1    # "listDividerColorDrawable":Landroid/graphics/drawable/ColorDrawable;
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Landroid/database/SQLException;
    const-string/jumbo v3, "HelpShiftDebug"

    invoke-virtual {v0}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/helpshift/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public queryTextChanged(Ljava/lang/String;)Z
    .locals 1
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    .line 347
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/helpshift/HSFaqsFragment;->searchCache:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/helpshift/HSFaqsFragment;->performedSearch(Ljava/lang/String;)V

    .line 352
    :goto_0
    invoke-virtual {p0, p1}, Lcom/helpshift/HSFaqsFragment;->initSearchList(Ljava/lang/String;)V

    .line 353
    const/4 v0, 0x0

    return v0

    .line 350
    :cond_0
    iput-object p1, p0, Lcom/helpshift/HSFaqsFragment;->searchCache:Ljava/lang/String;

    goto :goto_0
.end method

.method public queryTextSubmitted(Ljava/lang/String;)Z
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 342
    const/4 v0, 0x0

    return v0
.end method

.method protected searchCompleted()V
    .locals 2

    .prologue
    .line 299
    iget-object v0, p0, Lcom/helpshift/HSFaqsFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/helpshift/HSFaqsFragment;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/helpshift/HSFaqsFragment;->listFooter:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/helpshift/HSFaqsFragment;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p0, v0}, Lcom/helpshift/HSFaqsFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 303
    iget-object v0, p0, Lcom/helpshift/HSFaqsFragment;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 304
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/helpshift/HSFaqsFragment;->searchStarted:Z

    .line 305
    return-void
.end method

.method public searchIndexesUpdated()V
    .locals 2

    .prologue
    .line 207
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 208
    .local v0, "mainThreadHandler":Landroid/os/Handler;
    new-instance v1, Lcom/helpshift/HSFaqsFragment$3;

    invoke-direct {v1, p0}, Lcom/helpshift/HSFaqsFragment$3;-><init>(Lcom/helpshift/HSFaqsFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 213
    return-void
.end method

.method protected searchStarted()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 308
    iget-object v0, p0, Lcom/helpshift/HSFaqsFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/helpshift/HSFaqsFragment;->showReportIssue:Z

    if-ne v0, v4, :cond_0

    .line 309
    iget-object v0, p0, Lcom/helpshift/HSFaqsFragment;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/helpshift/HSFaqsFragment;->listFooter:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 314
    :goto_0
    invoke-virtual {p0}, Lcom/helpshift/HSFaqsFragment;->initSearchList()V

    .line 315
    iget-object v0, p0, Lcom/helpshift/HSFaqsFragment;->searchAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p0, v0}, Lcom/helpshift/HSFaqsFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 316
    iget-object v0, p0, Lcom/helpshift/HSFaqsFragment;->searchAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 317
    iput-boolean v4, p0, Lcom/helpshift/HSFaqsFragment;->searchStarted:Z

    .line 318
    return-void

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/helpshift/HSFaqsFragment;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/helpshift/HSFaqsFragment;->listFooter:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 312
    iget-object v0, p0, Lcom/helpshift/HSFaqsFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    goto :goto_0
.end method
