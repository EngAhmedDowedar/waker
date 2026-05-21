.class public final Lcom/google/android/gms/ads/internal/zzal;
.super Lcom/google/android/gms/internal/zzju;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzn;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzamk:Lcom/google/android/gms/ads/internal/zzv;

.field private final zzamp:Lcom/google/android/gms/internal/zzut;

.field private zzaof:Lcom/google/android/gms/internal/zzjn;

.field private zzaoj:Lcom/google/android/gms/internal/zziu;

.field private zzaok:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

.field private zzaon:Lcom/google/android/gms/internal/zzom;

.field private zzaop:Lcom/google/android/gms/internal/zzkj;

.field private final zzaoq:Ljava/lang/String;

.field private final zzaor:Lcom/google/android/gms/internal/zzajl;

.field private zzaow:Lcom/google/android/gms/internal/zzpq;

.field private zzaox:Lcom/google/android/gms/internal/zzpt;

.field private zzaoy:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzpw;",
            ">;"
        }
    .end annotation
.end field

.field private zzaoz:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzpz;",
            ">;"
        }
    .end annotation
.end field

.field private zzapa:Lcom/google/android/gms/internal/zzqc;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzut;Lcom/google/android/gms/internal/zzajl;Lcom/google/android/gms/ads/internal/zzv;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzju;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzal;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzal;->zzaoq:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/zzal;->zzamp:Lcom/google/android/gms/internal/zzut;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/zzal;->zzaor:Lcom/google/android/gms/internal/zzajl;

    new-instance v0, Landroid/support/v4/util/SimpleArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzal;->zzaoz:Landroid/support/v4/util/SimpleArrayMap;

    new-instance v0, Landroid/support/v4/util/SimpleArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzal;->zzaoy:Landroid/support/v4/util/SimpleArrayMap;

    iput-object p5, p0, Lcom/google/android/gms/ads/internal/zzal;->zzamk:Lcom/google/android/gms/ads/internal/zzv;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzal;->zzaok:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzom;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzal;->zzaon:Lcom/google/android/gms/internal/zzom;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzpq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzal;->zzaow:Lcom/google/android/gms/internal/zzpq;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzpt;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzal;->zzaox:Lcom/google/android/gms/internal/zzpt;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzqc;Lcom/google/android/gms/internal/zziu;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzal;->zzapa:Lcom/google/android/gms/internal/zzqc;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzal;->zzaoj:Lcom/google/android/gms/internal/zziu;

    return-void
.end method

.method public final zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzpz;Lcom/google/android/gms/internal/zzpw;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Custom template ID for native custom template ad is empty. Please provide a valid template id."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzal;->zzaoz:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzal;->zzaoy:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, p1, p3}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/zzjn;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzal;->zzaof:Lcom/google/android/gms/internal/zzjn;

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/zzkj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzal;->zzaop:Lcom/google/android/gms/internal/zzkj;

    return-void
.end method

.method public final zzcy()Lcom/google/android/gms/internal/zzjq;
    .locals 17

    new-instance v1, Lcom/google/android/gms/ads/internal/zzai;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/zzal;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/zzal;->zzaoq:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/zzal;->zzamp:Lcom/google/android/gms/internal/zzut;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/ads/internal/zzal;->zzaor:Lcom/google/android/gms/internal/zzajl;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/ads/internal/zzal;->zzaof:Lcom/google/android/gms/internal/zzjn;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/ads/internal/zzal;->zzaow:Lcom/google/android/gms/internal/zzpq;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/ads/internal/zzal;->zzaox:Lcom/google/android/gms/internal/zzpt;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/gms/ads/internal/zzal;->zzaoz:Landroid/support/v4/util/SimpleArrayMap;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/gms/ads/internal/zzal;->zzaoy:Landroid/support/v4/util/SimpleArrayMap;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/gms/ads/internal/zzal;->zzaon:Lcom/google/android/gms/internal/zzom;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/gms/ads/internal/zzal;->zzaop:Lcom/google/android/gms/internal/zzkj;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/gms/ads/internal/zzal;->zzamk:Lcom/google/android/gms/ads/internal/zzv;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/gms/ads/internal/zzal;->zzapa:Lcom/google/android/gms/internal/zzqc;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/gms/ads/internal/zzal;->zzaoj:Lcom/google/android/gms/internal/zziu;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzal;->zzaok:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

    move-object/from16 v16, v0

    invoke-direct/range {v1 .. v16}, Lcom/google/android/gms/ads/internal/zzai;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzut;Lcom/google/android/gms/internal/zzajl;Lcom/google/android/gms/internal/zzjn;Lcom/google/android/gms/internal/zzpq;Lcom/google/android/gms/internal/zzpt;Landroid/support/v4/util/SimpleArrayMap;Landroid/support/v4/util/SimpleArrayMap;Lcom/google/android/gms/internal/zzom;Lcom/google/android/gms/internal/zzkj;Lcom/google/android/gms/ads/internal/zzv;Lcom/google/android/gms/internal/zzqc;Lcom/google/android/gms/internal/zziu;Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;)V

    return-object v1
.end method
