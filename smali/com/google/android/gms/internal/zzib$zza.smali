.class public final Lcom/google/android/gms/internal/zzib$zza;
.super Lcom/google/android/gms/internal/zzeev;

# interfaces
.implements Lcom/google/android/gms/internal/zzefs;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzib$zza$zza;,
        Lcom/google/android/gms/internal/zzib$zza$zzb;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzeev",
        "<",
        "Lcom/google/android/gms/internal/zzib$zza;",
        "Lcom/google/android/gms/internal/zzib$zza$zza;",
        ">;",
        "Lcom/google/android/gms/internal/zzefs;"
    }
.end annotation


# static fields
.field private static final zzbap:Lcom/google/android/gms/internal/zzib$zza;

.field private static volatile zzbaq:Lcom/google/android/gms/internal/zzefu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzefu",
            "<",
            "Lcom/google/android/gms/internal/zzib$zza;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/internal/zzib$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzib$zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzib$zza;->zzbap:Lcom/google/android/gms/internal/zzib$zza;

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

.method static synthetic zzhj()Lcom/google/android/gms/internal/zzib$zza;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzib$zza;->zzbap:Lcom/google/android/gms/internal/zzib$zza;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    sget-object v2, Lcom/google/android/gms/internal/zzic;->zzbao:[I

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :pswitch_0
    new-instance p0, Lcom/google/android/gms/internal/zzib$zza;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzib$zza;-><init>()V

    :goto_0
    :pswitch_1
    return-object p0

    :pswitch_2
    sget-object p0, Lcom/google/android/gms/internal/zzib$zza;->zzbap:Lcom/google/android/gms/internal/zzib$zza;

    goto :goto_0

    :pswitch_3
    move-object p0, v0

    goto :goto_0

    :pswitch_4
    new-instance p0, Lcom/google/android/gms/internal/zzib$zza$zza;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzib$zza$zza;-><init>(Lcom/google/android/gms/internal/zzic;)V

    goto :goto_0

    :pswitch_5
    check-cast p2, Lcom/google/android/gms/internal/zzeel;

    const/4 v0, 0x0

    :cond_0
    :goto_1
    if-nez v0, :cond_1

    :try_start_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzeel;->zzcby()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    invoke-virtual {p0, v2, p2}, Lcom/google/android/gms/internal/zzeev;->zza(ILcom/google/android/gms/internal/zzeel;)Z
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzefj; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_1

    :pswitch_6
    move v0, v1

    goto :goto_1

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

    :catch_1
    move-exception v0

    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Lcom/google/android/gms/internal/zzefj;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/zzefj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Lcom/google/android/gms/internal/zzefj;->zze(Lcom/google/android/gms/internal/zzefq;)Lcom/google/android/gms/internal/zzefj;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :pswitch_7
    sget-object p0, Lcom/google/android/gms/internal/zzib$zza;->zzbap:Lcom/google/android/gms/internal/zzib$zza;

    goto :goto_0

    :pswitch_8
    sget-object v0, Lcom/google/android/gms/internal/zzib$zza;->zzbaq:Lcom/google/android/gms/internal/zzefu;

    if-nez v0, :cond_3

    const-class v1, Lcom/google/android/gms/internal/zzib$zza;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/gms/internal/zzib$zza;->zzbaq:Lcom/google/android/gms/internal/zzefu;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/zzeex;

    sget-object v2, Lcom/google/android/gms/internal/zzib$zza;->zzbap:Lcom/google/android/gms/internal/zzib$zza;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/zzeex;-><init>(Lcom/google/android/gms/internal/zzeev;)V

    sput-object v0, Lcom/google/android/gms/internal/zzib$zza;->zzbaq:Lcom/google/android/gms/internal/zzefu;

    :cond_2
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_3
    sget-object p0, Lcom/google/android/gms/internal/zzib$zza;->zzbaq:Lcom/google/android/gms/internal/zzefu;

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_5
        :pswitch_7
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch
.end method

.method public final zza(Lcom/google/android/gms/internal/zzeeo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzib$zza;->zznce:Lcom/google/android/gms/internal/zzegi;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzegi;->zza(Lcom/google/android/gms/internal/zzeeo;)V

    return-void
.end method

.method public final zzhi()I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/zzib$zza;->zzncf:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzib$zza;->zznce:Lcom/google/android/gms/internal/zzegi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzegi;->zzhi()I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzib$zza;->zzncf:I

    goto :goto_0
.end method
