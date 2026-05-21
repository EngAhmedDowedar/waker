.class Lcom/helpshift/app/ActionBarHelperBase$5;
.super Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListenerCompat;
.source "ActionBarHelperBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/app/ActionBarHelperBase;->addActionItemCompatOnTextListener(Landroid/view/MenuItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/app/ActionBarHelperBase;

.field final synthetic val$queryTextActions:Lcom/helpshift/view/SimpleMenuItemCompat$QueryTextActions;


# direct methods
.method constructor <init>(Lcom/helpshift/app/ActionBarHelperBase;Lcom/helpshift/view/SimpleMenuItemCompat$QueryTextActions;)V
    .locals 0

    .prologue
    .line 339
    iput-object p1, p0, Lcom/helpshift/app/ActionBarHelperBase$5;->this$0:Lcom/helpshift/app/ActionBarHelperBase;

    iput-object p2, p0, Lcom/helpshift/app/ActionBarHelperBase$5;->val$queryTextActions:Lcom/helpshift/view/SimpleMenuItemCompat$QueryTextActions;

    invoke-direct {p0}, Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListenerCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    .line 347
    iget-object v0, p0, Lcom/helpshift/app/ActionBarHelperBase$5;->val$queryTextActions:Lcom/helpshift/view/SimpleMenuItemCompat$QueryTextActions;

    invoke-interface {v0, p1}, Lcom/helpshift/view/SimpleMenuItemCompat$QueryTextActions;->queryTextChanged(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 342
    iget-object v0, p0, Lcom/helpshift/app/ActionBarHelperBase$5;->val$queryTextActions:Lcom/helpshift/view/SimpleMenuItemCompat$QueryTextActions;

    invoke-interface {v0, p1}, Lcom/helpshift/view/SimpleMenuItemCompat$QueryTextActions;->queryTextSubmitted(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
