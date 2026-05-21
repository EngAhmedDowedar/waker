.class public final Lcom/helpshift/HSFaqs;
.super Lcom/helpshift/HSActivity;
.source "HSFaqs.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "HelpShiftDebug"


# instance fields
.field private callFinishRequestCode:I

.field private data:Lcom/helpshift/HSApiData;

.field private hsFooter:Landroid/widget/ImageView;

.field private showConvOnReportIssue:Ljava/lang/Boolean;

.field private storage:Lcom/helpshift/HSStorage;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/helpshift/HSActivity;-><init>()V

    .line 20
    const/4 v0, 0x1

    iput v0, p0, Lcom/helpshift/HSFaqs;->callFinishRequestCode:I

    return-void
.end method


# virtual methods
.method public bridge synthetic onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/res/Configuration;

    .prologue
    .line 14
    invoke-super {p0, p1}, Lcom/helpshift/HSActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v4, 0x400

    .line 45
    invoke-super {p0, p1}, Lcom/helpshift/HSActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Lcom/helpshift/HSFaqs;->getActionBarHelper()Lcom/helpshift/app/ActionBarHelper;

    move-result-object v2

    sget v3, Lcom/helpshift/D$string;->hs__help_header:I

    invoke-virtual {p0, v3}, Lcom/helpshift/HSFaqs;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/helpshift/app/ActionBarHelper;->setTitle(Ljava/lang/String;)V

    .line 49
    const/4 v2, 0x0

    sput-boolean v2, Lcom/helpshift/HSAnalytics;->decomp:Z

    .line 50
    invoke-virtual {p0}, Lcom/helpshift/HSFaqs;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "showConvOnReportIssue"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/helpshift/HSFaqs;->showConvOnReportIssue:Ljava/lang/Boolean;

    .line 51
    invoke-virtual {p0}, Lcom/helpshift/HSFaqs;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "showInFullScreen"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 53
    .local v1, "isFullScreen":Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/helpshift/HSFaqs;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 58
    :cond_0
    new-instance v2, Lcom/helpshift/HSApiData;

    invoke-direct {v2, p0}, Lcom/helpshift/HSApiData;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/helpshift/HSFaqs;->data:Lcom/helpshift/HSApiData;

    .line 59
    iget-object v2, p0, Lcom/helpshift/HSFaqs;->data:Lcom/helpshift/HSApiData;

    iget-object v2, v2, Lcom/helpshift/HSApiData;->storage:Lcom/helpshift/HSStorage;

    iput-object v2, p0, Lcom/helpshift/HSFaqs;->storage:Lcom/helpshift/HSStorage;

    .line 61
    sget v2, Lcom/helpshift/D$layout;->hs__faqs:I

    invoke-virtual {p0, v2}, Lcom/helpshift/HSFaqs;->setContentView(I)V

    .line 63
    invoke-virtual {p0}, Lcom/helpshift/HSFaqs;->getActionBarHelper()Lcom/helpshift/app/ActionBarHelper;

    move-result-object v0

    .line 64
    .local v0, "actionBarHelper":Lcom/helpshift/app/ActionBarHelper;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/helpshift/app/ActionBarHelper;->setDisplayHomeAsUpEnabled(Z)V

    .line 65
    sget v2, Lcom/helpshift/D$id;->hs__helpshiftActivityFooter:I

    invoke-virtual {p0, v2}, Lcom/helpshift/HSFaqs;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/helpshift/HSFaqs;->hsFooter:Landroid/widget/ImageView;

    .line 67
    iget-object v2, p0, Lcom/helpshift/HSFaqs;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {v2}, Lcom/helpshift/HSStorage;->isHelpshiftBrandingDisabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 68
    iget-object v3, p0, Lcom/helpshift/HSFaqs;->hsFooter:Landroid/widget/ImageView;

    sget-object v2, Lcom/helpshift/res/drawable/HSImages;->imagesMap:Ljava/util/Map;

    const-string/jumbo v4, "newHSLogo"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/helpshift/res/drawable/HSDraw;->getBitmapDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 70
    iget-object v2, p0, Lcom/helpshift/HSFaqs;->hsFooter:Landroid/widget/ImageView;

    const v3, 0x106000c

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 72
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/helpshift/HSFaqs;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/helpshift/D$menu;->hs__faqs_fragment:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 77
    invoke-super {p0, p1}, Lcom/helpshift/HSActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 82
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 83
    .local v0, "id":I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/helpshift/HSFaqs;->finish()V

    .line 85
    const/4 v1, 0x1

    .line 87
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

    .line 32
    invoke-virtual {p0}, Lcom/helpshift/HSFaqs;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 33
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 34
    const-string/jumbo v2, "isRoot"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 35
    .local v1, "isRoot":Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/helpshift/HSFaqs;->isFinishing()Z

    move-result v2

    if-ne v2, v3, :cond_0

    .line 36
    invoke-static {}, Lcom/helpshift/util/HSActivityUtil;->sessionEnding()V

    .line 40
    .end local v1    # "isRoot":Ljava/lang/Boolean;
    :cond_0
    invoke-super {p0}, Lcom/helpshift/HSActivity;->onPause()V

    .line 41
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 26
    invoke-super {p0}, Lcom/helpshift/HSActivity;->onResume()V

    .line 27
    const-string/jumbo v0, "l"

    invoke-static {v0}, Lcom/helpshift/HSFunnel;->pushEvent(Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public bridge synthetic onStart()V
    .locals 0

    .prologue
    .line 14
    invoke-super {p0}, Lcom/helpshift/HSActivity;->onStart()V

    return-void
.end method

.method public bridge synthetic onStop()V
    .locals 0

    .prologue
    .line 14
    invoke-super {p0}, Lcom/helpshift/HSActivity;->onStop()V

    return-void
.end method
