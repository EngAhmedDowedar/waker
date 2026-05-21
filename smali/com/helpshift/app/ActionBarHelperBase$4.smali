.class Lcom/helpshift/app/ActionBarHelperBase$4;
.super Ljava/lang/Object;
.source "ActionBarHelperBase.java"

# interfaces
.implements Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/app/ActionBarHelperBase;->addActionItemCompatExpandListener(Landroid/view/MenuItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/app/ActionBarHelperBase;

.field final synthetic val$conversation:Landroid/view/View;

.field final synthetic val$itemActions:Lcom/helpshift/view/SimpleMenuItemCompat$MenuItemActions;

.field final synthetic val$title:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/helpshift/app/ActionBarHelperBase;Landroid/view/View;Landroid/view/View;Lcom/helpshift/view/SimpleMenuItemCompat$MenuItemActions;)V
    .locals 0

    .prologue
    .line 305
    iput-object p1, p0, Lcom/helpshift/app/ActionBarHelperBase$4;->this$0:Lcom/helpshift/app/ActionBarHelperBase;

    iput-object p2, p0, Lcom/helpshift/app/ActionBarHelperBase$4;->val$title:Landroid/view/View;

    iput-object p3, p0, Lcom/helpshift/app/ActionBarHelperBase$4;->val$conversation:Landroid/view/View;

    iput-object p4, p0, Lcom/helpshift/app/ActionBarHelperBase$4;->val$itemActions:Lcom/helpshift/view/SimpleMenuItemCompat$MenuItemActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x0

    .line 318
    iget-object v0, p0, Lcom/helpshift/app/ActionBarHelperBase$4;->val$title:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 319
    iget-object v0, p0, Lcom/helpshift/app/ActionBarHelperBase$4;->val$conversation:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/helpshift/app/ActionBarHelperBase$4;->val$conversation:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/helpshift/app/ActionBarHelperBase$4;->this$0:Lcom/helpshift/app/ActionBarHelperBase;

    iput-boolean v1, v0, Lcom/helpshift/app/ActionBarHelperBase;->viewExpanded:Z

    .line 323
    iget-object v0, p0, Lcom/helpshift/app/ActionBarHelperBase$4;->val$itemActions:Lcom/helpshift/view/SimpleMenuItemCompat$MenuItemActions;

    invoke-interface {v0}, Lcom/helpshift/view/SimpleMenuItemCompat$MenuItemActions;->menuItemCollapsed()Z

    move-result v0

    return v0
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/16 v1, 0x8

    .line 308
    iget-object v0, p0, Lcom/helpshift/app/ActionBarHelperBase$4;->val$title:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 309
    iget-object v0, p0, Lcom/helpshift/app/ActionBarHelperBase$4;->val$conversation:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/helpshift/app/ActionBarHelperBase$4;->val$conversation:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/helpshift/app/ActionBarHelperBase$4;->this$0:Lcom/helpshift/app/ActionBarHelperBase;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/helpshift/app/ActionBarHelperBase;->viewExpanded:Z

    .line 313
    iget-object v0, p0, Lcom/helpshift/app/ActionBarHelperBase$4;->val$itemActions:Lcom/helpshift/view/SimpleMenuItemCompat$MenuItemActions;

    invoke-interface {v0}, Lcom/helpshift/view/SimpleMenuItemCompat$MenuItemActions;->menuItemExpanded()Z

    move-result v0

    return v0
.end method
