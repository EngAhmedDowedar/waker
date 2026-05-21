.class public final Lcom/google/android/gms/internal/zzdhs;
.super Ljava/lang/Object;


# direct methods
.method public static zzbne()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzdhq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzdhq;-><init>()V

    sget-object v1, Lcom/google/android/gms/internal/zzdgs;->zzlcb:Lcom/google/android/gms/internal/zzdgs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzdgk;->getKeyType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzdgs;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzdgk;)Z

    return-void
.end method
