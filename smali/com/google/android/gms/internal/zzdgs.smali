.class public final Lcom/google/android/gms/internal/zzdgs;
.super Ljava/lang/Object;


# static fields
.field public static final zzlcb:Lcom/google/android/gms/internal/zzdgs;


# instance fields
.field private final zzlcc:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzdgk;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzdgs;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzdgs;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzdgs;->zzlcb:Lcom/google/android/gms/internal/zzdgs;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdgs;->zzlcc:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method private final zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzeec;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzeec;",
            ")TP;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzdgs;->zzod(Ljava/lang/String;)Lcom/google/android/gms/internal/zzdgk;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/zzdgk;->zzq(Lcom/google/android/gms/internal/zzeec;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private final zzod(Ljava/lang/String;)Lcom/google/android/gms/internal/zzdgk;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/zzdgk",
            "<TP;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdgs;->zzlcc:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzdgk;

    if-nez v0, :cond_1

    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string/jumbo v2, "unsupported key type: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {v1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzdgl;Lcom/google/android/gms/internal/zzdgk;)Lcom/google/android/gms/internal/zzdgq;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/zzdgl;",
            "Lcom/google/android/gms/internal/zzdgk",
            "<TP;>;)",
            "Lcom/google/android/gms/internal/zzdgq",
            "<TP;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdgl;->zzbls()Lcom/google/android/gms/internal/zzdgt$zzd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdgt$zzd;->zzbmp()I

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string/jumbo v1, "empty keyset"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdgt$zzd;->zzbmn()I

    move-result v4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdgt$zzd;->zzbmo()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzdgt$zzd$zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdgt$zzd$zzb;->zzbmr()Z

    move-result v6

    if-nez v6, :cond_1

    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string/jumbo v4, "key %d has no key data"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdgt$zzd$zzb;->zzbmu()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdgt$zzd$zzb;->zzbmv()Lcom/google/android/gms/internal/zzdgy;

    move-result-object v6

    sget-object v7, Lcom/google/android/gms/internal/zzdgy;->zzldk:Lcom/google/android/gms/internal/zzdgy;

    if-ne v6, v7, :cond_2

    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string/jumbo v4, "key %d has unknown prefix"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdgt$zzd$zzb;->zzbmu()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdgt$zzd$zzb;->zzbmt()Lcom/google/android/gms/internal/zzdgw;

    move-result-object v6

    sget-object v7, Lcom/google/android/gms/internal/zzdgw;->zzlcr:Lcom/google/android/gms/internal/zzdgw;

    if-ne v6, v7, :cond_3

    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string/jumbo v4, "key %d has unknown status"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdgt$zzd$zzb;->zzbmu()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdgt$zzd$zzb;->zzbmt()Lcom/google/android/gms/internal/zzdgw;

    move-result-object v6

    sget-object v7, Lcom/google/android/gms/internal/zzdgw;->zzlcs:Lcom/google/android/gms/internal/zzdgw;

    if-ne v6, v7, :cond_9

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdgt$zzd$zzb;->zzbmu()I

    move-result v0

    if-ne v0, v4, :cond_9

    if-eqz v1, :cond_4

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string/jumbo v1, "keyset contains multiple primary keys"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    move v0, v3

    :goto_1
    move v1, v0

    goto/16 :goto_0

    :cond_5
    if-nez v1, :cond_6

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string/jumbo v1, "keyset doesn\'t contain a valid primary key"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v1, Lcom/google/android/gms/internal/zzdgq;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzdgq;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdgl;->zzbls()Lcom/google/android/gms/internal/zzdgt$zzd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdgt$zzd;->zzbmo()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzdgt$zzd$zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdgt$zzd$zzb;->zzbmt()Lcom/google/android/gms/internal/zzdgw;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/zzdgw;->zzlcs:Lcom/google/android/gms/internal/zzdgw;

    if-ne v3, v4, :cond_7

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdgt$zzd$zzb;->zzbms()Lcom/google/android/gms/internal/zzdgt$zzb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzdgt$zzb;->zzbmf()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdgt$zzd$zzb;->zzbms()Lcom/google/android/gms/internal/zzdgt$zzb;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzdgt$zzb;->zzbmg()Lcom/google/android/gms/internal/zzeec;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/google/android/gms/internal/zzdgs;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzeec;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Lcom/google/android/gms/internal/zzdgq;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/zzdgt$zzd$zzb;)Lcom/google/android/gms/internal/zzdgr;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdgt$zzd$zzb;->zzbmu()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdgl;->zzbls()Lcom/google/android/gms/internal/zzdgt$zzd;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzdgt$zzd;->zzbmn()I

    move-result v4

    if-ne v0, v4, :cond_7

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/zzdgq;->zza(Lcom/google/android/gms/internal/zzdgr;)V

    goto :goto_2

    :cond_8
    return-object v1

    :cond_9
    move v0, v1

    goto :goto_1
.end method

.method public final zza(Lcom/google/android/gms/internal/zzdgt$zzc;)Lcom/google/android/gms/internal/zzdgt$zzb;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/zzdgt$zzc;",
            ")",
            "Lcom/google/android/gms/internal/zzdgt$zzb;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdgt$zzc;->zzbmf()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzdgs;->zzod(Ljava/lang/String;)Lcom/google/android/gms/internal/zzdgk;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdgt$zzc;->zzbmg()Lcom/google/android/gms/internal/zzeec;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzdgk;->zzs(Lcom/google/android/gms/internal/zzeec;)Lcom/google/android/gms/internal/zzdgt$zzb;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzefq;)Lcom/google/android/gms/internal/zzefq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzefq;",
            ")",
            "Lcom/google/android/gms/internal/zzefq;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzdgs;->zzod(Ljava/lang/String;)Lcom/google/android/gms/internal/zzdgk;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/zzdgk;->zzb(Lcom/google/android/gms/internal/zzefq;)Lcom/google/android/gms/internal/zzefq;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzdgt$zzb;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/zzdgt$zzb;",
            ")TP;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdgt$zzb;->zzbmf()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdgt$zzb;->zzbmg()Lcom/google/android/gms/internal/zzeec;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/zzdgs;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzeec;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzdgk;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzdgk",
            "<TP;>;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "key manager must be non-null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdgs;->zzlcc:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzdgk;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final zzb(Lcom/google/android/gms/internal/zzdgt$zzc;)Lcom/google/android/gms/internal/zzefq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/zzdgt$zzc;",
            ")",
            "Lcom/google/android/gms/internal/zzefq;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdgt$zzc;->zzbmf()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzdgs;->zzod(Ljava/lang/String;)Lcom/google/android/gms/internal/zzdgk;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdgt$zzc;->zzbmg()Lcom/google/android/gms/internal/zzeec;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzdgk;->zzr(Lcom/google/android/gms/internal/zzeec;)Lcom/google/android/gms/internal/zzefq;

    move-result-object v0

    return-object v0
.end method

.method public final zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzefq;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzefq;",
            ")TP;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzdgs;->zzod(Ljava/lang/String;)Lcom/google/android/gms/internal/zzdgk;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/zzdgk;->zza(Lcom/google/android/gms/internal/zzefq;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final zzf(Ljava/lang/String;[B)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[B)TP;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    invoke-static {p2}, Lcom/google/android/gms/internal/zzeec;->zzar([B)Lcom/google/android/gms/internal/zzeec;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzdgs;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzeec;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
