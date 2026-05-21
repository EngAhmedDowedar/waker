.class public final Lcom/google/android/gms/internal/zzdhd;
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


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-class v0, Lcom/google/android/gms/internal/zzdhd;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzdhd;->logger:Ljava/util/logging/Logger;

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzdgs;->zzlcb:Lcom/google/android/gms/internal/zzdgs;

    const-string/jumbo v1, "type.googleapis.com/google.crypto.tink.AesCtrKey"

    new-instance v2, Lcom/google/android/gms/internal/zzdhe;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzdhe;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzdgs;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzdgk;)Z

    invoke-static {}, Lcom/google/android/gms/internal/zzdhs;->zzbne()V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/google/android/gms/internal/zzdhd;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string/jumbo v3, "com.google.crypto.tink.aead.AesCtrHmacAeadKeyManager"

    const-string/jumbo v4, "<clinit>"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1e

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v5, "cannot register key managers: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v4, v0}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final zzx(Lcom/google/android/gms/internal/zzeec;)Lcom/google/android/gms/internal/zzdfo;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/zzdfp$zza;->zza(Lcom/google/android/gms/internal/zzeec;)Lcom/google/android/gms/internal/zzdfp$zza;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/gms/internal/zzdfp$zza;

    if-nez v2, :cond_0

    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string/jumbo v2, "expected AesCtrHmacAeadKey proto"

    invoke-direct {v1, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzefj; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/security/GeneralSecurityException;

    const-string/jumbo v3, "expected serialized AesCtrHmacAeadKey proto"

    invoke-direct {v2, v3, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_0
    :try_start_1
    check-cast v1, Lcom/google/android/gms/internal/zzdfp$zza;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzdfp$zza;->getVersion()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzdip;->zzq(II)V

    new-instance v4, Lcom/google/android/gms/internal/zzdib;

    sget-object v2, Lcom/google/android/gms/internal/zzdgs;->zzlcb:Lcom/google/android/gms/internal/zzdgs;

    const-string/jumbo v3, "type.googleapis.com/google.crypto.tink.AesCtrKey"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzdfp$zza;->zzbjo()Lcom/google/android/gms/internal/zzdfr$zza;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/google/android/gms/internal/zzdgs;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzefq;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzdim;

    sget-object v3, Lcom/google/android/gms/internal/zzdgs;->zzlcb:Lcom/google/android/gms/internal/zzdgs;

    const-string/jumbo v5, "type.googleapis.com/google.crypto.tink.HmacKey"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzdfp$zza;->zzbjp()Lcom/google/android/gms/internal/zzdgh$zza;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/google/android/gms/internal/zzdgs;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzefq;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/zzdgo;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzdfp$zza;->zzbjp()Lcom/google/android/gms/internal/zzdgh$zza;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzdgh$zza;->zzbli()Lcom/google/android/gms/internal/zzdgh$zzc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzdgh$zzc;->zzblp()I

    move-result v1

    invoke-direct {v4, v2, v3, v1}, Lcom/google/android/gms/internal/zzdib;-><init>(Lcom/google/android/gms/internal/zzdim;Lcom/google/android/gms/internal/zzdgo;I)V

    move-object v0, v4

    check-cast v0, Lcom/google/android/gms/internal/zzdfo;

    move-object v1, v0
    :try_end_1
    .catch Lcom/google/android/gms/internal/zzefj; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1
.end method


# virtual methods
.method public final getKeyType()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey"

    return-object v0
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/zzefq;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/zzdfp$zza;

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string/jumbo v1, "expected AesCtrHmacAeadKey proto"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/zzdfp$zza;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdfp$zza;->getVersion()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzdip;->zzq(II)V

    new-instance v2, Lcom/google/android/gms/internal/zzdib;

    sget-object v0, Lcom/google/android/gms/internal/zzdgs;->zzlcb:Lcom/google/android/gms/internal/zzdgs;

    const-string/jumbo v1, "type.googleapis.com/google.crypto.tink.AesCtrKey"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdfp$zza;->zzbjo()Lcom/google/android/gms/internal/zzdfr$zza;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/zzdgs;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzefq;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzdim;

    sget-object v1, Lcom/google/android/gms/internal/zzdgs;->zzlcb:Lcom/google/android/gms/internal/zzdgs;

    const-string/jumbo v3, "type.googleapis.com/google.crypto.tink.HmacKey"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdfp$zza;->zzbjp()Lcom/google/android/gms/internal/zzdgh$zza;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/internal/zzdgs;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzefq;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzdgo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdfp$zza;->zzbjp()Lcom/google/android/gms/internal/zzdgh$zza;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzdgh$zza;->zzbli()Lcom/google/android/gms/internal/zzdgh$zzc;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzdgh$zzc;->zzblp()I

    move-result v3

    invoke-direct {v2, v0, v1, v3}, Lcom/google/android/gms/internal/zzdib;-><init>(Lcom/google/android/gms/internal/zzdim;Lcom/google/android/gms/internal/zzdgo;I)V

    return-object v2
.end method

.method public final zzb(Lcom/google/android/gms/internal/zzefq;)Lcom/google/android/gms/internal/zzefq;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/zzdfp$zzb;

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string/jumbo v1, "expected AesCtrHmacAeadKeyFormat proto"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/zzdfp$zzb;

    sget-object v0, Lcom/google/android/gms/internal/zzdgs;->zzlcb:Lcom/google/android/gms/internal/zzdgs;

    const-string/jumbo v1, "type.googleapis.com/google.crypto.tink.AesCtrKey"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdfp$zzb;->zzbjs()Lcom/google/android/gms/internal/zzdfr$zzb;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzdgs;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzefq;)Lcom/google/android/gms/internal/zzefq;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzdfr$zza;

    sget-object v1, Lcom/google/android/gms/internal/zzdgs;->zzlcb:Lcom/google/android/gms/internal/zzdgs;

    const-string/jumbo v2, "type.googleapis.com/google.crypto.tink.HmacKey"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdfp$zzb;->zzbjt()Lcom/google/android/gms/internal/zzdgh$zzb;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzdgs;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzefq;)Lcom/google/android/gms/internal/zzefq;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzdgh$zza;

    invoke-static {}, Lcom/google/android/gms/internal/zzdfp$zza;->zzbjq()Lcom/google/android/gms/internal/zzdfp$zza$zza;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzdfp$zza$zza;->zzb(Lcom/google/android/gms/internal/zzdfr$zza;)Lcom/google/android/gms/internal/zzdfp$zza$zza;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzdfp$zza$zza;->zzb(Lcom/google/android/gms/internal/zzdgh$zza;)Lcom/google/android/gms/internal/zzdfp$zza$zza;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzdfp$zza$zza;->zzez(I)Lcom/google/android/gms/internal/zzdfp$zza$zza;

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

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzdhd;->zzx(Lcom/google/android/gms/internal/zzeec;)Lcom/google/android/gms/internal/zzdfo;

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
    invoke-static {p1}, Lcom/google/android/gms/internal/zzdfp$zzb;->zzb(Lcom/google/android/gms/internal/zzeec;)Lcom/google/android/gms/internal/zzdfp$zzb;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzdhd;->zzb(Lcom/google/android/gms/internal/zzefq;)Lcom/google/android/gms/internal/zzefq;
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzefj; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string/jumbo v2, "expected serialized AesCtrHmacAeadKeyFormat proto"

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzdhd;->zzr(Lcom/google/android/gms/internal/zzeec;)Lcom/google/android/gms/internal/zzefq;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzdfp$zza;

    invoke-static {}, Lcom/google/android/gms/internal/zzdgt$zzb;->zzbmi()Lcom/google/android/gms/internal/zzdgt$zzb$zza;

    move-result-object v1

    const-string/jumbo v2, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey"

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
