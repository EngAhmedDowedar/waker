.class public final Lcom/google/android/gms/internal/zzdhi;
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

.method private final zzx(Lcom/google/android/gms/internal/zzeec;)Lcom/google/android/gms/internal/zzdfo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/zzdgm$zza;->zzt(Lcom/google/android/gms/internal/zzeec;)Lcom/google/android/gms/internal/zzdgm$zza;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/gms/internal/zzdgm$zza;

    if-nez v2, :cond_0

    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string/jumbo v2, "expected KmsEnvelopeAeadKey proto"

    invoke-direct {v1, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzefj; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/security/GeneralSecurityException;

    const-string/jumbo v3, "expected serialized KmSEnvelopeAeadKey proto"

    invoke-direct {v2, v3, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_0
    :try_start_1
    check-cast v1, Lcom/google/android/gms/internal/zzdgm$zza;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzdgm$zza;->getVersion()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzdip;->zzq(II)V

    sget-object v2, Lcom/google/android/gms/internal/zzdgs;->zzlcb:Lcom/google/android/gms/internal/zzdgs;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzdgm$zza;->zzblt()Lcom/google/android/gms/internal/zzdgm$zzc;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzdgm$zzc;->zzblx()Lcom/google/android/gms/internal/zzdgt$zzb;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzdgs;->zza(Lcom/google/android/gms/internal/zzdgt$zzb;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzdfo;

    new-instance v3, Lcom/google/android/gms/internal/zzdhh;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzdgm$zza;->zzblt()Lcom/google/android/gms/internal/zzdgm$zzc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzdgm$zzc;->zzbly()Lcom/google/android/gms/internal/zzdgt$zzc;

    move-result-object v1

    invoke-direct {v3, v1, v2}, Lcom/google/android/gms/internal/zzdhh;-><init>(Lcom/google/android/gms/internal/zzdgt$zzc;Lcom/google/android/gms/internal/zzdfo;)V

    move-object v0, v3

    check-cast v0, Lcom/google/android/gms/internal/zzdfo;

    move-object v1, v0
    :try_end_1
    .catch Lcom/google/android/gms/internal/zzefj; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1
.end method


# virtual methods
.method public final getKeyType()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey"

    return-object v0
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/zzefq;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/zzdgm$zza;

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string/jumbo v1, "expected KmsEnvelopeAeadKey proto"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/zzdgm$zza;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdgm$zza;->getVersion()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzdip;->zzq(II)V

    sget-object v0, Lcom/google/android/gms/internal/zzdgs;->zzlcb:Lcom/google/android/gms/internal/zzdgs;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdgm$zza;->zzblt()Lcom/google/android/gms/internal/zzdgm$zzc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzdgm$zzc;->zzblx()Lcom/google/android/gms/internal/zzdgt$zzb;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzdgs;->zza(Lcom/google/android/gms/internal/zzdgt$zzb;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzdfo;

    new-instance v1, Lcom/google/android/gms/internal/zzdhh;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdgm$zza;->zzblt()Lcom/google/android/gms/internal/zzdgm$zzc;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzdgm$zzc;->zzbly()Lcom/google/android/gms/internal/zzdgt$zzc;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/zzdhh;-><init>(Lcom/google/android/gms/internal/zzdgt$zzc;Lcom/google/android/gms/internal/zzdfo;)V

    return-object v1
.end method

.method public final zzb(Lcom/google/android/gms/internal/zzefq;)Lcom/google/android/gms/internal/zzefq;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/zzdgm$zzb;

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string/jumbo v1, "expected KmsEnvelopeAeadKeyFormat proto"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/zzdgm$zzb;

    invoke-static {}, Lcom/google/android/gms/internal/zzdgm$zza;->zzblu()Lcom/google/android/gms/internal/zzdgm$zza$zza;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdgm$zzb;->zzblt()Lcom/google/android/gms/internal/zzdgm$zzc;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzdgm$zza$zza;->zzb(Lcom/google/android/gms/internal/zzdgm$zzc;)Lcom/google/android/gms/internal/zzdgm$zza$zza;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzdgm$zza$zza;->zzfh(I)Lcom/google/android/gms/internal/zzdgm$zza$zza;

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

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzdhi;->zzx(Lcom/google/android/gms/internal/zzeec;)Lcom/google/android/gms/internal/zzdfo;

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
    invoke-static {p1}, Lcom/google/android/gms/internal/zzdgm$zzb;->zzu(Lcom/google/android/gms/internal/zzeec;)Lcom/google/android/gms/internal/zzdgm$zzb;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzdhi;->zzb(Lcom/google/android/gms/internal/zzefq;)Lcom/google/android/gms/internal/zzefq;
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzefj; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string/jumbo v2, "expected serialized KmsEnvelopeAeadKeyFormat proto"

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzdhi;->zzr(Lcom/google/android/gms/internal/zzeec;)Lcom/google/android/gms/internal/zzefq;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzdgm$zza;

    invoke-static {}, Lcom/google/android/gms/internal/zzdgt$zzb;->zzbmi()Lcom/google/android/gms/internal/zzdgt$zzb$zza;

    move-result-object v1

    const-string/jumbo v2, "type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzdgt$zzb$zza;->zzof(Ljava/lang/String;)Lcom/google/android/gms/internal/zzdgt$zzb$zza;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzedx;->zzcbp()Lcom/google/android/gms/internal/zzeec;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzdgt$zzb$zza;->zzw(Lcom/google/android/gms/internal/zzeec;)Lcom/google/android/gms/internal/zzdgt$zzb$zza;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/zzdgt$zzb$zzb;->zzlco:Lcom/google/android/gms/internal/zzdgt$zzb$zzb;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzdgt$zzb$zza;->zzb(Lcom/google/android/gms/internal/zzdgt$zzb$zzb;)Lcom/google/android/gms/internal/zzdgt$zzb$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeew;->zzcda()Lcom/google/android/gms/internal/zzeev;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzeev;

    check-cast v0, Lcom/google/android/gms/internal/zzdgt$zzb;

    return-object v0
.end method
