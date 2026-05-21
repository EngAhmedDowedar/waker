.class final Lcom/anansimobile/extra/ads/VungleVideoAd/VVAdInterface$1;
.super Ljava/lang/Object;
.source "VVAdInterface.java"

# interfaces
.implements Lcom/vungle/publisher/EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anansimobile/extra/ads/VungleVideoAd/VVAdInterface;->init(Landroid/app/Activity;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdEnd(Z)V
    .locals 0
    .param p1, "arg0"    # Z

    .prologue
    .line 42
    return-void
.end method

.method public onAdPlayableChanged(Z)V
    .locals 0
    .param p1, "arg0"    # Z

    .prologue
    .line 48
    return-void
.end method

.method public onAdStart()V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method public onAdUnavailable(Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 60
    return-void
.end method

.method public onVideoView(ZII)V
    .locals 2
    .param p1, "isCompletedView"    # Z
    .param p2, "watchedMillis"    # I
    .param p3, "videoDurationMillis"    # I

    .prologue
    .line 65
    if-eqz p1, :cond_0

    .line 67
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 68
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 69
    invoke-static {}, Lcom/anansimobile/extra/ads/VungleVideoAd/VVAdInterface;->access$000()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 71
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method
