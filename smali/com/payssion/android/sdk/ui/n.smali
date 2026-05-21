.class final Lcom/payssion/android/sdk/ui/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/payssion/android/sdk/ui/l;


# direct methods
.method constructor <init>(Lcom/payssion/android/sdk/ui/l;)V
    .locals 0

    iput-object p1, p0, Lcom/payssion/android/sdk/ui/n;->a:Lcom/payssion/android/sdk/ui/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    iget-object v0, p0, Lcom/payssion/android/sdk/ui/n;->a:Lcom/payssion/android/sdk/ui/l;

    invoke-virtual {v0}, Lcom/payssion/android/sdk/ui/l;->c()V

    iget-object v0, p0, Lcom/payssion/android/sdk/ui/n;->a:Lcom/payssion/android/sdk/ui/l;

    long-to-int v1, p4

    invoke-virtual {v0, v1}, Lcom/payssion/android/sdk/ui/l;->a(I)V

    return-void
.end method
