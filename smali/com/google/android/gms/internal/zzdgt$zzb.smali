.class public final Lcom/google/android/gms/internal/zzdgt$zzb;
.super Lcom/google/android/gms/internal/zzeev;

# interfaces
.implements Lcom/google/android/gms/internal/zzefs;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzdgt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzdgt$zzb$zza;,
        Lcom/google/android/gms/internal/zzdgt$zzb$zzb;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzeev",
        "<",
        "Lcom/google/android/gms/internal/zzdgt$zzb;",
        "Lcom/google/android/gms/internal/zzdgt$zzb$zza;",
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
            "Lcom/google/android/gms/internal/zzdgt$zzb;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzlcj:Lcom/google/android/gms/internal/zzdgt$zzb;


# instance fields
.field private zzlcg:Ljava/lang/String;

.field private zzlch:Lcom/google/android/gms/internal/zzeec;

.field private zzlci:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/internal/zzdgt$zzb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzdgt$zzb;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzdgt$zzb;->zzlcj:Lcom/google/android/gms/internal/zzdgt$zzb;

    sget v1, Lcom/google/android/gms/internal/zzefd;->zzncq:I

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/zzeev;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzeev;->zznce:Lcom/google/android/gms/internal/zzegi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzegi;->zzbht()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzeev;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdgt$zzb;->zzlcg:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/zzeec;->zznbd:Lcom/google/android/gms/internal/zzeec;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdgt$zzb;->zzlch:Lcom/google/android/gms/internal/zzeec;

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/zzdgt$zzb$zzb;)V
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdgt$zzb$zzb;->zzhk()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzdgt$zzb;->zzlci:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzdgt$zzb;Lcom/google/android/gms/internal/zzdgt$zzb$zzb;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzdgt$zzb;->zza(Lcom/google/android/gms/internal/zzdgt$zzb$zzb;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzdgt$zzb;Lcom/google/android/gms/internal/zzeec;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzdgt$zzb;->zzv(Lcom/google/android/gms/internal/zzeec;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzdgt$zzb;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzdgt$zzb;->zzoe(Ljava/lang/String;)V

    return-void
.end method

.method public static zzbmi()Lcom/google/android/gms/internal/zzdgt$zzb$zza;
    .locals 3

    const/4 v2, 0x0

    sget-object v1, Lcom/google/android/gms/internal/zzdgt$zzb;->zzlcj:Lcom/google/android/gms/internal/zzdgt$zzb;

    sget v0, Lcom/google/android/gms/internal/zzefd;->zzncs:I

    invoke-virtual {v1, v0, v2, v2}, Lcom/google/android/gms/internal/zzeev;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzeew;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzeew;->zza(Lcom/google/android/gms/internal/zzeev;)Lcom/google/android/gms/internal/zzeew;

    check-cast v0, Lcom/google/android/gms/internal/zzeew;

    check-cast v0, Lcom/google/android/gms/internal/zzdgt$zzb$zza;

    return-object v0
.end method

.method public static zzbmj()Lcom/google/android/gms/internal/zzdgt$zzb;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzdgt$zzb;->zzlcj:Lcom/google/android/gms/internal/zzdgt$zzb;

    return-object v0
.end method

.method static synthetic zzbmk()Lcom/google/android/gms/internal/zzdgt$zzb;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzdgt$zzb;->zzlcj:Lcom/google/android/gms/internal/zzdgt$zzb;

    return-object v0
.end method

.method private final zzoe(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzdgt$zzb;->zzlcg:Ljava/lang/String;

    return-void
.end method

.method private final zzv(Lcom/google/android/gms/internal/zzeec;)V
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzdgt$zzb;->zzlch:Lcom/google/android/gms/internal/zzeec;

    return-void
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    sget-object v3, Lcom/google/android/gms/internal/zzdgu;->zzbao:[I

    add-int/lit8 v4, p1, -0x1

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :pswitch_0
    new-instance p0, Lcom/google/android/gms/internal/zzdgt$zzb;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzdgt$zzb;-><init>()V

    :goto_0
    return-object p0

    :pswitch_1
    sget-object p0, Lcom/google/android/gms/internal/zzdgt$zzb;->zzlcj:Lcom/google/android/gms/internal/zzdgt$zzb;

    goto :goto_0

    :pswitch_2
    move-object p0, v0

    goto :goto_0

    :pswitch_3
    new-instance p0, Lcom/google/android/gms/internal/zzdgt$zzb$zza;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzdgt$zzb$zza;-><init>(Lcom/google/android/gms/internal/zzdgu;)V

    goto :goto_0

    :pswitch_4
    check-cast p2, Lcom/google/android/gms/internal/zzefe;

    check-cast p3, Lcom/google/android/gms/internal/zzdgt$zzb;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdgt$zzb;->zzlcg:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_1
    iget-object v4, p0, Lcom/google/android/gms/internal/zzdgt$zzb;->zzlcg:Ljava/lang/String;

    iget-object v3, p3, Lcom/google/android/gms/internal/zzdgt$zzb;->zzlcg:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v1

    :goto_2
    iget-object v5, p3, Lcom/google/android/gms/internal/zzdgt$zzb;->zzlcg:Ljava/lang/String;

    invoke-interface {p2, v0, v4, v3, v5}, Lcom/google/android/gms/internal/zzefe;->zza(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdgt$zzb;->zzlcg:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdgt$zzb;->zzlch:Lcom/google/android/gms/internal/zzeec;

    sget-object v3, Lcom/google/android/gms/internal/zzeec;->zznbd:Lcom/google/android/gms/internal/zzeec;

    if-eq v0, v3, :cond_2

    move v0, v1

    :goto_3
    iget-object v4, p0, Lcom/google/android/gms/internal/zzdgt$zzb;->zzlch:Lcom/google/android/gms/internal/zzeec;

    iget-object v3, p3, Lcom/google/android/gms/internal/zzdgt$zzb;->zzlch:Lcom/google/android/gms/internal/zzeec;

    sget-object v5, Lcom/google/android/gms/internal/zzeec;->zznbd:Lcom/google/android/gms/internal/zzeec;

    if-eq v3, v5, :cond_3

    move v3, v1

    :goto_4
    iget-object v5, p3, Lcom/google/android/gms/internal/zzdgt$zzb;->zzlch:Lcom/google/android/gms/internal/zzeec;

    invoke-interface {p2, v0, v4, v3, v5}, Lcom/google/android/gms/internal/zzefe;->zza(ZLcom/google/android/gms/internal/zzeec;ZLcom/google/android/gms/internal/zzeec;)Lcom/google/android/gms/internal/zzeec;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdgt$zzb;->zzlch:Lcom/google/android/gms/internal/zzeec;

    iget v0, p0, Lcom/google/android/gms/internal/zzdgt$zzb;->zzlci:I

    if-eqz v0, :cond_4

    move v0, v1

    :goto_5
    iget v3, p0, Lcom/google/android/gms/internal/zzdgt$zzb;->zzlci:I

    iget v4, p3, Lcom/google/android/gms/internal/zzdgt$zzb;->zzlci:I

    if-eqz v4, :cond_5

    :goto_6
    iget v2, p3, Lcom/google/android/gms/internal/zzdgt$zzb;->zzlci:I

    invoke-interface {p2, v0, v3, v1, v2}, Lcom/google/android/gms/internal/zzefe;->zza(ZIZI)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzdgt$zzb;->zzlci:I

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    move v3, v2

    goto :goto_2

    :cond_2
    move v0, v2

    goto :goto_3

    :cond_3
    move v3, v2

    goto :goto_4

    :cond_4
    move v0, v2

    goto :goto_5

    :cond_5
    move v1, v2

    goto :goto_6

    :pswitch_5
    check-cast p2, Lcom/google/android/gms/internal/zzeel;

    :cond_6
    :goto_7
    if-nez v2, :cond_7

    :try_start_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzeel;->zzcby()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/zzeev;->zza(ILcom/google/android/gms/internal/zzeel;)Z

    move-result v0

    if-nez v0, :cond_6

    move v2, v1

    goto :goto_7

    :sswitch_0
    move v2, v1

    goto :goto_7

    :sswitch_1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzeel;->zzccc()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdgt$zzb;->zzlcg:Ljava/lang/String;
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzefj; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_7

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
    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzeel;->zzccd()Lcom/google/android/gms/internal/zzeec;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdgt$zzb;->zzlch:Lcom/google/android/gms/internal/zzeec;
    :try_end_2
    .catch Lcom/google/android/gms/internal/zzefj; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_7

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

    :sswitch_3
    :try_start_4
    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzeel;->zzccf()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzdgt$zzb;->zzlci:I
    :try_end_4
    .catch Lcom/google/android/gms/internal/zzefj; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_7

    :cond_7
    :pswitch_6
    sget-object p0, Lcom/google/android/gms/internal/zzdgt$zzb;->zzlcj:Lcom/google/android/gms/internal/zzdgt$zzb;

    goto/16 :goto_0

    :pswitch_7
    sget-object v0, Lcom/google/android/gms/internal/zzdgt$zzb;->zzbaq:Lcom/google/android/gms/internal/zzefu;

    if-nez v0, :cond_9

    const-class v1, Lcom/google/android/gms/internal/zzdgt$zzb;

    monitor-enter v1

    :try_start_5
    sget-object v0, Lcom/google/android/gms/internal/zzdgt$zzb;->zzbaq:Lcom/google/android/gms/internal/zzefu;

    if-nez v0, :cond_8

    new-instance v0, Lcom/google/android/gms/internal/zzeex;

    sget-object v2, Lcom/google/android/gms/internal/zzdgt$zzb;->zzlcj:Lcom/google/android/gms/internal/zzdgt$zzb;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/zzeex;-><init>(Lcom/google/android/gms/internal/zzeev;)V

    sput-object v0, Lcom/google/android/gms/internal/zzdgt$zzb;->zzbaq:Lcom/google/android/gms/internal/zzefu;

    :cond_8
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_9
    sget-object p0, Lcom/google/android/gms/internal/zzdgt$zzb;->zzbaq:Lcom/google/android/gms/internal/zzefu;

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0

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
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method public final zza(Lcom/google/android/gms/internal/zzeeo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdgt$zzb;->zzlcg:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdgt$zzb;->zzlcg:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzeeo;->zzl(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdgt$zzb;->zzlch:Lcom/google/android/gms/internal/zzeec;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeec;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdgt$zzb;->zzlch:Lcom/google/android/gms/internal/zzeec;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzeeo;->zza(ILcom/google/android/gms/internal/zzeec;)V

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/zzdgt$zzb;->zzlci:I

    sget-object v1, Lcom/google/android/gms/internal/zzdgt$zzb$zzb;->zzlck:Lcom/google/android/gms/internal/zzdgt$zzb$zzb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzdgt$zzb$zzb;->zzhk()I

    move-result v1

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/google/android/gms/internal/zzdgt$zzb;->zzlci:I

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/zzeeo;->zzv(II)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdgt$zzb;->zznce:Lcom/google/android/gms/internal/zzegi;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzegi;->zza(Lcom/google/android/gms/internal/zzeeo;)V

    return-void
.end method

.method public final zzbmf()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdgt$zzb;->zzlcg:Ljava/lang/String;

    return-object v0
.end method

.method public final zzbmg()Lcom/google/android/gms/internal/zzeec;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdgt$zzb;->zzlch:Lcom/google/android/gms/internal/zzeec;

    return-object v0
.end method

.method public final zzbmh()Lcom/google/android/gms/internal/zzdgt$zzb$zzb;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzdgt$zzb;->zzlci:I

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdgt$zzb$zzb;->zzfi(I)Lcom/google/android/gms/internal/zzdgt$zzb$zzb;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zzdgt$zzb$zzb;->zzlcp:Lcom/google/android/gms/internal/zzdgt$zzb$zzb;

    :cond_0
    return-object v0
.end method

.method public final zzhi()I
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/zzdgt$zzb;->zzncf:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdgt$zzb;->zzlcg:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdgt$zzb;->zzlcg:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzeeo;->zzm(ILjava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzdgt$zzb;->zzlch:Lcom/google/android/gms/internal/zzeec;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzeec;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdgt$zzb;->zzlch:Lcom/google/android/gms/internal/zzeec;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzeeo;->zzb(ILcom/google/android/gms/internal/zzeec;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/google/android/gms/internal/zzdgt$zzb;->zzlci:I

    sget-object v2, Lcom/google/android/gms/internal/zzdgt$zzb$zzb;->zzlck:Lcom/google/android/gms/internal/zzdgt$zzb$zzb;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzdgt$zzb$zzb;->zzhk()I

    move-result v2

    if-eq v1, v2, :cond_3

    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/gms/internal/zzdgt$zzb;->zzlci:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzeeo;->zzaa(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzdgt$zzb;->zznce:Lcom/google/android/gms/internal/zzegi;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzegi;->zzhi()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/zzdgt$zzb;->zzncf:I

    goto :goto_0
.end method
