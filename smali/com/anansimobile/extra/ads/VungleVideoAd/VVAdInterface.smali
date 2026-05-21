.class public Lcom/anansimobile/extra/ads/VungleVideoAd/VVAdInterface;
.super Ljava/lang/Object;
.source "VVAdInterface.java"


# static fields
.field private static mMsgHandler:Landroid/os/Handler;

.field private static sCtx:Landroid/app/Activity;

.field private static sDebug:Z

.field private static s_globalAdConfig:Lcom/vungle/publisher/AdConfig;

.field private static s_vunglePub:Lcom/vungle/publisher/VunglePub;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/anansimobile/extra/ads/VungleVideoAd/VVAdInterface;->sCtx:Landroid/app/Activity;

    .line 17
    const/4 v0, 0x0

    sput-boolean v0, Lcom/anansimobile/extra/ads/VungleVideoAd/VVAdInterface;->sDebug:Z

    .line 20
    invoke-static {}, Lcom/vungle/publisher/VunglePub;->getInstance()Lcom/vungle/publisher/VunglePub;

    move-result-object v0

    sput-object v0, Lcom/anansimobile/extra/ads/VungleVideoAd/VVAdInterface;->s_vunglePub:Lcom/vungle/publisher/VunglePub;

    .line 21
    sget-object v0, Lcom/anansimobile/extra/ads/VungleVideoAd/VVAdInterface;->s_vunglePub:Lcom/vungle/publisher/VunglePub;

    invoke-virtual {v0}, Lcom/vungle/publisher/VunglePub;->getGlobalAdConfig()Lcom/vungle/publisher/AdConfig;

    move-result-object v0

    sput-object v0, Lcom/anansimobile/extra/ads/VungleVideoAd/VVAdInterface;->s_globalAdConfig:Lcom/vungle/publisher/AdConfig;

    .line 203
    new-instance v0, Lcom/anansimobile/extra/ads/VungleVideoAd/VVAdInterface$2;

    invoke-direct {v0}, Lcom/anansimobile/extra/ads/VungleVideoAd/VVAdInterface$2;-><init>()V

    sput-object v0, Lcom/anansimobile/extra/ads/VungleVideoAd/VVAdInterface;->mMsgHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native FinishAdView()V
.end method

.method public static OnPause()V
    .locals 1

    .prologue
    .line 191
    sget-object v0, Lcom/anansimobile/extra/ads/VungleVideoAd/VVAdInterface;->s_vunglePub:Lcom/vungle/publisher/VunglePub;

    if-eqz v0, :cond_0

    .line 192
    sget-object v0, Lcom/anansimobile/extra/ads/VungleVideoAd/VVAdInterface;->s_vunglePub:Lcom/vungle/publisher/VunglePub;

    invoke-virtual {v0}, Lcom/vungle/publisher/VunglePub;->onPause()V

    .line 194
    :cond_0
    return-void
.end method

.method public static OnResume()V
    .locals 1

    .prologue
    .line 198
    sget-object v0, Lcom/anansimobile/extra/ads/VungleVideoAd/VVAdInterface;->s_vunglePub:Lcom/vungle/publisher/VunglePub;

    if-eqz v0, :cond_0

    .line 199
    sget-object v0, Lcom/anansimobile/extra/ads/VungleVideoAd/VVAdInterface;->s_vunglePub:Lcom/vungle/publisher/VunglePub;

    invoke-virtual {v0}, Lcom/vungle/publisher/VunglePub;->onResume()V

    .line 201
    :cond_0
    return-void
.end method

.method public static SetAutoRotationEnabled(I)V
    .locals 0
    .param p0, "enable"    # I

    .prologue
    .line 187
    return-void
.end method

