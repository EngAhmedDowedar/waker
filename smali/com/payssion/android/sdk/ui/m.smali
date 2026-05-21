.class final Lcom/payssion/android/sdk/ui/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/payssion/android/sdk/ui/l;

.field private final synthetic b:[I


# direct methods
.method constructor <init>(Lcom/payssion/android/sdk/ui/l;[I)V
    .locals 0

    iput-object p1, p0, Lcom/payssion/android/sdk/ui/m;->a:Lcom/payssion/android/sdk/ui/l;

    iput-object p2, p0, Lcom/payssion/android/sdk/ui/m;->b:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/payssion/android/sdk/ui/m;->a:Lcom/payssion/android/sdk/ui/l;

    iget-object v1, p0, Lcom/payssion/android/sdk/ui/m;->b:[I

    invoke-virtual {v0, v1}, Lcom/payssion/android/sdk/ui/l;->a([I)V

    return-void
.end method
