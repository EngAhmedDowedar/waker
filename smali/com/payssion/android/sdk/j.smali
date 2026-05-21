.class final Lcom/payssion/android/sdk/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/payssion/android/sdk/PayssionActivity;

.field private final synthetic b:I

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/payssion/android/sdk/PayssionActivity;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/payssion/android/sdk/j;->a:Lcom/payssion/android/sdk/PayssionActivity;

    iput p2, p0, Lcom/payssion/android/sdk/j;->b:I

    iput-object p3, p0, Lcom/payssion/android/sdk/j;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    iget-object v0, p0, Lcom/payssion/android/sdk/j;->a:Lcom/payssion/android/sdk/PayssionActivity;

    iget-object v0, v0, Lcom/payssion/android/sdk/PayssionActivity;->a:Lcom/payssion/android/sdk/model/d;

    instance-of v0, v0, Lcom/payssion/android/sdk/model/PayRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payssion/android/sdk/j;->a:Lcom/payssion/android/sdk/PayssionActivity;

    iget-object v0, v0, Lcom/payssion/android/sdk/PayssionActivity;->c:Lcom/payssion/android/sdk/ui/l;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/payssion/android/sdk/j;->a:Lcom/payssion/android/sdk/PayssionActivity;

    iget v1, p0, Lcom/payssion/android/sdk/j;->b:I

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "description"

    iget-object v4, p0, Lcom/payssion/android/sdk/j;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/payssion/android/sdk/PayssionActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/payssion/android/sdk/j;->a:Lcom/payssion/android/sdk/PayssionActivity;

    invoke-virtual {v0}, Lcom/payssion/android/sdk/PayssionActivity;->finish()V

    :cond_0
    return-void
.end method
