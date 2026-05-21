.class final Lcom/anansimobile/extra/platform/facebookshare/FacebookShare$2;
.super Lcom/facebook/AccessTokenTracker;
.source "FacebookShare.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anansimobile/extra/platform/facebookshare/FacebookShare;->init(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/facebook/AccessTokenTracker;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCurrentAccessTokenChanged(Lcom/facebook/AccessToken;Lcom/facebook/AccessToken;)V
    .locals 0
    .param p1, "oldAccessToken"    # Lcom/facebook/AccessToken;
    .param p2, "currentAccessToken"    # Lcom/facebook/AccessToken;

    .prologue
    .line 79
    sput-object p2, Lcom/anansimobile/extra/platform/facebookshare/FacebookShare;->sAccessToken:Lcom/facebook/AccessToken;

    .line 80
    return-void
.end method
