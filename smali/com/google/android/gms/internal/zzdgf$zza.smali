.class public final Lcom/google/android/gms/internal/zzdgf$zza;
.super Lcom/google/android/gms/internal/zzeev;

# interfaces
.implements Lcom/google/android/gms/internal/zzefs;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzdgf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzdgf$zza$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzeev",
        "<",
        "Lcom/google/android/gms/internal/zzdgf$zza;",
        "Lcom/google/android/gms/internal/zzdgf$zza$zza;",
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
            "Lcom/google/android/gms/internal/zzdgf$zza;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzlau:Lcom/google/android/gms/internal/zzdgf$zza;


# instance fields
.field private zzlat:Lcom/google/android/gms/internal/zzdgt$zzc;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/internal/zzdgf$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzdgf$zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzdgf$zza;->zzlau:Lcom/google/android/gms/internal/zzdgf$zza;

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

.method public static zzbks()Lcom/google/android/gms/internal/zzdgf$zza;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzdgf$zza;->zzlau:Lcom/google/android/gms/internal/zzdgf$zza;

    return-object v0
.end method

.method static synthetic zzbkt()Lcom/google/android/gms/internal/zzdgf$zza;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzdgf$zza;->zzlau:Lcom/google/android/gms/internal/zzdgf$zza;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    const/4 v4, 0x1

    const/4 v1, 0x0

    sget-object v0, Lcom/google/android/gms/internal/zzdgg;->zzbao:[I

    add-int/lit8 v2, p1, -0x1

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :pswitch_0
    new-instance p0, Lcom/google/android/gms/internal/zzdgf$zza;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzdgf$zza;-><init>()V

    :goto_0
    return-object p0

    :pswitch_1
    sget-object p0, Lcom/google/android/gms/internal/zzdgf$zza;->zzlau:Lcom/google/android/gms/internal/zzdgf$zza;

    goto :goto_0

    :pswitch_2
    move-object p0, v1

    goto :goto_0

    :pswitch_3
    new-instance p0, Lcom/google/android/gms/internal/zzdgf$zza$zza;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzdgf$zza$zza;-><init>(Lcom/google/android/gms/internal/zzdgg;)V

    goto :goto_0

    :pswitch_4
    check-cast p2, Lcom/google/android/gms/internal/zzefe;

    check-cast p3, Lcom/google/android/gms/internal/zzdgf$zza;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdgf$zza;->zzlat:Lcom/google/android/gms/internal/zzdgt$zzc;

    iget-object v1, p3, Lcom/google/android/gms/internal/zzdgf$zza;->zzlat:Lcom/google/android/gms/internal/zzdgt$zzc;

    invoke-interface {p2, v0, v1}, Lcom/google/android/gms/internal/zzefe;->zza(Lcom/google/android/gms/internal/zzefq;Lcom/google/android/gms/internal/zzefq;)Lcom/google/android/gms/internal/zzefq;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzdgt$zzc;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdgf$zza;->zzlat:Lcom/google/android/gms/internal/zzdgt$zzc;

    goto :goto_0

    :pswitch_5
    check-cast p2, Lcom/google/android/gms/internal/zzeel;

    check-cast p3, Lcom/google/android/gms/internal/zzeer;

    const/4 v0, 0x0

    move v3, v0

    :cond_0
    :goto_1
    if-nez v3, :cond_1

    :try_start_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzeel;->zzcby()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/zzeev;->zza(ILcom/google/android/gms/internal/zzeel;)Z

    move-result v0

    if-nez v0, :cond_0

    move v3, v4

    goto :goto_1

    :sswitch_0
    move v3, v4

    goto :goto_1

    :sswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdgf$zza;->zzlat:Lcom/google/android/gms/internal/zzdgt$zzc;

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdgf$zza;->zzlat:Lcom/google/android/gms/internal/zzdgt$zzc;

    sget v0, Lcom/google/android/gms/internal/zzefd;->zzncs:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v0, v5, v6}, Lcom/google/android/gms/internal/zzeev;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzeew;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzeew;->zza(Lcom/google/android/gms/internal/zzeev;)Lcom/google/android/gms/internal/zzeew;

    check-cast v0, Lcom/google/android/gms/internal/zzeew;

    check-cast v0, Lcom/google/android/gms/internal/zzdgt$zzc$zza;

    move-object v2, v0

    :goto_2
    invoke-static {}, Lcom/google/android/gms/internal/zzdgt$zzc;->zzbml()Lcom/google/android/gms/internal/zzdgt$zzc;

    move-result-object v0

    invoke-virtual {p2, v0, p3}, Lcom/google/android/gms/internal/zzeel;->zza(Lcom/google/android/gms/internal/zzeev;Lcom/google/android/gms/internal/zzeer;)Lcom/google/android/gms/internal/zzeev;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzdgt$zzc;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdgf$zza;->zzlat:Lcom/google/android/gms/internal/zzdgt$zzc;

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdgf$zza;->zzlat:Lcom/google/android/gms/internal/zzdgt$zzc;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzeew;->zza(Lcom/google/android/gms/internal/zzeev;)Lcom/google/android/gms/internal/zzeew;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzeew;->zzccz()Lcom/google/android/gms/internal/zzeev;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzeev;

    check-cast v0, Lcom/google/android/gms/internal/zzdgt$zzc;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdgf$zza;->zzlat:Lcom/google/android/gms/internal/zzdgt$zzc;
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzefj; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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
    :pswitch_6
    sget-object p0, Lcom/google/android/gms/internal/zzdgf$zza;->zzlau:Lcom/google/android/gms/internal/zzdgf$zza;

    goto/16 :goto_0

    :pswitch_7
    sget-object v0, Lcom/google/android/gms/internal/zzdgf$zza;->zzbaq:Lcom/google/android/gms/internal/zzefu;

    if-nez v0, :cond_3

    const-class v1, Lcom/google/android/gms/internal/zzdgf$zza;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/gms/internal/zzdgf$zza;->zzbaq:Lcom/google/android/gms/internal/zzefu;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/zzeex;

    sget-object v2, Lcom/google/android/gms/internal/zzdgf$zza;->zzlau:Lcom/google/android/gms/internal/zzdgf$zza;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/zzeex;-><init>(Lcom/google/android/gms/internal/zzeev;)V

    sput-object v0, Lcom/google/android/gms/internal/zzdgf$zza;->zzbaq:Lcom/google/android/gms/internal/zzefu;

    :cond_2
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_3
    sget-object p0, Lcom/google/android/gms/internal/zzdgf$zza;->zzbaq:Lcom/google/android/gms/internal/zzefu;

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :cond_4
    move-object v2, v1

    goto :goto_2

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
        0x12 -> :sswitch_1
    .end sparse-switch
