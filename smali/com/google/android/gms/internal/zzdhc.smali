.class public final Lcom/google/android/gms/internal/zzdhc;
.super Ljava/lang/Object;


# direct methods
.method private static zza(Lcom/google/android/gms/internal/zzdgk;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzdgk",
            "<",
            "Lcom/google/android/gms/internal/zzdfo;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzdgs;->zzlcb:Lcom/google/android/gms/internal/zzdgs;

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzdgk;->getKeyType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/internal/zzdgs;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzdgk;)Z

    move-result v0

    return v0
.end method

.method public static zzbne()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzdhd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzdhd;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdhc;->zza(Lcom/google/android/gms/internal/zzdgk;)Z

    new-instance v0, Lcom/google/android/gms/internal/zzdhi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzdhi;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdhc;->zza(Lcom/google/android/gms/internal/zzdgk;)Z

    new-instance v0, Lcom/google/android/gms/internal/zzdhg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzdhg;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdhc;->zza(Lcom/google/android/gms/internal/zzdgk;)Z

    new-instance v0, Lcom/google/android/gms/internal/zzdhf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzdhf;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdhc;->zza(Lcom/google/android/gms/internal/zzdgk;)Z

    return-void
.end method
