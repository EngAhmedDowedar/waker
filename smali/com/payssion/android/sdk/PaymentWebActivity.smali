.class public Lcom/payssion/android/sdk/PaymentWebActivity;
.super Lcom/payssion/android/sdk/PayssionBaseActivity;


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Landroid/webkit/WebView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ProgressBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "title"

    sput-object v0, Lcom/payssion/android/sdk/PaymentWebActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/payssion/android/sdk/PayssionBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/payssion/android/sdk/PaymentWebActivity;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/payssion/android/sdk/PaymentWebActivity;->d:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic a(Lcom/payssion/android/sdk/PaymentWebActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/payssion/android/sdk/PaymentWebActivity;->c(Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/payssion/android/sdk/PaymentWebActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "JavascriptInterface"
        }
    .end annotation

    const/4 v7, 0x1

    const/high16 v4, 0x41700000    # 15.0f

    const/high16 v1, 0x41200000    # 10.0f

    const/4 v6, 0x0

    const/4 v5, -0x1

    invoke-super {p0, p1}, Lcom/payssion/android/sdk/PayssionBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-virtual {p0, v0}, Lcom/payssion/android/sdk/PaymentWebActivity;->a(F)I

    invoke-virtual {p0, v1}, Lcom/payssion/android/sdk/PaymentWebActivity;->a(F)I

    invoke-virtual {p0, v1}, Lcom/payssion/android/sdk/PaymentWebActivity;->a(F)I

    invoke-virtual {p0, v4}, Lcom/payssion/android/sdk/PaymentWebActivity;->a(F)I

    invoke-static {p0, v7, v5, v5}, Lcom/a/a/a/a;->a(Landroid/content/Context;III)Landroid/widget/LinearLayout;

    move-result-object v0

    const/high16 v1, 0x42300000    # 44.0f

    invoke-virtual {p0, v1}, Lcom/payssion/android/sdk/PaymentWebActivity;->a(F)I

    move-result v1

    invoke-static {p0, v6, v5, v1}, Lcom/a/a/a/a;->a(Landroid/content/Context;III)Landroid/widget/LinearLayout;

    move-result-object v1

    const v2, -0xe0ddd4

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/payssion/android/sdk/PaymentWebActivity;->c:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-static {v5, v2}, Lcom/a/a/a/a;->b(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    iget-object v3, p0, Lcom/payssion/android/sdk/PaymentWebActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, p0, Lcom/payssion/android/sdk/PaymentWebActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v3, p0, Lcom/payssion/android/sdk/PaymentWebActivity;->c:Landroid/widget/TextView;

    const-string/jumbo v4, "PAYMENT PAGE"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/payssion/android/sdk/PaymentWebActivity;->c:Landroid/widget/TextView;

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v3, p0, Lcom/payssion/android/sdk/PaymentWebActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    const v3, 0x1010078

    invoke-direct {v1, p0, v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/payssion/android/sdk/PaymentWebActivity;->d:Landroid/widget/ProgressBar;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {p0, v1}, Lcom/payssion/android/sdk/PaymentWebActivity;->a(F)I

    move-result v1

    invoke-static {v5, v1}, Lcom/a/a/a/a;->c(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lcom/payssion/android/sdk/PaymentWebActivity;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/payssion/android/sdk/PaymentWebActivity;->b:Landroid/webkit/WebView;

    invoke-static {v5, v5}, Lcom/a/a/a/a;->c(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lcom/payssion/android/sdk/PaymentWebActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v0}, Lcom/payssion/android/sdk/PaymentWebActivity;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/payssion/android/sdk/PaymentWebActivity;->b:Landroid/webkit/WebView;

    new-instance v1, Lcom/payssion/android/sdk/Payssion;

    invoke-direct {v1}, Lcom/payssion/android/sdk/Payssion;-><init>()V

    const-string/jumbo v2, "payssionAndroid"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/payssion/android/sdk/PaymentWebActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/payssion/android/sdk/PaymentWebActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    iget-object v0, p0, Lcom/payssion/android/sdk/PaymentWebActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, v6}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcom/payssion/android/sdk/PaymentWebActivity;->b:Landroid/webkit/WebView;

    new-instance v1, Lcom/payssion/android/sdk/ui/h;

    invoke-direct {v1}, Lcom/payssion/android/sdk/ui/h;-><init>()V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    invoke-virtual {p0}, Lcom/payssion/android/sdk/PaymentWebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/payssion/android/sdk/PaymentWebActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/payssion/android/sdk/PaymentWebActivity;->c(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lcom/payssion/android/sdk/PaymentWebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "redirect_url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/payssion/android/sdk/PaymentWebActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string/jumbo v0, "LOADING..."

    invoke-virtual {p0, v0}, Lcom/payssion/android/sdk/PaymentWebActivity;->a(Ljava/lang/String;)V

    const-string/jumbo v0, "payssion"

    const-string/jumbo v1, "onPage:LOADING"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/payssion/android/sdk/PaymentWebActivity;->b:Landroid/webkit/WebView;

    new-instance v1, Lcom/payssion/android/sdk/e;

    invoke-direct {v1, p0}, Lcom/payssion/android/sdk/e;-><init>(Lcom/payssion/android/sdk/PaymentWebActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/payssion/android/sdk/PaymentWebActivity;->b:Landroid/webkit/WebView;

    new-instance v1, Lcom/payssion/android/sdk/f;

    invoke-direct {v1, p0}, Lcom/payssion/android/sdk/f;-><init>(Lcom/payssion/android/sdk/PaymentWebActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    goto :goto_0
.end method
