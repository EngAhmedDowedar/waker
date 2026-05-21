.class final Lcom/anansimobile/extra/ads/VungleVideoAd/VVAdInterface$2;
.super Landroid/os/Handler;
.source "VVAdInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anansimobile/extra/ads/VungleVideoAd/VVAdInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 203
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 206
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 212
    :goto_0
    return-void

    .line 208
    :pswitch_0
    invoke-static {}, Lcom/anansimobile/extra/ads/VungleVideoAd/VVAdInterface;->FinishAdView()V

    goto :goto_0

    .line 206
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
