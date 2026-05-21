.class public final Lcom/helpshift/SearchResultActivity;
.super Lcom/helpshift/HSActivity;
.source "SearchResultActivity.java"


# instance fields
.field private data:Lcom/helpshift/HSApiData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/helpshift/HSActivity;-><init>()V

    return-void
.end method

.method private getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 126
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/helpshift/SearchResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    return-object v0
.end method

.method private setListAdapter(Lcom/helpshift/customadapters/SearchAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/helpshift/customadapters/SearchAdapter;

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/helpshift/SearchResultActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 123
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, -0x1

    .line 131
    invoke-super {p0, p1, p2, p3}, Lcom/helpshift/HSActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 132
    if-ne p2, v2, :cond_0

    const/16 v1, 0x7fbb

    if-ne p1, v1, :cond_0

    .line 133
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 134
    .local v0, "returnIntent":Landroid/content/Intent;
    invoke-virtual {v0, p3}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 135
    invoke-virtual {p0, v2, v0}, Lcom/helpshift/SearchResultActivity;->setResult(ILandroid/content/Intent;)V

    .line 136
    invoke-virtual {p0}, Lcom/helpshift/SearchResultActivity;->finish()V

    .line 138
    .end local v0    # "returnIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public bridge synthetic onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/res/Configuration;

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/helpshift/HSActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 17
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 36
    invoke-super/range {p0 .. p1}, Lcom/helpshift/HSActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-virtual/range {p0 .. p0}, Lcom/helpshift/SearchResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 38
    .local v4, "extras":Landroid/os/Bundle;
    if-eqz v4, :cond_3

    .line 39
    const-string/jumbo v12, "showInFullScreen"

    invoke-virtual {v4, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 41
    .local v7, "isFullScreen":Ljava/lang/Boolean;
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 42
    invoke-virtual/range {p0 .. p0}, Lcom/helpshift/SearchResultActivity;->getWindow()Landroid/view/Window;

    move-result-object v12

    const/16 v13, 0x400

    const/16 v14, 0x400

    invoke-virtual {v12, v13, v14}, Landroid/view/Window;->setFlags(II)V

    .line 46
    :cond_0
    new-instance v12, Lcom/helpshift/HSApiData;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/helpshift/HSApiData;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/helpshift/SearchResultActivity;->data:Lcom/helpshift/HSApiData;

    .line 48
    sget v12, Lcom/helpshift/D$layout;->hs__search_result_activity:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/helpshift/SearchResultActivity;->setContentView(I)V

    .line 50
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/helpshift/SearchResultActivity;->data:Lcom/helpshift/HSApiData;

    iget-object v12, v12, Lcom/helpshift/HSApiData;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {v12}, Lcom/helpshift/HSStorage;->isHelpshiftBrandingDisabled()Z

    move-result v12

    if-nez v12, :cond_1

    .line 51
    sget v12, Lcom/helpshift/D$id;->hs__helpshiftActivityFooter:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/helpshift/SearchResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 52
    .local v6, "hsFooter":Landroid/widget/ImageView;
    sget-object v12, Lcom/helpshift/res/drawable/HSImages;->imagesMap:Ljava/util/Map;

    const-string/jumbo v13, "newHSLogo"

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/helpshift/res/drawable/HSDraw;->getBitmapDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v12

    invoke-virtual {v6, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 54
    const v12, 0x106000c

    invoke-virtual {v6, v12}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 57
    .end local v6    # "hsFooter":Landroid/widget/ImageView;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/helpshift/SearchResultActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v12

    sget v13, Lcom/helpshift/D$layout;->hs__search_result_header:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 58
    .local v5, "headerView":Landroid/widget/TextView;
    const/high16 v12, 0x3f000000    # 0.5f

    invoke-static {v5, v12}, Lcom/helpshift/util/HSColor;->setTextViewAlpha(Landroid/widget/TextView;F)V

    .line 59
    invoke-direct/range {p0 .. p0}, Lcom/helpshift/SearchResultActivity;->getListView()Landroid/widget/ListView;

    move-result-object v12

    const-string/jumbo v13, ""

    const/4 v14, 0x0

    invoke-virtual {v12, v5, v13, v14}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 60
    invoke-direct/range {p0 .. p0}, Lcom/helpshift/SearchResultActivity;->getListView()Landroid/widget/ListView;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/helpshift/SearchResultActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v13

    sget v14, Lcom/helpshift/D$layout;->hs__search_result_footer:I

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 62
    invoke-virtual/range {p0 .. p0}, Lcom/helpshift/SearchResultActivity;->getActionBarHelper()Lcom/helpshift/app/ActionBarHelper;

    move-result-object v1

    .line 63
    .local v1, "actionBarHelper":Lcom/helpshift/app/ActionBarHelper;
    const/4 v12, 0x1

    invoke-virtual {v1, v12}, Lcom/helpshift/app/ActionBarHelper;->setDisplayHomeAsUpEnabled(Z)V

    .line 64
    invoke-virtual/range {p0 .. p0}, Lcom/helpshift/SearchResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/helpshift/D$string;->hs__search_result_title:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Lcom/helpshift/app/ActionBarHelper;->setTitle(Ljava/lang/String;)V

    .line 66
    const-string/jumbo v12, "searchQuery"

    invoke-virtual {v4, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 67
    .local v10, "searchQuery":Ljava/lang/String;
    new-instance v2, Lcom/helpshift/HSApiData;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/helpshift/HSApiData;-><init>(Landroid/content/Context;)V

    .line 68
    .local v2, "data":Lcom/helpshift/HSApiData;
    sget-object v12, Lcom/helpshift/HSSearch$HS_SEARCH_OPTIONS;->KEYWORD_SEARCH:Lcom/helpshift/HSSearch$HS_SEARCH_OPTIONS;

    invoke-virtual {v2, v10, v12}, Lcom/helpshift/HSApiData;->localFaqSearch(Ljava/lang/String;Lcom/helpshift/HSSearch$HS_SEARCH_OPTIONS;)Ljava/util/ArrayList;

    move-result-object v9

    .line 70
    .local v9, "searchItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/helpshift/Faq;>;"
    const/4 v3, 0x3

    .line 71
    .local v3, "end":I
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x3

    if-ge v12, v13, :cond_2

    .line 72
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 74
    :cond_2
    new-instance v8, Lcom/helpshift/customadapters/SearchAdapter;

    sget v12, Lcom/helpshift/D$layout;->hs__simple_list_item_3:I

    const/4 v13, 0x0

    invoke-virtual {v9, v13, v3}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v12, v13}, Lcom/helpshift/customadapters/SearchAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 77
    .local v8, "searchAdapter":Lcom/helpshift/customadapters/SearchAdapter;
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/helpshift/SearchResultActivity;->setListAdapter(Lcom/helpshift/customadapters/SearchAdapter;)V

    .line 78
    invoke-direct/range {p0 .. p0}, Lcom/helpshift/SearchResultActivity;->getListView()Landroid/widget/ListView;

    move-result-object v12

    new-instance v13, Lcom/helpshift/SearchResultActivity$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v9}, Lcom/helpshift/SearchResultActivity$1;-><init>(Lcom/helpshift/SearchResultActivity;Ljava/util/ArrayList;)V

    invoke-virtual {v12, v13}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 94
    sget v12, Lcom/helpshift/D$id;->send_anyway_button:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/helpshift/SearchResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    .line 95
    .local v11, "sendAnyway":Landroid/widget/Button;
    new-instance v12, Lcom/helpshift/SearchResultActivity$2;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/helpshift/SearchResultActivity$2;-><init>(Lcom/helpshift/SearchResultActivity;)V

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    .end local v1    # "actionBarHelper":Lcom/helpshift/app/ActionBarHelper;
    .end local v2    # "data":Lcom/helpshift/HSApiData;
    .end local v3    # "end":I
    .end local v5    # "headerView":Landroid/widget/TextView;
    .end local v7    # "isFullScreen":Ljava/lang/Boolean;
    .end local v8    # "searchAdapter":Lcom/helpshift/customadapters/SearchAdapter;
    .end local v9    # "searchItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/helpshift/Faq;>;"
    .end local v10    # "searchQuery":Ljava/lang/String;
    .end local v11    # "sendAnyway":Landroid/widget/Button;
    :goto_0
    return-void

    .line 106
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/helpshift/SearchResultActivity;->finish()V

    goto :goto_0
.end method

.method public bridge synthetic onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "x0"    # Landroid/view/Menu;

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/helpshift/HSActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 148
    invoke-super {p0}, Lcom/helpshift/HSActivity;->onDestroy()V

    .line 149
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/helpshift/HelpshiftContext;->setViewState(Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 112
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 113
    .local v0, "id":I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/helpshift/SearchResultActivity;->finish()V

    .line 115
    const/4 v1, 0x1

    .line 117
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/helpshift/HSActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 142
    invoke-super {p0}, Lcom/helpshift/HSActivity;->onResume()V

    .line 143
    const-string/jumbo v0, "issue-filing"

    invoke-static {v0}, Lcom/helpshift/HelpshiftContext;->setViewState(Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method public bridge synthetic onStart()V
    .locals 0

    .prologue
    .line 30
    invoke-super {p0}, Lcom/helpshift/HSActivity;->onStart()V

    return-void
.end method

.method public bridge synthetic onStop()V
    .locals 0

    .prologue
    .line 30
    invoke-super {p0}, Lcom/helpshift/HSActivity;->onStop()V

    return-void
.end method
