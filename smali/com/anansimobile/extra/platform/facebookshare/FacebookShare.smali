.class public Lcom/anansimobile/extra/platform/facebookshare/FacebookShare;
.super Ljava/lang/Object;
.source "FacebookShare.java"


# static fields
.field public static callbackManager:Lcom/facebook/CallbackManager;

.field public static loginResult:Lcom/facebook/login/LoginResult;

.field private static mMsgHandler:Landroid/os/Handler;

.field public static sAccessToken:Lcom/facebook/AccessToken;

.field public static sAccessTokenTracker:Lcom/facebook/AccessTokenTracker;

.field private static sCtx:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    sput-object v0, Lcom/anansimobile/extra/platform/facebookshare/FacebookShare;->sCtx:Landroid/app/Activity;

    .line 34
    sput-object v0, Lcom/anansimobile/extra/platform/facebookshare/FacebookShare;->callbackManager:Lcom/facebook/CallbackManager;

    .line 35
    sput-object v0, Lcom/anansimobile/extra/platform/facebookshare/FacebookShare;->loginResult:Lcom/facebook/login/LoginResult;

    .line 36
    sput-object v0, Lcom/anansimobile/extra/platform/facebookshare/FacebookShare;->sAccessTokenTracker:Lcom/facebook/AccessTokenTracker;

    .line 37
    sput-object v0, Lcom/anansimobile/extra/platform/facebookshare/FacebookShare;->sAccessToken:Lcom/facebook/AccessToken;

    .line 154
    new-instance v0, Lcom/anansimobile/extra/platform/facebookshare/FacebookShare$4;

    invoke-direct {v0}, Lcom/anansimobile/extra/platform/facebookshare/FacebookShare$4;-><init>()V

    sput-object v0, Lcom/anansimobile/extra/platform/facebookshare/FacebookShare;->mMsgHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetUserName()V
    .locals 4

    .prologue
    .line 102
    sget-object v2, Lcom/anansimobile/extra/platform/facebookshare/FacebookShare;->loginResult:Lcom/facebook/login/LoginResult;

    .line 103
    invoke-virtual {v2}, Lcom/facebook/login/LoginResult;->getAccessToken()Lcom/facebook/AccessToken;

    move-result-object v2

    new-instance v3, Lcom/anansimobile/extra/platform/facebookshare/FacebookShare$3;

    invoke-direct {v3}, Lcom/anansimobile/extra/platform/facebookshare/FacebookShare$3;-><init>()V

    .line 102
    invoke-static {v2, v3}, Lcom/facebook/GraphRequest;->newMeRequest(Lcom/facebook/AccessToken;Lcom/facebook/GraphRequest$GraphJSONObjectCallback;)Lcom/facebook/GraphRequest;

    move-result-object v1

    .line 124
    .local v1, "request":Lcom/facebook/GraphRequest;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 125
    .local v0, "parameters":Landroid/os/Bundle;
    const-string/jumbo v2, "fields"

    const-string/jumbo v3, "id,name"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-virtual {v1, v0}, Lcom/facebook/GraphRequest;->setParameters(Landroid/os/Bundle;)V

    .line 127
    invoke-virtual {v1}, Lcom/facebook/GraphRequest;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;

    .line 128
    return-void
.end method

.method private static LoginInternal()V
    .locals 6

    .prologue
    .line 182
    sget-object v1, Lcom/anansimobile/extra/platform/facebookshare/FacebookShare;->sAccessToken:Lcom/facebook/AccessToken;

    if-eqz v1, :cond_0

    .line 183
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 184
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 185
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "uid"

    sget-object v3, Lcom/anansimobile/extra/platform/facebookshare/FacebookShare;->sAccessToken:Lcom/facebook/AccessToken;

    invoke-virtual {v3}, Lcom/facebook/AccessToken;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "userName"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "nick"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    sget-object v1, Lcom/anansimobile/extra/platform/facebookshare/FacebookShare;->mMsgHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 252
    .end local v0    # "msg":Landroid/os/Message;
    :goto_0
    return-void

    .line 191
    :cond_0
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v1

    sget-object v2, Lcom/anansimobile/extra/platform/facebookshare/FacebookShare;->sCtx:Landroid/app/Activity;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "public_profile"

    aput-object v5, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/facebook/login/LoginManager;->logInWithReadPermissions(Landroid/app/Activity;Ljava/util/Collection;)V

    goto :goto_0
.end method

.method private static LogoutInternal()V
    .locals 1

    .prologue
    .line 256
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/login/LoginManager;->logOut()V

    .line 257
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    sput-object v0, Lcom/anansimobile/extra/platform/facebookshare/FacebookShare;->sAccessToken:Lcom/facebook/AccessToken;

    .line 258
    return-void
.end method

