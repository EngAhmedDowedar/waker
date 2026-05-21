.class public Lcom/payssion/android/sdk/PaymentPageActivity;
.super Lcom/payssion/android/sdk/PayssionBaseActivity;


# instance fields
.field private a:Lcom/payssion/android/sdk/ui/l;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/payssion/android/sdk/PayssionBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/payssion/android/sdk/PayssionBaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/payssion/android/sdk/PaymentPageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "request"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/payssion/android/sdk/model/PayResponse;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/payssion/android/sdk/model/PayResponse;

    invoke-static {p0, v0}, Lcom/a/a/a/a;->a(Lcom/payssion/android/sdk/PayssionBaseActivity;Lcom/payssion/android/sdk/model/PayResponse;)Lcom/payssion/android/sdk/ui/l;

    move-result-object v0

    iput-object v0, p0, Lcom/payssion/android/sdk/PaymentPageActivity;->a:Lcom/payssion/android/sdk/ui/l;

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/payssion/android/sdk/PaymentPageActivity;->a:Lcom/payssion/android/sdk/ui/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payssion/android/sdk/PaymentPageActivity;->a:Lcom/payssion/android/sdk/ui/l;

    invoke-virtual {v0}, Lcom/payssion/android/sdk/ui/l;->b()Z

    :cond_0
    invoke-super {p0, p1}, Lcom/payssion/android/sdk/PayssionBaseActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
