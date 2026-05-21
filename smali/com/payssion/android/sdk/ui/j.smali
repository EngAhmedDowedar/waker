.class final Lcom/payssion/android/sdk/ui/j;
.super Landroid/webkit/WebViewClient;


# instance fields
.field private synthetic a:Lcom/payssion/android/sdk/ui/Redirect;

.field private final synthetic b:Landroid/widget/ProgressBar;


# direct methods
.method constructor <init>(Lcom/payssion/android/sdk/ui/Redirect;Landroid/widget/ProgressBar;)V
    .locals 0

    iput-object p1, p0, Lcom/payssion/android/sdk/ui/j;->a:Lcom/payssion/android/sdk/ui/Redirect;

    iput-object p2, p0, Lcom/payssion/android/sdk/ui/j;->b:Landroid/widget/ProgressBar;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/payssion/android/sdk/ui/j;->a:Lcom/payssion/android/sdk/ui/Redirect;

    invoke-virtual {v0}, Lcom/payssion/android/sdk/ui/Redirect;->e()V

    iget-object v0, p0, Lcom/payssion/android/sdk/ui/j;->b:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    const-string/jumbo v0, "payssion"

    const-string/jumbo v1, "onPageStarted()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
