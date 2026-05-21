.class public Lcom/helpshift/app/ActionBarHelperNative;
.super Lcom/helpshift/app/ActionBarHelper;
.source "ActionBarHelperNative.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "HelpShiftDebug"


# instance fields
.field private data:Lcom/helpshift/HSApiData;

.field private indeterminateVisibility:Z

.field private refreshItem:Landroid/view/MenuItem;

.field private screenType:Ljava/lang/String;

.field private storage:Lcom/helpshift/HSStorage;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/helpshift/app/ActionBarHelper;-><init>(Landroid/app/Activity;)V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/helpshift/app/ActionBarHelperNative;->refreshItem:Landroid/view/MenuItem;

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/helpshift/app/ActionBarHelperNative;->indeterminateVisibility:Z

    .line 37
    return-void
.end method

.method private isDialogUIForTabletsEnabled()Z
    .locals 5

    .prologue
    .line 59
    iget-object v3, p0, Lcom/helpshift/app/ActionBarHelperNative;->data:Lcom/helpshift/HSApiData;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/helpshift/app/ActionBarHelperNative;->storage:Lcom/helpshift/HSStorage;

    if-nez v3, :cond_1

    .line 60
    :cond_0
    new-instance v3, Lcom/helpshift/HSApiData;

    iget-object v4, p0, Lcom/helpshift/app/ActionBarHelperNative;->mActivity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Lcom/helpshift/HSApiData;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/helpshift/app/ActionBarHelperNative;->data:Lcom/helpshift/HSApiData;

    .line 61
    iget-object v3, p0, Lcom/helpshift/app/ActionBarHelperNative;->data:Lcom/helpshift/HSApiData;

    iget-object v3, v3, Lcom/helpshift/HSApiData;->storage:Lcom/helpshift/HSStorage;

    iput-object v3, p0, Lcom/helpshift/app/ActionBarHelperNative;->storage:Lcom/helpshift/HSStorage;

    .line 63
    :cond_1
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 65
    .local v2, "enableDialogUIForTablets":Ljava/lang/Boolean;
    :try_start_0
    iget-object v3, p0, Lcom/helpshift/app/ActionBarHelperNative;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {v3}, Lcom/helpshift/HSStorage;->getAppConfig()Lorg/json/JSONObject;

    move-result-object v0

    .line 66
    .local v0, "config":Lorg/json/JSONObject;
    const-string/jumbo v3, "enableDialogUIForTablets"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 70
    .end local v0    # "config":Lorg/json/JSONObject;
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    return v3

    .line 67
    :catch_0
    move-exception v1

    .line 68
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v3, "HelpShiftDebug"

    const-string/jumbo v4, "isDialogUIForTabletsEnabled : "

    invoke-static {v3, v4, v1}, Lcom/helpshift/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private isLollipop()Z
    .locals 2

    .prologue
    .line 182
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRoot()Z
    .locals 3

    .prologue
    .line 74
    iget-object v1, p0, Lcom/helpshift/app/ActionBarHelperNative;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 75
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v1, "isRoot"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private isTablet()Z
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/helpshift/app/ActionBarHelperNative;->screenType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/helpshift/app/ActionBarHelperNative;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/helpshift/D$string;->hs__screen_type:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/app/ActionBarHelperNative;->screenType:Ljava/lang/String;

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/helpshift/app/ActionBarHelperNative;->screenType:Ljava/lang/String;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setRefreshActionButtonState(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 186
    iget-object v0, p0, Lcom/helpshift/app/ActionBarHelperNative;->refreshItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/helpshift/app/ActionBarHelperNative;->refreshItem:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 189
    :cond_0
    return-void
.end method


# virtual methods
.method public clearFocus(Landroid/view/MenuItem;)V
    .locals 2
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 169
    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    .line 171
    .local v0, "actionView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 172
    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    .line 174
    :cond_0
    return-void
.end method

.method public collapseActionView(Landroid/view/MenuItem;)V
    .locals 2
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 139
    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    .line 141
    .local v0, "actionView":Landroid/view/View;
    instance-of v1, v0, Landroid/widget/SearchView;

    if-eqz v1, :cond_0

    .line 142
    invoke-static {p1}, Landroid/support/v4/view/MenuItemCompat;->collapseActionView(Landroid/view/MenuItem;)Z

    .line 144
    :cond_0
    return-void
.end method

.method public getQuery(Landroid/view/MenuItem;)Ljava/lang/String;
    .locals 3
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 157
    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    .line 158
    .local v0, "actionView":Landroid/view/View;
    const-string/jumbo v1, ""

    .line 160
    .local v1, "query":Ljava/lang/String;
    instance-of v2, v0, Landroid/widget/SearchView;

    if-eqz v2, :cond_0

    .line 161
    check-cast v0, Landroid/widget/SearchView;

    .end local v0    # "actionView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 164
    :cond_0
    return-object v1
.end method

.method public setDisplayHomeAsUpEnabled(Z)V
    .locals 2
    .param p1, "b"    # Z

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/helpshift/app/ActionBarHelperNative;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/helpshift/app/ActionBarHelperNative;->isDialogUIForTabletsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    iget-object v0, p0, Lcom/helpshift/app/ActionBarHelperNative;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setIcon(I)V

    .line 45
    iget-object v0, p0, Lcom/helpshift/app/ActionBarHelperNative;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-direct {p0}, Lcom/helpshift/app/ActionBarHelperNative;->isRoot()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 49
    :goto_1
    return-void

    .line 45
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/helpshift/app/ActionBarHelperNative;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    goto :goto_1
.end method

.method public setIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 178
    iget-object v0, p0, Lcom/helpshift/app/ActionBarHelperNative;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setIcon(I)V

    .line 179
    return-void
.end method

.method public setNavigationMode(I)V
    .locals 1
    .param p1, "navigationMode"    # I

    .prologue
    .line 100
    iget-object v0, p0, Lcom/helpshift/app/ActionBarHelperNative;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 101
    return-void
.end method

.method public setOnActionExpandListener(Landroid/view/MenuItem;Lcom/helpshift/view/SimpleMenuItemCompat$MenuItemActions;)V
    .locals 1
    .param p1, "menuItem"    # Landroid/view/MenuItem;
    .param p2, "itemActions"    # Lcom/helpshift/view/SimpleMenuItemCompat$MenuItemActions;

    .prologue
    .line 124
    new-instance v0, Lcom/helpshift/app/ActionBarHelperNative$2;

    invoke-direct {v0, p0, p2}, Lcom/helpshift/app/ActionBarHelperNative$2;-><init>(Lcom/helpshift/app/ActionBarHelperNative;Lcom/helpshift/view/SimpleMenuItemCompat$MenuItemActions;)V

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    .line 135
    return-void
.end method

.method public setOnQueryTextListener(Landroid/view/MenuItem;Lcom/helpshift/view/SimpleMenuItemCompat$QueryTextActions;)V
    .locals 2
    .param p1, "menuItem"    # Landroid/view/MenuItem;
    .param p2, "queryTextActions"    # Lcom/helpshift/view/SimpleMenuItemCompat$QueryTextActions;

    .prologue
    .line 105
    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    .line 107
    .local v0, "actionView":Landroid/view/View;
    instance-of v1, v0, Landroid/widget/SearchView;

    if-eqz v1, :cond_0

    .line 108
    check-cast v0, Landroid/widget/SearchView;

    .end local v0    # "actionView":Landroid/view/View;
    new-instance v1, Lcom/helpshift/app/ActionBarHelperNative$1;

    invoke-direct {v1, p0, p2}, Lcom/helpshift/app/ActionBarHelperNative$1;-><init>(Lcom/helpshift/app/ActionBarHelperNative;Lcom/helpshift/view/SimpleMenuItemCompat$QueryTextActions;)V

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 120
    :cond_0
    return-void
.end method

.method public setQueryHint(Landroid/view/MenuItem;Ljava/lang/String;)V
    .locals 2
    .param p1, "menuItem"    # Landroid/view/MenuItem;
    .param p2, "hint"    # Ljava/lang/String;

    .prologue
    .line 148
    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    .line 150
    .local v0, "actionView":Landroid/view/View;
    instance-of v1, v0, Landroid/widget/SearchView;

    if-eqz v1, :cond_0

    .line 151
    check-cast v0, Landroid/widget/SearchView;

    .end local v0    # "actionView":Landroid/view/View;
    invoke-virtual {v0, p2}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 153
    :cond_0
    return-void
.end method

.method public setSupportProgressBarIndeterminateVisibility(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/helpshift/app/ActionBarHelperNative;->indeterminateVisibility:Z

    .line 91
    invoke-direct {p0}, Lcom/helpshift/app/ActionBarHelperNative;->isLollipop()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    invoke-direct {p0, p1}, Lcom/helpshift/app/ActionBarHelperNative;->setRefreshActionButtonState(Z)V

    .line 96
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/helpshift/app/ActionBarHelperNative;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/helpshift/app/ActionBarHelperNative;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 81
    return-void
.end method

.method public setupIndeterminateProgressBar(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 193
    invoke-direct {p0}, Lcom/helpshift/app/ActionBarHelperNative;->isLollipop()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    sget v0, Lcom/helpshift/D$menu;->hs__actionbar_indeterminate_progress:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 195
    const v0, 0x102000d

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/app/ActionBarHelperNative;->refreshItem:Landroid/view/MenuItem;

    .line 196
    iget-boolean v0, p0, Lcom/helpshift/app/ActionBarHelperNative;->indeterminateVisibility:Z

    invoke-direct {p0, v0}, Lcom/helpshift/app/ActionBarHelperNative;->setRefreshActionButtonState(Z)V

    .line 198
    :cond_0
    return-void
.end method

.method public supportRequestWindowFeature(I)V
    .locals 1
    .param p1, "featureId"    # I

    .prologue
    .line 85
    iget-object v0, p0, Lcom/helpshift/app/ActionBarHelperNative;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 86
    return-void
.end method
