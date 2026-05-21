.class public final Lcom/helpshift/HSReviewFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "HSReviewFragment.java"


# static fields
.field private static alertToRateAppListener:Lcom/helpshift/HSAlertToRateAppListener;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private data:Lcom/helpshift/HSApiData;

.field private disableReview:Z

.field private rurl:Ljava/lang/String;

.field private storage:Lcom/helpshift/HSStorage;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 20
    const-string/jumbo v0, "HelpShiftDebug"

    iput-object v0, p0, Lcom/helpshift/HSReviewFragment;->TAG:Ljava/lang/String;

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/helpshift/HSReviewFragment;->disableReview:Z

    .line 26
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/helpshift/HSReviewFragment;->rurl:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/helpshift/HSReviewFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/HSReviewFragment;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/helpshift/HSReviewFragment;->rurl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/helpshift/HSReviewFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/helpshift/HSReviewFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/helpshift/HSReviewFragment;->rurl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/helpshift/HSReviewFragment;)Lcom/helpshift/HSStorage;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/HSReviewFragment;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/helpshift/HSReviewFragment;->storage:Lcom/helpshift/HSStorage;

    return-object v0
.end method

.method static synthetic access$200(Lcom/helpshift/HSReviewFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/helpshift/HSReviewFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/helpshift/HSReviewFragment;->gotoApp(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/helpshift/HSReviewFragment;Lcom/helpshift/Helpshift$HS_RATE_ALERT;)V
    .locals 0
    .param p0, "x0"    # Lcom/helpshift/HSReviewFragment;
    .param p1, "x1"    # Lcom/helpshift/Helpshift$HS_RATE_ALERT;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/helpshift/HSReviewFragment;->sendAlertToRateAppAction(Lcom/helpshift/Helpshift$HS_RATE_ALERT;)V

    return-void
.end method

.method private gotoApp(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 47
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 48
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 49
    invoke-virtual {p0}, Lcom/helpshift/HSReviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/helpshift/HSReviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 53
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private initAlertDialog(Landroid/support/v4/app/FragmentActivity;)Landroid/app/Dialog;
    .locals 5
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;

    .prologue
    .line 78
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 79
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    sget v2, Lcom/helpshift/D$string;->hs__review_message:I

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 80
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 81
    .local v1, "dialog":Landroid/app/AlertDialog;
    sget v2, Lcom/helpshift/D$string;->hs__review_title:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 82
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 83
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 85
    const/4 v2, -0x1

    invoke-virtual {p0}, Lcom/helpshift/HSReviewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/helpshift/D$string;->hs__rate_button:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/helpshift/HSReviewFragment$1;

    invoke-direct {v4, p0}, Lcom/helpshift/HSReviewFragment$1;-><init>(Lcom/helpshift/HSReviewFragment;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 107
    const/4 v2, -0x3

    invoke-virtual {p0}, Lcom/helpshift/HSReviewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/helpshift/D$string;->hs__feedback_button:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/helpshift/HSReviewFragment$2;

    invoke-direct {v4, p0}, Lcom/helpshift/HSReviewFragment$2;-><init>(Lcom/helpshift/HSReviewFragment;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 128
    const/4 v2, -0x2

    invoke-virtual {p0}, Lcom/helpshift/HSReviewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/helpshift/D$string;->hs__review_close_button:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/helpshift/HSReviewFragment$3;

    invoke-direct {v4, p0}, Lcom/helpshift/HSReviewFragment$3;-><init>(Lcom/helpshift/HSReviewFragment;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 137
    return-object v1
.end method

.method private sendAlertToRateAppAction(Lcom/helpshift/Helpshift$HS_RATE_ALERT;)V
    .locals 1
    .param p1, "action"    # Lcom/helpshift/Helpshift$HS_RATE_ALERT;

    .prologue
    .line 71
    sget-object v0, Lcom/helpshift/HSReviewFragment;->alertToRateAppListener:Lcom/helpshift/HSAlertToRateAppListener;

    if-eqz v0, :cond_0

    .line 72
    sget-object v0, Lcom/helpshift/HSReviewFragment;->alertToRateAppListener:Lcom/helpshift/HSAlertToRateAppListener;

    invoke-interface {v0, p1}, Lcom/helpshift/HSAlertToRateAppListener;->onAction(Lcom/helpshift/Helpshift$HS_RATE_ALERT;)V

    .line 74
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/helpshift/HSReviewFragment;->alertToRateAppListener:Lcom/helpshift/HSAlertToRateAppListener;

    .line 75
    return-void
.end method

.method protected static setAlertToRateAppListener(Lcom/helpshift/HSAlertToRateAppListener;)V
    .locals 0
    .param p0, "listener"    # Lcom/helpshift/HSAlertToRateAppListener;

    .prologue
    .line 29
    sput-object p0, Lcom/helpshift/HSReviewFragment;->alertToRateAppListener:Lcom/helpshift/HSAlertToRateAppListener;

    .line 30
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 57
    const-string/jumbo v0, "later"

    invoke-static {v0}, Lcom/helpshift/HSFunnel;->pushAppReviewedEvent(Ljava/lang/String;)V

    .line 58
    sget-object v0, Lcom/helpshift/Helpshift$HS_RATE_ALERT;->CLOSE:Lcom/helpshift/Helpshift$HS_RATE_ALERT;

    invoke-direct {p0, v0}, Lcom/helpshift/HSReviewFragment;->sendAlertToRateAppAction(Lcom/helpshift/Helpshift$HS_RATE_ALERT;)V

    .line 59
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/helpshift/HSReviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 35
    .local v0, "activity":Landroid/support/v4/app/FragmentActivity;
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 36
    .local v1, "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 37
    const-string/jumbo v2, "disableReview"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/helpshift/HSReviewFragment;->disableReview:Z

    .line 38
    const-string/jumbo v2, "rurl"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/helpshift/HSReviewFragment;->rurl:Ljava/lang/String;

    .line 40
    :cond_0
    new-instance v2, Lcom/helpshift/HSApiData;

    invoke-direct {v2, v0}, Lcom/helpshift/HSApiData;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/helpshift/HSReviewFragment;->data:Lcom/helpshift/HSApiData;

    .line 41
    iget-object v2, p0, Lcom/helpshift/HSReviewFragment;->data:Lcom/helpshift/HSApiData;

    iget-object v2, v2, Lcom/helpshift/HSApiData;->storage:Lcom/helpshift/HSStorage;

    iput-object v2, p0, Lcom/helpshift/HSReviewFragment;->storage:Lcom/helpshift/HSStorage;

    .line 42
    invoke-direct {p0, v0}, Lcom/helpshift/HSReviewFragment;->initAlertDialog(Landroid/support/v4/app/FragmentActivity;)Landroid/app/Dialog;

    move-result-object v2

    return-object v2
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 63
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDestroyView()V

    .line 64
    iget-boolean v0, p0, Lcom/helpshift/HSReviewFragment;->disableReview:Z

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/helpshift/HSReviewFragment;->data:Lcom/helpshift/HSApiData;

    invoke-virtual {v0}, Lcom/helpshift/HSApiData;->disableReview()V

    .line 67
    :cond_0
    invoke-virtual {p0}, Lcom/helpshift/HSReviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 68
    return-void
.end method
