.class Lcom/helpshift/util/HSHTML5WebView$MyWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "HSHTML5WebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/util/HSHTML5WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/util/HSHTML5WebView;


# direct methods
.method private constructor <init>(Lcom/helpshift/util/HSHTML5WebView;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/helpshift/util/HSHTML5WebView$MyWebViewClient;->this$0:Lcom/helpshift/util/HSHTML5WebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/helpshift/util/HSHTML5WebView;Lcom/helpshift/util/HSHTML5WebView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/helpshift/util/HSHTML5WebView;
    .param p2, "x1"    # Lcom/helpshift/util/HSHTML5WebView$1;

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lcom/helpshift/util/HSHTML5WebView$MyWebViewClient;-><init>(Lcom/helpshift/util/HSHTML5WebView;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 199
    iget-object v0, p0, Lcom/helpshift/util/HSHTML5WebView$MyWebViewClient;->this$0:Lcom/helpshift/util/HSHTML5WebView;

    invoke-static {v0}, Lcom/helpshift/util/HSHTML5WebView;->access$600(Lcom/helpshift/util/HSHTML5WebView;)Lcom/helpshift/app/ActionBarActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/helpshift/app/ActionBarActivity;->setSupportProgressBarIndeterminateVisibility(Z)V

    .line 200
    iget-object v0, p0, Lcom/helpshift/util/HSHTML5WebView$MyWebViewClient;->this$0:Lcom/helpshift/util/HSHTML5WebView;

    invoke-static {v0}, Lcom/helpshift/util/HSHTML5WebView;->access$700(Lcom/helpshift/util/HSHTML5WebView;)Lcom/helpshift/HSQuestionFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpshift/HSQuestionFragment;->showMenuOptions()V

    .line 201
    iget-object v0, p0, Lcom/helpshift/util/HSHTML5WebView$MyWebViewClient;->this$0:Lcom/helpshift/util/HSHTML5WebView;

    invoke-static {v0}, Lcom/helpshift/util/HSHTML5WebView;->access$700(Lcom/helpshift/util/HSHTML5WebView;)Lcom/helpshift/HSQuestionFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpshift/HSQuestionFragment;->highlightSearchTerms()V

    .line 202
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 206
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/helpshift/util/HSHTML5WebView$MyWebViewClient;->this$0:Lcom/helpshift/util/HSHTML5WebView;

    invoke-static {v0}, Lcom/helpshift/util/HSHTML5WebView;->access$800(Lcom/helpshift/util/HSHTML5WebView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, -0xa

    if-ne p2, v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/helpshift/util/HSHTML5WebView$MyWebViewClient;->this$0:Lcom/helpshift/util/HSHTML5WebView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/helpshift/util/HSHTML5WebView;->access$902(Lcom/helpshift/util/HSHTML5WebView;Z)Z

    .line 210
    iget-object v0, p0, Lcom/helpshift/util/HSHTML5WebView$MyWebViewClient;->this$0:Lcom/helpshift/util/HSHTML5WebView;

    invoke-static {v0}, Lcom/helpshift/util/HSHTML5WebView;->access$700(Lcom/helpshift/util/HSHTML5WebView;)Lcom/helpshift/HSQuestionFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpshift/HSQuestionFragment;->hideQuestionFooter()V

    .line 212
    :cond_0
    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 9
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "inputUrl"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 241
    const/4 v3, 0x0

    .line 242
    .local v3, "url":Ljava/net/URL;
    iget-object v5, p0, Lcom/helpshift/util/HSHTML5WebView$MyWebViewClient;->this$0:Lcom/helpshift/util/HSHTML5WebView;

    invoke-static {v5}, Lcom/helpshift/util/HSHTML5WebView;->access$600(Lcom/helpshift/util/HSHTML5WebView;)Lcom/helpshift/app/ActionBarActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/helpshift/app/ActionBarActivity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    .line 245
    .local v2, "storagePath":Ljava/io/File;
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "url":Ljava/net/URL;
    .local v4, "url":Ljava/net/URL;
    move-object v3, v4

    .line 250
    .end local v4    # "url":Ljava/net/URL;
    .restart local v3    # "url":Ljava/net/URL;
    :goto_0
    if-eqz v3, :cond_0

    .line 251
    new-instance v1, Ljava/io/File;

    const-string/jumbo v5, "/"

    const-string/jumbo v6, "_"

    invoke-virtual {p2, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 253
    .local v1, "saveFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 255
    :try_start_1
    new-instance v5, Landroid/webkit/WebResourceResponse;

    const-string/jumbo v6, ""

    const-string/jumbo v7, ""

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6, v7, v8}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 265
    .end local v1    # "saveFile":Ljava/io/File;
    :goto_1
    return-object v5

    .line 246
    :catch_0
    move-exception v0

    .line 247
    .local v0, "e":Ljava/net/MalformedURLException;
    const-string/jumbo v5, "HelpShiftDebug"

    const-string/jumbo v6, "MalformedURLException"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 256
    .end local v0    # "e":Ljava/net/MalformedURLException;
    .restart local v1    # "saveFile":Ljava/io/File;
    :catch_1
    move-exception v0

    .line 257
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v5, "HelpShiftDebug"

    const-string/jumbo v6, "FileNotFoundException"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 265
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v1    # "saveFile":Ljava/io/File;
    :cond_0
    :goto_2
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v5

    goto :goto_1

    .line 260
    .restart local v1    # "saveFile":Ljava/io/File;
    :cond_1
    iget-object v5, p0, Lcom/helpshift/util/HSHTML5WebView$MyWebViewClient;->this$0:Lcom/helpshift/util/HSHTML5WebView;

    invoke-static {v5, v3}, Lcom/helpshift/util/HSHTML5WebView;->access$1000(Lcom/helpshift/util/HSHTML5WebView;Ljava/net/URL;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 261
    iget-object v5, p0, Lcom/helpshift/util/HSHTML5WebView$MyWebViewClient;->this$0:Lcom/helpshift/util/HSHTML5WebView;

    invoke-static {v5, v3, v1}, Lcom/helpshift/util/HSHTML5WebView;->access$1100(Lcom/helpshift/util/HSHTML5WebView;Ljava/net/URL;Ljava/io/File;)V

    goto :goto_2
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 216
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 217
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.VIEW"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 218
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 219
    .local v3, "linkUri":Landroid/net/Uri;
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 220
    iget-object v4, p0, Lcom/helpshift/util/HSHTML5WebView$MyWebViewClient;->this$0:Lcom/helpshift/util/HSHTML5WebView;

    invoke-static {v4}, Lcom/helpshift/util/HSHTML5WebView;->access$600(Lcom/helpshift/util/HSHTML5WebView;)Lcom/helpshift/app/ActionBarActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/helpshift/app/ActionBarActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 222
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 223
    .local v1, "eventObj":Lorg/json/JSONObject;
    const-string/jumbo v4, "p"

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 224
    const-string/jumbo v4, "u"

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 225
    const-string/jumbo v4, "fl"

    invoke-static {v4, v1}, Lcom/helpshift/HSFunnel;->pushEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    .end local v1    # "eventObj":Lorg/json/JSONObject;
    :goto_0
    iget-object v4, p0, Lcom/helpshift/util/HSHTML5WebView$MyWebViewClient;->this$0:Lcom/helpshift/util/HSHTML5WebView;

    invoke-static {v4}, Lcom/helpshift/util/HSHTML5WebView;->access$600(Lcom/helpshift/util/HSHTML5WebView;)Lcom/helpshift/app/ActionBarActivity;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/helpshift/app/ActionBarActivity;->startActivity(Landroid/content/Intent;)V

    .line 230
    const/4 v4, 0x1

    .line 235
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "linkUri":Landroid/net/Uri;
    :goto_1
    return v4

    .line 226
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "linkUri":Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 227
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v4, "HelpShiftDebug"

    const-string/jumbo v5, "JSONException : "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 232
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    iget-object v4, p0, Lcom/helpshift/util/HSHTML5WebView$MyWebViewClient;->this$0:Lcom/helpshift/util/HSHTML5WebView;

    invoke-static {v4, p2}, Lcom/helpshift/util/HSHTML5WebView;->access$802(Lcom/helpshift/util/HSHTML5WebView;Ljava/lang/String;)Ljava/lang/String;

    .line 235
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "linkUri":Landroid/net/Uri;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method
