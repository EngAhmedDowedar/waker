.class final Lcom/google/android/gms/internal/zzyp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzcmd:Lcom/google/android/gms/internal/zzym;

.field private synthetic zzcmf:Lcom/google/android/gms/internal/zzajy;

.field private synthetic zzcmg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzym;Lcom/google/android/gms/internal/zzajy;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzyp;->zzcmd:Lcom/google/android/gms/internal/zzym;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzyp;->zzcmf:Lcom/google/android/gms/internal/zzajy;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzyp;->zzcmg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzyp;->zzcmf:Lcom/google/android/gms/internal/zzajy;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzyp;->zzcmd:Lcom/google/android/gms/internal/zzym;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzym;->zzb(Lcom/google/android/gms/internal/zzym;)Lcom/google/android/gms/ads/internal/zzbc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzbc;->zzdm()Landroid/support/v4/util/SimpleArrayMap;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzyp;->zzcmg:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpz;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzajy;->set(Ljava/lang/Object;)V

    return-void
.end method
