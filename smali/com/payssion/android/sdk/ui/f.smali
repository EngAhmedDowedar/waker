.class final Lcom/payssion/android/sdk/ui/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field private final synthetic a:Lcom/payssion/android/sdk/ui/widget/FormSelect;


# direct methods
.method constructor <init>(Lcom/payssion/android/sdk/ui/widget/FormSelect;)V
    .locals 0

    iput-object p1, p0, Lcom/payssion/android/sdk/ui/f;->a:Lcom/payssion/android/sdk/ui/widget/FormSelect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 1

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/payssion/android/sdk/ui/f;->a:Lcom/payssion/android/sdk/ui/widget/FormSelect;

    invoke-virtual {v0}, Lcom/payssion/android/sdk/ui/widget/FormSelect;->c()Z

    :cond_0
    return-void
.end method
