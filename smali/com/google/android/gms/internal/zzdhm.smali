.class public final Lcom/google/android/gms/internal/zzdhm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzdgk;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzdgk",
        "<",
        "Lcom/google/android/gms/internal/zzdgj;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final zzz(Lcom/google/android/gms/internal/zzeec;)Lcom/google/android/gms/internal/zzdgj;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/zzdgf$zzc;->zzm(Lcom/google/android/gms/internal/zzeec;)Lcom/google/android/gms/internal/zzdgf$zzc;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/gms/internal/zzdgf$zzc;

    if-nez v2, :cond_0

    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string/jumbo v2, "expected EciesAeadHkdfPublicKey proto"

    invoke-direct {v1, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzefj; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/security/GeneralSecurityException;

    const-string/jumbo v3, "expected serialized EciesAeadHkdfPublicKey proto"

    invoke-direct {v2, v3, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_0
    :try_start_1
    move-object v0, v1

    check-cast v0, Lcom/google/android/gms/internal/zzdgf$zzc;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzdgf$zzc;->getVersion()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzdip;->zzq(II)V

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzdgf$zzc;->zzbkz()Lcom/google/android/gms/internal/zzdgf$zzb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzdgf$zzb;->zzbku()Lcom/google/android/gms/internal/zzdgf$zzd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzdgf$zzd;->zzbld()Lcom/google/android/gms/internal/zzdfz;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/zzdha;->zza(Lcom/google/android/gms/internal/zzdfz;)Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzdgf$zzb;->zzbku()Lcom/google/android/gms/internal/zzdgf$zzd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzdgf$zzd;->zzble()Lcom/google/android/gms/internal/zzdgb;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/zzdha;->zza(Lcom/google/android/gms/internal/zzdgb;)Ljava/lang/String;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzdgf$zzb;->zzbkw()Lcom/google/android/gms/internal/zzdfx;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/zzdfx;->zzkzy:Lcom/google/android/gms/internal/zzdfx;

    if-ne v2, v3, :cond_1

    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string/jumbo v2, "unknown EC point format"

    invoke-direct {v1, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    sget-object v2, Lcom/google/android/gms/internal/zzdgs;->zzlcb:Lcom/google/android/gms/internal/zzdgs;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzdgf$zzb;->zzbkv()Lcom/google/android/gms/internal/zzdgf$zza;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzdgf$zza;->zzbkr()Lcom/google/android/gms/internal/zzdgt$zzc;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/zzdgs;->zza(Lcom/google/android/gms/internal/zzdgt$zzc;)Lcom/google/android/gms/internal/zzdgt$zzb;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzdgf$zzc;->zzbkz()Lcom/google/android/gms/internal/zzdgf$zzb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzdgf$zzb;->zzbku()Lcom/google/android/gms/internal/zzdgf$zzd;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzdgf$zzd;->zzbld()Lcom/google/android/gms/internal/zzdfz;

    move-result-object v1

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzdgf$zzc;->zzbla()Lcom/google/android/gms/internal/zzeec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzeec;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzdgf$zzc;->zzblb()Lcom/google/android/gms/internal/zzeec;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzeec;->toByteArray()[B

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzdha;->zza(Lcom/google/android/gms/internal/zzdfz;[B[B)Ljava/security/interfaces/ECPublicKey;

    move-result-object v2

    new-instance v1, Lcom/google/android/gms/internal/zzdhl;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzdgf$zzd;->zzblf()Lcom/google/android/gms/internal/zzeec;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzeec;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzdgf$zzd;->zzble()Lcom/google/android/gms/internal/zzdgb;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/internal/zzdha;->zza(Lcom/google/android/gms/internal/zzdgb;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzdgf$zzc;->zzbkz()Lcom/google/android/gms/internal/zzdgf$zzb;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzdgf$zzb;->zzbkv()Lcom/google/android/gms/internal/zzdgf$zza;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzdgf$zza;->zzbkr()Lcom/google/android/gms/internal/zzdgt$zzc;

    move-result-object v5

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzdgf$zzc;->zzbkz()Lcom/google/android/gms/internal/zzdgf$zzb;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzdgf$zzb;->zzbkw()Lcom/google/android/gms/internal/zzdfx;

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/zzdhl;-><init>(Ljava/security/interfaces/ECPublicKey;[BLjava/lang/String;Lcom/google/android/gms/internal/zzdgt$zzc;Lcom/google/android/gms/internal/zzdfx;)V

    check-cast v1, Lcom/google/android/gms/internal/zzdgj;
    :try_end_1
    .catch Lcom/google/android/gms/internal/zzefj; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1
.end method


# virtual methods
.method public final getKeyType()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "type.googleapis.com/google.crypto.tink.EciesAeadHkdfPublicKey"

    return-object v0
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/zzefq;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/zzdgf$zzc;

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string/jumbo v1, "expected EciesAeadHkdfPublicKey proto"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/zzdgf$zzc;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdgf$zzc;->getVersion()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzdip;->zzq(II)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdgf$zzc;->zzbkz()Lcom/google/android/gms/internal/zzdgf$zzb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdgf$zzb;->zzbku()Lcom/google/android/gms/internal/zzdgf$zzd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzdgf$zzd;->zzbld()Lcom/google/android/gms/internal/zzdfz;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzdha;->zza(Lcom/google/android/gms/internal/zzdfz;)Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdgf$zzb;->zzbku()Lcom/google/android/gms/internal/zzdgf$zzd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzdgf$zzd;->zzble()Lcom/google/android/gms/internal/zzdgb;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzdha;->zza(Lcom/google/android/gms/internal/zzdgb;)Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdgf$zzb;->zzbkw()Lcom/google/android/gms/internal/zzdfx;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/zzdfx;->zzkzy:Lcom/google/android/gms/internal/zzdfx;

    if-ne v1, v2, :cond_1

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string/jumbo v1, "unknown EC point format"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v1, Lcom/google/android/gms/internal/zzdgs;->zzlcb:Lcom/google/android/gms/internal/zzdgs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdgf$zzb;->zzbkv()Lcom/google/android/gms/internal/zzdgf$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdgf$zza;->zzbkr()Lcom/google/android/gms/internal/zzdgt$zzc;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzdgs;->zza(Lcom/google/android/gms/internal/zzdgt$zzc;)Lcom/google/android/gms/internal/zzdgt$zzb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdgf$zzc;->zzbkz()Lcom/google/android/gms/internal/zzdgf$zzb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdgf$zzb;->zzbku()Lcom/google/android/gms/internal/zzdgf$zzd;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzdgf$zzd;->zzbld()Lcom/google/android/gms/internal/zzdfz;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdgf$zzc;->zzbla()Lcom/google/android/gms/internal/zzeec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzeec;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdgf$zzc;->zzblb()Lcom/google/android/gms/internal/zzeec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzeec;->toByteArray()[B

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzdha;->zza(Lcom/google/android/gms/internal/zzdfz;[B[B)Ljava/security/interfaces/ECPublicKey;

    move-result-object v1

    new-instance v0, Lcom/google/android/gms/internal/zzdhl;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzdgf$zzd;->zzblf()Lcom/google/android/gms/internal/zzeec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzeec;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzdgf$zzd;->zzble()Lcom/google/android/gms/internal/zzdgb;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/zzdha;->zza(Lcom/google/android/gms/internal/zzdgb;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdgf$zzc;->zzbkz()Lcom/google/android/gms/internal/zzdgf$zzb;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzdgf$zzb;->zzbkv()Lcom/google/android/gms/internal/zzdgf$zza;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzdgf$zza;->zzbkr()Lcom/google/android/gms/internal/zzdgt$zzc;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdgf$zzc;->zzbkz()Lcom/google/android/gms/internal/zzdgf$zzb;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzdgf$zzb;->zzbkw()Lcom/google/android/gms/internal/zzdfx;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzdhl;-><init>(Ljava/security/interfaces/ECPublicKey;[BLjava/lang/String;Lcom/google/android/gms/internal/zzdgt$zzc;Lcom/google/android/gms/internal/zzdfx;)V

    return-object v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/zzefq;)Lcom/google/android/gms/internal/zzefq;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string/jumbo v1, "Not implemented."

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final synthetic zzq(Lcom/google/android/gms/internal/zzeec;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzdhm;->zzz(Lcom/google/android/gms/internal/zzeec;)Lcom/google/android/gms/internal/zzdgj;

    move-result-object v0

    return-object v0
.end method

.method public final zzr(Lcom/google/android/gms/internal/zzeec;)Lcom/google/android/gms/internal/zzefq;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string/jumbo v1, "Not implemented."

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzs(Lcom/google/android/gms/internal/zzeec;)Lcom/google/android/gms/internal/zzdgt$zzb;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string/jumbo v1, "Not implemented."

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
