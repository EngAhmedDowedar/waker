.class Lcom/helpshift/customadapters/MessagesAdapter$12;
.super Ljava/lang/Object;
.source "MessagesAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/customadapters/MessagesAdapter;->setConvertView(Landroid/view/View;Lcom/helpshift/viewstructs/HSMsg;ILcom/helpshift/customadapters/MessagesAdapter$AdminAttachmentImageViewHolder;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/customadapters/MessagesAdapter;

.field final synthetic val$attachmentObject:Lorg/json/JSONObject;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/helpshift/customadapters/MessagesAdapter;Lorg/json/JSONObject;I)V
    .locals 0

    .prologue
    .line 687
    iput-object p1, p0, Lcom/helpshift/customadapters/MessagesAdapter$12;->this$0:Lcom/helpshift/customadapters/MessagesAdapter;

    iput-object p2, p0, Lcom/helpshift/customadapters/MessagesAdapter$12;->val$attachmentObject:Lorg/json/JSONObject;

    iput p3, p0, Lcom/helpshift/customadapters/MessagesAdapter$12;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 690
    iget-object v0, p0, Lcom/helpshift/customadapters/MessagesAdapter$12;->this$0:Lcom/helpshift/customadapters/MessagesAdapter;

    invoke-static {v0}, Lcom/helpshift/customadapters/MessagesAdapter;->access$1100(Lcom/helpshift/customadapters/MessagesAdapter;)Lcom/helpshift/HSMessagesFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/helpshift/customadapters/MessagesAdapter$12;->val$attachmentObject:Lorg/json/JSONObject;

    iget v2, p0, Lcom/helpshift/customadapters/MessagesAdapter$12;->val$position:I

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Lcom/helpshift/HSMessagesFragment;->downloadAdminAttachment(Lorg/json/JSONObject;II)V

    .line 693
    return-void
.end method
