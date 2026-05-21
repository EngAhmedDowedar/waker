.class public Lcom/payssion/android/sdk/ui/Redirect;
.super Lcom/payssion/android/sdk/ui/l;


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "title"

    sput-object v0, Lcom/payssion/android/sdk/ui/Redirect;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/payssion/android/sdk/ui/l;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/payssion/android/sdk/PayssionBaseActivity;Lcom/payssion/android/sdk/model/PayResponse;)V
    .locals 6

    const/4 v4, -0x1

    const/4 v5, 0x1

    invoke-super {p0, p1, p2}, Lcom/payssion/android/sdk/ui/l;->a(Lcom/payssion/android/sdk/PayssionBaseActivity;Lcom/payssion/android/sdk/model/PayResponse;)V

    iput-boolean v5, p0, Lcom/payssion/android/sdk/ui/Redirect;->d:Z

    invoke-static {p1, v5, v4, v4}, Lcom/a/a/a/a;->a(Landroid/content/Context;III)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p0}, Lcom/payssion/android/sdk/ui/Redirect;->a()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    const v3, 0x1010078

    invoke-direct {v1, p1, v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {p0, v2}, Lcom/payssion/android/sdk/ui/Redirect;->a(F)I

    move-result v2

    invoke-static {v4, v2}, Lcom/a/a/a/a;->c(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/webkit/WebView;

    invoke-direct {v2, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v4}, Lcom/a/a/a/a;->c(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1, v0}, Lcom/payssion/android/sdk/PayssionBaseActivity;->setContentView(Landroid/view/View;)V

    const-string/jumbo v0, "PayssionSDK"

    invoke-virtual {v2, p0, v0}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    const/high16 v3, 0x2000000

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    invoke-virtual {v2, v5}, Landroid/webkit/WebView;->setScrollbarFadingEnabled(Z)V

    new-instance v3, Lcom/payssion/android/sdk/ui/h;

    invoke-direct {v3}, Lcom/payssion/android/sdk/ui/h;-><init>()V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "; PayssionSDK/1.0.0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/payssion/android/sdk/PayssionBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v3, Lcom/payssion/android/sdk/ui/Redirect;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {p0, v0}, Lcom/payssion/android/sdk/ui/Redirect;->a(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p2}, Lcom/payssion/android/sdk/model/PayResponse;->getRedirectUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string/jumbo v0, "LOADING..."

    iget-object v3, p0, Lcom/payssion/android/sdk/ui/l;->c:Lcom/payssion/android/sdk/PayssionBaseActivity;

    invoke-virtual {v3, v0, v5}, Lcom/payssion/android/sdk/PayssionBaseActivity;->a(Ljava/lang/String;Z)V

    new-instance v0, Lcom/payssion/android/sdk/ui/j;

    invoke-direct {v0, p0, v1}, Lcom/payssion/android/sdk/ui/j;-><init>(Lcom/payssion/android/sdk/ui/Redirect;Landroid/widget/ProgressBar;)V

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance v0, Lcom/payssion/android/sdk/ui/k;

    invoke-direct {v0, p0, v1}, Lcom/payssion/android/sdk/ui/k;-><init>(Lcom/payssion/android/sdk/ui/Redirect;Landroid/widget/ProgressBar;)V

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    goto :goto_0
.end method

.method public onReturn(Ljava/lang/String;)V
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string/jumbo v0, "onreturn"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/payssion/android/sdk/ui/Redirect;->c:Lcom/payssion/android/sdk/PayssionBaseActivity;

    const/16 v1, 0x302

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "data"

    iget-object v4, p0, Lcom/payssion/android/sdk/ui/Redirect;->e:Lcom/payssion/android/sdk/model/PayResponse;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/payssion/android/sdk/PayssionBaseActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/payssion/android/sdk/ui/Redirect;->c:Lcom/payssion/android/sdk/PayssionBaseActivity;

    invoke-virtual {v0}, Lcom/payssion/android/sdk/PayssionBaseActivity;->finish()V

    return-void
.end method