.end method

.method public final zza(Lcom/google/android/gms/internal/zzeeo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdgf$zza;->zzlat:Lcom/google/android/gms/internal/zzdgt$zzc;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdgf$zza;->zzlat:Lcom/google/android/gms/internal/zzdgt$zzc;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/zzdgt$zzc;->zzbml()Lcom/google/android/gms/internal/zzdgt$zzc;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/zzeeo;->zza(ILcom/google/android/gms/internal/zzefq;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdgf$zza;->zznce:Lcom/google/android/gms/internal/zzegi;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzegi;->zza(Lcom/google/android/gms/internal/zzeeo;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdgf$zza;->zzlat:Lcom/google/android/gms/internal/zzdgt$zzc;

    goto :goto_0
.end method

.method public final zzbkr()Lcom/google/android/gms/internal/zzdgt$zzc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdgf$zza;->zzlat:Lcom/google/android/gms/internal/zzdgt$zzc;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/zzdgt$zzc;->zzbml()Lcom/google/android/gms/internal/zzdgt$zzc;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdgf$zza;->zzlat:Lcom/google/android/gms/internal/zzdgt$zzc;

    goto :goto_0
.end method

.method public final zzhi()I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/zzdgf$zza;->zzncf:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdgf$zza;->zzlat:Lcom/google/android/gms/internal/zzdgt$zzc;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdgf$zza;->zzlat:Lcom/google/android/gms/internal/zzdgt$zzc;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/internal/zzdgt$zzc;->zzbml()Lcom/google/android/gms/internal/zzdgt$zzc;

    move-result-object v0

    :goto_1
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzeeo;->zzb(ILcom/google/android/gms/internal/zzefq;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzdgf$zza;->zznce:Lcom/google/android/gms/internal/zzegi;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzegi;->zzhi()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/zzdgf$zza;->zzncf:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdgf$zza;->zzlat:Lcom/google/android/gms/internal/zzdgt$zzc;

    goto :goto_1
.end method
