.class public final Lcom/helpshift/HSQuestionFragment;
.super Landroid/support/v4/app/Fragment;
.source "HSQuestionFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "HelpShiftDebug"


# instance fields
.field private activity:Lcom/helpshift/HSActivity;

.field private bodyText:Ljava/lang/String;

.field private contactUsBtn:Landroid/widget/Button;

.field contactUsClickListener:Landroid/view/View$OnClickListener;

.field private contactUsContainer:Landroid/widget/LinearLayout;

.field private data:Lcom/helpshift/HSApiData;

.field private dislikeButton:Landroid/widget/Button;

.field private dislikeClicked:Ljava/lang/Boolean;

.field private enableContactUs:Ljava/lang/Boolean;

.field private eventData:Lorg/json/JSONObject;

.field private eventSent:Ljava/lang/Boolean;

.field private extras:Landroid/os/Bundle;

.field private faqId:Ljava/lang/String;

.field private helpfulText:Landroid/widget/TextView;

.field private isHelpful:I

.field private isHighlighted:Ljava/lang/Boolean;

.field private isRtl:Ljava/lang/Boolean;

.field private likeButton:Landroid/widget/Button;

.field private likeClicked:Ljava/lang/Boolean;

.field private mWebView:Lcom/helpshift/util/HSHTML5WebView;

.field public markFailHandler:Landroid/os/Handler;

.field private questionFailHandler:Landroid/os/Handler;

.field public questionHandler:Landroid/os/Handler;

.field private questionText:Landroid/widget/TextView;

.field sendAnywayClickListner:Landroid/view/View$OnClickListener;

.field private storage:Lcom/helpshift/HSStorage;

.field private titleText:Ljava/lang/String;

.field private unhelpfulText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 51
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/helpshift/HSQuestionFragment;->faqId:Ljava/lang/String;

    .line 57
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/HSQuestionFragment;->isRtl:Ljava/lang/Boolean;

    .line 58
    iput v1, p0, Lcom/helpshift/HSQuestionFragment;->isHelpful:I

    .line 62
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/HSQuestionFragment;->eventSent:Ljava/lang/Boolean;

    .line 63
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/HSQuestionFragment;->likeClicked:Ljava/lang/Boolean;

    .line 64
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/HSQuestionFragment;->dislikeClicked:Ljava/lang/Boolean;

    .line 72
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/HSQuestionFragment;->isHighlighted:Ljava/lang/Boolean;

    .line 236
    new-instance v0, Lcom/helpshift/HSQuestionFragment$1;

    invoke-direct {v0, p0}, Lcom/helpshift/HSQuestionFragment$1;-><init>(Lcom/helpshift/HSQuestionFragment;)V

    iput-object v0, p0, Lcom/helpshift/HSQuestionFragment;->markFailHandler:Landroid/os/Handler;

    .line 245
    new-instance v0, Lcom/helpshift/HSQuestionFragment$2;

    invoke-direct {v0, p0}, Lcom/helpshift/HSQuestionFragment$2;-><init>(Lcom/helpshift/HSQuestionFragment;)V

    iput-object v0, p0, Lcom/helpshift/HSQuestionFragment;->questionHandler:Landroid/os/Handler;

    .line 269
    new-instance v0, Lcom/helpshift/HSQuestionFragment$3;

    invoke-direct {v0, p0}, Lcom/helpshift/HSQuestionFragment$3;-><init>(Lcom/helpshift/HSQuestionFragment;)V

    iput-object v0, p0, Lcom/helpshift/HSQuestionFragment;->questionFailHandler:Landroid/os/Handler;

    .line 464
    new-instance v0, Lcom/helpshift/HSQuestionFragment$6;

    invoke-direct {v0, p0}, Lcom/helpshift/HSQuestionFragment$6;-><init>(Lcom/helpshift/HSQuestionFragment;)V

    iput-object v0, p0, Lcom/helpshift/HSQuestionFragment;->sendAnywayClickListner:Landroid/view/View$OnClickListener;

    .line 471
    new-instance v0, Lcom/helpshift/HSQuestionFragment$7;

    invoke-direct {v0, p0}, Lcom/helpshift/HSQuestionFragment$7;-><init>(Lcom/helpshift/HSQuestionFragment;)V

    iput-object v0, p0, Lcom/helpshift/HSQuestionFragment;->contactUsClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/helpshift/HSQuestionFragment;)Lcom/helpshift/HSActivity;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/HSQuestionFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/helpshift/HSQuestionFragment;->activity:Lcom/helpshift/HSActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/helpshift/HSQuestionFragment;Lcom/helpshift/Faq;)V
    .locals 0
    .param p0, "x0"    # Lcom/helpshift/HSQuestionFragment;
    .param p1, "x1"    # Lcom/helpshift/Faq;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/helpshift/HSQuestionFragment;->updateQuestionUI(Lcom/helpshift/Faq;)V

    return-void
.end method

