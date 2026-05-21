.class Lcom/anansimobile/extra/payment/PaymentSelectActivity$1;
.super Ljava/lang/Object;
.source "PaymentSelectActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anansimobile/extra/payment/PaymentSelectActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/anansimobile/extra/payment/PaymentSelectActivity;


# direct methods
.method constructor <init>(Lcom/anansimobile/extra/payment/PaymentSelectActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/anansimobile/extra/payment/PaymentSelectActivity;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/anansimobile/extra/payment/PaymentSelectActivity$1;->this$0:Lcom/anansimobile/extra/payment/PaymentSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