.method public static SetSoundEnable(I)V
    .locals 2
    .param p0, "enable"    # I

    .prologue
    const/4 v0, 0x1

    .line 178
    if-ne p0, v0, :cond_0

    .line 180
    .local v0, "soundEnable":Z
    :goto_0
    sget-object v1, Lcom/anansimobile/extra/ads/VungleVideoAd/VVAdInterface;->s_globalAdConfig:Lcom/vungle/publisher/AdConfig;

    invoke-virtual {v1, v0}, Lcom/vungle/publisher/AdConfig;->setSoundEnabled(Z)V

    .line 181
    return-void

    .line 178
    .end local v0    # "soundEnable":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static ShowVideoIncentivized(IILjava/lang/String;)V
    .locals 3
    .param p0, "soundEnable"    # I
    .param p1, "showCloseBtn"    # I
    .param p2, "extraInfo"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 118
    move-object v1, p2

    .line 135
    .local v1, "username":Ljava/lang/String;
    new-instance v0, Lcom/vungle/publisher/AdConfig;

    invoke-direct {v0}, Lcom/vungle/publisher/AdConfig;-><init>()V

    .line 139
    .local v0, "overrideConfig":Lcom/vungle/publisher/AdConfig;
    invoke-virtual {v0, v2}, Lcom/vungle/publisher/AdConfig;->setIncentivized(Z)V

    .line 140
    if-ne p0, v2, :cond_0

    :goto_0
    invoke-virtual {v0, v2}, Lcom/vungle/publisher/AdConfig;->setSoundEnabled(Z)V

    .line 141
    invoke-virtual {v0, v1}, Lcom/vungle/publisher/AdConfig;->setIncentivizedUserId(Ljava/lang/String;)V

    .line 143
    sget-object v2, Lcom/anansimobile/extra/ads/VungleVideoAd/VVAdInterface;->s_vunglePub:Lcom/vungle/publisher/VunglePub;

    invoke-virtual {v2, v0}, Lcom/vungle/publisher/VunglePub;->playAd(Lcom/vungle/publisher/AdConfig;)V

    .line 144
    return-void

    .line 140
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static ShowVideoSimple()V
    .locals 1

    .prologue
    .line 162
    sget-object v0, Lcom/anansimobile/extra/ads/VungleVideoAd/VVAdInterface;->s_vunglePub:Lcom/vungle/publisher/VunglePub;

    invoke-virtual {v0}, Lcom/vungle/publisher/VunglePub;->playAd()V

    .line 163
    return-void
.end method

.method static synthetic access$000()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/anansimobile/extra/ads/VungleVideoAd/VVAdInterface;->mMsgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static init(Landroid/app/Activity;Ljava/lang/String;Z)V
    .locals 4
    .param p0, "ctx"    # Landroid/app/Activity;
    .param p1, "advertiserId"    # Ljava/lang/String;
    .param p2, "isDebug"    # Z

    .prologue
    .line 26
    sput-object p0, Lcom/anansimobile/extra/ads/VungleVideoAd/VVAdInterface;->sCtx:Landroid/app/Activity;

    .line 27
    sput-boolean p2, Lcom/anansimobile/extra/ads/VungleVideoAd/VVAdInterface;->sDebug:Z

    .line 31
    sget-object v0, Lcom/anansimobile/extra/ads/VungleVideoAd/VVAdInterface;->s_vunglePub:Lcom/vungle/publisher/VunglePub;

    sget-object v1, Lcom/anansimobile/extra/ads/VungleVideoAd/VVAdInterface;->sCtx:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1}, Lcom/vungle/publisher/VunglePub;->init(Landroid/content/Context;Ljava/lang/String;)Z

    .line 36
    sget-object v0, Lcom/anansimobile/extra/ads/VungleVideoAd/VVAdInterface;->s_vunglePub:Lcom/vungle/publisher/VunglePub;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/vungle/publisher/EventListener;

    const/4 v2, 0x0

    new-instance v3, Lcom/anansimobile/extra/ads/VungleVideoAd/VVAdInterface$1;

    invoke-direct {v3}, Lcom/anansimobile/extra/ads/VungleVideoAd/VVAdInterface$1;-><init>()V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/VunglePub;->setEventListeners([Lcom/vungle/publisher/EventListener;)V

    .line 114
    return-void
.end method

.method public static isVideoAvailable(I)Z
    .locals 2
    .param p0, "debug"    # I

    .prologue
    .line 166
    const/4 v0, 0x0

    .line 173
    .local v0, "isAvailable":Z
    sget-object v1, Lcom/anansimobile/extra/ads/VungleVideoAd/VVAdInterface;->s_vunglePub:Lcom/vungle/publisher/VunglePub;

    invoke-virtual {v1}, Lcom/vungle/publisher/VunglePub;->isAdPlayable()Z

    move-result v0

    .line 174
    return v0
.end method
