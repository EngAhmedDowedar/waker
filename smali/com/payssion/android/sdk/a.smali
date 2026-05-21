.class final Lcom/payssion/android/sdk/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field private synthetic a:Lcom/payssion/android/sdk/MainActivity;


# direct methods
.method constructor <init>(Lcom/payssion/android/sdk/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/payssion/android/sdk/a;->a:Lcom/payssion/android/sdk/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 1

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/payssion/android/sdk/a;->a:Lcom/payssion/android/sdk/MainActivity;

    iget-object v0, v0, Lcom/payssion/android/sdk/MainActivity;->a:Lcom/payssion/android/sdk/ui/widget/FormEdit;

    invoke-virtual {v0}, Lcom/payssion/android/sdk/ui/widget/FormEdit;->d()Z

    :cond_0
    return-void
.end method
