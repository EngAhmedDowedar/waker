.class final Lcom/anansimobile/nge/NGLocation$2;
.super Landroid/os/Handler;
.source "NGLocation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anansimobile/nge/NGLocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 56
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 64
    :goto_0
    return-void

    .line 59
    :pswitch_0
    sget-object v1, Lcom/anansimobile/nge/NextGenEngine;->sMainActivity:Lcom/anansimobile/nge/RootActivity;

    const-string/jumbo v2, "location"

    invoke-virtual {v1, v2}, Lcom/anansimobile/nge/RootActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 60
    .local v0, "locationManager":Landroid/location/LocationManager;
    const-string/jumbo v1, "network"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-static {}, Lcom/anansimobile/nge/NGLocation;->access$000()Landroid/location/LocationListener;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    goto :goto_0

    .line 56
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
    .end packed-switch
.end method
