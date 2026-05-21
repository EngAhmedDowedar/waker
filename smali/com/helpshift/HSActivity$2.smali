.class Lcom/helpshift/HSActivity$2;
.super Ljava/lang/Object;
.source "HSActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/HSActivity;->showConversationMenu(Landroid/view/Menu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/HSActivity;


# direct methods
.method constructor <init>(Lcom/helpshift/HSActivity;)V
    .locals 0

    .prologue
    .line 333
    iput-object p1, p0, Lcom/helpshift/HSActivity$2;->this$0:Lcom/helpshift/HSActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 335
    iget-object v0, p0, Lcom/helpshift/HSActivity$2;->this$0:Lcom/helpshift/HSActivity;

    invoke-static {v0}, Lcom/helpshift/HSActivity;->access$300(Lcom/helpshift/HSActivity;)V

    .line 336
    return-void
.end method
