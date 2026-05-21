.class final Lcom/anansimobile/nge/NGLocation$1;
.super Ljava/lang/Object;
.source "NGLocation.java"

# interfaces
.implements Landroid/location/LocationListener;


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
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 0
    .param p1, "loc"    # Landroid/location/Location;

    .prologue
    .line 24
    invoke-static {p1}, Lcom/anansimobile/nge/NGLocation;->onLocationUpdated(Landroid/location/Location;)V

    .line 25
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 1
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 29
    const/4 v0, -0x1

    invoke-static {v0}, Lcom/anansimobile/nge/NGLocation;->onLocationFailed(I)V

    .line 30
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 35
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 40
    packed-switch p2, :pswitch_data_0

    .line 46
    :goto_0
    return-void

    .line 43
    :pswitch_0
    const/4 v0, -0x1

    invoke-static {v0}, Lcom/anansimobile/nge/NGLocation;->onLocationFailed(I)V

    goto :goto_0

    .line 40
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
