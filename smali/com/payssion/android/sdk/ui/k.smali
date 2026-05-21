.class final Lcom/payssion/android/sdk/ui/k;
.super Landroid/webkit/WebChromeClient;


# instance fields
.field private synthetic a:Lcom/payssion/android/sdk/ui/Redirect;

.field private final synthetic b:Landroid/widget/ProgressBar;


# direct methods
.method constructor <init>(Lcom/payssion/android/sdk/ui/Redirect;Landroid/widget/ProgressBar;)V
    .locals 0

    iput-object p1, p0, Lcom/payssion/android/sdk/ui/k;->a:Lcom/payssion/android/sdk/ui/Redirect;

    iput-object p2, p0, Lcom/payssion/android/sdk/ui/k;->b:Landroid/widget/ProgressBar;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, "payssion"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onProgressChanged"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz p2, :cond_0

    const/16 v0, 0x64

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lcom/payssion/android/sdk/ui/k;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/payssion/android/sdk/ui/k;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/payssion/android/sdk/ui/k;->a:Lcom/payssion/android/sdk/ui/Redirect;

    iput-boolean v3, v0, Lcom/payssion/android/sdk/ui/Redirect;->d:Z

    iget-object v0, p0, Lcom/payssion/android/sdk/ui/k;->b:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public final onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/payssion/android/sdk/ui/k;->a:Lcom/payssion/android/sdk/ui/Redirect;

    invoke-virtual {v0, p2}, Lcom/payssion/android/sdk/ui/Redirect;->a(Ljava/lang/String;)V

    return-void
.end method
