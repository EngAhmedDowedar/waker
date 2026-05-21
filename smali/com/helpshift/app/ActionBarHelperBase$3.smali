.class Lcom/helpshift/app/ActionBarHelperBase$3;
.super Ljava/lang/Object;
.source "ActionBarHelperBase.java"

# interfaces
.implements Lcom/helpshift/view/SimpleMenuItemCompat$MenuItemChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/app/ActionBarHelperBase;->addActionItem(Landroid/view/ViewGroup;Landroid/view/MenuItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/app/ActionBarHelperBase;

.field final synthetic val$actionButton:Landroid/widget/ImageButton;


# direct methods
.method constructor <init>(Lcom/helpshift/app/ActionBarHelperBase;Landroid/widget/ImageButton;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcom/helpshift/app/ActionBarHelperBase$3;->this$0:Lcom/helpshift/app/ActionBarHelperBase;

    iput-object p2, p0, Lcom/helpshift/app/ActionBarHelperBase$3;->val$actionButton:Landroid/widget/ImageButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visibilityChanged(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 203
    if-eqz p1, :cond_0

    .line 204
    iget-object v0, p0, Lcom/helpshift/app/ActionBarHelperBase$3;->val$actionButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 208
    :goto_0
    return-void

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/helpshift/app/ActionBarHelperBase$3;->val$actionButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method
