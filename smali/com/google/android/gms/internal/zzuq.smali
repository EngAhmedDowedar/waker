.class public final Lcom/google/android/gms/internal/zzuq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzuc;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzn;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private final mStartTime:J

.field private final zzamc:Lcom/google/android/gms/internal/zzna;

.field private final zzamp:Lcom/google/android/gms/internal/zzut;

.field private final zzaup:Z

.field private final zzcbp:Lcom/google/android/gms/internal/zzue;

.field private final zzcbt:Z

.field private final zzcch:Lcom/google/android/gms/internal/zzaal;

.field private final zzcci:J

.field private zzcck:Z

.field private final zzccm:Ljava/lang/String;

.field private zzccn:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzuk;",
            ">;"
        }
    .end annotation
.end field

.field private zzccr:Lcom/google/android/gms/internal/zzuh;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzaal;Lcom/google/android/gms/internal/zzut;Lcom/google/android/gms/internal/zzue;ZZLjava/lang/String;JJLcom/google/android/gms/internal/zzna;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzuq;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzuq;->zzcck:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzuq;->zzccn:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzuq;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzuq;->zzcch:Lcom/google/android/gms/internal/zzaal;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzuq;->zzamp:Lcom/google/android/gms/internal/zzut;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzuq;->zzcbp:Lcom/google/android/gms/internal/zzue;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/zzuq;->zzaup:Z

    iput-boolean p6, p0, Lcom/google/android/gms/internal/zzuq;->zzcbt:Z

    iput-object p7, p0, Lcom/google/android/gms/internal/zzuq;->zzccm:Ljava/lang/String;

    iput-wide p8, p0, Lcom/google/android/gms/internal/zzuq;->mStartTime:J

    iput-wide p10, p0, Lcom/google/android/gms/internal/zzuq;->zzcci:J

    iput-object p12, p0, Lcom/google/android/gms/internal/zzuq;->zzamc:Lcom/google/android/gms/internal/zzna;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzuq;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzuq;->zzcck:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzuq;->zzccr:Lcom/google/android/gms/internal/zzuh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzuq;->zzccr:Lcom/google/android/gms/internal/zzuh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzuh;->cancel()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zzg(Ljava/util/List;)Lcom/google/android/gms/internal/zzuk;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzud;",
            ">;)",
            "Lcom/google/android/gms/internal/zzuk;"
        }
    .end annotation

    const-string/jumbo v2, "Starting mediation."

    invoke-static {v2}, Lcom/google/android/gms/internal/zzafy;->zzca(Ljava/lang/String;)V

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/zzuq;->zzamc:Lcom/google/android/gms/internal/zzna;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzna;->zziv()Lcom/google/android/gms/internal/zzmy;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/zzuq;->zzcch:Lcom/google/android/gms/internal/zzaal;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzaal;->zzatd:Lcom/google/android/gms/internal/zziu;

    const/4 v3, 0x2

    new-array v3, v3, [I

    iget-object v4, v2, Lcom/google/android/gms/internal/zziu;->zzbcx:[Lcom/google/android/gms/internal/zziu;

    if-eqz v4, :cond_9

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzeu()Lcom/google/android/gms/internal/zzum;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/zzuq;->zzccm:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/zzum;->zza(Ljava/lang/String;[I)Z

    move-result v4

    if-eqz v4, :cond_9

    const/4 v4, 0x0

    aget v4, v3, v4

    const/4 v5, 0x1

    aget v5, v3, v5

    iget-object v6, v2, Lcom/google/android/gms/internal/zziu;->zzbcx:[Lcom/google/android/gms/internal/zziu;

    array-length v7, v6

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v7, :cond_9

    aget-object v9, v6, v3

    iget v8, v9, Lcom/google/android/gms/internal/zziu;->width:I

    if-ne v4, v8, :cond_2

    iget v8, v9, Lcom/google/android/gms/internal/zziu;->height:I

    if-ne v5, v8, :cond_2

    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/zzud;

    const-string/jumbo v3, "Trying mediation network: "

    iget-object v2, v7, Lcom/google/android/gms/internal/zzud;->zzcac:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-static {v2}, Lcom/google/android/gms/internal/zzafy;->zzcq(Ljava/lang/String;)V

    iget-object v2, v7, Lcom/google/android/gms/internal/zzud;->zzcad:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_1
    :goto_3
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/zzuq;->zzamc:Lcom/google/android/gms/internal/zzna;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzna;->zziv()Lcom/google/android/gms/internal/zzmy;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzuq;->mLock:Ljava/lang/Object;

    move-object/from16 v22, v0

    monitor-enter v22

    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/gms/internal/zzuq;->zzcck:Z

    if-eqz v2, :cond_4

    new-instance v2, Lcom/google/android/gms/internal/zzuk;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/zzuk;-><init>(I)V

    monitor-exit v22
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_4
    return-object v2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    :try_start_1
    new-instance v2, Lcom/google/android/gms/internal/zzuh;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/zzuq;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/zzuq;->zzamp:Lcom/google/android/gms/internal/zzut;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzuq;->zzcbp:Lcom/google/android/gms/internal/zzue;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/zzuq;->zzcch:Lcom/google/android/gms/internal/zzaal;

    iget-object v8, v8, Lcom/google/android/gms/internal/zzaal;->zzcof:Lcom/google/android/gms/internal/zziq;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/gms/internal/zzuq;->zzcch:Lcom/google/android/gms/internal/zzaal;

    iget-object v10, v10, Lcom/google/android/gms/internal/zzaal;->zzasz:Lcom/google/android/gms/internal/zzajl;

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/google/android/gms/internal/zzuq;->zzaup:Z

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/google/android/gms/internal/zzuq;->zzcbt:Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/gms/internal/zzuq;->zzcch:Lcom/google/android/gms/internal/zzaal;

    iget-object v13, v13, Lcom/google/android/gms/internal/zzaal;->zzatp:Lcom/google/android/gms/internal/zzom;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/gms/internal/zzuq;->zzcch:Lcom/google/android/gms/internal/zzaal;

    iget-object v14, v14, Lcom/google/android/gms/internal/zzaal;->zzatw:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/gms/internal/zzuq;->zzcch:Lcom/google/android/gms/internal/zzaal;

    iget-object v15, v15, Lcom/google/android/gms/internal/zzaal;->zzcou:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzuq;->zzcch:Lcom/google/android/gms/internal/zzaal;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaal;->zzcpp:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-direct/range {v2 .. v16}, Lcom/google/android/gms/internal/zzuh;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzut;Lcom/google/android/gms/internal/zzue;Lcom/google/android/gms/internal/zzud;Lcom/google/android/gms/internal/zziq;Lcom/google/android/gms/internal/zziu;Lcom/google/android/gms/internal/zzajl;ZZLcom/google/android/gms/internal/zzom;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/gms/internal/zzuq;->zzccr:Lcom/google/android/gms/internal/zzuh;

    monitor-exit v22
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/zzuq;->zzccr:Lcom/google/android/gms/internal/zzuh;

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/android/gms/internal/zzuq;->mStartTime:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/android/gms/internal/zzuq;->zzcci:J

    invoke-virtual {v2, v10, v11, v12, v13}, Lcom/google/android/gms/internal/zzuh;->zza(JJ)Lcom/google/android/gms/internal/zzuk;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/zzuq;->zzccn:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v3, v2, Lcom/google/android/gms/internal/zzuk;->zzcca:I

    if-nez v3, :cond_6

    const-string/jumbo v3, "Adapter succeeded."

    invoke-static {v3}, Lcom/google/android/gms/internal/zzafy;->zzca(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/zzuq;->zzamc:Lcom/google/android/gms/internal/zzna;

    const-string/jumbo v5, "mediation_network_succeed"

    invoke-virtual {v3, v5, v4}, Lcom/google/android/gms/internal/zzna;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/zzuq;->zzamc:Lcom/google/android/gms/internal/zzna;

    const-string/jumbo v4, "mediation_networks_fail"

    const-string/jumbo v5, ","

    move-object/from16 v0, v17

    invoke-static {v5, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/zzna;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/zzuq;->zzamc:Lcom/google/android/gms/internal/zzna;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "mls"

    aput-object v6, v4, v5

    move-object/from16 v0, v21

    invoke-virtual {v3, v0, v4}, Lcom/google/android/gms/internal/zzna;->zza(Lcom/google/android/gms/internal/zzmy;[Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/zzuq;->zzamc:Lcom/google/android/gms/internal/zzna;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "ttm"

    aput-object v6, v4, v5

    move-object/from16 v0, v18

    invoke-virtual {v3, v0, v4}, Lcom/google/android/gms/internal/zzna;->zza(Lcom/google/android/gms/internal/zzmy;[Ljava/lang/String;)Z

    goto/16 :goto_4

    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v22
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :cond_6
    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/zzuq;->zzamc:Lcom/google/android/gms/internal/zzna;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "mlf"

    aput-object v6, v4, v5

    move-object/from16 v0, v21

    invoke-virtual {v3, v0, v4}, Lcom/google/android/gms/internal/zzna;->zza(Lcom/google/android/gms/internal/zzmy;[Ljava/lang/String;)Z

    iget-object v3, v2, Lcom/google/android/gms/internal/zzuk;->zzccc:Lcom/google/android/gms/internal/zzuw;

    if-eqz v3, :cond_1

    sget-object v3, Lcom/google/android/gms/internal/zzahg;->zzdbz:Landroid/os/Handler;

    new-instance v4, Lcom/google/android/gms/internal/zzur;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v2}, Lcom/google/android/gms/internal/zzur;-><init>(Lcom/google/android/gms/internal/zzuq;Lcom/google/android/gms/internal/zzuk;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_3

    :cond_7
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/zzuq;->zzamc:Lcom/google/android/gms/internal/zzna;

    const-string/jumbo v3, "mediation_networks_fail"

    const-string/jumbo v4, ","

    move-object/from16 v0, v17

    invoke-static {v4, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/zzna;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    new-instance v2, Lcom/google/android/gms/internal/zzuk;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/zzuk;-><init>(I)V

    goto/16 :goto_4

    :cond_9
    move-object v9, v2

    goto/16 :goto_1
.end method

.method public final zzll()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzuk;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzuq;->zzccn:Ljava/util/List;

    return-object v0
.end method
