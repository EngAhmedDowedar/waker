.class public final Lcom/google/android/gms/internal/zzdhj;
.super Ljava/lang/Object;


# instance fields
.field private final zzldx:I

.field private final zzldy:I

.field private zzldz:Lcom/google/android/gms/internal/zzdfv$zza;

.field private zzlea:Lcom/google/android/gms/internal/zzdfp$zza;

.field private zzleb:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzdgt$zzc;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdgt$zzc;->zzbmf()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "type.googleapis.com/google.crypto.tink.AesGcmKey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdgt$zzc;->zzbmg()Lcom/google/android/gms/internal/zzeec;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdfv$zzb;->zzl(Lcom/google/android/gms/internal/zzeec;)Lcom/google/android/gms/internal/zzdfv$zzb;

    move-result-object v1

    sget v0, Lcom/google/android/gms/internal/zzdhk;->zzlec:I

    iput v0, p0, Lcom/google/android/gms/internal/zzdhj;->zzldx:I

    sget-object v0, Lcom/google/android/gms/internal/zzdgs;->zzlcb:Lcom/google/android/gms/internal/zzdgs;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzdgs;->zzb(Lcom/google/android/gms/internal/zzdgt$zzc;)Lcom/google/android/gms/internal/zzefq;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzdfv$zza;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdhj;->zzldz:Lcom/google/android/gms/internal/zzdfv$zza;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzdfv$zzb;->getKeySize()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzdhj;->zzldy:I
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzefj; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string/jumbo v2, "invalid KeyFormat protobuf, expected AesGcmKeyFormat"

    invoke-direct {v1, v2, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    const-string/jumbo v1, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdgt$zzc;->zzbmg()Lcom/google/android/gms/internal/zzeec;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdfp$zzb;->zzb(Lcom/google/android/gms/internal/zzeec;)Lcom/google/android/gms/internal/zzdfp$zzb;

    move-result-object v1

    sget v0, Lcom/google/android/gms/internal/zzdhk;->zzled:I

    iput v0, p0, Lcom/google/android/gms/internal/zzdhj;->zzldx:I

    sget-object v0, Lcom/google/android/gms/internal/zzdgs;->zzlcb:Lcom/google/android/gms/internal/zzdgs;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzdgs;->zzb(Lcom/google/android/gms/internal/zzdgt$zzc;)Lcom/google/android/gms/internal/zzefq;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzdfp$zza;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdhj;->zzlea:Lcom/google/android/gms/internal/zzdfp$zza;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzdfp$zzb;->zzbjs()Lcom/google/android/gms/internal/zzdfr$zzb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdfr$zzb;->getKeySize()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzdhj;->zzleb:I

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzdfp$zzb;->zzbjt()Lcom/google/android/gms/internal/zzdgh$zzb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdgh$zzb;->getKeySize()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/zzdhj;->zzleb:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/zzdhj;->zzldy:I
    :try_end_1
    .catch Lcom/google/android/gms/internal/zzefj; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string/jumbo v2, "invalid KeyFormat protobuf, expected AesGcmKeyFormat"

    invoke-direct {v1, v2, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string/jumbo v2, "unsupported AEAD DEM key type: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-direct {v1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public final zzag([B)Lcom/google/android/gms/internal/zzdfo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/zzdhj;->zzldx:I

    sget v1, Lcom/google/android/gms/internal/zzdhk;->zzlec:I

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/zzdfv$zza;->zzbkl()Lcom/google/android/gms/internal/zzdfv$zza$zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdhj;->zzldz:Lcom/google/android/gms/internal/zzdfv$zza;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzeew;->zza(Lcom/google/android/gms/internal/zzeev;)Lcom/google/android/gms/internal/zzeew;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzdfv$zza$zza;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzeec;->zzar([B)Lcom/google/android/gms/internal/zzeec;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzdfv$zza$zza;->zzk(Lcom/google/android/gms/internal/zzeec;)Lcom/google/android/gms/internal/zzdfv$zza$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeew;->zzcda()Lcom/google/android/gms/internal/zzeev;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzeev;

    check-cast v0, Lcom/google/android/gms/internal/zzdfv$zza;

    sget-object v1, Lcom/google/android/gms/internal/zzdgs;->zzlcb:Lcom/google/android/gms/internal/zzdgs;

    const-string/jumbo v2, "type.googleapis.com/google.crypto.tink.AesGcmKey"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzdgs;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzefq;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzdfo;

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/zzdhj;->zzldx:I

    sget v1, Lcom/google/android/gms/internal/zzdhk;->zzled:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/gms/internal/zzdhj;->zzleb:I

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    iget v0, p0, Lcom/google/android/gms/internal/zzdhj;->zzleb:I

    iget v2, p0, Lcom/google/android/gms/internal/zzdhj;->zzldy:I

    invoke-static {p1, v0, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/internal/zzdfr$zza;->zzbjx()Lcom/google/android/gms/internal/zzdfr$zza$zza;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/internal/zzdhj;->zzlea:Lcom/google/android/gms/internal/zzdfp$zza;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzdfp$zza;->zzbjo()Lcom/google/android/gms/internal/zzdfr$zza;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/zzeew;->zza(Lcom/google/android/gms/internal/zzeev;)Lcom/google/android/gms/internal/zzeew;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzdfr$zza$zza;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzeec;->zzar([B)Lcom/google/android/gms/internal/zzeec;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzdfr$zza$zza;->zze(Lcom/google/android/gms/internal/zzeec;)Lcom/google/android/gms/internal/zzdfr$zza$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeew;->zzcda()Lcom/google/android/gms/internal/zzeev;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzeev;

    check-cast v0, Lcom/google/android/gms/internal/zzdfr$zza;

    invoke-static {}, Lcom/google/android/gms/internal/zzdgh$zza;->zzblj()Lcom/google/android/gms/internal/zzdgh$zza$zza;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzdhj;->zzlea:Lcom/google/android/gms/internal/zzdfp$zza;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzdfp$zza;->zzbjp()Lcom/google/android/gms/internal/zzdgh$zza;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/zzeew;->zza(Lcom/google/android/gms/internal/zzeev;)Lcom/google/android/gms/internal/zzeew;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzdgh$zza$zza;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzeec;->zzar([B)Lcom/google/android/gms/internal/zzeec;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzdgh$zza$zza;->zzo(Lcom/google/android/gms/internal/zzeec;)Lcom/google/android/gms/internal/zzdgh$zza$zza;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzeew;->zzcda()Lcom/google/android/gms/internal/zzeev;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzeev;

    check-cast v1, Lcom/google/android/gms/internal/zzdgh$zza;

    invoke-static {}, Lcom/google/android/gms/internal/zzdfp$zza;->zzbjq()Lcom/google/android/gms/internal/zzdfp$zza$zza;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzdhj;->zzlea:Lcom/google/android/gms/internal/zzdfp$zza;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzdfp$zza;->getVersion()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzdfp$zza$zza;->zzez(I)Lcom/google/android/gms/internal/zzdfp$zza$zza;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzdfp$zza$zza;->zzb(Lcom/google/android/gms/internal/zzdfr$zza;)Lcom/google/android/gms/internal/zzdfp$zza$zza;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzdfp$zza$zza;->zzb(Lcom/google/android/gms/internal/zzdgh$zza;)Lcom/google/android/gms/internal/zzdfp$zza$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeew;->zzcda()Lcom/google/android/gms/internal/zzeev;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzeev;

    check-cast v0, Lcom/google/android/gms/internal/zzdfp$zza;

    sget-object v1, Lcom/google/android/gms/internal/zzdgs;->zzlcb:Lcom/google/android/gms/internal/zzdgs;

    const-string/jumbo v2, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzdgs;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzefq;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzdfo;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string/jumbo v1, "unknown DEM key type"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzbnf()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzdhj;->zzldy:I

    return v0
.end method
