.class final Lcom/payssion/android/sdk/f;
.super Landroid/webkit/WebChromeClient;


# instance fields
.field private synthetic a:Lcom/payssion/android/sdk/PaymentWebActivity;


# direct methods
.method constructor <init>(Lcom/payssion/android/sdk/PaymentWebActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/payssion/android/sdk/f;->a:Lcom/payssion/android/sdk/PaymentWebActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 v0, 0x64

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lcom/payssion/android/sdk/f;->a:Lcom/payssion/android/sdk/PaymentWebActivity;

    invoke-static {v0}, Lcom/payssion/android/sdk/PaymentWebActivity;->a(Lcom/payssion/android/sdk/PaymentWebActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/payssion/android/sdk/f;->a:Lcom/payssion/android/sdk/PaymentWebActivity;

    invoke-static {v0}, Lcom/payssion/android/sdk/PaymentWebActivity;->a(Lcom/payssion/android/sdk/PaymentWebActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_0
    return-void
.end method

.method public final onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/payssion/android/sdk/f;->a:Lcom/payssion/android/sdk/PaymentWebActivity;

    invoke-static {v0, p2}, Lcom/payssion/android/sdk/PaymentWebActivity;->a(Lcom/payssion/android/sdk/PaymentWebActivity;Ljava/lang/String;)V

    return-void
.end method