.method public static PurchaseStat(DLjava/lang/String;)V
    .locals 4
    .param p0, "num"    # D
    .param p2, "currencyType"    # Ljava/lang/String;

    .prologue
    .line 150
    sget-object v1, Lcom/anansimobile/extra/platform/facebookshare/FacebookShare;->sCtx:Landroid/app/Activity;

    invoke-static {v1}, Lcom/facebook/appevents/AppEventsLogger;->newLogger(Landroid/content/Context;)Lcom/facebook/appevents/AppEventsLogger;

    move-result-object v0

    .line 151
    .local v0, "logger":Lcom/facebook/appevents/AppEventsLogger;
    invoke-static {p0, p1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-static {p2}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/appevents/AppEventsLogger;->logPurchase(Ljava/math/BigDecimal;Ljava/util/Currency;)V

    .line 152
    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .prologue
    .line 31
    invoke-static {}, Lcom/anansimobile/extra/platform/facebookshare/FacebookShare;->onLoginCanceled()V

    return-void
.end method

.method static synthetic access$100()V
    .locals 0

    .prologue
    .line 31
    invoke-static {}, Lcom/anansimobile/extra/platform/facebookshare/FacebookShare;->onLoginError()V

    return-void
.end method

.method static synthetic access$200(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-static {p0, p1, p2}, Lcom/anansimobile/extra/platform/facebookshare/FacebookShare;->onLoginSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300()V
    .locals 0

    .prologue
    .line 31
    invoke-static {}, Lcom/anansimobile/extra/platform/facebookshare/FacebookShare;->LoginInternal()V

    return-void
.end method

.method static synthetic access$400()V
    .locals 0

    .prologue
    .line 31
    invoke-static {}, Lcom/anansimobile/extra/platform/facebookshare/FacebookShare;->LogoutInternal()V

    return-void
.end method

.method public static init(Landroid/app/Activity;)V
    .locals 3
    .param p0, "ctx"    # Landroid/app/Activity;

    .prologue
    .line 39
    sput-object p0, Lcom/anansimobile/extra/platform/facebookshare/FacebookShare;->sCtx:Landroid/app/Activity;

    .line 41
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;)V

    .line 43
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/appevents/AppEventsLogger;->activateApp(Landroid/app/Application;)V

    .line 45
    invoke-static {}, Lcom/facebook/CallbackManager$Factory;->create()Lcom/facebook/CallbackManager;

    move-result-object v0

    sput-object v0, Lcom/anansimobile/extra/platform/facebookshare/FacebookShare;->callbackManager:Lcom/facebook/CallbackManager;

    .line 48
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    sget-object v1, Lcom/anansimobile/extra/platform/facebookshare/FacebookShare;->callbackManager:Lcom/facebook/CallbackManager;

    new-instance v2, Lcom/anansimobile/extra/platform/facebookshare/FacebookShare$1;

    invoke-direct {v2}, Lcom/anansimobile/extra/platform/facebookshare/FacebookShare$1;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/login/LoginManager;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    .line 72
    new-instance v0, Lcom/anansimobile/extra/platform/facebookshare/FacebookShare$2;

    invoke-direct {v0}, Lcom/anansimobile/extra/platform/facebookshare/FacebookShare$2;-><init>()V

    sput-object v0, Lcom/anansimobile/extra/platform/facebookshare/FacebookShare;->sAccessTokenTracker:Lcom/facebook/AccessTokenTracker;

    .line 83
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    sput-object v0, Lcom/anansimobile/extra/platform/facebookshare/FacebookShare;->sAccessToken:Lcom/facebook/AccessToken;

    .line 88
    return-void
.end method

.method public static login()V
    .locals 2

    .prologue
    .line 137
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 138
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 139
    sget-object v1, Lcom/anansimobile/extra/platform/facebookshare/FacebookShare;->mMsgHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 140
    return-void
.end method

.method public static logout()V
    .locals 2

    .prologue
    .line 143
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 144
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 145
    sget-object v1, Lcom/anansimobile/extra/platform/facebookshare/FacebookShare;->mMsgHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 146
    return-void
.end method

.method public static onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p0, "requestCode"    # I
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 91
    sget-object v0, Lcom/anansimobile/extra/platform/facebookshare/FacebookShare;->callbackManager:Lcom/facebook/CallbackManager;

    invoke-interface {v0, p0, p1, p2}, Lcom/facebook/CallbackManager;->onActivityResult(IILandroid/content/Intent;)Z

    .line 92
    return-void
.end method

.method public static onDestroy()V
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lcom/anansimobile/extra/platform/facebookshare/FacebookShare;->sAccessTokenTracker:Lcom/facebook/AccessTokenTracker;

    if-eqz v0, :cond_0

    .line 96
    sget-object v0, Lcom/anansimobile/extra/platform/facebookshare/FacebookShare;->sAccessTokenTracker:Lcom/facebook/AccessTokenTracker;

    invoke-virtual {v0}, Lcom/facebook/AccessTokenTracker;->stopTracking()V

    .line 98
    :cond_0
    return-void
.end method

.method private static native onLoginCanceled()V
.end method

.method private static native onLoginError()V
.end method

.method private static native onLoginSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static native onLogoutSuccess()V
.end method

.method private static purchaseInternal(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p0, "productName"    # Ljava/lang/String;
    .param p1, "extraInfo"    # Ljava/lang/String;
    .param p2, "cost"    # I

    .prologue
    .line 179
    return-void
.end method
