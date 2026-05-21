.class Lcom/helpshift/app/ActionBarHelperNative$1;
.super Ljava/lang/Object;
.source "ActionBarHelperNative.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/app/ActionBarHelperNative;->setOnQueryTextListener(Landroid/view/MenuItem;Lcom/helpshift/view/SimpleMenuItemCompat$QueryTextActions;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/app/ActionBarHelperNative;

.field final synthetic val$queryTextActions:Lcom/helpshift/view/SimpleMenuItemCompat$QueryTextActions;


# direct methods
.method constructor <init>(Lcom/helpshift/app/ActionBarHelperNative;Lcom/helpshift/view/SimpleMenuItemCompat$QueryTextActions;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/helpshift/app/ActionBarHelperNative$1;->this$0:Lcom/helpshift/app/ActionBarHelperNative;

    iput-object p2, p0, Lcom/helpshift/app/ActionBarHelperNative$1;->val$queryTextActions:Lcom/helpshift/view/SimpleMenuItemCompat$QueryTextActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/helpshift/app/ActionBarHelperNative$1;->val$queryTextActions:Lcom/helpshift/view/SimpleMenuItemCompat$QueryTextActions;

    invoke-interface {v0, p1}, Lcom/helpshift/view/SimpleMenuItemCompat$QueryTextActions;->queryTextChanged(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/helpshift/app/ActionBarHelperNative$1;->val$queryTextActions:Lcom/helpshift/view/SimpleMenuItemCompat$QueryTextActions;

    invoke-interface {v0, p1}, Lcom/helpshift/view/SimpleMenuItemCompat$QueryTextActions;->queryTextSubmitted(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
