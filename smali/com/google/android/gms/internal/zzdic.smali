.class public Lcom/google/android/gms/internal/zzdic;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T_WRAPPER::",
        "Lcom/google/android/gms/internal/zzdid",
        "<TT_ENGINE;>;T_ENGINE:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;

.field private static final zzlfb:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/security/Provider;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzlfc:Lcom/google/android/gms/internal/zzdic;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzdic",
            "<",
            "Lcom/google/android/gms/internal/zzdie;",
            "Ljavax/crypto/Cipher;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzlfd:Lcom/google/android/gms/internal/zzdic;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzdic",
            "<",
            "Lcom/google/android/gms/internal/zzdii;",
            "Ljavax/crypto/Mac;",
            ">;"
        }
    .end annotation
.end field

.field private static zzlfe:Lcom/google/android/gms/internal/zzdic;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzdic",
            "<",
            "Lcom/google/android/gms/internal/zzdik;",
            "Ljava/security/Signature;",
            ">;"
        }
    .end annotation
.end field

.field private static zzlff:Lcom/google/android/gms/internal/zzdic;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzdic",
            "<",
            "Lcom/google/android/gms/internal/zzdij;",
            "Ljava/security/MessageDigest;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzlfg:Lcom/google/android/gms/internal/zzdic;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzdic",
            "<",
            "Lcom/google/android/gms/internal/zzdif;",
            "Ljavax/crypto/KeyAgreement;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzlfh:Lcom/google/android/gms/internal/zzdic;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzdic",
            "<",
            "Lcom/google/android/gms/internal/zzdih;",
            "Ljava/security/KeyPairGenerator;",
            ">;"
        }
    .end annotation
.end field

.field private static zzlfi:Lcom/google/android/gms/internal/zzdic;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzdic",
            "<",
            "Lcom/google/android/gms/internal/zzdig;",
            "Ljava/security/KeyFactory;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzlfj:Lcom/google/android/gms/internal/zzdid;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT_WRAPPER;"
        }
    .end annotation
.end field

.field private zzlfk:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/security/Provider;",
            ">;"
        }
    .end annotation
.end field

.field private zzlfl:Z


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v1, 0x0

    const-class v0, Lcom/google/android/gms/internal/zzdic;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzdic;->logger:Ljava/util/logging/Logger;

    invoke-static {}, Lcom/google/android/gms/internal/zzdip;->zzaih()Z

    move-result v0

    if-eqz v0, :cond_2

    new-array v2, v12, [Ljava/lang/String;

    const-string/jumbo v0, "GmsCore_OpenSSL"

    aput-object v0, v2, v1

    const-string/jumbo v0, "AndroidOpenSSL"

    aput-object v0, v2, v11

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    :goto_0
    if-ge v0, v12, :cond_1

    aget-object v4, v2, v0

    invoke-static {v4}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v5, Lcom/google/android/gms/internal/zzdic;->logger:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string/jumbo v7, "com.google.crypto.tink.subtle.EngineFactory"

    const-string/jumbo v8, "toProviderList"

    const-string/jumbo v9, "Provider %s not available"

    new-array v10, v11, [Ljava/lang/Object;

    aput-object v4, v10, v1

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v6, v7, v8, v4}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    sput-object v3, Lcom/google/android/gms/internal/zzdic;->zzlfb:Ljava/util/List;

    :goto_2
    new-instance v0, Lcom/google/android/gms/internal/zzdic;

    new-instance v1, Lcom/google/android/gms/internal/zzdie;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzdie;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzdic;-><init>(Lcom/google/android/gms/internal/zzdid;)V

    sput-object v0, Lcom/google/android/gms/internal/zzdic;->zzlfc:Lcom/google/android/gms/internal/zzdic;

    new-instance v0, Lcom/google/android/gms/internal/zzdic;

    new-instance v1, Lcom/google/android/gms/internal/zzdii;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzdii;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzdic;-><init>(Lcom/google/android/gms/internal/zzdid;)V

    sput-object v0, Lcom/google/android/gms/internal/zzdic;->zzlfd:Lcom/google/android/gms/internal/zzdic;

    new-instance v0, Lcom/google/android/gms/internal/zzdic;

    new-instance v1, Lcom/google/android/gms/internal/zzdik;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzdik;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzdic;-><init>(Lcom/google/android/gms/internal/zzdid;)V

    sput-object v0, Lcom/google/android/gms/internal/zzdic;->zzlfe:Lcom/google/android/gms/internal/zzdic;

    new-instance v0, Lcom/google/android/gms/internal/zzdic;

    new-instance v1, Lcom/google/android/gms/internal/zzdij;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzdij;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzdic;-><init>(Lcom/google/android/gms/internal/zzdid;)V

    sput-object v0, Lcom/google/android/gms/internal/zzdic;->zzlff:Lcom/google/android/gms/internal/zzdic;

    new-instance v0, Lcom/google/android/gms/internal/zzdic;

    new-instance v1, Lcom/google/android/gms/internal/zzdif;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzdif;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzdic;-><init>(Lcom/google/android/gms/internal/zzdid;)V

    sput-object v0, Lcom/google/android/gms/internal/zzdic;->zzlfg:Lcom/google/android/gms/internal/zzdic;

    new-instance v0, Lcom/google/android/gms/internal/zzdic;

    new-instance v1, Lcom/google/android/gms/internal/zzdih;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzdih;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzdic;-><init>(Lcom/google/android/gms/internal/zzdid;)V

    sput-object v0, Lcom/google/android/gms/internal/zzdic;->zzlfh:Lcom/google/android/gms/internal/zzdic;

    new-instance v0, Lcom/google/android/gms/internal/zzdic;

    new-instance v1, Lcom/google/android/gms/internal/zzdig;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzdig;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzdic;-><init>(Lcom/google/android/gms/internal/zzdid;)V

    sput-object v0, Lcom/google/android/gms/internal/zzdic;->zzlfi:Lcom/google/android/gms/internal/zzdic;

    return-void

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzdic;->zzlfb:Ljava/util/List;

    goto :goto_2
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/zzdid;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_WRAPPER;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdic;->zzlfj:Lcom/google/android/gms/internal/zzdid;

    sget-object v0, Lcom/google/android/gms/internal/zzdic;->zzlfb:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdic;->zzlfk:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzdic;->zzlfl:Z

    return-void
.end method

.method private final zza(Ljava/lang/String;Ljava/security/Provider;)Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdic;->zzlfj:Lcom/google/android/gms/internal/zzdid;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/zzdid;->zzb(Ljava/lang/String;Ljava/security/Provider;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final zzoh(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT_ENGINE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdic;->zzlfk:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Provider;

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzdic;->zza(Ljava/lang/String;Ljava/security/Provider;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdic;->zzlfj:Lcom/google/android/gms/internal/zzdid;

    invoke-interface {v1, p1, v0}, Lcom/google/android/gms/internal/zzdid;->zzb(Ljava/lang/String;Ljava/security/Provider;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzdic;->zzlfl:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdic;->zzlfj:Lcom/google/android/gms/internal/zzdid;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/zzdid;->zzb(Ljava/lang/String;Ljava/security/Provider;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string/jumbo v1, "No good Provider found."

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
