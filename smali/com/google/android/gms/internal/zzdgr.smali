.class public final Lcom/google/android/gms/internal/zzdgr;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final zzlbx:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TP;"
        }
    .end annotation
.end field

.field private final zzlby:Lcom/google/android/gms/internal/zzdil;

.field private final zzlbz:Lcom/google/android/gms/internal/zzdgw;

.field private final zzlca:Lcom/google/android/gms/internal/zzdgy;


# direct methods
.method public constructor <init>(Ljava/lang/Object;[BLcom/google/android/gms/internal/zzdgw;Lcom/google/android/gms/internal/zzdgy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;[B",
            "Lcom/google/android/gms/internal/zzdgw;",
            "Lcom/google/android/gms/internal/zzdgy;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdgr;->zzlbx:Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/internal/zzdil;->zzaj([B)Lcom/google/android/gms/internal/zzdil;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdgr;->zzlby:Lcom/google/android/gms/internal/zzdil;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzdgr;->zzlbz:Lcom/google/android/gms/internal/zzdgw;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzdgr;->zzlca:Lcom/google/android/gms/internal/zzdgy;

    return-void
.end method


# virtual methods
.method public final zzbmc()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TP;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdgr;->zzlbx:Ljava/lang/Object;

    return-object v0
.end method

.method public final zzbmd()[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdgr;->zzlby:Lcom/google/android/gms/internal/zzdil;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdgr;->zzlby:Lcom/google/android/gms/internal/zzdil;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdil;->getBytes()[B

    move-result-object v0

    goto :goto_0
.end method
