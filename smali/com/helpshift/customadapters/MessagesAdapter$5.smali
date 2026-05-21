.class Lcom/helpshift/customadapters/MessagesAdapter$5;
.super Ljava/lang/Object;
.source "MessagesAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/customadapters/MessagesAdapter;->setConvertView(Landroid/view/View;Lcom/helpshift/viewstructs/HSMsg;ILcom/helpshift/customadapters/MessagesAdapter$RSCViewHolder;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/customadapters/MessagesAdapter;

.field final synthetic val$item:Lcom/helpshift/viewstructs/HSMsg;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/helpshift/customadapters/MessagesAdapter;Lcom/helpshift/viewstructs/HSMsg;I)V
    .locals 0

    .prologue
    .line 348
    iput-object p1, p0, Lcom/helpshift/customadapters/MessagesAdapter$5;->this$0:Lcom/helpshift/customadapters/MessagesAdapter;

    iput-object p2, p0, Lcom/helpshift/customadapters/MessagesAdapter$5;->val$item:Lcom/helpshift/viewstructs/HSMsg;

    iput p3, p0, Lcom/helpshift/customadapters/MessagesAdapter$5;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 351
    iget-object v0, p0, Lcom/helpshift/customadapters/MessagesAdapter$5;->val$item:Lcom/helpshift/viewstructs/HSMsg;

    iget-object v0, v0, Lcom/helpshift/viewstructs/HSMsg;->clickable:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/helpshift/customadapters/MessagesAdapter$5;->this$0:Lcom/helpshift/customadapters/MessagesAdapter;

    invoke-static {v0}, Lcom/helpshift/customadapters/MessagesAdapter;->access$1100(Lcom/helpshift/customadapters/MessagesAdapter;)Lcom/helpshift/HSMessagesFragment;

    move-result-object v0

    iget v1, p0, Lcom/helpshift/customadapters/MessagesAdapter$5;->val$position:I

    invoke-virtual {v0, v1}, Lcom/helpshift/HSMessagesFragment;->attachImage(I)V

    .line 354
    :cond_0
    return-void
.end method
