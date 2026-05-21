.class Lcom/helpshift/app/ActionBarHelperBase$2;
.super Ljava/lang/Object;
.source "ActionBarHelperBase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$item:Landroid/view/MenuItem;


# direct methods
.method constructor <init>(Lcom/helpshift/app/ActionBarHelperBase;Landroid/view/MenuItem;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/helpshift/app/ActionBarHelperBase$2;->this$0:Lcom/helpshift/app/ActionBarHelperBase;

    iput-object p2, p0, Lcom/helpshift/app/ActionBarHelperBase$2;->val$item:Landroid/view/MenuItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 195
    iget-object v0, p0, Lcom/helpshift/app/ActionBarHelperBase$2;->this$0:Lcom/helpshift/app/ActionBarHelperBase;

    iget-object v0, v0, Lcom/helpshift/app/ActionBarHelperBase;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/helpshift/app/ActionBarHelperBase$2;->val$item:Landroid/view/MenuItem;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    .line 196
    return-void
.end method
