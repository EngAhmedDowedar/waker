.class final Lcom/payssion/android/sdk/ui/widget/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private synthetic a:Lcom/payssion/android/sdk/ui/widget/b;


# direct methods
.method constructor <init>(Lcom/payssion/android/sdk/ui/widget/b;)V
    .locals 0

    iput-object p1, p0, Lcom/payssion/android/sdk/ui/widget/a;->a:Lcom/payssion/android/sdk/ui/widget/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/payssion/android/sdk/ui/widget/a;->a:Lcom/payssion/android/sdk/ui/widget/b;

    iget-object v0, v0, Lcom/payssion/android/sdk/ui/widget/b;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getError()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payssion/android/sdk/ui/widget/a;->a:Lcom/payssion/android/sdk/ui/widget/b;

    iget-object v0, v0, Lcom/payssion/android/sdk/ui/widget/b;->a:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
