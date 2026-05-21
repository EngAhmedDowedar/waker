.class public final Lcom/google/android/gms/internal/zzdgl;
.super Ljava/lang/Object;


# instance fields
.field private final zzlbn:Lcom/google/android/gms/internal/zzdgt$zzd;

.field private final zzlbo:Lcom/google/android/gms/internal/zzdgt$zza;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzdgt$zzd;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdgl;->zzlbn:Lcom/google/android/gms/internal/zzdgt$zzd;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdgl;->zzlbo:Lcom/google/android/gms/internal/zzdgt$zza;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/zzdgt$zzd;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzdgt$zzd;->zzbmp()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string/jumbo v1, "empty keyset"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdgl;->zzlbn:Lcom/google/android/gms/internal/zzdgt$zzd;

    invoke-static {}, Lcom/google/android/gms/internal/zzdgt$zze;->zzbmy()Lcom/google/android/gms/internal/zzdgt$zze$zza;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdgt$zzd;->zzbmn()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzdgt$zze$zza;->zzfl(I)Lcom/google/android/gms/internal/zzdgt$zze$zza;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdgt$zzd;->zzbmo()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzdgt$zzd$zzb;

    invoke-static {}, Lcom/google/android/gms/internal/zzdgt$zze$zzb;->zzbnb()Lcom/google/android/gms/internal/zzdgt$zze$zzb$zza;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdgt$zzd$zzb;->zzbms()Lcom/google/android/gms/internal/zzdgt$zzb;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzdgt$zzb;->zzbmf()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/zzdgt$zze$zzb$zza;->zzog(Ljava/lang/String;)Lcom/google/android/gms/internal/zzdgt$zze$zzb$zza;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdgt$zzd$zzb;->zzbmt()Lcom/google/android/gms/internal/zzdgw;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/zzdgt$zze$zzb$zza;->zzb(Lcom/google/android/gms/internal/zzdgw;)Lcom/google/android/gms/internal/zzdgt$zze$zzb$zza;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdgt$zzd$zzb;->zzbmv()Lcom/google/android/gms/internal/zzdgy;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/zzdgt$zze$zzb$zza;->zzb(Lcom/google/android/gms/internal/zzdgy;)Lcom/google/android/gms/internal/zzdgt$zze$zzb$zza;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdgt$zzd$zzb;->zzbmu()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/zzdgt$zze$zzb$zza;->zzfn(I)Lcom/google/android/gms/internal/zzdgt$zze$zzb$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeew;->zzcda()Lcom/google/android/gms/internal/zzeev;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzeev;

    check-cast v0, Lcom/google/android/gms/internal/zzdgt$zze$zzb;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzdgt$zze$zza;->zzb(Lcom/google/android/gms/internal/zzdgt$zze$zzb;)Lcom/google/android/gms/internal/zzdgt$zze$zza;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzeew;->zzcda()Lcom/google/android/gms/internal/zzeev;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzeev;

    check-cast v0, Lcom/google/android/gms/internal/zzdgt$zze;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeev;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzbls()Lcom/google/android/gms/internal/zzdgt$zzd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdgl;->zzlbn:Lcom/google/android/gms/internal/zzdgt$zzd;

    return-object v0
.end method
