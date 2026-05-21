.class public final Lcom/google/android/gms/internal/zzdgh$zzc;
.super Lcom/google/android/gms/internal/zzeev;

# interfaces
.implements Lcom/google/android/gms/internal/zzefs;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzdgh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzc"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzdgh$zzc$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzeev",
        "<",
        "Lcom/google/android/gms/internal/zzdgh$zzc;",
        "Lcom/google/android/gms/internal/zzdgh$zzc$zza;",
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
            "Lcom/google/android/gms/internal/zzdgh$zzc;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzlbm:Lcom/google/android/gms/internal/zzdgh$zzc;


# instance fields
.field private zzlbk:I

.field private zzlbl:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/internal/zzdgh$zzc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzdgh$zzc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzdgh$zzc;->zzlbm:Lcom/google/android/gms/internal/zzdgh$zzc;

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

.method public static zzblq()Lcom/google/android/gms/internal/zzdgh$zzc;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzdgh$zzc;->zzlbm:Lcom/google/android/gms/internal/zzdgh$zzc;

    return-object v0
.end method

.method static synthetic zzblr()Lcom/google/android/gms/internal/zzdgh$zzc;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzdgh$zzc;->zzlbm:Lcom/google/android/gms/internal/zzdgh$zzc;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    sget-object v3, Lcom/google/android/gms/internal/zzdgi;->zzbao:[I

    add-int/lit8 v4, p1, -0x1

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :pswitch_0
    new-instance p0, Lcom/google/android/gms/internal/zzdgh$zzc;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzdgh$zzc;-><init>()V

    :goto_0
    return-object p0

    :pswitch_1
    sget-object p0, Lcom/google/android/gms/internal/zzdgh$zzc;->zzlbm:Lcom/google/android/gms/internal/zzdgh$zzc;

    goto :goto_0

    :pswitch_2
    move-object p0, v0

    goto :goto_0

    :pswitch_3
    new-instance p0, Lcom/google/android/gms/internal/zzdgh$zzc$zza;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzdgh$zzc$zza;-><init>(Lcom/google/android/gms/internal/zzdgi;)V

    goto :goto_0

    :pswitch_4
    check-cast p2, Lcom/google/android/gms/internal/zzefe;

    check-cast p3, Lcom/google/android/gms/internal/zzdgh$zzc;

    iget v0, p0, Lcom/google/android/gms/internal/zzdgh$zzc;->zzlbk:I

    if-eqz v0, :cond_0

    move v0, v1

    :goto_1
    iget v4, p0, Lcom/google/android/gms/internal/zzdgh$zzc;->zzlbk:I

    iget v3, p3, Lcom/google/android/gms/internal/zzdgh$zzc;->zzlbk:I

    if-eqz v3, :cond_1

    move v3, v1

    :goto_2
    iget v5, p3, Lcom/google/android/gms/internal/zzdgh$zzc;->zzlbk:I

    invoke-interface {p2, v0, v4, v3, v5}, Lcom/google/android/gms/internal/zzefe;->zza(ZIZI)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzdgh$zzc;->zzlbk:I

    iget v0, p0, Lcom/google/android/gms/internal/zzdgh$zzc;->zzlbl:I

    if-eqz v0, :cond_2

    move v0, v1

    :goto_3
    iget v3, p0, Lcom/google/android/gms/internal/zzdgh$zzc;->zzlbl:I

    iget v4, p3, Lcom/google/android/gms/internal/zzdgh$zzc;->zzlbl:I

    if-eqz v4, :cond_3

    :goto_4
    iget v2, p3, Lcom/google/android/gms/internal/zzdgh$zzc;->zzlbl:I

    invoke-interface {p2, v0, v3, v1, v2}, Lcom/google/android/gms/internal/zzefe;->zza(ZIZI)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzdgh$zzc;->zzlbl:I

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
    move v1, v2

    goto :goto_4

    :pswitch_5
    check-cast p2, Lcom/google/android/gms/internal/zzeel;

    :cond_4
    :goto_5
    if-nez v2, :cond_5

    :try_start_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzeel;->zzcby()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/zzeev;->zza(ILcom/google/android/gms/internal/zzeel;)Z

    move-result v0

    if-nez v0, :cond_4

    move v2, v1

    goto :goto_5

    :sswitch_0
    move v2, v1

    goto :goto_5

    :sswitch_1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzeel;->zzccf()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzdgh$zzc;->zzlbk:I
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzefj; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

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

    iput v0, p0, Lcom/google/android/gms/internal/zzdgh$zzc;->zzlbl:I
    :try_end_2
    .catch Lcom/google/android/gms/internal/zzefj; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

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

    :cond_5
    :pswitch_6
    sget-object p0, Lcom/google/android/gms/internal/zzdgh$zzc;->zzlbm:Lcom/google/android/gms/internal/zzdgh$zzc;

    goto/16 :goto_0

    :pswitch_7
    sget-object v0, Lcom/google/android/gms/internal/zzdgh$zzc;->zzbaq:Lcom/google/android/gms/internal/zzefu;

    if-nez v0, :cond_7

    const-class v1, Lcom/google/android/gms/internal/zzdgh$zzc;

    monitor-enter v1

    :try_start_4
    sget-object v0, Lcom/google/android/gms/internal/zzdgh$zzc;->zzbaq:Lcom/google/android/gms/internal/zzefu;

    if-nez v0, :cond_6

    new-instance v0, Lcom/google/android/gms/internal/zzeex;

    sget-object v2, Lcom/google/android/gms/internal/zzdgh$zzc;->zzlbm:Lcom/google/android/gms/internal/zzdgh$zzc;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/zzeex;-><init>(Lcom/google/android/gms/internal/zzeev;)V

    sput-object v0, Lcom/google/android/gms/internal/zzdgh$zzc;->zzbaq:Lcom/google/android/gms/internal/zzefu;

    :cond_6
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_7
    sget-object p0, Lcom/google/android/gms/internal/zzdgh$zzc;->zzbaq:Lcom/google/android/gms/internal/zzefu;

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

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
        0x8 -> :sswitch_1
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

    iget v0, p0, Lcom/google/android/gms/internal/zzdgh$zzc;->zzlbk:I

    sget-object v1, Lcom/google/android/gms/internal/zzdgb;->zzlak:Lcom/google/android/gms/internal/zzdgb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzdgb;->zzhk()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/zzdgh$zzc;->zzlbk:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/zzeeo;->zzv(II)V

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/zzdgh$zzc;->zzlbl:I

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget v1, p0, Lcom/google/android/gms/internal/zzdgh$zzc;->zzlbl:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzeeo;->zzw(II)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdgh$zzc;->zznce:Lcom/google/android/gms/internal/zzegi;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzegi;->zza(Lcom/google/android/gms/internal/zzeeo;)V

    return-void
.end method

.method public final zzblo()Lcom/google/android/gms/internal/zzdgb;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzdgh$zzc;->zzlbk:I

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdgb;->zzff(I)Lcom/google/android/gms/internal/zzdgb;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zzdgb;->zzlap:Lcom/google/android/gms/internal/zzdgb;

    :cond_0
    return-object v0
.end method

.method public final zzblp()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzdgh$zzc;->zzlbl:I

    return v0
.end method

.method public final zzhi()I
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/zzdgh$zzc;->zzncf:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/gms/internal/zzdgh$zzc;->zzlbk:I

    sget-object v2, Lcom/google/android/gms/internal/zzdgb;->zzlak:Lcom/google/android/gms/internal/zzdgb;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzdgb;->zzhk()I

    move-result v2

    if-eq v1, v2, :cond_1

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/internal/zzdgh$zzc;->zzlbk:I

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzeeo;->zzaa(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    :cond_1
    iget v1, p0, Lcom/google/android/gms/internal/zzdgh$zzc;->zzlbl:I

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/internal/zzdgh$zzc;->zzlbl:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzeeo;->zzy(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/zzdgh$zzc;->zznce:Lcom/google/android/gms/internal/zzegi;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzegi;->zzhi()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/zzdgh$zzc;->zzncf:I

    goto :goto_0
.end method
