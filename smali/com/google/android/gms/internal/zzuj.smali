.class final Lcom/google/android/gms/internal/zzuj;
.super Lcom/google/android/gms/internal/zzvd;


# instance fields
.field private synthetic zzcbz:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzuj;->zzcbz:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzvd;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzlt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/zzuj;->zzcbz:I

    return v0
.end method
