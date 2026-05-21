.class public final Lcom/google/android/gms/internal/zzabr;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzn;
.end annotation


# instance fields
.field public zzbby:Landroid/location/Location;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public zzcoh:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public zzcom:Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public zzcot:Ljava/util/List;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public zzcrp:Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public zzcrq:Lcom/google/android/gms/internal/zzacu;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public zzcrr:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public zzcrs:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public zzcrt:Lcom/google/android/gms/internal/zzaal;

.field public zzcru:Lcom/google/android/gms/internal/zzaci;

.field public zzcrv:Lorg/json/JSONObject;

.field public zzcrw:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzabr;->zzcrv:Lorg/json/JSONObject;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzabr;->zzcot:Ljava/util/List;

    return-void
.end method
