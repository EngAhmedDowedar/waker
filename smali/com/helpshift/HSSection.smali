.class public final Lcom/helpshift/HSSection;
.super Lcom/helpshift/HSActivity;
.source "HSSection.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "HelpShiftDebug"


# instance fields
.field private actionBarHelper:Lcom/helpshift/app/ActionBarHelper;

.field private data:Lcom/helpshift/HSApiData;

.field private mSearchItem:Landroid/view/MenuItem;

.field private mSearchView:Landroid/view/View;

.field private mainListFragment:Lcom/helpshift/HSSectionFragment;

.field private sectionPublishId:Ljava/lang/String;

.field private storage:Lcom/helpshift/HSStorage;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/helpshift/HSActivity;-><init>()V

    return-void
.end method

.method private setTextViewAlpha(Landroid/widget/TextView;F)V
    .locals 6
    .param p1, "tv"    # Landroid/widget/TextView;
    .param p2, "alpha"    # F

    .prologue
    .line 32
    invoke-virtual {p1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    .line 33
    .local v0, "color":I
    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v2, p2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    .line 37
    .local v1, "newColor":I
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 38
    return-void
.end method


# virtual methods
.method public bridge synthetic onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/res/Configuration;

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcom/helpshift/HSActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v7, 0x400

    const/4 v8, 0x1

    .line 55
    invoke-super {p0, p1}, Lcom/helpshift/HSActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    sput-boolean v8, Lcom/helpshift/HSAnalytics;->decomp:Z

    .line 58
    invoke-virtual {p0}, Lcom/helpshift/HSSection;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 59
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_2

    .line 60
    const-string/jumbo v6, "sectionPublishId"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, p0, Lcom/helpshift/HSSection;->sectionPublishId:Ljava/lang/String;

    .line 62
    new-instance v6, Lcom/helpshift/HSApiData;

    invoke-direct {v6, p0}, Lcom/helpshift/HSApiData;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/helpshift/HSSection;->data:Lcom/helpshift/HSApiData;

    .line 63
    iget-object v6, p0, Lcom/helpshift/HSSection;->data:Lcom/helpshift/HSApiData;

    iget-object v6, v6, Lcom/helpshift/HSApiData;->storage:Lcom/helpshift/HSStorage;

    iput-object v6, p0, Lcom/helpshift/HSSection;->storage:Lcom/helpshift/HSStorage;

    .line 65
    const-string/jumbo v6, "showInFullScreen"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 67
    .local v4, "isFullScreen":Ljava/lang/Boolean;
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/helpshift/HSSection;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v7, v7}, Landroid/view/Window;->setFlags(II)V

    .line 72
    :cond_0
    sget v6, Lcom/helpshift/D$layout;->hs__section:I

    invoke-virtual {p0, v6}, Lcom/helpshift/HSSection;->setContentView(I)V

    .line 74
    invoke-virtual {p0}, Lcom/helpshift/HSSection;->getActionBarHelper()Lcom/helpshift/app/ActionBarHelper;

    move-result-object v6

    iput-object v6, p0, Lcom/helpshift/HSSection;->actionBarHelper:Lcom/helpshift/app/ActionBarHelper;

    .line 75
    iget-object v6, p0, Lcom/helpshift/HSSection;->actionBarHelper:Lcom/helpshift/app/ActionBarHelper;

    invoke-virtual {v6, v8}, Lcom/helpshift/app/ActionBarHelper;->setDisplayHomeAsUpEnabled(Z)V

    .line 77
    iget-object v6, p0, Lcom/helpshift/HSSection;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {v6}, Lcom/helpshift/HSStorage;->isHelpshiftBrandingDisabled()Z

    move-result v6

    if-nez v6, :cond_1

    .line 78
    sget v6, Lcom/helpshift/D$id;->hs__sectionFooter:I

    invoke-virtual {p0, v6}, Lcom/helpshift/HSSection;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 79
    .local v5, "iv":Landroid/widget/ImageView;
    sget-object v6, Lcom/helpshift/res/drawable/HSImages;->imagesMap:Ljava/util/Map;

    const-string/jumbo v7, "newHSLogo"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {p0, v6}, Lcom/helpshift/res/drawable/HSDraw;->getBitmapDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 81
    const v6, 0x106000c

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 84
    .end local v5    # "iv":Landroid/widget/ImageView;
    :cond_1
    invoke-virtual {p0}, Lcom/helpshift/HSSection;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 85
    .local v1, "fm":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    .line 86
    .local v3, "ft":Landroid/support/v4/app/FragmentTransaction;
    new-instance v6, Lcom/helpshift/HSSectionFragment;

    invoke-direct {v6}, Lcom/helpshift/HSSectionFragment;-><init>()V

    iput-object v6, p0, Lcom/helpshift/HSSection;->mainListFragment:Lcom/helpshift/HSSectionFragment;

    .line 87
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 88
    .local v2, "fragmentData":Landroid/os/Bundle;
    const-string/jumbo v6, "sectionPublishId"

    iget-object v7, p0, Lcom/helpshift/HSSection;->sectionPublishId:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string/jumbo v6, "decomp"

    invoke-virtual {v2, v6, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 90
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 91
    iget-object v6, p0, Lcom/helpshift/HSSection;->mainListFragment:Lcom/helpshift/HSSectionFragment;

    invoke-virtual {v6, v2}, Lcom/helpshift/HSSectionFragment;->setArguments(Landroid/os/Bundle;)V

    .line 93
    sget v6, Lcom/helpshift/D$id;->hs__sectionContainer:I

    iget-object v7, p0, Lcom/helpshift/HSSection;->mainListFragment:Lcom/helpshift/HSSectionFragment;

    invoke-virtual {v3, v6, v7}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 94
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 98
    .end local v1    # "fm":Landroid/support/v4/app/FragmentManager;
    .end local v2    # "fragmentData":Landroid/os/Bundle;
    .end local v3    # "ft":Landroid/support/v4/app/FragmentTransaction;
    .end local v4    # "isFullScreen":Ljava/lang/Boolean;
    :goto_0
    return-void

    .line 96
    :cond_2
    invoke-virtual {p0}, Lcom/helpshift/HSSection;->finish()V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/helpshift/HSSection;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/helpshift/D$menu;->hs__faqs_fragment:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 108
    invoke-super {p0, p1}, Lcom/helpshift/HSActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 113
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 114
    .local v0, "id":I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/helpshift/HSSection;->finish()V

    .line 116
    const/4 v1, 0x1

    .line 118
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/helpshift/HSActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 42
    invoke-virtual {p0}, Lcom/helpshift/HSSection;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 43
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 44
    const-string/jumbo v2, "isRoot"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 45
    .local v1, "isRoot":Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/helpshift/HSSection;->isFinishing()Z

    move-result v2

    if-ne v2, v3, :cond_0

    .line 46
    invoke-static {}, Lcom/helpshift/util/HSActivityUtil;->sessionEnding()V

    .line 50
    .end local v1    # "isRoot":Ljava/lang/Boolean;
    :cond_0
    invoke-super {p0}, Lcom/helpshift/HSActivity;->onPause()V

    .line 51
    return-void
.end method

.method public bridge synthetic onStart()V
    .locals 0

    .prologue
    .line 19
    invoke-super {p0}, Lcom/helpshift/HSActivity;->onStart()V

    return-void
.end method

.method public bridge synthetic onStop()V
    .locals 0

    .prologue
    .line 19
    invoke-super {p0}, Lcom/helpshift/HSActivity;->onStop()V

    return-void
.end method

.method public searchIndexesUpdated()V
    .locals 0

    .prologue
    .line 103
    return-void
.end method
