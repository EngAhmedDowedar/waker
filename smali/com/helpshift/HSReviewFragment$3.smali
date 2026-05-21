.class Lcom/helpshift/HSReviewFragment$3;
.super Ljava/lang/Object;
.source "HSReviewFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/HSReviewFragment;->initAlertDialog(Landroid/support/v4/app/FragmentActivity;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/HSReviewFragment;


# direct methods
.method constructor <init>(Lcom/helpshift/HSReviewFragment;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/helpshift/HSReviewFragment$3;->this$0:Lcom/helpshift/HSReviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 133
    const-string/jumbo v0, "later"

    invoke-static {v0}, Lcom/helpshift/HSFunnel;->pushAppReviewedEvent(Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/helpshift/HSReviewFragment$3;->this$0:Lcom/helpshift/HSReviewFragment;

    sget-object v1, Lcom/helpshift/Helpshift$HS_RATE_ALERT;->CLOSE:Lcom/helpshift/Helpshift$HS_RATE_ALERT;

    invoke-static {v0, v1}, Lcom/helpshift/HSReviewFragment;->access$300(Lcom/helpshift/HSReviewFragment;Lcom/helpshift/Helpshift$HS_RATE_ALERT;)V

    .line 135
    return-void
.end method
