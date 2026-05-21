.class public final Lcom/google/android/gms/internal/zzdio;
.super Ljava/lang/Object;


# static fields
.field private static final zzlfq:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzdio;->zzlfq:Ljava/security/SecureRandom;

    return-void
.end method

.method public static zzfp(I)[B
    .locals 2

    new-array v0, p0, [B

    sget-object v1, Lcom/google/android/gms/internal/zzdio;->zzlfq:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object v0
.end method
