.class public final Lcom/google/android/gms/internal/zzdhq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzdgk;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzdgk",
        "<",
        "Lcom/google/android/gms/internal/zzdgo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final zzaa(Lcom/google/android/gms/internal/zzeec;)Lcom/google/android/gms/internal/zzdgo;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/zzdgh$zza;->zzn(Lcom/google/android/gms/internal/zzeec;)Lcom/google/android/gms/internal/zzdgh$zza;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/zzdgh$zza;

    if-nez v1, :cond_0

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string/jumbo v1, "expected HmacKey proto"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzefj; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string/jumbo v2, "expected serialized HmacKey proto"

    invoke-direct {v1, v2, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    :try_start_1
    check-cast v0, Lcom/google/android/gms/internal/zzdgh$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdgh$zza;->getVersion()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzdip;->zzq(II)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdgh$zza;->zzbjw()Lcom/google/android/gms/internal/zzeec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzeec;->size()I

    move-result v1

    const/16 v2, 0x10

    if-ge v1, v2, :cond_1

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string/jumbo v1, "key too short"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdgh$zza;->zzbli()Lcom/google/android/gms/internal/zzdgh$zzc;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzdhq;->zzc(Lcom/google/android/gms/internal/zzdgh$zzc;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdgh$zza;->zzbli()Lcom/google/android/gms/internal/zzdgh$zzc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzdgh$zzc;->zzblo()Lcom/google/android/gms/internal/zzdgb;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdgh$zza;->zzbjw()Lcom/google/android/gms/internal/zzeec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzeec;->toByteArray()[B

    move-result-object v2

    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v4, "HMAC"

    invoke-direct {v3, v2, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdgh$zza;->zzbli()Lcom/google/android/gms/internal/zzdgh$zzc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdgh$zzc;->zzblp()I

    move-result v2

    sget-object v0, Lcom/google/android/gms/internal/zzdhr;->zzlds:[I

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzdgb;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string/jumbo v1, "unknown hash"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/zzdin;

    const-string/jumbo v1, "HMACSHA1"

    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/gms/internal/zzdin;-><init>(Ljava/lang/String;Ljava/security/Key;I)V

    :goto_0
    check-cast v0, Lcom/google/android/gms/internal/zzdgo;

    return-object v0

    :pswitch_1
    new-instance v0, Lcom/google/android/gms/internal/zzdin;

    const-string/jumbo v1, "HMACSHA256"

    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/gms/internal/zzdin;-><init>(Ljava/lang/String;Ljava/security/Key;I)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/google/android/gms/internal/zzdin;

    const-string/jumbo v1, "HMACSHA512"

    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/gms/internal/zzdin;-><init>(Ljava/lang/String;Ljava/security/Key;I)V
    :try_end_1
    .catch Lcom/google/android/gms/internal/zzefj; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static zzc(Lcom/google/android/gms/internal/zzdgh$zzc;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzdgh$zzc;->zzblp()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string/jumbo v1, "tag size too small"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/zzdhr;->zzlds:[I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzdgh$zzc;->zzblo()Lcom/google/android/gms/internal/zzdgb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzdgb;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string/jumbo v1, "unknown hash type"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzdgh$zzc;->zzblp()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_1

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string/jumbo v1, "tag size too big"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzdgh$zzc;->zzblp()I

    move-result v0

    const/16 v1, 0x20

    if-le v0, v1, :cond_1

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string/jumbo v1, "tag size too big"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzdgh$zzc;->zzblp()I

    move-result v0

    const/16 v1, 0x40

    if-le v0, v1, :cond_1

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string/jumbo v1, "tag size too big"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public final getKeyType()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "type.googleapis.com/google.crypto.tink.HmacKey"

    return-object v0
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/zzefq;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/zzdgh$zza;

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string/jumbo v1, "expected HmacKey proto"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/zzdgh$zza;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdgh$zza;->getVersion()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzdip;->zzq(II)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdgh$zza;->zzbjw()Lcom/google/android/gms/internal/zzeec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeec;->size()I

    move-result v0

    const/16 v1, 0x10

    if-ge v0, v1, :cond_1

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string/jumbo v1, "key too short"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdgh$zza;->zzbli()Lcom/google/android/gms/internal/zzdgh$zzc;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdhq;->zzc(Lcom/google/android/gms/internal/zzdgh$zzc;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdgh$zza;->zzbli()Lcom/google/android/gms/internal/zzdgh$zzc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdgh$zzc;->zzblo()Lcom/google/android/gms/internal/zzdgb;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdgh$zza;->zzbjw()Lcom/google/android/gms/internal/zzeec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzeec;->toByteArray()[B

    move-result-object v1

    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v3, "HMAC"

    invoke-direct {v2, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdgh$zza;->zzbli()Lcom/google/android/gms/internal/zzdgh$zzc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzdgh$zzc;->zzblp()I

    move-result v1

    sget-object v3, Lcom/google/android/gms/internal/zzdhr;->zzlds:[I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdgb;->ordinal()I

    move-result v0

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string/jumbo v1, "unknown hash"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/zzdin;

    const-string/jumbo v3, "HMACSHA1"

    invoke-direct {v0, v3, v2, v1}, Lcom/google/android/gms/internal/zzdin;-><init>(Ljava/lang/String;Ljava/security/Key;I)V

    :goto_0
    return-object v0

    :pswitch_1
    new-instance v0, Lcom/google/android/gms/internal/zzdin;

    const-string/jumbo v3, "HMACSHA256"

    invoke-direct {v0, v3, v2, v1}, Lcom/google/android/gms/internal/zzdin;-><init>(Ljava/lang/String;Ljava/security/Key;I)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/google/android/gms/internal/zzdin;

    const-string/jumbo v3, "HMACSHA512"

    invoke-direct {v0, v3, v2, v1}, Lcom/google/android/gms/internal/zzdin;-><init>(Ljava/lang/String;Ljava/security/Key;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final zzb(Lcom/google/android/gms/internal/zzefq;)Lcom/google/android/gms/internal/zzefq;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/zzdgh$zzb;

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string/jumbo v1, "expected HmacKeyFormat proto"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/zzdgh$zzb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdgh$zzb;->getKeySize()I

    move-result v0

    const/16 v1, 0x10

    if-ge v0, v1, :cond_1

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string/jumbo v1, "key too short"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdgh$zzb;->zzbli()Lcom/google/android/gms/internal/zzdgh$zzc;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdhq;->zzc(Lcom/google/android/gms/internal/zzdgh$zzc;)V

    invoke-static {}, Lcom/google/android/gms/internal/zzdgh$zza;->zzblj()Lcom/google/android/gms/internal/zzdgh$zza$zza;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzdgh$zza$zza;->zzfg(I)Lcom/google/android/gms/internal/zzdgh$zza$zza;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdgh$zzb;->zzbli()Lcom/google/android/gms/internal/zzdgh$zzc;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzdgh$zza$zza;->zzb(Lcom/google/android/gms/internal/zzdgh$zzc;)Lcom/google/android/gms/internal/zzdgh$zza$zza;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdgh$zzb;->getKeySize()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzdio;->zzfp(I)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzeec;->zzar([B)Lcom/google/android/gms/internal/zzeec;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzdgh$zza$zza;->zzo(Lcom/google/android/gms/internal/zzeec;)Lcom/google/android/gms/internal/zzdgh$zza$zza;

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

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzdhq;->zzaa(Lcom/google/android/gms/internal/zzeec;)Lcom/google/android/gms/internal/zzdgo;

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
    invoke-static {p1}, Lcom/google/android/gms/internal/zzdgh$zzb;->zzp(Lcom/google/android/gms/internal/zzeec;)Lcom/google/android/gms/internal/zzdgh$zzb;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzdhq;->zzb(Lcom/google/android/gms/internal/zzefq;)Lcom/google/android/gms/internal/zzefq;
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzefj; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string/jumbo v2, "expected serialized HmacKeyFormat proto"

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzdhq;->zzr(Lcom/google/android/gms/internal/zzeec;)Lcom/google/android/gms/internal/zzefq;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzdgh$zza;

    invoke-static {}, Lcom/google/android/gms/internal/zzdgt$zzb;->zzbmi()Lcom/google/android/gms/internal/zzdgt$zzb$zza;

    move-result-object v1

    const-string/jumbo v2, "type.googleapis.com/google.crypto.tink.HmacKey"

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
