.class public final Lcom/google/android/gms/internal/zzdia;
.super Ljava/lang/Object;


# instance fields
.field private final zzlew:Lcom/google/android/gms/internal/zzdil;

.field private final zzlex:Lcom/google/android/gms/internal/zzdil;


# direct methods
.method public constructor <init>([B[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/zzdil;->zzaj([B)Lcom/google/android/gms/internal/zzdil;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdia;->zzlew:Lcom/google/android/gms/internal/zzdil;

    invoke-static {p2}, Lcom/google/android/gms/internal/zzdil;->zzaj([B)Lcom/google/android/gms/internal/zzdil;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdia;->zzlex:Lcom/google/android/gms/internal/zzdil;

    return-void
.end method


# virtual methods
.method public final zzbnj()[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdia;->zzlew:Lcom/google/android/gms/internal/zzdil;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdia;->zzlew:Lcom/google/android/gms/internal/zzdil;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdil;->getBytes()[B

    move-result-object v0

    goto :goto_0
.end method

.method public final zzbnk()[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdia;->zzlex:Lcom/google/android/gms/internal/zzdil;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdia;->zzlex:Lcom/google/android/gms/internal/zzdil;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdil;->getBytes()[B

    move-result-object v0

    goto :goto_0
.end method
