.class public final Lcom/google/android/gms/internal/zzdhg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzdgk;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzdgk",
        "<",
        "Lcom/google/android/gms/internal/zzdfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static zzx(Lcom/google/android/gms/internal/zzeec;)Lcom/google/android/gms/internal/zzdfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/zzdfv$zza;->zzj(Lcom/google/android/gms/internal/zzeec;)Lcom/google/android/gms/internal/zzdfv$zza;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzdhv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdfv$zza;->zzbjw()Lcom/google/android/gms/internal/zzeec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeec;->toByteArray()[B

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzdhv;-><init>([B)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzefj; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string/jumbo v1, "expected AesGcmKey proto"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final getKeyType()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "type.googleapis.com/google.crypto.tink.AesGcmKey"

    return-object v0
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/zzefq;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/zzdfv$zza;

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string/jumbo v1, "expected AesGcmKey proto"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/zzdfv$zza;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdfv$zza;->getVersion()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzdip;->zzq(II)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdfv$zza;->zzbjw()Lcom/google/android/gms/internal/zzeec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeec;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdip;->zzfq(I)V

    new-instance v0, Lcom/google/android/gms/internal/zzdhv;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdfv$zza;->zzbjw()Lcom/google/android/gms/internal/zzeec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzeec;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzdhv;-><init>([B)V

    return-object v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/zzefq;)Lcom/google/android/gms/internal/zzefq;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/zzdfv$zzb;

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string/jumbo v1, "expected AesGcmKeyFormat proto"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/zzdfv$zzb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdfv$zzb;->getKeySize()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdip;->zzfq(I)V

    invoke-static {}, Lcom/google/android/gms/internal/zzdfv$zza;->zzbkl()Lcom/google/android/gms/internal/zzdfv$zza$zza;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdfv$zzb;->getKeySize()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzdio;->zzfp(I)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzeec;->zzar([B)Lcom/google/android/gms/internal/zzeec;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzdfv$zza$zza;->zzk(Lcom/google/android/gms/internal/zzeec;)Lcom/google/android/gms/internal/zzdfv$zza$zza;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdfv$zzb;->zzbkn()Lcom/google/android/gms/internal/zzdfv$zzc;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzdfv$zza$zza;->zzb(Lcom/google/android/gms/internal/zzdfv$zzc;)Lcom/google/android/gms/internal/zzdfv$zza$zza;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzdfv$zza$zza;->zzfc(I)Lcom/google/android/gms/internal/zzdfv$zza$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeew;->zzcda()Lcom/google/android/gms/internal/zzeev;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzeev;

    return-object v0
.end method

.method public final synthetic zzq(Lcom/google/android/gms/internal/zzeec;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/internal/zzdhg;->zzx(Lcom/google/android/gms/internal/zzeec;)Lcom/google/android/gms/internal/zzdfo;

    move-result-object v0

    return-object v0
.end method

.method public final zzr(Lcom/google/android/gms/internal/zzeec;)Lcom/google/android/gms/internal/zzefq;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/zzdfv$zzb;->zzl(Lcom/google/android/gms/internal/zzeec;)Lcom/google/android/gms/internal/zzdfv$zzb;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzdhg;->zzb(Lcom/google/android/gms/internal/zzefq;)Lcom/google/android/gms/internal/zzefq;
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzefj; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string/jumbo v2, "expected serialized AesGcmKeyFormat proto"

    invoke-direct {v1, v2, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final zzs(Lcom/google/android/gms/internal/zzeec;)Lcom/google/android/gms/internal/zzdgt$zzb;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzdhg;->zzr(Lcom/google/android/gms/internal/zzeec;)Lcom/google/android/gms/internal/zzefq;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzdfv$zza;

    invoke-static {}, Lcom/google/android/gms/internal/zzdgt$zzb;->zzbmi()Lcom/google/android/gms/internal/zzdgt$zzb$zza;

    move-result-object v1

    const-string/jumbo v2, "type.googleapis.com/google.crypto.tink.AesGcmKey"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzdgt$zzb$zza;->zzof(Ljava/lang/String;)Lcom/google/android/gms/internal/zzdgt$zzb$zza;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzedx;->zzcbp()Lcom/google/android/gms/internal/zzeec;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzdgt$zzb$zza;->zzw(Lcom/google/android/gms/internal/zzeec;)Lcom/google/android/gms/internal/zzdgt$zzb$zza;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/zzdgt$zzb$zzb;->zzlcl:Lcom/google/android/gms/internal/zzdgt$zzb$zzb;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzdgt$zzb$zza;->zzb(Lcom/google/android/gms/internal/zzdgt$zzb$zzb;)Lcom/google/android/gms/internal/zzdgt$zzb$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeew;->zzcda()Lcom/google/android/gms/internal/zzeev;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzeev;

    check-cast v0, Lcom/google/android/gms/internal/zzdgt$zzb;

    return-object v0
.end method
