.class public Lcom/anansimobile/extra/payment/PayssionInterface;
.super Ljava/lang/Object;
.source "PayssionInterface.java"


# static fields
.field private static currency:Ljava/lang/String;

.field private static mMsgHandler:Landroid/os/Handler;

.field private static sApikey:Ljava/lang/String;

.field private static sClientId:Ljava/lang/String;

.field private static sCtx:Landroid/app/Activity;

.field private static sSecreKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/anansimobile/extra/payment/PayssionInterface;->sCtx:Landroid/app/Activity;

    .line 24
    const-string/jumbo v0, "USD"

    sput-object v0, Lcom/anansimobile/extra/payment/PayssionInterface;->currency:Ljava/lang/String;

    .line 111
    new-instance v0, Lcom/anansimobile/extra/payment/PayssionInterface$1;

    invoke-direct {v0}, Lcom/anansimobile/extra/payment/PayssionInterface$1;-><init>()V

    sput-object v0, Lcom/anansimobile/extra/payment/PayssionInterface;->mMsgHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native OnPurchaseCanceled()V
.end method

.method private static native OnPurchaseFailed()V
.end method

.method private static native OnPurchaseSuccess(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static Purchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "cost"    # Ljava/lang/String;
    .param p1, "extra"    # Ljava/lang/String;
    .param p2, "pmId"    # Ljava/lang/String;
    .param p3, "trackId"    # Ljava/lang/String;
    .param p4, "description"    # Ljava/lang/String;
    .param p5, "playerName"    # Ljava/lang/String;
    .param p6, "playerEmail"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 48
    .local v2, "price":D
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/anansimobile/extra/payment/PayssionInterface;->sCtx:Landroid/app/Activity;

    const-class v4, Lcom/payssion/android/sdk/PayssionActivity;

    invoke-direct {v0, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 49
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "request"

    new-instance v4, Lcom/payssion/android/sdk/model/PayRequest;

    invoke-direct {v4}, Lcom/payssion/android/sdk/model/PayRequest;-><init>()V

    sget-object v5, Lcom/anansimobile/extra/payment/PayssionInterface;->sApikey:Ljava/lang/String;

    .line 51
    invoke-virtual {v4, v5}, Lcom/payssion/android/sdk/model/PayRequest;->setAPIKey(Ljava/lang/String;)Lcom/payssion/android/sdk/model/PayRequest;

    move-result-object v4

    .line 52
    invoke-virtual {v4, v2, v3}, Lcom/payssion/android/sdk/model/PayRequest;->setAmount(D)Lcom/payssion/android/sdk/model/PayRequest;

    move-result-object v4

    sget-object v5, Lcom/anansimobile/extra/payment/PayssionInterface;->currency:Ljava/lang/String;

    .line 53
    invoke-virtual {v4, v5}, Lcom/payssion/android/sdk/model/PayRequest;->setCurrency(Ljava/lang/String;)Lcom/payssion/android/sdk/model/PayRequest;

    move-result-object v4

    .line 54
    invoke-virtual {v4, p2}, Lcom/payssion/android/sdk/model/PayRequest;->setPMId(Ljava/lang/String;)Lcom/payssion/android/sdk/model/PayRequest;

    move-result-object v4

    .line 56
    invoke-virtual {v4, p4}, Lcom/payssion/android/sdk/model/PayRequest;->setDescription(Ljava/lang/String;)Lcom/payssion/android/sdk/model/PayRequest;

    move-result-object v4

    sget-object v5, Lcom/anansimobile/extra/payment/PayssionInterface;->sSecreKey:Ljava/lang/String;

    .line 57
    invoke-virtual {v4, v5}, Lcom/payssion/android/sdk/model/PayRequest;->setSecretKey(Ljava/lang/String;)Lcom/payssion/android/sdk/model/PayRequest;

    move-result-object v4

    .line 58
    invoke-virtual {v4, p6}, Lcom/payssion/android/sdk/model/PayRequest;->setPayerEmail(Ljava/lang/String;)Lcom/payssion/android/sdk/model/PayRequest;

    move-result-object v4

    .line 59
    invoke-virtual {v4, p5}, Lcom/payssion/android/sdk/model/PayRequest;->setPayerName(Ljava/lang/String;)Lcom/payssion/android/sdk/model/PayRequest;

    move-result-object v4

    .line 60
    invoke-virtual {v4, p1}, Lcom/payssion/android/sdk/model/PayRequest;->setSubTrackId(Ljava/lang/String;)Lcom/payssion/android/sdk/model/PayRequest;

    move-result-object v4

    .line 61
    invoke-virtual {v4, p3}, Lcom/payssion/android/sdk/model/PayRequest;->setTrackId(Ljava/lang/String;)Lcom/payssion/android/sdk/model/PayRequest;

    move-result-object v4

    .line 49
    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 64
    sget-object v1, Lcom/anansimobile/extra/payment/PayssionInterface;->sCtx:Landroid/app/Activity;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 65
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-static {p0, p1}, Lcom/anansimobile/extra/payment/PayssionInterface;->OnPurchaseSuccess(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100()V
    .locals 0

    .prologue
    .line 19
    invoke-static {}, Lcom/anansimobile/extra/payment/PayssionInterface;->OnPurchaseFailed()V

    return-void
.end method

.method public static init(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "ctx"    # Landroid/app/Activity;
    .param p1, "apiKey"    # Ljava/lang/String;
    .param p2, "secreKey"    # Ljava/lang/String;

    .prologue
    .line 29
    sput-object p0, Lcom/anansimobile/extra/payment/PayssionInterface;->sCtx:Landroid/app/Activity;

    .line 30
    sput-object p1, Lcom/anansimobile/extra/payment/PayssionInterface;->sApikey:Ljava/lang/String;

    .line 31
    sput-object p2, Lcom/anansimobile/extra/payment/PayssionInterface;->sSecreKey:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public static onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p0, "requestCode"    # I
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 69
    packed-switch p1, :pswitch_data_0

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 71
    :pswitch_0
    if-eqz p2, :cond_0

    .line 72
    const-string/jumbo v4, "data"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/payssion/android/sdk/model/PayResponse;

    .line 73
    .local v2, "response":Lcom/payssion/android/sdk/model/PayResponse;
    if-eqz v2, :cond_0

    .line 74
    invoke-virtual {v2}, Lcom/payssion/android/sdk/model/PayResponse;->getTransactionId()Ljava/lang/String;

    move-result-object v3

    .line 75
    .local v3, "transId":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/payssion/android/sdk/model/PayResponse;->getTrackId()Ljava/lang/String;

    goto :goto_0

    .line 93
    .end local v2    # "response":Lcom/payssion/android/sdk/model/PayResponse;
    .end local v3    # "transId":Ljava/lang/String;
    :pswitch_1
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 94
    .local v1, "msg":Landroid/os/Message;
    const/4 v4, 0x2

    iput v4, v1, Landroid/os/Message;->what:I

    .line 95
    sget-object v4, Lcom/anansimobile/extra/payment/PayssionInterface;->mMsgHandler:Landroid/os/Handler;

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 100
    .end local v1    # "msg":Landroid/os/Message;
    :pswitch_2
    if-eqz p2, :cond_0

    .line 101
    const-string/jumbo v4, "description"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "err_des":Ljava/lang/String;
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 105
    .restart local v1    # "msg":Landroid/os/Message;
    const/4 v4, 0x3

    iput v4, v1, Landroid/os/Message;->what:I

    .line 106
    sget-object v4, Lcom/anansimobile/extra/payment/PayssionInterface;->mMsgHandler:Landroid/os/Handler;

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 69
    :pswitch_data_0
    .packed-switch 0x302
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static onPause()V
    .locals 0

    .prologue
    .line 40
    return-void
.end method

.method public static onResume()V
    .locals 0

    .prologue
    .line 36
    return-void
.end method
