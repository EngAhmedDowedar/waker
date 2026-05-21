.class final Lcom/google/android/gms/ads/internal/zzap;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzapl:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

.field private synthetic zzapm:Lcom/google/android/gms/ads/internal/zzao;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzao;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzap;->zzapm:Lcom/google/android/gms/ads/internal/zzao;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzap;->zzapl:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzdy()Lcom/google/android/gms/ads/internal/overlay/zzu;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzap;->zzapm:Lcom/google/android/gms/ads/internal/zzao;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzao;->zzapj:Lcom/google/android/gms/ads/internal/zzam;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzam;->zzamh:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbw;->zzahy:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzap;->zzapl:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/ads/internal/overlay/zzu;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;Z)V

    return-void
.end method
