.class public final Lcom/google/android/gms/internal/zzdgt$zze$zza;
.super Lcom/google/android/gms/internal/zzeew;

# interfaces
.implements Lcom/google/android/gms/internal/zzefs;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzdgt$zze;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzeew",
        "<",
        "Lcom/google/android/gms/internal/zzdgt$zze;",
        "Lcom/google/android/gms/internal/zzdgt$zze$zza;",
        ">;",
        "Lcom/google/android/gms/internal/zzefs;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/zzdgt$zze;->zzbna()Lcom/google/android/gms/internal/zzdgt$zze;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzeew;-><init>(Lcom/google/android/gms/internal/zzeev;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzdgu;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzdgt$zze$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/zzdgt$zze$zzb;)Lcom/google/android/gms/internal/zzdgt$zze$zza;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzeew;->zzccy()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdgt$zze$zza;->zznch:Lcom/google/android/gms/internal/zzeev;

    check-cast v0, Lcom/google/android/gms/internal/zzdgt$zze;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzdgt$zze;->zza(Lcom/google/android/gms/internal/zzdgt$zze;Lcom/google/android/gms/internal/zzdgt$zze$zzb;)V

    return-object p0
.end method

.method public final zzfl(I)Lcom/google/android/gms/internal/zzdgt$zze$zza;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzeew;->zzccy()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdgt$zze$zza;->zznch:Lcom/google/android/gms/internal/zzeev;

    check-cast v0, Lcom/google/android/gms/internal/zzdgt$zze;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzdgt$zze;->zza(Lcom/google/android/gms/internal/zzdgt$zze;I)V

    return-object p0
.end method
