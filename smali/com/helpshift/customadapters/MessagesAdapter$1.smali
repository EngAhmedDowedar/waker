.class Lcom/helpshift/customadapters/MessagesAdapter$1;
.super Ljava/lang/Object;
.source "MessagesAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/customadapters/MessagesAdapter;->setConvertView(Landroid/view/View;Lcom/helpshift/viewstructs/HSMsg;Lcom/helpshift/customadapters/MessagesAdapter$TxtUserHolder;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/customadapters/MessagesAdapter;

.field final synthetic val$item:Lcom/helpshift/viewstructs/HSMsg;


# direct methods
.method constructor <init>(Lcom/helpshift/customadapters/MessagesAdapter;Lcom/helpshift/viewstructs/HSMsg;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/helpshift/customadapters/MessagesAdapter$1;->this$0:Lcom/helpshift/customadapters/MessagesAdapter;

    iput-object p2, p0, Lcom/helpshift/customadapters/MessagesAdapter$1;->val$item:Lcom/helpshift/viewstructs/HSMsg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/helpshift/customadapters/MessagesAdapter$1;->this$0:Lcom/helpshift/customadapters/MessagesAdapter;

    invoke-static {v0}, Lcom/helpshift/customadapters/MessagesAdapter;->access$1100(Lcom/helpshift/customadapters/MessagesAdapter;)Lcom/helpshift/HSMessagesFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/helpshift/customadapters/MessagesAdapter$1;->val$item:Lcom/helpshift/viewstructs/HSMsg;

    iget-object v1, v1, Lcom/helpshift/viewstructs/HSMsg;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/helpshift/HSMessagesFragment;->retryMessage(Ljava/lang/String;)V

    .line 193
    return-void
.end method
