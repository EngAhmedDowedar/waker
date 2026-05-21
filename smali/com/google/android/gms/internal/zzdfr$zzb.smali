.class public final Lcom/google/android/gms/internal/zzdfr$zzb;
.super Lcom/google/android/gms/internal/zzeev;

# interfaces
.implements Lcom/google/android/gms/internal/zzefs;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzdfr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzdfr$zzb$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzeev",
        "<",
        "Lcom/google/android/gms/internal/zzdfr$zzb;",
        "Lcom/google/android/gms/internal/zzdfr$zzb$zza;",
        ">;",
        "Lcom/google/android/gms/internal/zzefs;"
    }
.end annotation


# static fields
.field private static volatile zzbaq:Lcom/google/android/gms/internal/zzefu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzefu",
            "<",
            "Lcom/google/android/gms/internal/zzdfr$zzb;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzkzn:Lcom/google/android/gms/internal/zzdfr$zzb;


# instance fields
.field private zzkzj:Lcom/google/android/gms/internal/zzdfr$zzc;

.field private zzkzm:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/internal/zzdfr$zzb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzdfr$zzb;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzdfr$zzb;->zzkzn:Lcom/google/android/gms/internal/zzdfr$zzb;

    sget v1, Lcom/google/android/gms/internal/zzefd;->zzncq:I

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/zzeev;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzeev;->zznce:Lcom/google/android/gms/internal/zzegi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzegi;->zzbht()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzeev;-><init>()V

    return-void
.end method

.method public static zzbka()Lcom/google/android/gms/internal/zzdfr$zzb;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzdfr$zzb;->zzkzn:Lcom/google/android/gms/internal/zzdfr$zzb;

    return-object v0
.end method

.method static synthetic zzbkb()Lcom/google/android/gms/internal/zzdfr$zzb;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzdfr$zzb;->zzkzn:Lcom/google/android/gms/internal/zzdfr$zzb;

    return-object v0
.end method

.method public static zzf(Lcom/google/android/gms/internal/zzeec;)Lcom/google/android/gms/internal/zzdfr$zzb;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzefj;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzdfr$zzb;->zzkzn:Lcom/google/android/gms/internal/zzdfr$zzb;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/zzeev;->zza(Lcom/google/android/gms/internal/zzeev;Lcom/google/android/gms/internal/zzeec;)Lcom/google/android/gms/internal/zzeev;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzdfr$zzb;

    return-object v0
.end method


# virtual methods
.method public final getKeySize()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzdfr$zzb;->zzkzm:I

    return v0
.end method

