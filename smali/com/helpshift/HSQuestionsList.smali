.class public final Lcom/helpshift/HSQuestionsList;
.super Lcom/helpshift/HSActivity;
.source "HSQuestionsList.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "HelpShiftDebug"


# instance fields
.field private data:Lcom/helpshift/HSApiData;

.field private hsAdapter:Lcom/helpshift/HSSectionPagerAdapter;

.field private hsFooter:Landroid/widget/ImageView;

.field private viewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/helpshift/HSActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/helpshift/HSQuestionsList;)Lcom/helpshift/HSSectionPagerAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/HSQuestionsList;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/helpshift/HSQuestionsList;->hsAdapter:Lcom/helpshift/HSSectionPagerAdapter;

    return-object v0
.end method

.method private appendHashMap(Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "list"    # Ljava/util/ArrayList;
    .param p2, "type"    # Ljava/lang/Object;
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 31
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    const-string/jumbo v1, "obj"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 105
    invoke-super {p0}, Lcom/helpshift/HSActivity;->onBackPressed()V

    .line 106
    return-void
.end method

.method public bridge synthetic onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/res/Configuration;

    .prologue
    .line 21
    invoke-super {p0, p1}, Lcom/helpshift/HSActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v9, 0x400

    .line 38
    invoke-super {p0, p1}, Lcom/helpshift/HSActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0}, Lcom/helpshift/HSQuestionsList;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    const-string/jumbo v8, "showInFullScreen"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 41
    .local v2, "isFullScreen":Ljava/lang/Boolean;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/helpshift/HSQuestionsList;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7, v9, v9}, Landroid/view/Window;->setFlags(II)V

    .line 46
    :cond_0
    new-instance v7, Lcom/helpshift/HSApiData;

    invoke-direct {v7, p0}, Lcom/helpshift/HSApiData;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/helpshift/HSQuestionsList;->data:Lcom/helpshift/HSApiData;

    .line 48
    sget v7, Lcom/helpshift/D$layout;->hs__questions_list:I

    invoke-virtual {p0, v7}, Lcom/helpshift/HSQuestionsList;->setContentView(I)V

    .line 49
    invoke-virtual {p0}, Lcom/helpshift/HSQuestionsList;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    const-string/jumbo v8, "sectionPublishId"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 51
    .local v4, "sectionPubId":Ljava/lang/String;
    new-instance v7, Lcom/helpshift/HSSectionPagerAdapter;

    invoke-virtual {p0}, Lcom/helpshift/HSQuestionsList;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v8

    invoke-direct {v7, v8, p0, v4}, Lcom/helpshift/HSSectionPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v7, p0, Lcom/helpshift/HSQuestionsList;->hsAdapter:Lcom/helpshift/HSSectionPagerAdapter;

    .line 52
    sget v7, Lcom/helpshift/D$id;->hs__sections_pager:I

    invoke-virtual {p0, v7}, Lcom/helpshift/HSQuestionsList;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/support/v4/view/ViewPager;

    iput-object v7, p0, Lcom/helpshift/HSQuestionsList;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 53
    iget-object v7, p0, Lcom/helpshift/HSQuestionsList;->viewPager:Landroid/support/v4/view/ViewPager;

    iget-object v8, p0, Lcom/helpshift/HSQuestionsList;->hsAdapter:Lcom/helpshift/HSSectionPagerAdapter;

    invoke-virtual {v7, v8}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 54
    iget-object v7, p0, Lcom/helpshift/HSQuestionsList;->viewPager:Landroid/support/v4/view/ViewPager;

    new-instance v8, Lcom/helpshift/HSQuestionsList$1;

    invoke-direct {v8, p0}, Lcom/helpshift/HSQuestionsList$1;-><init>(Lcom/helpshift/HSQuestionsList;)V

    invoke-virtual {v7, v8}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 60
    iget-object v7, p0, Lcom/helpshift/HSQuestionsList;->viewPager:Landroid/support/v4/view/ViewPager;

    iget-object v8, p0, Lcom/helpshift/HSQuestionsList;->hsAdapter:Lcom/helpshift/HSSectionPagerAdapter;

    invoke-virtual {v8}, Lcom/helpshift/HSSectionPagerAdapter;->getCurrentPosition()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 62
    sget v7, Lcom/helpshift/D$id;->hs__pager_tab_strip:I

    invoke-virtual {p0, v7}, Lcom/helpshift/HSQuestionsList;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/support/v4/view/PagerTabStrip;

    .line 64
    .local v5, "tabStrip":Landroid/support/v4/view/PagerTabStrip;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v5}, Landroid/support/v4/view/PagerTabStrip;->getChildCount()I

    move-result v7

    if-ge v1, v7, :cond_2

    .line 65
    invoke-virtual {v5, v1}, Landroid/support/v4/view/PagerTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 66
    .local v3, "nextChild":Landroid/view/View;
    instance-of v7, v3, Landroid/widget/TextView;

    if-eqz v7, :cond_1

    move-object v6, v3

    .line 67
    check-cast v6, Landroid/widget/TextView;

    .line 68
    .local v6, "textViewToConvert":Landroid/widget/TextView;
    invoke-virtual {v6}, Landroid/widget/TextView;->setSingleLine()V

    .line 69
    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 64
    .end local v6    # "textViewToConvert":Landroid/widget/TextView;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 73
    .end local v3    # "nextChild":Landroid/view/View;
    :cond_2
    sget v7, Lcom/helpshift/D$attr;->hs__faqsPagerTabStripIndicatorColor:I

    invoke-static {p0, v7}, Lcom/helpshift/util/Styles;->getColor(Landroid/content/Context;I)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/support/v4/view/PagerTabStrip;->setTabIndicatorColor(I)V

    .line 75
    invoke-virtual {p0}, Lcom/helpshift/HSQuestionsList;->getActionBarHelper()Lcom/helpshift/app/ActionBarHelper;

    move-result-object v0

    .line 76
    .local v0, "actionBarHelper":Lcom/helpshift/app/ActionBarHelper;
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Lcom/helpshift/app/ActionBarHelper;->setDisplayHomeAsUpEnabled(Z)V

    .line 77
    invoke-virtual {p0}, Lcom/helpshift/HSQuestionsList;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/helpshift/D$string;->hs__faq_header:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/helpshift/app/ActionBarHelper;->setTitle(Ljava/lang/String;)V

    .line 79
    iget-object v7, p0, Lcom/helpshift/HSQuestionsList;->data:Lcom/helpshift/HSApiData;

    iget-object v7, v7, Lcom/helpshift/HSApiData;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {v7}, Lcom/helpshift/HSStorage;->isHelpshiftBrandingDisabled()Z

    move-result v7

    if-nez v7, :cond_3

    .line 80
    sget v7, Lcom/helpshift/D$id;->hs__helpshiftActivityFooter:I

    invoke-virtual {p0, v7}, Lcom/helpshift/HSQuestionsList;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/helpshift/HSQuestionsList;->hsFooter:Landroid/widget/ImageView;

    .line 81
    iget-object v8, p0, Lcom/helpshift/HSQuestionsList;->hsFooter:Landroid/widget/ImageView;

    sget-object v7, Lcom/helpshift/res/drawable/HSImages;->imagesMap:Ljava/util/Map;

    const-string/jumbo v9, "newHSLogo"

    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {p0, v7}, Lcom/helpshift/res/drawable/HSDraw;->getBitmapDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 83
    iget-object v7, p0, Lcom/helpshift/HSQuestionsList;->hsFooter:Landroid/widget/ImageView;

    const v8, 0x106000c

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 85
    :cond_3
    return-void
.end method

.method public bridge synthetic onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "x0"    # Landroid/view/Menu;

    .prologue
    .line 21
    invoke-super {p0, p1}, Lcom/helpshift/HSActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 89
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 90
    .local v0, "id":I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/helpshift/HSQuestionsList;->finish()V

    .line 92
    const/4 v1, 0x1

    .line 94
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/helpshift/HSActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 100
    invoke-super {p0}, Lcom/helpshift/HSActivity;->onResume()V

    .line 101
    return-void
.end method

.method public bridge synthetic onStart()V
    .locals 0

    .prologue
    .line 21
    invoke-super {p0}, Lcom/helpshift/HSActivity;->onStart()V

    return-void
.end method

.method public bridge synthetic onStop()V
    .locals 0

    .prologue
    .line 21
    invoke-super {p0}, Lcom/helpshift/HSActivity;->onStop()V

    return-void
.end method
