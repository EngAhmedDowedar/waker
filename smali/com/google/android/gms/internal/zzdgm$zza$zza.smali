.class public final Lcom/google/android/gms/internal/zzdgm$zza$zza;
.super Lcom/google/android/gms/internal/zzeew;

# interfaces
.implements Lcom/google/android/gms/internal/zzefs;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzdgm$zza;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzeew",
        "<",
        "Lcom/google/android/gms/internal/zzdgm$zza;",
        "Lcom/google/android/gms/internal/zzdgm$zza$zza;",
        ">;",
        "Lcom/google/android/gms/internal/zzefs;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/zzdgm$zza;->zzblv()Lcom/google/android/gms/internal/zzdgm$zza;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzeew;-><init>(Lcom/google/android/gms/internal/zzeev;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzdgn;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzdgm$zza$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/zzdgm$zzc;)Lcom/google/android/gms/internal/zzdgm$zza$zza;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzeew;->zzccy()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdgm$zza$zza;->zznch:Lcom/google/android/gms/internal/zzeev;

    check-cast v0, Lcom/google/android/gms/internal/zzdgm$zza;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzdgm$zza;->zza(Lcom/google/android/gms/internal/zzdgm$zza;Lcom/google/android/gms/internal/zzdgm$zzc;)V

    return-object p0
.end method

.method public final zzfh(I)Lcom/google/android/gms/internal/zzdgm$zza$zza;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzeew;->zzccy()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdgm$zza$zza;->zznch:Lcom/google/android/gms/internal/zzeev;

    check-cast v0, Lcom/google/android/gms/internal/zzdgm$zza;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzdgm$zza;->zza(Lcom/google/android/gms/internal/zzdgm$zza;I)V

    return-object p0
.end method