.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    sget-object v0, Lcom/google/android/gms/internal/zzdfs;->zzbao:[I

    add-int/lit8 v4, p1, -0x1

    aget v0, v0, v4

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :pswitch_0
    new-instance p0, Lcom/google/android/gms/internal/zzdfr$zzb;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzdfr$zzb;-><init>()V

    :goto_0
    return-object p0

    :pswitch_1
    sget-object p0, Lcom/google/android/gms/internal/zzdfr$zzb;->zzkzn:Lcom/google/android/gms/internal/zzdfr$zzb;

    goto :goto_0

    :pswitch_2
    move-object p0, v3

    goto :goto_0

    :pswitch_3
    new-instance p0, Lcom/google/android/gms/internal/zzdfr$zzb$zza;

    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/zzdfr$zzb$zza;-><init>(Lcom/google/android/gms/internal/zzdfs;)V

    goto :goto_0

    :pswitch_4
    check-cast p2, Lcom/google/android/gms/internal/zzefe;

    check-cast p3, Lcom/google/android/gms/internal/zzdfr$zzb;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdfr$zzb;->zzkzj:Lcom/google/android/gms/internal/zzdfr$zzc;

    iget-object v3, p3, Lcom/google/android/gms/internal/zzdfr$zzb;->zzkzj:Lcom/google/android/gms/internal/zzdfr$zzc;

    invoke-interface {p2, v0, v3}, Lcom/google/android/gms/internal/zzefe;->zza(Lcom/google/android/gms/internal/zzefq;Lcom/google/android/gms/internal/zzefq;)Lcom/google/android/gms/internal/zzefq;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzdfr$zzc;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdfr$zzb;->zzkzj:Lcom/google/android/gms/internal/zzdfr$zzc;

    iget v0, p0, Lcom/google/android/gms/internal/zzdfr$zzb;->zzkzm:I

    if-eqz v0, :cond_0

    move v0, v1

    :goto_1
    iget v3, p0, Lcom/google/android/gms/internal/zzdfr$zzb;->zzkzm:I

    iget v4, p3, Lcom/google/android/gms/internal/zzdfr$zzb;->zzkzm:I

    if-eqz v4, :cond_1

    :goto_2
    iget v2, p3, Lcom/google/android/gms/internal/zzdfr$zzb;->zzkzm:I

    invoke-interface {p2, v0, v3, v1, v2}, Lcom/google/android/gms/internal/zzefe;->zza(ZIZI)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzdfr$zzb;->zzkzm:I

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    move v1, v2

    goto :goto_2

    :pswitch_5
    check-cast p2, Lcom/google/android/gms/internal/zzeel;

    check-cast p3, Lcom/google/android/gms/internal/zzeer;

    move v4, v2

    :cond_2
    :goto_3
    if-nez v4, :cond_3

    :try_start_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzeel;->zzcby()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/zzeev;->zza(ILcom/google/android/gms/internal/zzeel;)Z

    move-result v0

    if-nez v0, :cond_2

    move v4, v1

    goto :goto_3

    :sswitch_0
    move v4, v1

    goto :goto_3

    :sswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdfr$zzb;->zzkzj:Lcom/google/android/gms/internal/zzdfr$zzc;

    if-eqz v0, :cond_6

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdfr$zzb;->zzkzj:Lcom/google/android/gms/internal/zzdfr$zzc;

    sget v0, Lcom/google/android/gms/internal/zzefd;->zzncs:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v0, v5, v6}, Lcom/google/android/gms/internal/zzeev;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzeew;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzeew;->zza(Lcom/google/android/gms/internal/zzeev;)Lcom/google/android/gms/internal/zzeew;

    check-cast v0, Lcom/google/android/gms/internal/zzeew;

    check-cast v0, Lcom/google/android/gms/internal/zzdfr$zzc$zza;

    move-object v2, v0

    :goto_4
    invoke-static {}, Lcom/google/android/gms/internal/zzdfr$zzc;->zzbkd()Lcom/google/android/gms/internal/zzdfr$zzc;

    move-result-object v0

    invoke-virtual {p2, v0, p3}, Lcom/google/android/gms/internal/zzeel;->zza(Lcom/google/android/gms/internal/zzeev;Lcom/google/android/gms/internal/zzeer;)Lcom/google/android/gms/internal/zzeev;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzdfr$zzc;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdfr$zzb;->zzkzj:Lcom/google/android/gms/internal/zzdfr$zzc;

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdfr$zzb;->zzkzj:Lcom/google/android/gms/internal/zzdfr$zzc;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzeew;->zza(Lcom/google/android/gms/internal/zzeev;)Lcom/google/android/gms/internal/zzeew;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzeew;->zzccz()Lcom/google/android/gms/internal/zzeev;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzeev;

    check-cast v0, Lcom/google/android/gms/internal/zzdfr$zzc;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdfr$zzb;->zzkzj:Lcom/google/android/gms/internal/zzdfr$zzc;
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzefj; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzefj;->zze(Lcom/google/android/gms/internal/zzefq;)Lcom/google/android/gms/internal/zzefj;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    throw v0

    :sswitch_2
    :try_start_2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzeel;->zzcce()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzdfr$zzb;->zzkzm:I
    :try_end_2
    .catch Lcom/google/android/gms/internal/zzefj; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catch_1
    move-exception v0

    :try_start_3
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Lcom/google/android/gms/internal/zzefj;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/zzefj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Lcom/google/android/gms/internal/zzefj;->zze(Lcom/google/android/gms/internal/zzefq;)Lcom/google/android/gms/internal/zzefj;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    :pswitch_6
    sget-object p0, Lcom/google/android/gms/internal/zzdfr$zzb;->zzkzn:Lcom/google/android/gms/internal/zzdfr$zzb;

    goto/16 :goto_0

    :pswitch_7
    sget-object v0, Lcom/google/android/gms/internal/zzdfr$zzb;->zzbaq:Lcom/google/android/gms/internal/zzefu;

    if-nez v0, :cond_5

    const-class v1, Lcom/google/android/gms/internal/zzdfr$zzb;

    monitor-enter v1

    :try_start_4
    sget-object v0, Lcom/google/android/gms/internal/zzdfr$zzb;->zzbaq:Lcom/google/android/gms/internal/zzefu;

    if-nez v0, :cond_4

    new-instance v0, Lcom/google/android/gms/internal/zzeex;

    sget-object v2, Lcom/google/android/gms/internal/zzdfr$zzb;->zzkzn:Lcom/google/android/gms/internal/zzdfr$zzb;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/zzeex;-><init>(Lcom/google/android/gms/internal/zzeev;)V

    sput-object v0, Lcom/google/android/gms/internal/zzdfr$zzb;->zzbaq:Lcom/google/android/gms/internal/zzefu;

    :cond_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_5
    sget-object p0, Lcom/google/android/gms/internal/zzdfr$zzb;->zzbaq:Lcom/google/android/gms/internal/zzefu;

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    :cond_6
    move-object v2, v3

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public final zza(Lcom/google/android/gms/internal/zzeeo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdfr$zzb;->zzkzj:Lcom/google/android/gms/internal/zzdfr$zzc;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdfr$zzb;->zzkzj:Lcom/google/android/gms/internal/zzdfr$zzc;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/internal/zzdfr$zzc;->zzbkd()Lcom/google/android/gms/internal/zzdfr$zzc;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/zzeeo;->zza(ILcom/google/android/gms/internal/zzefq;)V

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/zzdfr$zzb;->zzkzm:I

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget v1, p0, Lcom/google/android/gms/internal/zzdfr$zzb;->zzkzm:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzeeo;->zzw(II)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdfr$zzb;->zznce:Lcom/google/android/gms/internal/zzegi;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzegi;->zza(Lcom/google/android/gms/internal/zzeeo;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdfr$zzb;->zzkzj:Lcom/google/android/gms/internal/zzdfr$zzc;

    goto :goto_0
.end method

.method public final zzbjv()Lcom/google/android/gms/internal/zzdfr$zzc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdfr$zzb;->zzkzj:Lcom/google/android/gms/internal/zzdfr$zzc;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/zzdfr$zzc;->zzbkd()Lcom/google/android/gms/internal/zzdfr$zzc;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdfr$zzb;->zzkzj:Lcom/google/android/gms/internal/zzdfr$zzc;

    goto :goto_0
.end method

.method public final zzhi()I
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/zzdfr$zzb;->zzncf:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdfr$zzb;->zzkzj:Lcom/google/android/gms/internal/zzdfr$zzc;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdfr$zzb;->zzkzj:Lcom/google/android/gms/internal/zzdfr$zzc;

    if-nez v0, :cond_3

    invoke-static {}, Lcom/google/android/gms/internal/zzdfr$zzc;->zzbkd()Lcom/google/android/gms/internal/zzdfr$zzc;

    move-result-object v0

    :goto_1
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzeeo;->zzb(ILcom/google/android/gms/internal/zzefq;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    :cond_1
    iget v1, p0, Lcom/google/android/gms/internal/zzdfr$zzb;->zzkzm:I

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/internal/zzdfr$zzb;->zzkzm:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzeeo;->zzy(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/zzdfr$zzb;->zznce:Lcom/google/android/gms/internal/zzegi;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzegi;->zzhi()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/zzdfr$zzb;->zzncf:I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdfr$zzb;->zzkzj:Lcom/google/android/gms/internal/zzdfr$zzc;

    goto :goto_1
.end method
