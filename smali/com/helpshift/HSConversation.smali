.class public final Lcom/helpshift/HSConversation;
.super Lcom/helpshift/HSActivity;
.source "HSConversation.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "HelpShiftDebug"

.field public static keepActivityActive:Z


# instance fields
.field private bundle:Landroid/os/Bundle;

.field private data:Lcom/helpshift/HSApiData;

.field private ft:Landroid/support/v4/app/FragmentTransaction;

.field private locale:Ljava/util/Locale;

.field private storage:Lcom/helpshift/HSStorage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-boolean v0, Lcom/helpshift/HSConversation;->keepActivityActive:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/helpshift/HSActivity;-><init>()V

    return-void
.end method

.method public static isActivityActive()Z
    .locals 1

    .prologue
    .line 37
    sget-boolean v0, Lcom/helpshift/HSConversation;->keepActivityActive:Z

    return v0
.end method

.method private restartActivity()V
    .locals 1

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/helpshift/HSConversation;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 183
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/helpshift/HSConversation;->finish()V

    .line 184
    invoke-virtual {p0, v0}, Lcom/helpshift/HSConversation;->startActivity(Landroid/content/Intent;)V

    .line 185
    return-void
.end method

.method public static setKeepActivityActive(Z)V
    .locals 0
    .param p0, "selectingAttachment"    # Z

    .prologue
    .line 33
    sput-boolean p0, Lcom/helpshift/HSConversation;->keepActivityActive:Z

    .line 34
    return-void
.end method

.method private showFragment()V
    .locals 4

    .prologue
    .line 87
    iget-object v2, p0, Lcom/helpshift/HSConversation;->storage:Lcom/helpshift/HSStorage;

    iget-object v3, p0, Lcom/helpshift/HSConversation;->data:Lcom/helpshift/HSApiData;

    invoke-virtual {v3}, Lcom/helpshift/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/helpshift/HSStorage;->getActiveConversation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "activeConversation":Ljava/lang/String;
    iget-object v2, p0, Lcom/helpshift/HSConversation;->storage:Lcom/helpshift/HSStorage;

    iget-object v3, p0, Lcom/helpshift/HSConversation;->data:Lcom/helpshift/HSApiData;

    invoke-virtual {v3}, Lcom/helpshift/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/helpshift/HSStorage;->getArchivedConversation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, "archivedConversation":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 91
    iget-object v2, p0, Lcom/helpshift/HSConversation;->bundle:Landroid/os/Bundle;

    const-string/jumbo v3, "issueId"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-direct {p0}, Lcom/helpshift/HSConversation;->showMessagesFragment()V

    .line 99
    :goto_0
    return-void

    .line 93
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 94
    iget-object v2, p0, Lcom/helpshift/HSConversation;->bundle:Landroid/os/Bundle;

    const-string/jumbo v3, "issueId"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-direct {p0}, Lcom/helpshift/HSConversation;->showMessagesFragment()V

    goto :goto_0

    .line 97
    :cond_1
    invoke-direct {p0}, Lcom/helpshift/HSConversation;->showNewConversationFragment()V

    goto :goto_0
.end method

.method private showMessagesFragment()V
    .locals 4

    .prologue
    .line 111
    iget-object v0, p0, Lcom/helpshift/HSConversation;->ft:Landroid/support/v4/app/FragmentTransaction;

    sget v1, Lcom/helpshift/D$id;->hs__fragment_holder:I

    const-class v2, Lcom/helpshift/HSMessagesFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/helpshift/HSConversation;->bundle:Landroid/os/Bundle;

    invoke-static {p0, v2, v3}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 115
    iget-object v0, p0, Lcom/helpshift/HSConversation;->ft:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 116
    return-void
.end method

