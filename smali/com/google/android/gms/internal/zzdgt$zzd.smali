.class public final Lcom/google/android/gms/internal/zzdgt$zzd;
.super Lcom/google/android/gms/internal/zzeev;

# interfaces
.implements Lcom/google/android/gms/internal/zzefs;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzdgt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzd"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzdgt$zzd$zza;,
        Lcom/google/android/gms/internal/zzdgt$zzd$zzb;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzeev",
        "<",
        "Lcom/google/android/gms/internal/zzdgt$zzd;",
        "Lcom/google/android/gms/internal/zzdgt$zzd$zza;",
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
            "Lcom/google/android/gms/internal/zzdgt$zzd;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzldb:Lcom/google/android/gms/internal/zzdgt$zzd;


# instance fields
.field private zzlcy:I

.field private zzlcz:I

.field private zzlda:Lcom/google/android/gms/internal/zzefi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzefi",
            "<",
            "Lcom/google/android/gms/internal/zzdgt$zzd$zzb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/internal/zzdgt$zzd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzdgt$zzd;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzdgt$zzd;->zzldb:Lcom/google/android/gms/internal/zzdgt$zzd;

    sget v1, Lcom/google/android/gms/internal/zzefd;->zzncq:I

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/zzeev;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzeev;->zznce:Lcom/google/android/gms/internal/zzegi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzegi;->zzbht()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzeev;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/zzdgt$zzd;->zzccv()Lcom/google/android/gms/internal/zzefi;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdgt$zzd;->zzlda:Lcom/google/android/gms/internal/zzefi;

    return-void
.end method