.method static synthetic access$1002(Lcom/helpshift/HSQuestionFragment;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/helpshift/HSQuestionFragment;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/helpshift/HSQuestionFragment;->dislikeClicked:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/helpshift/HSQuestionFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/helpshift/HSQuestionFragment;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/helpshift/HSQuestionFragment;->hideLikeItem()V

    return-void
.end method

.method static synthetic access$1200(Lcom/helpshift/HSQuestionFragment;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/HSQuestionFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/helpshift/HSQuestionFragment;->extras:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$200(Lcom/helpshift/HSQuestionFragment;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/HSQuestionFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/helpshift/HSQuestionFragment;->eventSent:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$202(Lcom/helpshift/HSQuestionFragment;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/helpshift/HSQuestionFragment;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/helpshift/HSQuestionFragment;->eventSent:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$300(Lcom/helpshift/HSQuestionFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/HSQuestionFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/helpshift/HSQuestionFragment;->faqId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/helpshift/HSQuestionFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/helpshift/HSQuestionFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/helpshift/HSQuestionFragment;->faqId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/helpshift/HSQuestionFragment;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/helpshift/HSQuestionFragment;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/helpshift/HSQuestionFragment;->likeClicked:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$500(Lcom/helpshift/HSQuestionFragment;Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0
    .param p0, "x0"    # Lcom/helpshift/HSQuestionFragment;
    .param p1, "x1"    # Landroid/os/Handler;
    .param p2, "x2"    # Landroid/os/Handler;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/Boolean;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/helpshift/HSQuestionFragment;->markQuestion(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$600(Lcom/helpshift/HSQuestionFragment;)Lorg/json/JSONObject;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/HSQuestionFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/helpshift/HSQuestionFragment;->eventData:Lorg/json/JSONObject;

    return-object v0
.end method

.method static synthetic access$700(Lcom/helpshift/HSQuestionFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/helpshift/HSQuestionFragment;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/helpshift/HSQuestionFragment;->hideDislikeItem()V

    return-void
.end method

.method static synthetic access$800(Lcom/helpshift/HSQuestionFragment;Ljava/lang/Boolean;)V
    .locals 0
    .param p0, "x0"    # Lcom/helpshift/HSQuestionFragment;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/helpshift/HSQuestionFragment;->showMarkedToast(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$900(Lcom/helpshift/HSQuestionFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/helpshift/HSQuestionFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/helpshift/HSQuestionFragment;->sendAction(Ljava/lang/String;)V

    return-void
.end method

.method private hideDislikeItem()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 230
    iget-object v0, p0, Lcom/helpshift/HSQuestionFragment;->questionText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 231
    iget-object v0, p0, Lcom/helpshift/HSQuestionFragment;->likeButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 232
    iget-object v0, p0, Lcom/helpshift/HSQuestionFragment;->dislikeButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 233
    iget-object v0, p0, Lcom/helpshift/HSQuestionFragment;->helpfulText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 234
    return-void
.end method

.method private hideLikeItem()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 212
    iget-object v0, p0, Lcom/helpshift/HSQuestionFragment;->enableContactUs:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/helpshift/HSQuestionFragment;->contactUsBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 216
    :cond_0
    invoke-virtual {p0}, Lcom/helpshift/HSQuestionFragment;->isShowSearchOnNewConversationFlowActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 217
    iget-object v0, p0, Lcom/helpshift/HSQuestionFragment;->contactUsBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 218
    iget-object v0, p0, Lcom/helpshift/HSQuestionFragment;->contactUsBtn:Landroid/widget/Button;

    sget v1, Lcom/helpshift/D$string;->hs__send_anyway:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 219
    iget-object v0, p0, Lcom/helpshift/HSQuestionFragment;->contactUsBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/helpshift/HSQuestionFragment;->sendAnywayClickListner:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    const-string/jumbo v0, "issue-filing"

    invoke-static {v0}, Lcom/helpshift/HelpshiftContext;->setViewState(Ljava/lang/String;)V

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/helpshift/HSQuestionFragment;->unhelpfulText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 224
    iget-object v0, p0, Lcom/helpshift/HSQuestionFragment;->questionText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 225
    iget-object v0, p0, Lcom/helpshift/HSQuestionFragment;->likeButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 226
    iget-object v0, p0, Lcom/helpshift/HSQuestionFragment;->dislikeButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 227
    return-void
.end method

.method private initWebView()V
    .locals 14

    .prologue
    const/4 v1, 0x0

    const/4 v13, 0x0

    const/4 v4, -0x1

    const v12, 0xffffff

    const/4 v5, 0x1

    .line 320
    iget-object v0, p0, Lcom/helpshift/HSQuestionFragment;->activity:Lcom/helpshift/HSActivity;

    sget v3, Lcom/helpshift/D$id;->hs__webViewParent:I

    invoke-virtual {v0, v3}, Lcom/helpshift/HSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    .line 322
    .local v11, "webViewParent":Landroid/widget/LinearLayout;
    iget-object v0, p0, Lcom/helpshift/HSQuestionFragment;->activity:Lcom/helpshift/HSActivity;

    invoke-virtual {v0}, Lcom/helpshift/HSActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 327
    .local v7, "array":Landroid/content/res/TypedArray;
    iget-object v0, p0, Lcom/helpshift/HSQuestionFragment;->mWebView:Lcom/helpshift/util/HSHTML5WebView;

    if-nez v0, :cond_1

    .line 328
    new-instance v0, Lcom/helpshift/util/HSHTML5WebView;

    invoke-virtual {p0}, Lcom/helpshift/HSQuestionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v0, v3, p0}, Lcom/helpshift/util/HSHTML5WebView;-><init>(Landroid/content/Context;Lcom/helpshift/HSQuestionFragment;)V

    iput-object v0, p0, Lcom/helpshift/HSQuestionFragment;->mWebView:Lcom/helpshift/util/HSHTML5WebView;

    .line 329
    iget-object v0, p0, Lcom/helpshift/HSQuestionFragment;->mWebView:Lcom/helpshift/util/HSHTML5WebView;

    invoke-virtual {v0}, Lcom/helpshift/util/HSHTML5WebView;->getLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v11, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 332
    invoke-virtual {v7, v13, v12}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    .line 333
    .local v6, "activityBackgroundColor":I
    iget-object v0, p0, Lcom/helpshift/HSQuestionFragment;->mWebView:Lcom/helpshift/util/HSHTML5WebView;

    invoke-virtual {v0, v6}, Lcom/helpshift/util/HSHTML5WebView;->setBackgroundColor(I)V

    .line 335
    iget-object v0, p0, Lcom/helpshift/HSQuestionFragment;->mWebView:Lcom/helpshift/util/HSHTML5WebView;

    invoke-virtual {v0}, Lcom/helpshift/util/HSHTML5WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v9

    .line 336
    .local v9, "s":Landroid/webkit/WebSettings;
    invoke-virtual {v9, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 337
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-gt v0, v3, :cond_0

    .line 338
    sget-object v0, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v9, v0}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 341
    :cond_0
    sget-object v0, Landroid/webkit/WebSettings$TextSize;->NORMAL:Landroid/webkit/WebSettings$TextSize;

    invoke-virtual {v9, v0}, Landroid/webkit/WebSettings;->setTextSize(Landroid/webkit/WebSettings$TextSize;)V

    .line 344
    .end local v6    # "activityBackgroundColor":I
    .end local v9    # "s":Landroid/webkit/WebSettings;
    :cond_1
    iget-object v0, p0, Lcom/helpshift/HSQuestionFragment;->bodyText:Ljava/lang/String;

    const-string/jumbo v3, "<iframe"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 346
    :try_start_0
    iget-object v0, p0, Lcom/helpshift/HSQuestionFragment;->bodyText:Ljava/lang/String;

    const-string/jumbo v3, "https"

    const-string/jumbo v4, "http"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/HSQuestionFragment;->bodyText:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    :cond_2
    :goto_0
    const-string/jumbo v0, "#%06X"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v7, v5, v12}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    and-int/2addr v4, v12

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v13

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 354
    .local v10, "textColor":Ljava/lang/String;
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 356
    iget-object v0, p0, Lcom/helpshift/HSQuestionFragment;->isRtl:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 357
    const-string/jumbo v2, "<html dir=\"rtl\">"

    .line 362
    .local v2, "webBodyText":Ljava/lang/String;
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "<head>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "<style type=\"text/css\">img, object, embed { max-width: 100%; }"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "body { margin: 0px 10px 10px 0px; padding: 0; line-height: 1.5; white-space: normal; word-wrap: break-word; color: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "; }"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ".title { display:block; margin: -12px 0 6px 0; padding: 0; font-size: 1.3125em; line-height: 1.25 }"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "</style>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "<script language=\"javascript\">var iframe = document.getElementsByTagName (\"iframe\") [0]; if (iframe) { iframe.width = \"100%\"; iframe.style.width = \"100%\"; }"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "document.addEventListener(\'click\',function(event) {"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "if (event.target instanceof HTMLImageElement) { event.preventDefault(); event.stopPropagation(); }"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "}, false);"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "</script>\u200b"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "</head>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "<body>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "<strong class=\'title\'>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/helpshift/HSQuestionFragment;->titleText:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "</strong>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/helpshift/HSQuestionFragment;->bodyText:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "</body>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "</html>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 379
    iget-object v0, p0, Lcom/helpshift/HSQuestionFragment;->mWebView:Lcom/helpshift/util/HSHTML5WebView;

    const-string/jumbo v3, "text/html"

    const-string/jumbo v4, "utf-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/helpshift/util/HSHTML5WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    return-void

    .line 347
    .end local v2    # "webBodyText":Ljava/lang/String;
    .end local v10    # "textColor":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 348
    .local v8, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v0, "HelpShiftDebug"

    invoke-virtual {v8}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 359
    .end local v8    # "e":Ljava/lang/NullPointerException;
    .restart local v10    # "textColor":Ljava/lang/String;
    :cond_3
    const-string/jumbo v2, "<html>"

    .restart local v2    # "webBodyText":Ljava/lang/String;
    goto/16 :goto_1

    .line 322
    :array_0
    .array-data 4
        0x1010031
        0x1010036
    .end array-data
.end method

.method private markQuestion(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 5
    .param p1, "success"    # Landroid/os/Handler;
    .param p2, "failure"    # Landroid/os/Handler;
    .param p3, "faqId"    # Ljava/lang/String;
    .param p4, "helpful"    # Ljava/lang/Boolean;

    .prologue
    .line 511
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 512
    .local v2, "params":Lorg/json/JSONObject;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    iput-object v3, p0, Lcom/helpshift/HSQuestionFragment;->eventData:Lorg/json/JSONObject;

    .line 515
    :try_start_0
    iget-object v3, p0, Lcom/helpshift/HSQuestionFragment;->eventData:Lorg/json/JSONObject;

    const-string/jumbo v4, "id"

    invoke-virtual {v3, v4, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 516
    const-string/jumbo v3, "f"

    invoke-virtual {v2, v3, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 517
    const-string/jumbo v3, "h"

    invoke-virtual {v2, v3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 522
    :goto_0
    iget-object v3, p0, Lcom/helpshift/HSQuestionFragment;->data:Lcom/helpshift/HSApiData;

    const/4 v4, 0x0

    invoke-virtual {v3, p2, p3, v4, v2}, Lcom/helpshift/HSApiData;->getApiFailHandler(Landroid/os/Handler;Ljava/lang/String;ILorg/json/JSONObject;)Landroid/os/Handler;

    move-result-object v0

    .line 524
    .local v0, "apiFailHandler":Landroid/os/Handler;
    iget-object v3, p0, Lcom/helpshift/HSQuestionFragment;->data:Lcom/helpshift/HSApiData;

    invoke-virtual {v3, p1, v0, p3, p4}, Lcom/helpshift/HSApiData;->markQuestion(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 525
    return-void

    .line 518
    .end local v0    # "apiFailHandler":Landroid/os/Handler;
    :catch_0
    move-exception v1

    .line 519
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v3, "HelpShiftDebug"

    const-string/jumbo v4, "JSONException"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private sendAction(Ljava/lang/String;)V
    .locals 4
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 557
    const-string/jumbo v1, "ticketAvoided"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 558
    invoke-direct {p0}, Lcom/helpshift/HSQuestionFragment;->sendTicketAvoidedEvent()V

    .line 559
    iget-object v1, p0, Lcom/helpshift/HSQuestionFragment;->storage:Lcom/helpshift/HSStorage;

    const-string/jumbo v2, ""

    iget-object v3, p0, Lcom/helpshift/HSQuestionFragment;->data:Lcom/helpshift/HSApiData;

    invoke-virtual {v3}, Lcom/helpshift/HSApiData;->getLoginId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/helpshift/HSStorage;->storeConversationDetail(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    iget-object v1, p0, Lcom/helpshift/HSQuestionFragment;->storage:Lcom/helpshift/HSStorage;

    const-string/jumbo v2, ""

    iget-object v3, p0, Lcom/helpshift/HSQuestionFragment;->data:Lcom/helpshift/HSApiData;

    invoke-virtual {v3}, Lcom/helpshift/HSApiData;->getLoginId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/helpshift/HSStorage;->setConversationScreenshot(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    :cond_0
    :goto_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 566
    .local v0, "returnIntent":Landroid/content/Intent;
    const-string/jumbo v1, "action"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 567
    invoke-virtual {p0}, Lcom/helpshift/HSQuestionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 568
    invoke-virtual {p0}, Lcom/helpshift/HSQuestionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 569
    return-void

    .line 561
    .end local v0    # "returnIntent":Landroid/content/Intent;
    :cond_1
    const-string/jumbo v1, "startConversation"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 562
    const-string/jumbo v1, "taf"

    invoke-static {v1}, Lcom/helpshift/HSFunnel;->pushEvent(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendTicketAvoidedEvent()V
    .locals 5

    .prologue
    .line 546
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 548
    .local v1, "eventData":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "id"

    iget-object v3, p0, Lcom/helpshift/HSQuestionFragment;->faqId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 549
    const-string/jumbo v2, "str"

    iget-object v3, p0, Lcom/helpshift/HSQuestionFragment;->storage:Lcom/helpshift/HSStorage;

    iget-object v4, p0, Lcom/helpshift/HSQuestionFragment;->data:Lcom/helpshift/HSApiData;

    invoke-virtual {v4}, Lcom/helpshift/HSApiData;->getLoginId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/helpshift/HSStorage;->getConversationDetail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 550
    const-string/jumbo v2, "ta"

    invoke-static {v2, v1}, Lcom/helpshift/HSFunnel;->pushEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 554
    :goto_0
    return-void

    .line 551
    :catch_0
    move-exception v0

    .line 552
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v3, "sendTicketAvoidedEvent"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private showMarkedToast(Ljava/lang/Boolean;)V
    .locals 6
    .param p1, "isHelpful"    # Ljava/lang/Boolean;

    .prologue
    const/4 v5, 0x0

    .line 75
    const-string/jumbo v2, ""

    .line 76
    .local v2, "toastString":Ljava/lang/CharSequence;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/helpshift/HSQuestionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/helpshift/D$string;->hs__mark_helpful_toast:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 80
    :goto_0
    const/4 v0, 0x0

    .line 81
    .local v0, "duration":I
    iget-object v3, p0, Lcom/helpshift/HSQuestionFragment;->activity:Lcom/helpshift/HSActivity;

    invoke-static {v3, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 82
    .local v1, "toast":Landroid/widget/Toast;
    const/16 v3, 0x11

    invoke-virtual {v1, v3, v5, v5}, Landroid/widget/Toast;->setGravity(III)V

    .line 83
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 84
    return-void

    .line 79
    .end local v0    # "duration":I
    .end local v1    # "toast":Landroid/widget/Toast;
    :cond_0
    invoke-virtual {p0}, Lcom/helpshift/HSQuestionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/helpshift/D$string;->hs__mark_unhelpful_toast:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private showQuestionItem()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 201
    iget-object v0, p0, Lcom/helpshift/HSQuestionFragment;->likeClicked:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/helpshift/HSQuestionFragment;->dislikeClicked:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/helpshift/HSQuestionFragment;->questionText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 203
    iget-object v0, p0, Lcom/helpshift/HSQuestionFragment;->likeButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 204
    iget-object v0, p0, Lcom/helpshift/HSQuestionFragment;->dislikeButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 205
    iget-object v0, p0, Lcom/helpshift/HSQuestionFragment;->unhelpfulText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 206
    iget-object v0, p0, Lcom/helpshift/HSQuestionFragment;->contactUsBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 207
    iget-object v0, p0, Lcom/helpshift/HSQuestionFragment;->helpfulText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 209
    :cond_0
    return-void
.end method

.method private updateQuestionUI(Lcom/helpshift/Faq;)V
    .locals 1
    .param p1, "question"    # Lcom/helpshift/Faq;

    .prologue
    .line 383
    invoke-virtual {p1}, Lcom/helpshift/Faq;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/HSQuestionFragment;->titleText:Ljava/lang/String;

    .line 384
    invoke-virtual {p1}, Lcom/helpshift/Faq;->getBody()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/HSQuestionFragment;->bodyText:Ljava/lang/String;

    .line 385
    invoke-virtual {p1}, Lcom/helpshift/Faq;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/HSQuestionFragment;->faqId:Ljava/lang/String;

    .line 386
    invoke-virtual {p1}, Lcom/helpshift/Faq;->getIsRtl()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/HSQuestionFragment;->isRtl:Ljava/lang/Boolean;

    .line 387
    invoke-virtual {p1}, Lcom/helpshift/Faq;->getIsHelpful()I

    move-result v0

    iput v0, p0, Lcom/helpshift/HSQuestionFragment;->isHelpful:I

    .line 388
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/HSQuestionFragment;->isHighlighted:Ljava/lang/Boolean;

    .line 389
    invoke-direct {p0}, Lcom/helpshift/HSQuestionFragment;->initWebView()V

    .line 390
    return-void
.end method


# virtual methods
.method public hideQuestionFooter()V
    .locals 2

    .prologue
    .line 572
    iget-object v0, p0, Lcom/helpshift/HSQuestionFragment;->contactUsContainer:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 573
    return-void
.end method

.method public highlightSearchTerms()V
    .locals 35

    .prologue
    .line 97
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/HSQuestionFragment;->extras:Landroid/os/Bundle;

    move-object/from16 v31, v0

    const-string/jumbo v32, "searchTerms"

    invoke-virtual/range {v31 .. v32}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/ArrayList;

    .line 98
    .local v19, "matchedWords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/HSQuestionFragment;->isHighlighted:Ljava/lang/Boolean;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v31

    if-nez v31, :cond_d

    if-eqz v19, :cond_d

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v31

    if-lez v31, :cond_d

    .line 99
    invoke-static/range {v19 .. v19}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 100
    invoke-static/range {v19 .. v19}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 102
    new-instance v23, Ljava/util/LinkedHashSet;

    invoke-direct/range {v23 .. v23}, Ljava/util/LinkedHashSet;-><init>()V

    .line 103
    .local v23, "reverseTransKeywords":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/helpshift/HSQuestionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v31

    sget v32, Lcom/helpshift/D$attr;->hs__searchHighlightColor:I

    invoke-static/range {v31 .. v32}, Lcom/helpshift/util/Styles;->getColor(Landroid/content/Context;I)I

    move-result v13

    .line 104
    .local v13, "highlightColor":I
    const-string/jumbo v31, "#%06X"

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    const v34, 0xffffff

    and-int v34, v34, v13

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    aput-object v34, v32, v33

    invoke-static/range {v31 .. v32}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 106
    .local v12, "hexColor":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/HSQuestionFragment;->titleText:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/helpshift/util/HSTransliterator;->unidecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/HSQuestionFragment;->titleText:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/HSQuestionFragment;->bodyText:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/helpshift/util/HSTransliterator;->unidecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/HSQuestionFragment;->bodyText:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_0

    const/16 v17, 0x1

    .line 109
    .local v17, "isEnglish":Z
    :goto_0
    if-nez v17, :cond_7

    .line 110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/HSQuestionFragment;->titleText:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v27

    .line 111
    .local v27, "titleLength":I
    const-string/jumbo v29, ""

    .line 113
    .local v29, "titleTrans":Ljava/lang/String;
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .local v26, "titleIndex":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    move/from16 v0, v27

    if-ge v14, v0, :cond_2

    .line 115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/HSQuestionFragment;->titleText:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 116
    .local v8, "character":C
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, ""

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/helpshift/util/HSTransliterator;->unidecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 117
    .local v7, "charTransliteration":Ljava/lang/String;
    const/16 v18, 0x0

    .local v18, "j":I
    :goto_2
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v31

    move/from16 v0, v18

    move/from16 v1, v31

    if-ge v0, v1, :cond_1

    .line 118
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 119
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 106
    .end local v7    # "charTransliteration":Ljava/lang/String;
    .end local v8    # "character":C
    .end local v14    # "i":I
    .end local v17    # "isEnglish":Z
    .end local v18    # "j":I
    .end local v26    # "titleIndex":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v27    # "titleLength":I
    .end local v29    # "titleTrans":Ljava/lang/String;
    :cond_0
    const/16 v17, 0x0

    goto :goto_0

    .line 114
    .restart local v7    # "charTransliteration":Ljava/lang/String;
    .restart local v8    # "character":C
    .restart local v14    # "i":I
    .restart local v17    # "isEnglish":Z
    .restart local v18    # "j":I
    .restart local v26    # "titleIndex":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v27    # "titleLength":I
    .restart local v29    # "titleTrans":Ljava/lang/String;
    :cond_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 122
    .end local v7    # "charTransliteration":Ljava/lang/String;
    .end local v8    # "character":C
    .end local v18    # "j":I
    :cond_2
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v29

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/HSQuestionFragment;->bodyText:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v4

    .line 125
    .local v4, "bodyLength":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/HSQuestionFragment;->bodyText:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/helpshift/util/HSTransliterator;->unidecode(Ljava/lang/String;)Ljava/lang/String;

    .line 126
    const-string/jumbo v6, ""

    .line 128
    .local v6, "bodyTrans":Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .local v3, "bodyIndex":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v14, 0x0

    :goto_3
    if-ge v14, v4, :cond_4

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/HSQuestionFragment;->bodyText:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 131
    .restart local v8    # "character":C
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, ""

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/helpshift/util/HSTransliterator;->unidecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 132
    .restart local v7    # "charTransliteration":Ljava/lang/String;
    const/16 v18, 0x0

    .restart local v18    # "j":I
    :goto_4
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v31

    move/from16 v0, v18

    move/from16 v1, v31

    if-ge v0, v1, :cond_3

    .line 133
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 134
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    add-int/lit8 v18, v18, 0x1

    goto :goto_4

    .line 129
    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 137
    .end local v7    # "charTransliteration":Ljava/lang/String;
    .end local v8    # "character":C
    .end local v18    # "j":I
    :cond_4
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 139
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_9

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    .line 140
    .local v30, "word":Ljava/lang/String;
    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v31

    const/16 v32, 0x3

    move/from16 v0, v31

    move/from16 v1, v32

    if-lt v0, v1, :cond_5

    .line 141
    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v30

    .line 142
    const/16 v31, 0x0

    invoke-static/range {v29 .. v31}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v16

    .line 143
    .local v16, "index":I
    :goto_5
    if-ltz v16, :cond_6

    .line 144
    move-object/from16 v0, v26

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/Integer;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Integer;->intValue()I

    move-result v25

    .line 145
    .local v25, "startIndex":I
    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v31

    add-int v31, v31, v16

    add-int/lit8 v31, v31, -0x1

    move-object/from16 v0, v26

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/Integer;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 146
    .local v10, "endIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/HSQuestionFragment;->titleText:Ljava/lang/String;

    move-object/from16 v31, v0

    add-int/lit8 v32, v10, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v25

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    .line 147
    .local v22, "reverseTransKeyword":Ljava/lang/String;
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 148
    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v31

    add-int v31, v31, v16

    invoke-static/range {v29 .. v31}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v16

    .line 149
    goto :goto_5

    .line 151
    .end local v10    # "endIndex":I
    .end local v22    # "reverseTransKeyword":Ljava/lang/String;
    .end local v25    # "startIndex":I
    :cond_6
    const/16 v31, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-static {v6, v0, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v16

    .line 152
    :goto_6
    if-ltz v16, :cond_5

    .line 153
    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/Integer;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Integer;->intValue()I

    move-result v25

    .line 154
    .restart local v25    # "startIndex":I
    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v31

    add-int v31, v31, v16

    add-int/lit8 v31, v31, -0x1

    move/from16 v0, v31

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/Integer;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 155
    .restart local v10    # "endIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/HSQuestionFragment;->bodyText:Ljava/lang/String;

    move-object/from16 v31, v0

    add-int/lit8 v32, v10, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v25

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    .line 156
    .restart local v22    # "reverseTransKeyword":Ljava/lang/String;
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 157
    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v31

    add-int v31, v31, v16

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-static {v6, v0, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v16

    .line 158
    goto :goto_6

    .line 162
    .end local v3    # "bodyIndex":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v4    # "bodyLength":I
    .end local v6    # "bodyTrans":Ljava/lang/String;
    .end local v10    # "endIndex":I
    .end local v14    # "i":I
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v16    # "index":I
    .end local v22    # "reverseTransKeyword":Ljava/lang/String;
    .end local v25    # "startIndex":I
    .end local v26    # "titleIndex":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v27    # "titleLength":I
    .end local v29    # "titleTrans":Ljava/lang/String;
    .end local v30    # "word":Ljava/lang/String;
    :cond_7
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .restart local v15    # "i$":Ljava/util/Iterator;
    :cond_8
    :goto_7
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_9

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    .line 163
    .restart local v30    # "word":Ljava/lang/String;
    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v31

    const/16 v32, 0x3

    move/from16 v0, v31

    move/from16 v1, v32

    if-lt v0, v1, :cond_8

    .line 164
    move-object/from16 v0, v23

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 168
    .end local v30    # "word":Ljava/lang/String;
    :cond_9
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, ">"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/HSQuestionFragment;->bodyText:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, "<"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/helpshift/HSQuestionFragment;->bodyText:Ljava/lang/String;

    .line 169
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, ">"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/HSQuestionFragment;->titleText:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, "<"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/helpshift/HSQuestionFragment;->titleText:Ljava/lang/String;

    .line 171
    const-string/jumbo v31, ">[^<]+<"

    invoke-static/range {v31 .. v31}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v21

    .line 172
    .local v21, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual/range {v23 .. v23}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_a
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_c

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    .line 173
    .local v24, "reverseTransWord":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/HSQuestionFragment;->titleText:Ljava/lang/String;

    move-object/from16 v28, v0

    .line 174
    .local v28, "titleTextCopy":Ljava/lang/String;
    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v20

    .line 175
    .local v20, "matcher":Ljava/util/regex/Matcher;
    :goto_8
    invoke-virtual/range {v20 .. v20}, Ljava/util/regex/Matcher;->find()Z

    move-result v31

    if-eqz v31, :cond_b

    .line 176
    invoke-virtual/range {v20 .. v20}, Ljava/util/regex/Matcher;->start()I

    move-result v31

    invoke-virtual/range {v20 .. v20}, Ljava/util/regex/Matcher;->end()I

    move-result v32

    move-object/from16 v0, v28

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 177
    .local v9, "content":Ljava/lang/String;
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "(?i)("

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, ")"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "<span style=\"background-color: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string/jumbo v33, "\">$1</span>"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 179
    .local v11, "formattedContent":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/HSQuestionFragment;->titleText:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v9, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/helpshift/HSQuestionFragment;->titleText:Ljava/lang/String;

    goto :goto_8

    .line 182
    .end local v9    # "content":Ljava/lang/String;
    .end local v11    # "formattedContent":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/helpshift/HSQuestionFragment;->bodyText:Ljava/lang/String;

    .line 183
    .local v5, "bodyTextCopy":Ljava/lang/String;
    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v20

    .line 184
    :goto_9
    invoke-virtual/range {v20 .. v20}, Ljava/util/regex/Matcher;->find()Z

    move-result v31

    if-eqz v31, :cond_a

    .line 185
    invoke-virtual/range {v20 .. v20}, Ljava/util/regex/Matcher;->start()I

    move-result v31

    invoke-virtual/range {v20 .. v20}, Ljava/util/regex/Matcher;->end()I

    move-result v32

    move/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 186
    .restart local v9    # "content":Ljava/lang/String;
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "(?i)("

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, ")"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "<span style=\"background-color: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string/jumbo v33, "\">$1</span>"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 188
    .restart local v11    # "formattedContent":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/HSQuestionFragment;->bodyText:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v9, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/helpshift/HSQuestionFragment;->bodyText:Ljava/lang/String;

    goto :goto_9

    .line 192
    .end local v5    # "bodyTextCopy":Ljava/lang/String;
    .end local v9    # "content":Ljava/lang/String;
    .end local v11    # "formattedContent":Ljava/lang/String;
    .end local v20    # "matcher":Ljava/util/regex/Matcher;
    .end local v24    # "reverseTransWord":Ljava/lang/String;
    .end local v28    # "titleTextCopy":Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/HSQuestionFragment;->titleText:Ljava/lang/String;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/HSQuestionFragment;->titleText:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v33

    add-int/lit8 v33, v33, -0x1

    invoke-virtual/range {v31 .. v33}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/helpshift/HSQuestionFragment;->titleText:Ljava/lang/String;

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/HSQuestionFragment;->bodyText:Ljava/lang/String;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/HSQuestionFragment;->bodyText:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v33

    add-int/lit8 v33, v33, -0x1

    invoke-virtual/range {v31 .. v33}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/helpshift/HSQuestionFragment;->bodyText:Ljava/lang/String;

    .line 195
    const/16 v31, 0x1

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/helpshift/HSQuestionFragment;->isHighlighted:Ljava/lang/Boolean;

    .line 196
    invoke-direct/range {p0 .. p0}, Lcom/helpshift/HSQuestionFragment;->initWebView()V

    .line 198
    .end local v12    # "hexColor":Ljava/lang/String;
    .end local v13    # "highlightColor":I
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v17    # "isEnglish":Z
    .end local v21    # "pattern":Ljava/util/regex/Pattern;
    .end local v23    # "reverseTransKeywords":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    :cond_d
    return-void
.end method

.method public isShowSearchOnNewConversationFlowActive()Z
    .locals 2

    .prologue
    .line 485
    invoke-virtual {p0}, Lcom/helpshift/HSQuestionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/helpshift/HSQuestion;

    .line 486
    .local v0, "questionActivity":Lcom/helpshift/HSQuestion;
    invoke-virtual {v0}, Lcom/helpshift/HSQuestion;->isShowSearchOnNewConversationFlowActive()Z

    move-result v1

    return v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 506
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 507
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 395
    invoke-virtual {p0}, Lcom/helpshift/HSQuestionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/helpshift/HSActivity;

    iput-object v0, p0, Lcom/helpshift/HSQuestionFragment;->activity:Lcom/helpshift/HSActivity;

    .line 396
    new-instance v0, Lcom/helpshift/HSApiData;

    iget-object v1, p0, Lcom/helpshift/HSQuestionFragment;->activity:Lcom/helpshift/HSActivity;

    invoke-direct {v0, v1}, Lcom/helpshift/HSApiData;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/helpshift/HSQuestionFragment;->data:Lcom/helpshift/HSApiData;

    .line 397
    iget-object v0, p0, Lcom/helpshift/HSQuestionFragment;->data:Lcom/helpshift/HSApiData;

    iget-object v0, v0, Lcom/helpshift/HSApiData;->storage:Lcom/helpshift/HSStorage;

    iput-object v0, p0, Lcom/helpshift/HSQuestionFragment;->storage:Lcom/helpshift/HSStorage;

    .line 399
    sget v0, Lcom/helpshift/D$layout;->hs__question_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 494
    iget-object v0, p0, Lcom/helpshift/HSQuestionFragment;->mWebView:Lcom/helpshift/util/HSHTML5WebView;

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/helpshift/HSQuestionFragment;->mWebView:Lcom/helpshift/util/HSHTML5WebView;

    invoke-virtual {v0}, Lcom/helpshift/util/HSHTML5WebView;->freeMemory()V

    .line 496
    iget-object v0, p0, Lcom/helpshift/HSQuestionFragment;->mWebView:Lcom/helpshift/util/HSHTML5WebView;

    invoke-virtual {v0}, Lcom/helpshift/util/HSHTML5WebView;->removeAllViews()V

    .line 497
    iget-object v0, p0, Lcom/helpshift/HSQuestionFragment;->mWebView:Lcom/helpshift/util/HSHTML5WebView;

    invoke-virtual {v0}, Lcom/helpshift/util/HSHTML5WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/helpshift/HSQuestionFragment;->mWebView:Lcom/helpshift/util/HSHTML5WebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 498
    iget-object v0, p0, Lcom/helpshift/HSQuestionFragment;->mWebView:Lcom/helpshift/util/HSHTML5WebView;

    invoke-virtual {v0}, Lcom/helpshift/util/HSHTML5WebView;->destroy()V

    .line 500
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/helpshift/HelpshiftContext;->setViewState(Ljava/lang/String;)V

    .line 501
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 502
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 529
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 530
    .local v0, "id":I
    const v2, 0x102002c

    if-ne v0, v2, :cond_1

    .line 531
    iget-object v2, p0, Lcom/helpshift/HSQuestionFragment;->mWebView:Lcom/helpshift/util/HSHTML5WebView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/helpshift/HSQuestionFragment;->mWebView:Lcom/helpshift/util/HSHTML5WebView;

    invoke-virtual {v2}, Lcom/helpshift/util/HSHTML5WebView;->inCustomView()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 532
    iget-object v2, p0, Lcom/helpshift/HSQuestionFragment;->mWebView:Lcom/helpshift/util/HSHTML5WebView;

    invoke-virtual {v2}, Lcom/helpshift/util/HSHTML5WebView;->hideCustomView()V

    .line 541
    :goto_0
    return v1

    .line 534
    :cond_0
    invoke-virtual {p0}, Lcom/helpshift/HSQuestionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 537
    :cond_1
    sget v2, Lcom/helpshift/D$id;->hs__action_done:I

    if-ne v0, v2, :cond_2

    .line 538
    const-string/jumbo v2, "ticketAvoided"

    invoke-direct {p0, v2}, Lcom/helpshift/HSQuestionFragment;->sendAction(Ljava/lang/String;)V

    goto :goto_0

    .line 541
    :cond_2
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPause()V
    .locals 7

    .prologue
    .line 302
    :try_start_0
    iget-object v4, p0, Lcom/helpshift/HSQuestionFragment;->mWebView:Lcom/helpshift/util/HSHTML5WebView;

    if-eqz v4, :cond_0

    .line 303
    const-string/jumbo v4, "android.webkit.WebView"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string/jumbo v6, "onPause"

    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iget-object v6, p0, Lcom/helpshift/HSQuestionFragment;->mWebView:Lcom/helpshift/util/HSHTML5WebView;

    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    .line 316
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 317
    return-void

    .line 307
    :catch_0
    move-exception v0

    .line 308
    .local v0, "cnfe":Ljava/lang/ClassNotFoundException;
    const-string/jumbo v4, "HelpShiftDebug"

    const-string/jumbo v5, "ClassNotFoundException : "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 309
    .end local v0    # "cnfe":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v3

    .line 310
    .local v3, "nsme":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v4, "HelpShiftDebug"

    const-string/jumbo v5, "NoSuchMethodException : "

    invoke-static {v4, v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 311
    .end local v3    # "nsme":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v2

    .line 312
    .local v2, "ite":Ljava/lang/reflect/InvocationTargetException;
    const-string/jumbo v4, "HelpShiftDebug"

    const-string/jumbo v5, "InvocationTargetException : "

    invoke-static {v4, v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 313
    .end local v2    # "ite":Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v1

    .line 314
    .local v1, "iae":Ljava/lang/IllegalAccessException;
    const-string/jumbo v4, "HelpShiftDebug"

    const-string/jumbo v5, "IllegalAccessException : "

    invoke-static {v4, v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onResume()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 282
    iget-object v2, p0, Lcom/helpshift/HSQuestionFragment;->mWebView:Lcom/helpshift/util/HSHTML5WebView;

    if-eqz v2, :cond_0

    .line 283
    iget-object v2, p0, Lcom/helpshift/HSQuestionFragment;->mWebView:Lcom/helpshift/util/HSHTML5WebView;

    invoke-virtual {v2}, Lcom/helpshift/util/HSHTML5WebView;->onResume()V

    .line 286
    :cond_0
    iget-object v2, p0, Lcom/helpshift/HSQuestionFragment;->faqId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/helpshift/HSQuestionFragment;->eventSent:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 288
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 289
    .local v1, "eventData":Lorg/json/JSONObject;
    const-string/jumbo v2, "id"

    iget-object v3, p0, Lcom/helpshift/HSQuestionFragment;->faqId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 290
    const-string/jumbo v2, "f"

    invoke-static {v2, v1}, Lcom/helpshift/HSFunnel;->pushEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 291
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/helpshift/HSQuestionFragment;->eventSent:Ljava/lang/Boolean;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    .end local v1    # "eventData":Lorg/json/JSONObject;
    :cond_1
    :goto_0
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 297
    return-void

    .line 292
    :catch_0
    move-exception v0

    .line 293
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v3, "JSONException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 405
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 406
    iget-object v3, p0, Lcom/helpshift/HSQuestionFragment;->activity:Lcom/helpshift/HSActivity;

    invoke-virtual {v3}, Lcom/helpshift/HSActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, p0, Lcom/helpshift/HSQuestionFragment;->extras:Landroid/os/Bundle;

    .line 407
    iget-object v3, p0, Lcom/helpshift/HSQuestionFragment;->extras:Landroid/os/Bundle;

    if-eqz v3, :cond_2

    .line 408
    iget-object v3, p0, Lcom/helpshift/HSQuestionFragment;->extras:Landroid/os/Bundle;

    const-string/jumbo v4, "questionPublishId"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 409
    iget-object v3, p0, Lcom/helpshift/HSQuestionFragment;->extras:Landroid/os/Bundle;

    const-string/jumbo v4, "decomp"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 410
    sput-boolean v7, Lcom/helpshift/HSAnalytics;->decomp:Z

    .line 412
    :cond_0
    iget-object v3, p0, Lcom/helpshift/HSQuestionFragment;->extras:Landroid/os/Bundle;

    const-string/jumbo v4, "questionPublishId"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 413
    .local v2, "questionPublishId":Ljava/lang/String;
    iget-object v3, p0, Lcom/helpshift/HSQuestionFragment;->data:Lcom/helpshift/HSApiData;

    iget-object v4, p0, Lcom/helpshift/HSQuestionFragment;->questionHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/helpshift/HSQuestionFragment;->questionFailHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2, v4, v5}, Lcom/helpshift/HSApiData;->getQuestion(Ljava/lang/String;Landroid/os/Handler;Landroid/os/Handler;)V

    .line 415
    .end local v2    # "questionPublishId":Ljava/lang/String;
    :cond_1
    sget-object v3, Lcom/helpshift/ContactUsFilter$LOCATION;->QUESTION_FOOTER:Lcom/helpshift/ContactUsFilter$LOCATION;

    invoke-static {v3}, Lcom/helpshift/ContactUsFilter;->showContactUs(Lcom/helpshift/ContactUsFilter$LOCATION;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/helpshift/HSQuestionFragment;->enableContactUs:Ljava/lang/Boolean;

    .line 418
    :cond_2
    iget-object v3, p0, Lcom/helpshift/HSQuestionFragment;->activity:Lcom/helpshift/HSActivity;

    invoke-virtual {v3}, Lcom/helpshift/HSActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    new-array v4, v7, [I

    const v5, 0x1010031

    aput v5, v4, v6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 421
    .local v1, "array":Landroid/content/res/TypedArray;
    const v3, 0xffffff

    invoke-virtual {v1, v6, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 422
    .local v0, "activityBackgroundColor":I
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 423
    invoke-virtual {p0}, Lcom/helpshift/HSQuestionFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 425
    sget v3, Lcom/helpshift/D$id;->hs__contactUsContainer:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/helpshift/HSQuestionFragment;->contactUsContainer:Landroid/widget/LinearLayout;

    .line 426
    sget v3, Lcom/helpshift/D$id;->hs__question:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/helpshift/HSQuestionFragment;->questionText:Landroid/widget/TextView;

    .line 427
    sget v3, Lcom/helpshift/D$id;->hs__helpful_text:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/helpshift/HSQuestionFragment;->helpfulText:Landroid/widget/TextView;

    .line 428
    sget v3, Lcom/helpshift/D$id;->hs__unhelpful_text:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/helpshift/HSQuestionFragment;->unhelpfulText:Landroid/widget/TextView;

    .line 429
    sget v3, Lcom/helpshift/D$id;->hs__contact_us_btn:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/helpshift/HSQuestionFragment;->contactUsBtn:Landroid/widget/Button;

    .line 430
    iget-object v3, p0, Lcom/helpshift/HSQuestionFragment;->activity:Lcom/helpshift/HSActivity;

    iget-object v4, p0, Lcom/helpshift/HSQuestionFragment;->contactUsBtn:Landroid/widget/Button;

    invoke-virtual {v4}, Landroid/widget/Button;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aget-object v4, v4, v6

    invoke-static {v3, v4}, Lcom/helpshift/util/Styles;->setButtonCompoundDrawableIconColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 432
    sget v3, Lcom/helpshift/D$id;->hs__action_faq_helpful:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/helpshift/HSQuestionFragment;->likeButton:Landroid/widget/Button;

    .line 433
    iget-object v3, p0, Lcom/helpshift/HSQuestionFragment;->likeButton:Landroid/widget/Button;

    new-instance v4, Lcom/helpshift/HSQuestionFragment$4;

    invoke-direct {v4, p0}, Lcom/helpshift/HSQuestionFragment$4;-><init>(Lcom/helpshift/HSQuestionFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 447
    sget v3, Lcom/helpshift/D$id;->hs__action_faq_unhelpful:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/helpshift/HSQuestionFragment;->dislikeButton:Landroid/widget/Button;

    .line 448
    iget-object v3, p0, Lcom/helpshift/HSQuestionFragment;->dislikeButton:Landroid/widget/Button;

    new-instance v4, Lcom/helpshift/HSQuestionFragment$5;

    invoke-direct {v4, p0}, Lcom/helpshift/HSQuestionFragment$5;-><init>(Lcom/helpshift/HSQuestionFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 459
    iget-object v3, p0, Lcom/helpshift/HSQuestionFragment;->contactUsBtn:Landroid/widget/Button;

    iget-object v4, p0, Lcom/helpshift/HSQuestionFragment;->contactUsClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 461
    invoke-virtual {p0, v7}, Lcom/helpshift/HSQuestionFragment;->setHasOptionsMenu(Z)V

    .line 462
    return-void
.end method

.method public showMenuOptions()V
    .locals 2

    .prologue
    .line 87
    iget v0, p0, Lcom/helpshift/HSQuestionFragment;->isHelpful:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 88
    invoke-direct {p0}, Lcom/helpshift/HSQuestionFragment;->hideDislikeItem()V

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    iget v0, p0, Lcom/helpshift/HSQuestionFragment;->isHelpful:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 90
    invoke-direct {p0}, Lcom/helpshift/HSQuestionFragment;->hideLikeItem()V

    goto :goto_0

    .line 91
    :cond_2
    iget v0, p0, Lcom/helpshift/HSQuestionFragment;->isHelpful:I

    if-nez v0, :cond_0

    .line 92
    invoke-direct {p0}, Lcom/helpshift/HSQuestionFragment;->showQuestionItem()V

    goto :goto_0
.end method
