.class final Lcom/anansimobile/extra/platform/facebookshare/FacebookShare$1;
.super Ljava/lang/Object;
.source "FacebookShare.java"

# interfaces
.implements Lcom/facebook/FacebookCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anansimobile/extra/platform/facebookshare/FacebookShare;->init(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/FacebookCallback",
        "<",
        "Lcom/facebook/login/LoginResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .prologue
    .line 60
    const-string/jumbo v0, "NG Facebook call back"

    const-string/jumbo v1, "Login cancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-static {}, Lcom/anansimobile/extra/platform/facebookshare/FacebookShare;->access$000()V

    .line 62
    return-void
.end method

.method public onError(Lcom/facebook/FacebookException;)V
    .locals 2
    .param p1, "exception"    # Lcom/facebook/FacebookException;

    .prologue
    .line 67
    const-string/jumbo v0, "NG Facebook call back"

    const-string/jumbo v1, "Login error"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-static {}, Lcom/anansimobile/extra/platform/facebookshare/FacebookShare;->access$100()V

    .line 69
    return-void
.end method

.method public onSuccess(Lcom/facebook/login/LoginResult;)V
    .locals 2
    .param p1, "loginResult"    # Lcom/facebook/login/LoginResult;

    .prologue
    .line 52
    const-string/jumbo v0, "NG Facebook call back"

    const-string/jumbo v1, "Login success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    sput-object p1, Lcom/anansimobile/extra/platform/facebookshare/FacebookShare;->loginResult:Lcom/facebook/login/LoginResult;

    .line 54
    invoke-static {}, Lcom/anansimobile/extra/platform/facebookshare/FacebookShare;->GetUserName()V

    .line 55
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 48
    check-cast p1, Lcom/facebook/login/LoginResult;

    invoke-virtual {p0, p1}, Lcom/anansimobile/extra/platform/facebookshare/FacebookShare$1;->onSuccess(Lcom/facebook/login/LoginResult;)V

    return-void
.end method
