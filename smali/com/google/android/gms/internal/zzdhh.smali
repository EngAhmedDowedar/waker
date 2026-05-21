.class public final Lcom/google/android/gms/internal/zzdhh;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzdfo;


# static fields
.field private static final zzldu:[B


# instance fields
.field private final zzldv:Lcom/google/android/gms/internal/zzdgt$zzc;

.field private final zzldw:Lcom/google/android/gms/internal/zzdfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/google/android/gms/internal/zzdhh;->zzldu:[B

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/zzdgt$zzc;Lcom/google/android/gms/internal/zzdfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdhh;->zzldv:Lcom/google/android/gms/internal/zzdgt$zzc;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzdhh;->zzldw:Lcom/google/android/gms/internal/zzdfo;

    return-void
.end method


# virtual methods
.method public final zzd([B[B)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzdgs;->zzlcb:Lcom/google/android/gms/internal/zzdgs;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdhh;->zzldv:Lcom/google/android/gms/internal/zzdgt$zzc;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzdgs;->zzb(Lcom/google/android/gms/internal/zzdgt$zzc;)Lcom/google/android/gms/internal/zzefq;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzefq;->toByteArray()[B

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdhh;->zzldw:Lcom/google/android/gms/internal/zzdfo;

    sget-object v2, Lcom/google/android/gms/internal/zzdhh;->zzldu:[B

    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/internal/zzdfo;->zzd([B[B)[B

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/zzdgs;->zzlcb:Lcom/google/android/gms/internal/zzdgs;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzdhh;->zzldv:Lcom/google/android/gms/internal/zzdgt$zzc;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzdgt$zzc;->zzbmf()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/zzdgs;->zzf(Ljava/lang/String;[B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzdfo;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/zzdfo;->zzd([B[B)[B

    move-result-object v0

    array-length v2, v1

    add-int/lit8 v2, v2, 0x4

    array-length v3, v0

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    array-length v3, v1

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method
