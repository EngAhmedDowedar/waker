.class Lcom/helpshift/customadapters/MessagesAdapter$2;
.super Ljava/lang/Object;
.source "MessagesAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/customadapters/MessagesAdapter;->setConvertView(Landroid/view/View;Lcom/helpshift/viewstructs/HSMsg;ILcom/helpshift/customadapters/MessagesAdapter$CBViewHolder;)Landroid/view/View;
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
    .line 233
    iput-object p1, p0, Lcom/helpshift/customadapters/MessagesAdapter$2;->this$0:Lcom/helpshift/customadapters/MessagesAdapter;

    iput-object p2, p0, Lcom/helpshift/customadapters/MessagesAdapter$2;->val$item:Lcom/helpshift/viewstructs/HSMsg;

    iput p3, p0, Lcom/helpshift/customadapters/MessagesAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 236
    iget-object v0, p0, Lcom/helpshift/customadapters/MessagesAdapter$2;->val$item:Lcom/helpshift/viewstructs/HSMsg;

    iget-object v0, v0, Lcom/helpshift/viewstructs/HSMsg;->clickable:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/helpshift/customadapters/MessagesAdapter$2;->this$0:Lcom/helpshift/customadapters/MessagesAdapter;

    invoke-static {v0}, Lcom/helpshift/customadapters/MessagesAdapter;->access$1100(Lcom/helpshift/customadapters/MessagesAdapter;)Lcom/helpshift/HSMessagesFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/helpshift/customadapters/MessagesAdapter$2;->val$item:Lcom/helpshift/viewstructs/HSMsg;

    iget-object v1, v1, Lcom/helpshift/viewstructs/HSMsg;->id:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget v3, p0, Lcom/helpshift/customadapters/MessagesAdapter$2;->val$position:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/helpshift/HSMessagesFragment;->replyConfirmation(Ljava/lang/String;Ljava/lang/Boolean;I)V

    .line 239
    :cond_0
    return-void
.end method
