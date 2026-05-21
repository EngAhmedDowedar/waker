.class public abstract Lcom/helpshift/app/ActionBarHelper;
.super Ljava/lang/Object;
.source "ActionBarHelper.java"


# static fields
.field public static final NAVIGATION_MODE_STANDARD:I


# instance fields
.field protected mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/helpshift/app/ActionBarHelper;->mActivity:Landroid/app/Activity;

    .line 20
    return-void
.end method

.method public static createInstance(Landroid/app/Activity;)Lcom/helpshift/app/ActionBarHelper;
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 23
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 24
    new-instance v0, Lcom/helpshift/app/ActionBarHelperNative;

    invoke-direct {v0, p0}, Lcom/helpshift/app/ActionBarHelperNative;-><init>(Landroid/app/Activity;)V

    .line 26
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/helpshift/app/ActionBarHelperBase;

    invoke-direct {v0, p0}, Lcom/helpshift/app/ActionBarHelperBase;-><init>(Landroid/app/Activity;)V

    goto :goto_0
.end method


# virtual methods
.method public abstract clearFocus(Landroid/view/MenuItem;)V
.end method

.method public abstract collapseActionView(Landroid/view/MenuItem;)V
.end method

.method public getMenuInflater(Landroid/view/MenuInflater;)Landroid/view/MenuInflater;
    .locals 0
    .param p1, "superMenuInflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 35
    return-object p1
.end method

.method public abstract getQuery(Landroid/view/MenuItem;)Ljava/lang/String;
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 30
    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    return-void
.end method

.method public abstract setDisplayHomeAsUpEnabled(Z)V
.end method

.method public setIcon(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 60
    return-void
.end method

.method public abstract setNavigationMode(I)V
.end method

.method public abstract setOnActionExpandListener(Landroid/view/MenuItem;Lcom/helpshift/view/SimpleMenuItemCompat$MenuItemActions;)V
.end method

.method public abstract setOnQueryTextListener(Landroid/view/MenuItem;Lcom/helpshift/view/SimpleMenuItemCompat$QueryTextActions;)V
.end method

.method public setQueryHint(Landroid/view/MenuItem;Ljava/lang/String;)V
    .locals 0
    .param p1, "menuItem"    # Landroid/view/MenuItem;
    .param p2, "hint"    # Ljava/lang/String;

    .prologue
    .line 54
    return-void
.end method

.method public abstract setSupportProgressBarIndeterminateVisibility(Z)V
.end method

.method public abstract setTitle(Ljava/lang/String;)V
.end method

.method public setupIndeterminateProgressBar(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 62
    return-void
.end method

.method public abstract supportRequestWindowFeature(I)V
.end method