.method private showNewConversationFragment()V
    .locals 4

    .prologue
    .line 102
    iget-object v0, p0, Lcom/helpshift/HSConversation;->ft:Landroid/support/v4/app/FragmentTransaction;

    sget v1, Lcom/helpshift/D$id;->hs__fragment_holder:I

    const-class v2, Lcom/helpshift/HSAddIssueFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/helpshift/HSConversation;->bundle:Landroid/os/Bundle;

    invoke-static {p0, v2, v3}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 106
    iget-object v0, p0, Lcom/helpshift/HSConversation;->ft:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 107
    invoke-super {p0}, Lcom/helpshift/HSActivity;->startPoller()V

    .line 108
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 162
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 163
    .local v0, "returnIntent":Landroid/content/Intent;
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/helpshift/HSConversation;->setResult(ILandroid/content/Intent;)V

    .line 164
    invoke-super {p0}, Lcom/helpshift/HSActivity;->onBackPressed()V

    .line 165
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 175
    invoke-super {p0, p1}, Lcom/helpshift/HSActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 176
    iget-object v0, p0, Lcom/helpshift/HSConversation;->locale:Ljava/util/Locale;

    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    invoke-direct {p0}, Lcom/helpshift/HSConversation;->restartActivity()V

    .line 179
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/helpshift/HSActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Lcom/helpshift/HSConversation;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v5, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v5, p0, Lcom/helpshift/HSConversation;->locale:Ljava/util/Locale;

    .line 44
    new-instance v5, Lcom/helpshift/HSApiData;

    invoke-direct {v5, p0}, Lcom/helpshift/HSApiData;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/helpshift/HSConversation;->data:Lcom/helpshift/HSApiData;

    .line 45
    iget-object v5, p0, Lcom/helpshift/HSConversation;->data:Lcom/helpshift/HSApiData;

    iget-object v5, v5, Lcom/helpshift/HSApiData;->storage:Lcom/helpshift/HSStorage;

    iput-object v5, p0, Lcom/helpshift/HSConversation;->storage:Lcom/helpshift/HSStorage;

    .line 47
    invoke-virtual {p0}, Lcom/helpshift/HSConversation;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 49
    .local v3, "extras":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/helpshift/HSConversation;->getActionBarHelper()Lcom/helpshift/app/ActionBarHelper;

    move-result-object v0

    .line 50
    .local v0, "actionBarHelper":Lcom/helpshift/app/ActionBarHelper;
    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Lcom/helpshift/app/ActionBarHelper;->supportRequestWindowFeature(I)V

    .line 51
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/helpshift/app/ActionBarHelper;->setDisplayHomeAsUpEnabled(Z)V

    .line 52
    sget v5, Lcom/helpshift/D$string;->hs__conversation_header:I

    invoke-virtual {p0, v5}, Lcom/helpshift/HSConversation;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/helpshift/app/ActionBarHelper;->setTitle(Ljava/lang/String;)V

    .line 54
    sget v5, Lcom/helpshift/D$layout;->hs__conversation:I

    invoke-virtual {p0, v5}, Lcom/helpshift/HSConversation;->setContentView(I)V

    .line 57
    iget-object v5, p0, Lcom/helpshift/HSConversation;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {v5}, Lcom/helpshift/HSStorage;->isHelpshiftBrandingDisabled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 58
    sget v5, Lcom/helpshift/D$id;->hs__newConversationFooter:I

    invoke-virtual {p0, v5}, Lcom/helpshift/HSConversation;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 60
    .local v1, "addIssueFooter":Landroid/widget/LinearLayout;
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 61
    .local v4, "iv":Landroid/widget/ImageView;
    sget-object v5, Lcom/helpshift/res/drawable/HSImages;->imagesMap:Ljava/util/Map;

    const-string/jumbo v6, "newHSLogo"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {p0, v5}, Lcom/helpshift/res/drawable/HSDraw;->getBitmapDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 63
    const v5, 0x106000c

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 64
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 67
    .end local v1    # "addIssueFooter":Landroid/widget/LinearLayout;
    .end local v4    # "iv":Landroid/widget/ImageView;
    :cond_0
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v5, p0, Lcom/helpshift/HSConversation;->bundle:Landroid/os/Bundle;

    .line 68
    const-string/jumbo v5, "chatLaunchSource"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, "chatLaunchSource":Ljava/lang/String;
    const-string/jumbo v5, "decomp"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    sput-boolean v5, Lcom/helpshift/HSAnalytics;->decomp:Z

    .line 72
    invoke-virtual {p0}, Lcom/helpshift/HSConversation;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v5

    iput-object v5, p0, Lcom/helpshift/HSConversation;->ft:Landroid/support/v4/app/FragmentTransaction;

    .line 74
    if-nez p1, :cond_1

    .line 75
    const-string/jumbo v5, "newConversation"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 76
    invoke-direct {p0}, Lcom/helpshift/HSConversation;->showNewConversationFragment()V

    .line 84
    :cond_1
    :goto_0
    return-void

    .line 77
    :cond_2
    const-string/jumbo v5, "push"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string/jumbo v5, "inapp"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 79
    :cond_3
    invoke-direct {p0}, Lcom/helpshift/HSConversation;->showMessagesFragment()V

    goto :goto_0

    .line 81
    :cond_4
    invoke-direct {p0}, Lcom/helpshift/HSConversation;->showFragment()V

    goto :goto_0
.end method

.method public bridge synthetic onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "x0"    # Landroid/view/Menu;

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/helpshift/HSActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/helpshift/HSConversation;->storage:Lcom/helpshift/HSStorage;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/helpshift/HSStorage;->setIsConversationShowing(Ljava/lang/Boolean;)V

    .line 170
    invoke-super {p0}, Lcom/helpshift/HSActivity;->onDestroy()V

    .line 171
    return-void
