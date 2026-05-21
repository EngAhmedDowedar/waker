.class final Lcom/google/android/gms/internal/zzdhl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzdgj;


# static fields
.field private static final zzldu:[B


# instance fields
.field private final zzlef:Lcom/google/android/gms/internal/zzdhz;

.field private final zzleg:Ljava/lang/String;

.field private final zzleh:[B

.field private final zzlei:Lcom/google/android/gms/internal/zzdhy;

.field private final zzlej:Lcom/google/android/gms/internal/zzdhj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/google/android/gms/internal/zzdhl;->zzldu:[B

    return-void
.end method

.method constructor <init>(Ljava/security/interfaces/ECPublicKey;[BLjava/lang/String;Lcom/google/android/gms/internal/zzdgt$zzc;Lcom/google/android/gms/internal/zzdfx;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v0

    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzdhw;->zza(Ljava/security/spec/ECPoint;Ljava/security/spec/EllipticCurve;)V

    new-instance v0, Lcom/google/android/gms/internal/zzdhz;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzdhz;-><init>(Ljava/security/interfaces/ECPublicKey;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdhl;->zzlef:Lcom/google/android/gms/internal/zzdhz;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzdhl;->zzleh:[B

    iput-object p3, p0, Lcom/google/android/gms/internal/zzdhl;->zzleg:Ljava/lang/String;

    invoke-static {p5}, Lcom/google/android/gms/internal/zzdha;->zza(Lcom/google/android/gms/internal/zzdfx;)Lcom/google/android/gms/internal/zzdhy;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdhl;->zzlei:Lcom/google/android/gms/internal/zzdhy;

    new-instance v0, Lcom/google/android/gms/internal/zzdhj;

    invoke-direct {v0, p4}, Lcom/google/android/gms/internal/zzdhj;-><init>(Lcom/google/android/gms/internal/zzdgt$zzc;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdhl;->zzlej:Lcom/google/android/gms/internal/zzdhj;

    return-void
.end method


# virtual methods
.method public final zzd([B[B)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdhl;->zzlef:Lcom/google/android/gms/internal/zzdhz;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdhl;->zzleg:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdhl;->zzleh:[B

    iget-object v3, p0, Lcom/google/android/gms/internal/zzdhl;->zzlej:Lcom/google/android/gms/internal/zzdhj;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzdhj;->zzbnf()I

    move-result v4

    iget-object v5, p0, Lcom/google/android/gms/internal/zzdhl;->zzlei:Lcom/google/android/gms/internal/zzdhy;

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/zzdhz;->zza(Ljava/lang/String;[B[BILcom/google/android/gms/internal/zzdhy;)Lcom/google/android/gms/internal/zzdia;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdhl;->zzlej:Lcom/google/android/gms/internal/zzdhj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdia;->zzbnk()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzdhj;->zzag([B)Lcom/google/android/gms/internal/zzdfo;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/zzdhl;->zzldu:[B

    invoke-interface {v1, p1, v2}, Lcom/google/android/gms/internal/zzdfo;->zzd([B[B)[B

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdia;->zzbnj()[B

    move-result-object v0

    array-length v2, v0

    array-length v3, v1

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method
