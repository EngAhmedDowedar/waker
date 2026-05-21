.class Lcom/helpshift/HSQuestionFragment$6;
.super Ljava/lang/Object;
.source "HSQuestionFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/HSQuestionFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/HSQuestionFragment;


# direct methods
.method constructor <init>(Lcom/helpshift/HSQuestionFragment;)V
    .locals 0

    .prologue
    .line 464
    iput-object p1, p0, Lcom/helpshift/HSQuestionFragment$6;->this$0:Lcom/helpshift/HSQuestionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 467
    iget-object v0, p0, Lcom/helpshift/HSQuestionFragment$6;->this$0:Lcom/helpshift/HSQuestionFragment;

    const-string/jumbo v1, "startConversation"

    invoke-static {v0, v1}, Lcom/helpshift/HSQuestionFragment;->access$900(Lcom/helpshift/HSQuestionFragment;Ljava/lang/String;)V

    .line 468
    return-void
.end method
