.class public final Lcom/helpshift/HSQuestion;
.super Lcom/helpshift/HSActivity;
.source "HSQuestion.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "HelpShiftDebug"


# instance fields
.field actionBarHelper:Lcom/helpshift/app/ActionBarHelper;

.field private data:Lcom/helpshift/HSApiData;

.field extras:Landroid/os/Bundle;

.field private hsFooter:Landroid/widget/ImageView;

.field private questionFragment:Lcom/helpshift/HSQuestionFragment;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/helpshift/HSActivity;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/helpshift/HSQuestion;->questionFragment:Lcom/helpshift/HSQuestionFragment;

    return-void
.end method


# virtual methods
.method protected isShowSearchOnNewConversationFlowActive()Z
    .locals 3

    .prologue
    .line 83
    iget-object v1, p0, Lcom/helpshift/HSQuestion;->extras:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 84
    iget-object v1, p0, Lcom/helpshift/HSQuestion;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "questionFlow"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "questionFlow":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "showSearchOnNewConversationFlow"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    const/4 v1, 0x1

    .line 90
    .end local v0    # "questionFlow":Ljava/lang/String;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onAttachFragment(Landroid/support/v4/app/Fragment;)V
    .locals 1
    .param p1, "f"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 111
    invoke-super {p0, p1}, Lcom/helpshift/HSActivity;->onAttachFragment(Landroid/support/v4/app/Fragment;)V

    .line 112
    instance-of v0, p1, Lcom/helpshift/HSQuestionFragment;

    if-eqz v0, :cond_0

    .line 113
    check-cast p1, Lcom/helpshift/HSQuestionFragment;

    .end local p1    # "f":Landroid/support/v4/app/Fragment;
    iput-object p1, p0, Lcom/helpshift/HSQuestion;->questionFragment:Lcom/helpshift/HSQuestionFragment;

    .line 115
    :cond_0
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
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v3, 0x400

    const/4 v4, 0x1

    .line 49
    invoke-super {p0, p1}, Lcom/helpshift/HSActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/helpshift/HSQuestion;->supportRequestWindowFeature(I)V

    .line 52
    invoke-virtual {p0}, Lcom/helpshift/HSQuestion;->getActionBarHelper()Lcom/helpshift/app/ActionBarHelper;

    move-result-object v1

    sget v2, Lcom/helpshift/D$string;->hs__question_header:I

    invoke-virtual {p0, v2}, Lcom/helpshift/HSQuestion;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/helpshift/app/ActionBarHelper;->setTitle(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Lcom/helpshift/HSQuestion;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/helpshift/HSQuestion;->extras:Landroid/os/Bundle;

    .line 55
    iget-object v1, p0, Lcom/helpshift/HSQuestion;->extras:Landroid/os/Bundle;

    if-eqz v1, :cond_2

    .line 56
    iget-object v1, p0, Lcom/helpshift/HSQuestion;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "showInFullScreen"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 58
    .local v0, "isFullScreen":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/helpshift/HSQuestion;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 63
    :cond_0
    new-instance v1, Lcom/helpshift/HSApiData;

    invoke-direct {v1, p0}, Lcom/helpshift/HSApiData;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/helpshift/HSQuestion;->data:Lcom/helpshift/HSApiData;

    .line 65
    sget v1, Lcom/helpshift/D$layout;->hs__question:I

    invoke-virtual {p0, v1}, Lcom/helpshift/HSQuestion;->setContentView(I)V

    .line 67
    invoke-virtual {p0}, Lcom/helpshift/HSQuestion;->getActionBarHelper()Lcom/helpshift/app/ActionBarHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/helpshift/HSQuestion;->actionBarHelper:Lcom/helpshift/app/ActionBarHelper;

    .line 68
    iget-object v1, p0, Lcom/helpshift/HSQuestion;->actionBarHelper:Lcom/helpshift/app/ActionBarHelper;

    invoke-virtual {v1, v4}, Lcom/helpshift/app/ActionBarHelper;->setDisplayHomeAsUpEnabled(Z)V

    .line 70
    iget-object v1, p0, Lcom/helpshift/HSQuestion;->data:Lcom/helpshift/HSApiData;

    iget-object v1, v1, Lcom/helpshift/HSApiData;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {v1}, Lcom/helpshift/HSStorage;->isHelpshiftBrandingDisabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 71
    sget v1, Lcom/helpshift/D$id;->hs__helpshiftActivityFooter:I

    invoke-virtual {p0, v1}, Lcom/helpshift/HSQuestion;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/helpshift/HSQuestion;->hsFooter:Landroid/widget/ImageView;

    .line 72
    iget-object v2, p0, Lcom/helpshift/HSQuestion;->hsFooter:Landroid/widget/ImageView;

    sget-object v1, Lcom/helpshift/res/drawable/HSImages;->imagesMap:Ljava/util/Map;

    const-string/jumbo v3, "newHSLogo"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/helpshift/res/drawable/HSDraw;->getBitmapDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 74
    iget-object v1, p0, Lcom/helpshift/HSQuestion;->hsFooter:Landroid/widget/ImageView;

    const v2, 0x106000c

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 76
    :cond_1
    invoke-virtual {p0, v4}, Lcom/helpshift/HSQuestion;->setSupportProgressBarIndeterminateVisibility(Z)V

    .line 80
    .end local v0    # "isFullScreen":Ljava/lang/Boolean;
    :goto_0
    return-void

    .line 78
    :cond_2
    invoke-virtual {p0}, Lcom/helpshift/HSQuestion;->finish()V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/helpshift/HSQuestion;->isShowSearchOnNewConversationFlowActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/helpshift/HSQuestion;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    sget v2, Lcom/helpshift/D$menu;->hs__search_on_conversation:I

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 97
    sget v1, Lcom/helpshift/D$id;->hs__action_done:I

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 98
    .local v0, "doneIcon":Landroid/graphics/drawable/Drawable;
    invoke-static {p0, v0}, Lcom/helpshift/util/Styles;->setActionButtonIconColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 101
    .end local v0    # "doneIcon":Landroid/graphics/drawable/Drawable;
    :cond_0
    iget-object v1, p0, Lcom/helpshift/HSQuestion;->actionBarHelper:Lcom/helpshift/app/ActionBarHelper;

    if-nez v1, :cond_1

    .line 102
    invoke-virtual {p0}, Lcom/helpshift/HSQuestion;->getActionBarHelper()Lcom/helpshift/app/ActionBarHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/helpshift/HSQuestion;->actionBarHelper:Lcom/helpshift/app/ActionBarHelper;

    .line 105
    :cond_1
    iget-object v1, p0, Lcom/helpshift/HSQuestion;->actionBarHelper:Lcom/helpshift/app/ActionBarHelper;

    invoke-virtual {p0}, Lcom/helpshift/HSQuestion;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/helpshift/app/ActionBarHelper;->setupIndeterminateProgressBar(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 106
    invoke-super {p0, p1}, Lcom/helpshift/HSActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 37
    invoke-virtual {p0}, Lcom/helpshift/HSQuestion;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 38
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 39
    const-string/jumbo v2, "isRoot"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 40
    .local v1, "isRoot":Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/helpshift/HSQuestion;->isFinishing()Z

    move-result v2

    if-ne v2, v3, :cond_0

    .line 41
    invoke-static {}, Lcom/helpshift/util/HSActivityUtil;->sessionEnding()V

    .line 44
    .end local v1    # "isRoot":Ljava/lang/Boolean;
    :cond_0
    invoke-super {p0}, Lcom/helpshift/HSActivity;->onPause()V

    .line 45
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 32
    invoke-super {p0}, Lcom/helpshift/HSActivity;->onResume()V

    .line 33
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
