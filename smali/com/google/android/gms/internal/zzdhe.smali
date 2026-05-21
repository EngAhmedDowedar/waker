.class final Lcom/google/android/gms/internal/zzdhe;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzdgk;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzdgk",
        "<",
        "Lcom/google/android/gms/internal/zzdim;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static zzc(Lcom/google/android/gms/internal/zzdfr$zzc;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzdfr$zzc;->zzbkc()I

    move-result v0

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzdfr$zzc;->zzbkc()I

    move-result v0

    const/16 v1, 0x10

    if-le v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string/jumbo v1, "invalid IV size"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private final zzy(Lcom/google/android/gms/internal/zzeec;)Lcom/google/android/gms/internal/zzdht;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/zzdfr$zza;->zzd(Lcom/google/android/gms/internal/zzeec;)Lcom/google/android/gms/internal/zzdfr$zza;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/gms/internal/zzdfr$zza;

    if-nez v2, :cond_0

    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string/jumbo v2, "expected AesCtrKey proto"

    invoke-direct {v1, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzefj; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/security/GeneralSecurityException;

    const-string/jumbo v3, "expected serialized AesCtrKey proto"

    invoke-direct {v2, v3, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_0
    :try_start_1
    check-cast v1, Lcom/google/android/gms/internal/zzdfr$zza;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzdfr$zza;->getVersion()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzdip;->zzq(II)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzdfr$zza;->zzbjw()Lcom/google/android/gms/internal/zzeec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzeec;->size()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/zzdip;->zzfq(I)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzdfr$zza;->zzbjv()Lcom/google/android/gms/internal/zzdfr$zzc;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/zzdhe;->zzc(Lcom/google/android/gms/internal/zzdfr$zzc;)V

    new-instance v2, Lcom/google/android/gms/internal/zzdht;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzdfr$zza;->zzbjw()Lcom/google/android/gms/internal/zzeec;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzeec;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzdfr$zza;->zzbjv()Lcom/google/android/gms/internal/zzdfr$zzc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzdfr$zzc;->zzbkc()I

    move-result v1

    invoke-direct {v2, v3, v1}, Lcom/google/android/gms/internal/zzdht;-><init>([BI)V

    move-object v0, v2

    check-cast v0, Lcom/google/android/gms/internal/zzdht;

    move-object v1, v0
    :try_end_1
    .catch Lcom/google/android/gms/internal/zzefj; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1
.end method


# virtual methods
.method public final getKeyType()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "type.googleapis.com/google.crypto.tink.AesCtrKey"

    return-object v0
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/zzefq;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/zzdfr$zza;

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string/jumbo v1, "expected AesCtrKey proto"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/zzdfr$zza;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdfr$zza;->getVersion()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzdip;->zzq(II)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdfr$zza;->zzbjw()Lcom/google/android/gms/internal/zzeec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeec;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdip;->zzfq(I)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdfr$zza;->zzbjv()Lcom/google/android/gms/internal/zzdfr$zzc;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdhe;->zzc(Lcom/google/android/gms/internal/zzdfr$zzc;)V

    new-instance v0, Lcom/google/android/gms/internal/zzdht;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdfr$zza;->zzbjw()Lcom/google/android/gms/internal/zzeec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzeec;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdfr$zza;->zzbjv()Lcom/google/android/gms/internal/zzdfr$zzc;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzdfr$zzc;->zzbkc()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzdht;-><init>([BI)V

    return-object v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/zzefq;)Lcom/google/android/gms/internal/zzefq;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/zzdfr$zzb;

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string/jumbo v1, "expected AesCtrKeyFormat proto"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/zzdfr$zzb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdfr$zzb;->getKeySize()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdip;->zzfq(I)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdfr$zzb;->zzbjv()Lcom/google/android/gms/internal/zzdfr$zzc;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdhe;->zzc(Lcom/google/android/gms/internal/zzdfr$zzc;)V

    invoke-static {}, Lcom/google/android/gms/internal/zzdfr$zza;->zzbjx()Lcom/google/android/gms/internal/zzdfr$zza$zza;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdfr$zzb;->zzbjv()Lcom/google/android/gms/internal/zzdfr$zzc;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzdfr$zza$zza;->zzb(Lcom/google/android/gms/internal/zzdfr$zzc;)Lcom/google/android/gms/internal/zzdfr$zza$zza;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdfr$zzb;->getKeySize()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzdio;->zzfp(I)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzeec;->zzar([B)Lcom/google/android/gms/internal/zzeec;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzdfr$zza$zza;->zze(Lcom/google/android/gms/internal/zzeec;)Lcom/google/android/gms/internal/zzdfr$zza$zza;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzdfr$zza$zza;->zzfa(I)Lcom/google/android/gms/internal/zzdfr$zza$zza;

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

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzdhe;->zzy(Lcom/google/android/gms/internal/zzeec;)Lcom/google/android/gms/internal/zzdht;

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
    invoke-static {p1}, Lcom/google/android/gms/internal/zzdfr$zzb;->zzf(Lcom/google/android/gms/internal/zzeec;)Lcom/google/android/gms/internal/zzdfr$zzb;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzdhe;->zzb(Lcom/google/android/gms/internal/zzefq;)Lcom/google/android/gms/internal/zzefq;
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzefj; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string/jumbo v2, "expected serialized AesCtrKeyFormat proto"

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzdhe;->zzr(Lcom/google/android/gms/internal/zzeec;)Lcom/google/android/gms/internal/zzefq;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzdfr$zza;

    invoke-static {}, Lcom/google/android/gms/internal/zzdgt$zzb;->zzbmi()Lcom/google/android/gms/internal/zzdgt$zzb$zza;

    move-result-object v1

    const-string/jumbo v2, "type.googleapis.com/google.crypto.tink.AesCtrKey"

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