.method public static zzaf([B)Lcom/google/android/gms/internal/zzdgt$zzd;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzefj;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzdgt$zzd;->zzldb:Lcom/google/android/gms/internal/zzdgt$zzd;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/zzeev;->zza(Lcom/google/android/gms/internal/zzeev;[B)Lcom/google/android/gms/internal/zzeev;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzdgt$zzd;

    return-object v0
.end method

.method static synthetic zzbmq()Lcom/google/android/gms/internal/zzdgt$zzd;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzdgt$zzd;->zzldb:Lcom/google/android/gms/internal/zzdgt$zzd;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

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
    new-instance p0, Lcom/google/android/gms/internal/zzdgt$zzd;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzdgt$zzd;-><init>()V

    :cond_0
    :goto_0
    return-object p0

    :pswitch_1
    sget-object p0, Lcom/google/android/gms/internal/zzdgt$zzd;->zzldb:Lcom/google/android/gms/internal/zzdgt$zzd;

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/google/android/gms/internal/zzdgt$zzd;->zzlda:Lcom/google/android/gms/internal/zzefi;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzefi;->zzbht()V

    move-object p0, v0

    goto :goto_0

    :pswitch_3
    new-instance p0, Lcom/google/android/gms/internal/zzdgt$zzd$zza;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzdgt$zzd$zza;-><init>(Lcom/google/android/gms/internal/zzdgu;)V

    goto :goto_0

    :pswitch_4
    check-cast p2, Lcom/google/android/gms/internal/zzefe;

    check-cast p3, Lcom/google/android/gms/internal/zzdgt$zzd;

    iget v0, p0, Lcom/google/android/gms/internal/zzdgt$zzd;->zzlcz:I

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iget v3, p0, Lcom/google/android/gms/internal/zzdgt$zzd;->zzlcz:I

    iget v4, p3, Lcom/google/android/gms/internal/zzdgt$zzd;->zzlcz:I

    if-eqz v4, :cond_2

    :goto_2
    iget v2, p3, Lcom/google/android/gms/internal/zzdgt$zzd;->zzlcz:I

    invoke-interface {p2, v0, v3, v1, v2}, Lcom/google/android/gms/internal/zzefe;->zza(ZIZI)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzdgt$zzd;->zzlcz:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdgt$zzd;->zzlda:Lcom/google/android/gms/internal/zzefi;

    iget-object v1, p3, Lcom/google/android/gms/internal/zzdgt$zzd;->zzlda:Lcom/google/android/gms/internal/zzefi;

    invoke-interface {p2, v0, v1}, Lcom/google/android/gms/internal/zzefe;->zza(Lcom/google/android/gms/internal/zzefi;Lcom/google/android/gms/internal/zzefi;)Lcom/google/android/gms/internal/zzefi;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdgt$zzd;->zzlda:Lcom/google/android/gms/internal/zzefi;

    sget-object v0, Lcom/google/android/gms/internal/zzefc;->zzncm:Lcom/google/android/gms/internal/zzefc;

    if-ne p2, v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/zzdgt$zzd;->zzlcy:I

    iget v1, p3, Lcom/google/android/gms/internal/zzdgt$zzd;->zzlcy:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/zzdgt$zzd;->zzlcy:I

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2

    :pswitch_5
    check-cast p2, Lcom/google/android/gms/internal/zzeel;

    check-cast p3, Lcom/google/android/gms/internal/zzeer;

    :cond_3
    :goto_3
    if-nez v2, :cond_6

    :try_start_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzeel;->zzcby()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/zzeev;->zza(ILcom/google/android/gms/internal/zzeel;)Z

    move-result v0

    if-nez v0, :cond_3

    move v2, v1

    goto :goto_3

    :sswitch_0
    move v2, v1

    goto :goto_3

    :sswitch_1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzeel;->zzcce()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzdgt$zzd;->zzlcz:I
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
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdgt$zzd;->zzlda:Lcom/google/android/gms/internal/zzefi;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzefi;->zzcbr()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v3, p0, Lcom/google/android/gms/internal/zzdgt$zzd;->zzlda:Lcom/google/android/gms/internal/zzefi;

    invoke-interface {v3}, Lcom/google/android/gms/internal/zzefi;->size()I

    move-result v0

    if-nez v0, :cond_5

    const/16 v0, 0xa

    :goto_4
    invoke-interface {v3, v0}, Lcom/google/android/gms/internal/zzefi;->zzgu(I)Lcom/google/android/gms/internal/zzefi;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdgt$zzd;->zzlda:Lcom/google/android/gms/internal/zzefi;

    :cond_4
    iget-object v3, p0, Lcom/google/android/gms/internal/zzdgt$zzd;->zzlda:Lcom/google/android/gms/internal/zzefi;

    invoke-static {}, Lcom/google/android/gms/internal/zzdgt$zzd$zzb;->zzbmw()Lcom/google/android/gms/internal/zzdgt$zzd$zzb;

    move-result-object v0

    invoke-virtual {p2, v0, p3}, Lcom/google/android/gms/internal/zzeel;->zza(Lcom/google/android/gms/internal/zzeev;Lcom/google/android/gms/internal/zzeer;)Lcom/google/android/gms/internal/zzeev;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzdgt$zzd$zzb;

    invoke-interface {v3, v0}, Lcom/google/android/gms/internal/zzefi;->add(Ljava/lang/Object;)Z
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

    :cond_5
    shl-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_6
    :pswitch_6
    sget-object p0, Lcom/google/android/gms/internal/zzdgt$zzd;->zzldb:Lcom/google/android/gms/internal/zzdgt$zzd;

    goto/16 :goto_0

    :pswitch_7
    sget-object v0, Lcom/google/android/gms/internal/zzdgt$zzd;->zzbaq:Lcom/google/android/gms/internal/zzefu;

    if-nez v0, :cond_8

    const-class v1, Lcom/google/android/gms/internal/zzdgt$zzd;

    monitor-enter v1

    :try_start_4
    sget-object v0, Lcom/google/android/gms/internal/zzdgt$zzd;->zzbaq:Lcom/google/android/gms/internal/zzefu;

    if-nez v0, :cond_7

    new-instance v0, Lcom/google/android/gms/internal/zzeex;

    sget-object v2, Lcom/google/android/gms/internal/zzdgt$zzd;->zzldb:Lcom/google/android/gms/internal/zzdgt$zzd;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/zzeex;-><init>(Lcom/google/android/gms/internal/zzeev;)V

    sput-object v0, Lcom/google/android/gms/internal/zzdgt$zzd;->zzbaq:Lcom/google/android/gms/internal/zzefu;

    :cond_7
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_8
    sget-object p0, Lcom/google/android/gms/internal/zzdgt$zzd;->zzbaq:Lcom/google/android/gms/internal/zzefu;

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
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public final zza(Lcom/google/android/gms/internal/zzeeo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/zzdgt$zzd;->zzlcz:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/internal/zzdgt$zzd;->zzlcz:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzeeo;->zzw(II)V

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdgt$zzd;->zzlda:Lcom/google/android/gms/internal/zzefi;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzefi;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdgt$zzd;->zzlda:Lcom/google/android/gms/internal/zzefi;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzefi;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzefq;

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/zzeeo;->zza(ILcom/google/android/gms/internal/zzefq;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdgt$zzd;->zznce:Lcom/google/android/gms/internal/zzegi;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzegi;->zza(Lcom/google/android/gms/internal/zzeeo;)V

    return-void
.end method

.method public final zzbmn()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzdgt$zzd;->zzlcz:I

    return v0
.end method

.method public final zzbmo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzdgt$zzd$zzb;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdgt$zzd;->zzlda:Lcom/google/android/gms/internal/zzefi;

    return-object v0
.end method

.method public final zzbmp()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdgt$zzd;->zzlda:Lcom/google/android/gms/internal/zzefi;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzefi;->size()I

    move-result v0

    return v0
.end method

.method public final zzhi()I
    .locals 4

    const/4 v1, 0x0

    iget v0, p0, Lcom/google/android/gms/internal/zzdgt$zzd;->zzncf:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/zzdgt$zzd;->zzlcz:I

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    iget v2, p0, Lcom/google/android/gms/internal/zzdgt$zzd;->zzlcz:I

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzeeo;->zzy(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    :goto_1
    move v2, v0

    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdgt$zzd;->zzlda:Lcom/google/android/gms/internal/zzefi;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzefi;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdgt$zzd;->zzlda:Lcom/google/android/gms/internal/zzefi;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzefi;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzefq;

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/zzeeo;->zzb(ILcom/google/android/gms/internal/zzefq;)I

    move-result v0

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdgt$zzd;->zznce:Lcom/google/android/gms/internal/zzegi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzegi;->zzhi()I

    move-result v0

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/gms/internal/zzdgt$zzd;->zzncf:I

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method
