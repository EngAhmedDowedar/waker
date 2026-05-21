.class Lcom/helpshift/HSMessagesFragment$13;
.super Ljava/lang/Object;
.source "HSMessagesFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/HSMessagesFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/HSMessagesFragment;

.field final synthetic val$addReply:Landroid/widget/ImageButton;


# direct methods
.method constructor <init>(Lcom/helpshift/HSMessagesFragment;Landroid/widget/ImageButton;)V
    .locals 0

    .prologue
    .line 785
    iput-object p1, p0, Lcom/helpshift/HSMessagesFragment$13;->this$0:Lcom/helpshift/HSMessagesFragment;

    iput-object p2, p0, Lcom/helpshift/HSMessagesFragment$13;->val$addReply:Landroid/widget/ImageButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 787
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 790
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    const/4 v1, 0x1

    .line 794
    iget-object v0, p0, Lcom/helpshift/HSMessagesFragment$13;->this$0:Lcom/helpshift/HSMessagesFragment;

    invoke-static {v0, v1}, Lcom/helpshift/HSMessagesFragment;->access$1702(Lcom/helpshift/HSMessagesFragment;Z)Z

    .line 795
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 796
    iget-object v0, p0, Lcom/helpshift/HSMessagesFragment$13;->val$addReply:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 797
    iget-object v0, p0, Lcom/helpshift/HSMessagesFragment$13;->val$addReply:Landroid/widget/ImageButton;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setAlpha(I)V

    .line 798
    iget-object v0, p0, Lcom/helpshift/HSMessagesFragment$13;->this$0:Lcom/helpshift/HSMessagesFragment;

    invoke-static {v0}, Lcom/helpshift/HSMessagesFragment;->access$700(Lcom/helpshift/HSMessagesFragment;)Lcom/helpshift/HSActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/helpshift/HSMessagesFragment$13;->val$addReply:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/helpshift/util/Styles;->setSendMessageButtonIconColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 804
    :goto_0
    return-void

    .line 800
    :cond_0
    iget-object v0, p0, Lcom/helpshift/HSMessagesFragment$13;->val$addReply:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 801
    iget-object v0, p0, Lcom/helpshift/HSMessagesFragment$13;->val$addReply:Landroid/widget/ImageButton;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setAlpha(I)V

    .line 802
    iget-object v0, p0, Lcom/helpshift/HSMessagesFragment$13;->this$0:Lcom/helpshift/HSMessagesFragment;

    invoke-static {v0}, Lcom/helpshift/HSMessagesFragment;->access$700(Lcom/helpshift/HSMessagesFragment;)Lcom/helpshift/HSActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/helpshift/HSMessagesFragment$13;->val$addReply:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/helpshift/util/Styles;->setSendMessageButtonActiveIconColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
