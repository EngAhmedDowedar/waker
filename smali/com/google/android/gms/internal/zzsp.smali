.class final Lcom/google/android/gms/internal/zzsp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zztk;


# instance fields
.field private synthetic zzbww:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzsn;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/gms/internal/zzsp;->zzbww:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/zztl;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p1, Lcom/google/android/gms/internal/zztl;->zzaof:Lcom/google/android/gms/internal/zzjn;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/zztl;->zzaof:Lcom/google/android/gms/internal/zzjn;

    iget v1, p0, Lcom/google/android/gms/internal/zzsp;->zzbww:I

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzjn;->onAdFailedToLoad(I)V

    :cond_0
    return-void
.end method
