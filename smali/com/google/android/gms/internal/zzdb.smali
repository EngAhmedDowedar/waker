.class final Lcom/google/android/gms/internal/zzdb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzaip:Lcom/google/android/gms/internal/zzcz;

.field private synthetic zzaiq:I

.field private synthetic zzair:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcz;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdb;->zzaip:Lcom/google/android/gms/internal/zzcz;

    iput p2, p0, Lcom/google/android/gms/internal/zzdb;->zzaiq:I

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zzdb;->zzair:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdb;->zzaip:Lcom/google/android/gms/internal/zzcz;

    iget v1, p0, Lcom/google/android/gms/internal/zzdb;->zzaiq:I

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzdb;->zzair:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcz;->zzb(IZ)Lcom/google/android/gms/internal/zzaw;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdb;->zzaip:Lcom/google/android/gms/internal/zzcz;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzcz;->zza(Lcom/google/android/gms/internal/zzcz;Lcom/google/android/gms/internal/zzaw;)Lcom/google/android/gms/internal/zzaw;

    iget v1, p0, Lcom/google/android/gms/internal/zzdb;->zzaiq:I

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzcz;->zzb(ILcom/google/android/gms/internal/zzaw;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdb;->zzaip:Lcom/google/android/gms/internal/zzcz;

    iget v1, p0, Lcom/google/android/gms/internal/zzdb;->zzaiq:I

    add-int/lit8 v1, v1, 0x1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzdb;->zzair:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcz;->zza(IZ)V

    :cond_0
    return-void
.end method