.end method

.method protected onPause()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 137
    invoke-virtual {p0}, Lcom/helpshift/HSConversation;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 138
    .local v2, "extras":Landroid/os/Bundle;
    iget-object v5, p0, Lcom/helpshift/HSConversation;->storage:Lcom/helpshift/HSStorage;

    iget-object v6, p0, Lcom/helpshift/HSConversation;->data:Lcom/helpshift/HSApiData;

    invoke-virtual {v6}, Lcom/helpshift/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/helpshift/HSStorage;->getActiveConversation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, "activeConversation":Ljava/lang/String;
    iget-object v5, p0, Lcom/helpshift/HSConversation;->storage:Lcom/helpshift/HSStorage;

    iget-object v6, p0, Lcom/helpshift/HSConversation;->data:Lcom/helpshift/HSApiData;

    invoke-virtual {v6}, Lcom/helpshift/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/helpshift/HSStorage;->getArchivedConversation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, "archivedConversation":Ljava/lang/String;
    const-string/jumbo v5, "newConversation"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 144
    :cond_0
    invoke-static {}, Lcom/helpshift/HSConversation;->isActivityActive()Z

    move-result v5

    if-nez v5, :cond_1

    .line 145
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 146
    .local v4, "returnIntent":Landroid/content/Intent;
    const/4 v5, -0x1

    invoke-virtual {p0, v5, v4}, Lcom/helpshift/HSConversation;->setResult(ILandroid/content/Intent;)V

    .line 147
    invoke-virtual {p0}, Lcom/helpshift/HSConversation;->finish()V

    .line 150
    .end local v4    # "returnIntent":Landroid/content/Intent;
    :cond_1
    invoke-static {p0}, Lcom/helpshift/util/HSActivityUtil;->restoreFullscreen(Landroid/app/Activity;)V

    .line 151
    if-eqz v2, :cond_2

    .line 152
    const-string/jumbo v5, "isRoot"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 153
    .local v3, "isRoot":Ljava/lang/Boolean;
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-ne v5, v7, :cond_2

    invoke-virtual {p0}, Lcom/helpshift/HSConversation;->isFinishing()Z

    move-result v5

    if-ne v5, v7, :cond_2

    .line 154
    invoke-static {}, Lcom/helpshift/util/HSActivityUtil;->sessionEnding()V

    .line 157
    .end local v3    # "isRoot":Ljava/lang/Boolean;
    :cond_2
    invoke-super {p0}, Lcom/helpshift/HSActivity;->onPause()V

    .line 158
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/helpshift/HSConversation;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 121
    .local v2, "extras":Landroid/os/Bundle;
    iget-object v3, p0, Lcom/helpshift/HSConversation;->storage:Lcom/helpshift/HSStorage;

    iget-object v4, p0, Lcom/helpshift/HSConversation;->data:Lcom/helpshift/HSApiData;

    invoke-virtual {v4}, Lcom/helpshift/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/helpshift/HSStorage;->getActiveConversation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "activeConversation":Ljava/lang/String;
    iget-object v3, p0, Lcom/helpshift/HSConversation;->storage:Lcom/helpshift/HSStorage;

    iget-object v4, p0, Lcom/helpshift/HSConversation;->data:Lcom/helpshift/HSApiData;

    invoke-virtual {v4}, Lcom/helpshift/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/helpshift/HSStorage;->getArchivedConversation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, "archivedConversation":Ljava/lang/String;
    const-string/jumbo v3, "newConversation"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 127
    :cond_0
    invoke-static {p0}, Lcom/helpshift/util/HSActivityUtil;->restoreFullscreen(Landroid/app/Activity;)V

    .line 131
    :goto_0
    iget-object v3, p0, Lcom/helpshift/HSConversation;->storage:Lcom/helpshift/HSStorage;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/helpshift/HSStorage;->setIsConversationShowing(Ljava/lang/Boolean;)V

    .line 132
    invoke-super {p0}, Lcom/helpshift/HSActivity;->onResume()V

    .line 133
    return-void

    .line 129
    :cond_1
    invoke-static {p0}, Lcom/helpshift/util/HSActivityUtil;->forceNotFullscreen(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public bridge synthetic onStart()V
    .locals 0

    .prologue
    .line 22
    invoke-super {p0}, Lcom/helpshift/HSActivity;->onStart()V

    return-void
.end method

.method public bridge synthetic onStop()V
    .locals 0

    .prologue
    .line 22
    invoke-super {p0}, Lcom/helpshift/HSActivity;->onStop()V

    return-void
.end method
