.class public Lcom/helpshift/app/SimpleMenuItem;
.super Ljava/lang/Object;
.source "SimpleMenuItem.java"

# interfaces
.implements Landroid/view/MenuItem;


# instance fields
.field private mActionView:Landroid/view/View;

.field private mActionViewExpanded:Z

.field private mIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mIconResId:I

.field private final mItemId:I

.field private mMenu:Lcom/helpshift/app/SimpleMenu;

.field private mMenuItemChangedListener:Lcom/helpshift/view/SimpleMenuItemCompat$MenuItemChangedListener;

.field private mOnActionExpandListener:Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;

.field private final mOrder:I

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleCondensed:Ljava/lang/CharSequence;

.field private mVisible:Z


# direct methods
.method public constructor <init>(Lcom/helpshift/app/SimpleMenu;IILjava/lang/CharSequence;)V
    .locals 1
    .param p1, "menu"    # Lcom/helpshift/app/SimpleMenu;
    .param p2, "itemId"    # I
    .param p3, "order"    # I
    .param p4, "title"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object v0, p0, Lcom/helpshift/app/SimpleMenuItem;->mActionView:Landroid/view/View;

    .line 20
    iput-object v0, p0, Lcom/helpshift/app/SimpleMenuItem;->mOnActionExpandListener:Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;

    .line 22
    iput-object v0, p0, Lcom/helpshift/app/SimpleMenuItem;->mMenuItemChangedListener:Lcom/helpshift/view/SimpleMenuItemCompat$MenuItemChangedListener;

    .line 26
    iput-object p1, p0, Lcom/helpshift/app/SimpleMenuItem;->mMenu:Lcom/helpshift/app/SimpleMenu;

    .line 27
    iput p2, p0, Lcom/helpshift/app/SimpleMenuItem;->mItemId:I

    .line 28
    iput p3, p0, Lcom/helpshift/app/SimpleMenuItem;->mOrder:I

    .line 29
    iput-object p4, p0, Lcom/helpshift/app/SimpleMenuItem;->mTitle:Ljava/lang/CharSequence;

    .line 30
    return-void
.end method


# virtual methods
.method public collapseActionView()Z
    .locals 1

    .prologue
    .line 249
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/helpshift/app/SimpleMenuItem;->mActionViewExpanded:Z

    .line 251
    const/4 v0, 0x1

    return v0
.end method

.method public expandActionView()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 242
    iput-boolean v0, p0, Lcom/helpshift/app/SimpleMenuItem;->mActionViewExpanded:Z

    .line 244
    return v0
.end method

.method public getActionProvider()Landroid/view/ActionProvider;
    .locals 1

    .prologue
    .line 237
    const/4 v0, 0x0

    return-object v0
.end method

.method public getActionView()Landroid/view/View;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/helpshift/app/SimpleMenuItem;->mActionView:Landroid/view/View;

    return-object v0
.end method

.method public getAlphabeticShortcut()C
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method public getGroupId()I
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/helpshift/app/SimpleMenuItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/helpshift/app/SimpleMenuItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 99
    :goto_0
    return-object v0

    .line 95
    :cond_0
    iget v0, p0, Lcom/helpshift/app/SimpleMenuItem;->mIconResId:I

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/helpshift/app/SimpleMenuItem;->mMenu:Lcom/helpshift/app/SimpleMenu;

    invoke-virtual {v0}, Lcom/helpshift/app/SimpleMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/helpshift/app/SimpleMenuItem;->mIconResId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 99
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/helpshift/app/SimpleMenuItem;->mItemId:I

    return v0
.end method

.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNumericShortcut()C
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public getOrder()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/helpshift/app/SimpleMenuItem;->mOrder:I

    return v0
.end method

.method public getSubMenu()Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/helpshift/app/SimpleMenuItem;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/helpshift/app/SimpleMenuItem;->mTitleCondensed:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public hasSubMenu()Z
    .locals 1

    .prologue
    .line 185
    const/4 v0, 0x0

    return v0
.end method

.method public isActionViewExpanded()Z
    .locals 1

    .prologue
    .line 256
    iget-boolean v0, p0, Lcom/helpshift/app/SimpleMenuItem;->mActionViewExpanded:Z

    return v0
.end method

.method public isCheckable()Z
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/helpshift/app/SimpleMenuItem;->mVisible:Z

    return v0
.end method

.method public setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .locals 0
    .param p1, "actionProvider"    # Landroid/view/ActionProvider;

    .prologue
    .line 232
    return-object p0
.end method

.method public setActionView(I)Landroid/view/MenuItem;
    .locals 0
    .param p1, "actionViewResId"    # I

    .prologue
    .line 222
    return-object p0
.end method

