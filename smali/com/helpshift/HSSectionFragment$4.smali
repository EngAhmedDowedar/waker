.class Lcom/helpshift/HSSectionFragment$4;
.super Landroid/os/Handler;
.source "HSSectionFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/HSSectionFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/HSSectionFragment;


# direct methods
.method constructor <init>(Lcom/helpshift/HSSectionFragment;)V
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Lcom/helpshift/HSSectionFragment$4;->this$0:Lcom/helpshift/HSSectionFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 293
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 294
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/helpshift/Section;

    .line 295
    .local v0, "section":Lcom/helpshift/Section;
    iget-object v1, p0, Lcom/helpshift/HSSectionFragment$4;->this$0:Lcom/helpshift/HSSectionFragment;

    invoke-static {v1, v0}, Lcom/helpshift/HSSectionFragment;->access$600(Lcom/helpshift/HSSectionFragment;Lcom/helpshift/Section;)V

    .line 296
    return-void
.end method
