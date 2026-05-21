.class Lcom/helpshift/app/ActionBarHelperNative$2;
.super Ljava/lang/Object;
.source "ActionBarHelperNative.java"

# interfaces
.implements Landroid/view/MenuItem$OnActionExpandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/app/ActionBarHelperNative;->setOnActionExpandListener(Landroid/view/MenuItem;Lcom/helpshift/view/SimpleMenuItemCompat$MenuItemActions;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/app/ActionBarHelperNative;

.field final synthetic val$itemActions:Lcom/helpshift/view/SimpleMenuItemCompat$MenuItemActions;


# direct methods
.method constructor <init>(Lcom/helpshift/app/ActionBarHelperNative;Lcom/helpshift/view/SimpleMenuItemCompat$MenuItemActions;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/helpshift/app/ActionBarHelperNative$2;->this$0:Lcom/helpshift/app/ActionBarHelperNative;

    iput-object p2, p0, Lcom/helpshift/app/ActionBarHelperNative$2;->val$itemActions:Lcom/helpshift/view/SimpleMenuItemCompat$MenuItemActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/helpshift/app/ActionBarHelperNative$2;->val$itemActions:Lcom/helpshift/view/SimpleMenuItemCompat$MenuItemActions;

    invoke-interface {v0}, Lcom/helpshift/view/SimpleMenuItemCompat$MenuItemActions;->menuItemCollapsed()Z

    move-result v0

    return v0
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/helpshift/app/ActionBarHelperNative$2;->val$itemActions:Lcom/helpshift/view/SimpleMenuItemCompat$MenuItemActions;

    invoke-interface {v0}, Lcom/helpshift/view/SimpleMenuItemCompat$MenuItemActions;->menuItemExpanded()Z

    move-result v0

    return v0
.end method
