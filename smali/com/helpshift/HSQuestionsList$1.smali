.class Lcom/helpshift/HSQuestionsList$1;
.super Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;
.source "HSQuestionsList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/HSQuestionsList;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/HSQuestionsList;


# direct methods
.method constructor <init>(Lcom/helpshift/HSQuestionsList;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/helpshift/HSQuestionsList$1;->this$0:Lcom/helpshift/HSQuestionsList;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 57
    iget-object v0, p0, Lcom/helpshift/HSQuestionsList$1;->this$0:Lcom/helpshift/HSQuestionsList;

    invoke-static {v0}, Lcom/helpshift/HSQuestionsList;->access$000(Lcom/helpshift/HSQuestionsList;)Lcom/helpshift/HSSectionPagerAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/helpshift/HSSectionPagerAdapter;->onPageSelected(I)V

    .line 58
    return-void
.end method
