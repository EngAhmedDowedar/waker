.class public abstract Lcom/helpshift/app/ActionBarActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "ActionBarActivity.java"


# instance fields
.field private actionBarHelper:Lcom/helpshift/app/ActionBarHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 10
    invoke-static {p0}, Lcom/helpshift/app/ActionBarHelper;->createInstance(Landroid/app/Activity;)Lcom/helpshift/app/ActionBarHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/app/ActionBarActivity;->actionBarHelper:Lcom/helpshift/app/ActionBarHelper;

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    .line 35
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 36
    .local v1, "keycode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 37
    .local v0, "action":I
    const/16 v3, 0x52

    if-ne v1, v3, :cond_0

    if-ne v0, v2, :cond_0

    .line 40
    :goto_0
    return v2

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method public getActionBarHelper()Lcom/helpshift/app/ActionBarHelper;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/helpshift/app/ActionBarActivity;->actionBarHelper:Lcom/helpshift/app/ActionBarHelper;

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/helpshift/app/ActionBarActivity;->actionBarHelper:Lcom/helpshift/app/ActionBarHelper;

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/helpshift/app/ActionBarHelper;->getMenuInflater(Landroid/view/MenuInflater;)Landroid/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/helpshift/app/ActionBarActivity;->actionBarHelper:Lcom/helpshift/app/ActionBarHelper;

    instance-of v0, v0, Lcom/helpshift/app/ActionBarHelperBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helpshift/app/ActionBarActivity;->actionBarHelper:Lcom/helpshift/app/ActionBarHelper;

    check-cast v0, Lcom/helpshift/app/ActionBarHelperBase;

    invoke-virtual {v0}, Lcom/helpshift/app/ActionBarHelperBase;->isViewExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/helpshift/app/ActionBarActivity;->actionBarHelper:Lcom/helpshift/app/ActionBarHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/helpshift/app/ActionBarHelper;->collapseActionView(Landroid/view/MenuItem;)V

    .line 51
    :goto_0
    return-void

    .line 50
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 18
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    iget-object v0, p0, Lcom/helpshift/app/ActionBarActivity;->actionBarHelper:Lcom/helpshift/app/ActionBarHelper;

    invoke-virtual {v0, p1}, Lcom/helpshift/app/ActionBarHelper;->onCreate(Landroid/os/Bundle;)V

    .line 20
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 24
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 25
    iget-object v0, p0, Lcom/helpshift/app/ActionBarActivity;->actionBarHelper:Lcom/helpshift/app/ActionBarHelper;

    invoke-virtual {v0, p1}, Lcom/helpshift/app/ActionBarHelper;->onPostCreate(Landroid/os/Bundle;)V

    .line 26
    return-void
.end method

.method public setSupportProgressBarIndeterminateVisibility(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 58
    iget-object v0, p0, Lcom/helpshift/app/ActionBarActivity;->actionBarHelper:Lcom/helpshift/app/ActionBarHelper;

    invoke-virtual {v0, p1}, Lcom/helpshift/app/ActionBarHelper;->setSupportProgressBarIndeterminateVisibility(Z)V

    .line 59
    return-void
.end method

.method public supportRequestWindowFeature(I)V
    .locals 1
    .param p1, "featureId"    # I

    .prologue
    .line 54
    iget-object v0, p0, Lcom/helpshift/app/ActionBarActivity;->actionBarHelper:Lcom/helpshift/app/ActionBarHelper;

    invoke-virtual {v0, p1}, Lcom/helpshift/app/ActionBarHelper;->supportRequestWindowFeature(I)V

    .line 55
    return-void
.end method
