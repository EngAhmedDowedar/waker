.class final Lcom/anansimobile/extra/platform/facebookshare/FacebookShare$3;
.super Ljava/lang/Object;
.source "FacebookShare.java"

# interfaces
.implements Lcom/facebook/GraphRequest$GraphJSONObjectCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anansimobile/extra/platform/facebookshare/FacebookShare;->GetUserName()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lorg/json/JSONObject;Lcom/facebook/GraphResponse;)V
    .locals 4
    .param p1, "object"    # Lorg/json/JSONObject;
    .param p2, "response"    # Lcom/facebook/GraphResponse;

    .prologue
    .line 108
    const-string/jumbo v2, "LoginActivity Response "

    invoke-virtual {p2}, Lcom/facebook/GraphResponse;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    sget-object v2, Lcom/anansimobile/extra/platform/facebookshare/FacebookShare;->loginResult:Lcom/facebook/login/LoginResult;

    invoke-virtual {v2}, Lcom/facebook/login/LoginResult;->getAccessToken()Lcom/facebook/AccessToken;

    move-result-object v2

    sput-object v2, Lcom/anansimobile/extra/platform/facebookshare/FacebookShare;->sAccessToken:Lcom/facebook/AccessToken;

    .line 111
    :try_start_0
    invoke-virtual {p2}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_0

    .line 112
    invoke-static {}, Lcom/anansimobile/extra/platform/facebookshare/FacebookShare;->access$100()V

    .line 122
    :goto_0
    return-void

    .line 115
    :cond_0
    const-string/jumbo v2, "name"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, "name":Ljava/lang/String;
    sget-object v2, Lcom/anansimobile/extra/platform/facebookshare/FacebookShare;->loginResult:Lcom/facebook/login/LoginResult;

    invoke-virtual {v2}, Lcom/facebook/login/LoginResult;->getAccessToken()Lcom/facebook/AccessToken;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/AccessToken;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1, v1}, Lcom/anansimobile/extra/platform/facebookshare/FacebookShare;->access$200(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 118
    .end local v1    # "name":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 120
    invoke-static {}, Lcom/anansimobile/extra/platform/facebookshare/FacebookShare;->access$100()V

    goto :goto_0
.end method
