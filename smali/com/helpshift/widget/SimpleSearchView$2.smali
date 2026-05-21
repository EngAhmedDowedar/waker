.class Lcom/helpshift/widget/SimpleSearchView$2;
.super Ljava/lang/Object;
.source "SimpleSearchView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/widget/SimpleSearchView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/widget/SimpleSearchView;


# direct methods
.method constructor <init>(Lcom/helpshift/widget/SimpleSearchView;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/helpshift/widget/SimpleSearchView$2;->this$0:Lcom/helpshift/widget/SimpleSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "editable"    # Landroid/text/Editable;

    .prologue
    .line 70
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i2"    # I
    .param p4, "i3"    # I

    .prologue
    .line 56
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i2"    # I
    .param p4, "i3"    # I

    .prologue
    .line 60
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/helpshift/widget/SimpleSearchView$2;->this$0:Lcom/helpshift/widget/SimpleSearchView;

    invoke-static {v0}, Lcom/helpshift/widget/SimpleSearchView;->access$100(Lcom/helpshift/widget/SimpleSearchView;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 65
    :goto_0
    iget-object v0, p0, Lcom/helpshift/widget/SimpleSearchView$2;->this$0:Lcom/helpshift/widget/SimpleSearchView;

    invoke-static {v0}, Lcom/helpshift/widget/SimpleSearchView;->access$200(Lcom/helpshift/widget/SimpleSearchView;)Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListenerCompat;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListenerCompat;->onQueryTextChange(Ljava/lang/String;)Z

    .line 66
    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/helpshift/widget/SimpleSearchView$2;->this$0:Lcom/helpshift/widget/SimpleSearchView;

    invoke-static {v0}, Lcom/helpshift/widget/SimpleSearchView;->access$100(Lcom/helpshift/widget/SimpleSearchView;)Landroid/widget/ImageButton;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method