.method public setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .locals 0
    .param p1, "actionView"    # Landroid/view/View;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/helpshift/app/SimpleMenuItem;->mActionView:Landroid/view/View;

    .line 216
    return-object p0
.end method

.method public setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .locals 0
    .param p1, "c"    # C

    .prologue
    .line 129
    return-object p0
.end method

.method public setCheckable(Z)Landroid/view/MenuItem;
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 139
    return-object p0
.end method

.method public setChecked(Z)Landroid/view/MenuItem;
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 149
    return-object p0
.end method

.method public setEnabled(Z)Landroid/view/MenuItem;
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 175
    return-object p0
.end method

.method public setIcon(I)Landroid/view/MenuItem;
    .locals 1
    .param p1, "iconResId"    # I

    .prologue
    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/helpshift/app/SimpleMenuItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 85
    iput p1, p0, Lcom/helpshift/app/SimpleMenuItem;->mIconResId:I

    .line 86
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .locals 1
    .param p1, "iconDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 77
    const/4 v0, 0x0

    iput v0, p0, Lcom/helpshift/app/SimpleMenuItem;->mIconResId:I

    .line 78
    iput-object p1, p0, Lcom/helpshift/app/SimpleMenuItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 79
    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 104
    return-object p0
.end method

.method public setNumericShortcut(C)Landroid/view/MenuItem;
    .locals 0
    .param p1, "c"    # C

    .prologue
    .line 119
    return-object p0
.end method

.method public setOnActionExpandListener(Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;)Landroid/view/MenuItem;
    .locals 0
    .param p1, "onActionExpandListener"    # Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;

    .prologue
    .line 266
    iput-object p1, p0, Lcom/helpshift/app/SimpleMenuItem;->mOnActionExpandListener:Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;

    .line 267
    return-object p0
.end method

.method public setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .locals 0
    .param p1, "onActionExpandListener"    # Landroid/view/MenuItem$OnActionExpandListener;

    .prologue
    .line 262
    return-object p0
.end method

.method public setOnMenuItemChangedListener(Lcom/helpshift/view/SimpleMenuItemCompat$MenuItemChangedListener;)Landroid/view/MenuItem;
    .locals 0
    .param p1, "menuItemChangedListener"    # Lcom/helpshift/view/SimpleMenuItemCompat$MenuItemChangedListener;

    .prologue
    .line 271
    iput-object p1, p0, Lcom/helpshift/app/SimpleMenuItem;->mMenuItemChangedListener:Lcom/helpshift/view/SimpleMenuItemCompat$MenuItemChangedListener;

    .line 272
    return-object p0
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .locals 0
    .param p1, "onMenuItemClickListener"    # Landroid/view/MenuItem$OnMenuItemClickListener;

    .prologue
    .line 195
    return-object p0
.end method

.method public setShortcut(CC)Landroid/view/MenuItem;
    .locals 0
    .param p1, "c"    # C
    .param p2, "c2"    # C

    .prologue
    .line 114
    return-object p0
.end method

.method public setShowAsAction(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 206
    return-void
.end method

.method public setShowAsActionFlags(I)Landroid/view/MenuItem;
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 210
    return-object p0
.end method

.method public setTitle(I)Landroid/view/MenuItem;
    .locals 1
    .param p1, "titleResId"    # I

    .prologue
    .line 55
    iget-object v0, p0, Lcom/helpshift/app/SimpleMenuItem;->mMenu:Lcom/helpshift/app/SimpleMenu;

    invoke-virtual {v0}, Lcom/helpshift/app/SimpleMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/app/SimpleMenuItem;->mTitle:Ljava/lang/CharSequence;

    .line 56
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/helpshift/app/SimpleMenuItem;->mTitle:Ljava/lang/CharSequence;

    .line 50
    return-object p0
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 0
    .param p1, "titleCondensed"    # Ljava/lang/CharSequence;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/helpshift/app/SimpleMenuItem;->mTitleCondensed:Ljava/lang/CharSequence;

    .line 67
    return-object p0
.end method

.method public setVisible(Z)Landroid/view/MenuItem;
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 159
    iput-boolean p1, p0, Lcom/helpshift/app/SimpleMenuItem;->mVisible:Z

    .line 161
    iget-object v0, p0, Lcom/helpshift/app/SimpleMenuItem;->mMenuItemChangedListener:Lcom/helpshift/view/SimpleMenuItemCompat$MenuItemChangedListener;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/helpshift/app/SimpleMenuItem;->mMenuItemChangedListener:Lcom/helpshift/view/SimpleMenuItemCompat$MenuItemChangedListener;

    invoke-interface {v0, p1}, Lcom/helpshift/view/SimpleMenuItemCompat$MenuItemChangedListener;->visibilityChanged(Z)V

    .line 165
    :cond_0
    return-object p0
.end method
