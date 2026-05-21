.class public Lcom/anansimobile/nge/NGLocation;
.super Ljava/lang/Object;
.source "NGLocation.java"


# static fields
.field private static final LOCATION_MSG_REQUEST:I = 0x3e9

.field private static listener:Landroid/location/LocationListener;

.field private static location:Landroid/location/Location;

.field private static locationMsgHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/anansimobile/nge/NGLocation;->location:Landroid/location/Location;

    .line 20
    new-instance v0, Lcom/anansimobile/nge/NGLocation$1;

    invoke-direct {v0}, Lcom/anansimobile/nge/NGLocation$1;-><init>()V

    sput-object v0, Lcom/anansimobile/nge/NGLocation;->listener:Landroid/location/LocationListener;

    .line 52
    new-instance v0, Lcom/anansimobile/nge/NGLocation$2;

    invoke-direct {v0}, Lcom/anansimobile/nge/NGLocation$2;-><init>()V

    sput-object v0, Lcom/anansimobile/nge/NGLocation;->locationMsgHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/location/LocationListener;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/anansimobile/nge/NGLocation;->listener:Landroid/location/LocationListener;

    return-object v0
.end method

.method public static isAvailable()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 68
    sget-object v3, Lcom/anansimobile/nge/NextGenEngine;->sMainActivity:Lcom/anansimobile/nge/RootActivity;

    const-string/jumbo v4, "location"

    invoke-virtual {v3, v4}, Lcom/anansimobile/nge/RootActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 69
    .local v0, "locationManager":Landroid/location/LocationManager;
    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v1

    .line 70
    .local v1, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static onLocationFailed(I)V
    .locals 0
    .param p0, "errCode"    # I

    .prologue
    .line 123
    invoke-static {p0}, Lcom/anansimobile/nge/NGLocation;->requestLocationFailed(I)V

    .line 124
    return-void
.end method

.method public static onLocationUpdated(Landroid/location/Location;)V
    .locals 4
    .param p0, "loc"    # Landroid/location/Location;

    .prologue
    .line 118
    sput-object p0, Lcom/anansimobile/nge/NGLocation;->location:Landroid/location/Location;

    .line 119
    sget-object v0, Lcom/anansimobile/nge/NGLocation;->location:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    sget-object v2, Lcom/anansimobile/nge/NGLocation;->location:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/anansimobile/nge/NGLocation;->requestLocationSuccess(DD)V

    .line 120
    return-void
.end method

.method public static requestLocation()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 79
    sget-object v8, Lcom/anansimobile/nge/NextGenEngine;->sMainActivity:Lcom/anansimobile/nge/RootActivity;

    const-string/jumbo v9, "location"

    invoke-virtual {v8, v9}, Lcom/anansimobile/nge/RootActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/LocationManager;

    .line 92
    .local v3, "locationManager":Landroid/location/LocationManager;
    :try_start_0
    const-string/jumbo v8, "network"

    invoke-virtual {v3, v8}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v8

    sput-object v8, Lcom/anansimobile/nge/NGLocation;->location:Landroid/location/Location;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 101
    sget-object v8, Lcom/anansimobile/nge/NGLocation;->location:Landroid/location/Location;

    if-eqz v8, :cond_0

    .line 102
    sget-object v8, Lcom/anansimobile/nge/NGLocation;->location:Landroid/location/Location;

    invoke-virtual {v8}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    .line 103
    .local v4, "latitude":D
    sget-object v8, Lcom/anansimobile/nge/NGLocation;->location:Landroid/location/Location;

    invoke-virtual {v8}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    .line 104
    .local v6, "longitude":D
    sget-object v8, Lcom/anansimobile/nge/NGLocation;->location:Landroid/location/Location;

    invoke-virtual {v8}, Landroid/location/Location;->getAltitude()D

    move-result-wide v0

    .line 105
    .local v0, "altitude":D
    const-string/jumbo v8, "tag"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "latitude "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "  longitude:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " altitude:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    .end local v0    # "altitude":D
    .end local v4    # "latitude":D
    .end local v6    # "longitude":D
    :goto_0
    return-void

    .line 93
    :catch_0
    move-exception v2

    .line 94
    .local v2, "e":Ljava/lang/SecurityException;
    sget-object v8, Lcom/anansimobile/nge/NextGenEngine;->sMainActivity:Lcom/anansimobile/nge/RootActivity;

    const-string/jumbo v9, "can not get location, no permission!~"

    invoke-virtual {v8, v9, v10}, Lcom/anansimobile/nge/RootActivity;->ToastMessage(Ljava/lang/String;I)V

    goto :goto_0

    .line 96
    .end local v2    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v2

    .line 97
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    sget-object v8, Lcom/anansimobile/nge/NextGenEngine;->sMainActivity:Lcom/anansimobile/nge/RootActivity;

    const-string/jumbo v9, "can not get location!~"

    invoke-virtual {v8, v9, v10}, Lcom/anansimobile/nge/RootActivity;->ToastMessage(Ljava/lang/String;I)V

    goto :goto_0

    .line 107
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    sget-object v8, Lcom/anansimobile/nge/NGLocation;->locationMsgHandler:Landroid/os/Handler;

    sget-object v9, Lcom/anansimobile/nge/NGLocation;->locationMsgHandler:Landroid/os/Handler;

    const/16 v10, 0x3e9

    invoke-static {v9, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private static native requestLocationFailed(I)V
.end method

.method private static native requestLocationSuccess(DD)V
.end method

.method public static resignLocationRequest()V
    .locals 3

    .prologue
    .line 113
    sget-object v1, Lcom/anansimobile/nge/NextGenEngine;->sMainActivity:Lcom/anansimobile/nge/RootActivity;

    const-string/jumbo v2, "location"

    invoke-virtual {v1, v2}, Lcom/anansimobile/nge/RootActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 114
    .local v0, "locationManager":Landroid/location/LocationManager;
    sget-object v1, Lcom/anansimobile/nge/NGLocation;->listener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 115
    return-void
.end method
