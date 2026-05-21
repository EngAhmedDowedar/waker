.class Lcom/anansimobile/extra/payment/PMListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "PMListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anansimobile/extra/payment/PMListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field pmLogo:Landroid/widget/ImageView;

.field pmName:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/anansimobile/extra/payment/PMListAdapter;


# direct methods
.method constructor <init>(Lcom/anansimobile/extra/payment/PMListAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/anansimobile/extra/payment/PMListAdapter;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/anansimobile/extra/payment/PMListAdapter$ViewHolder;->this$0:Lcom/anansimobile/extra/payment/PMListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
