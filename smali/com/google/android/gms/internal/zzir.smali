.class public final Lcom/google/android/gms/internal/zzir;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzn;
.end annotation


# instance fields
.field private mExtras:Landroid/os/Bundle;

.field private zzalh:Z

.field private zzbcg:J

.field private zzbch:I

.field private zzbci:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzbcj:Z

.field private zzbck:I

.field private zzbcl:Ljava/lang/String;

.field private zzbcm:Lcom/google/android/gms/internal/zzls;

.field private zzbcn:Ljava/lang/String;

.field private zzbco:Landroid/os/Bundle;

.field private zzbcp:Landroid/os/Bundle;

.field private zzbcq:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzbcr:Ljava/lang/String;

.field private zzbcs:Ljava/lang/String;

.field private zzbct:Z

.field private zzgz:Landroid/location/Location;


# direct methods
.method public constructor <init>()V
    .locals 5

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzir;->zzbcg:J

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzir;->mExtras:Landroid/os/Bundle;

    iput v4, p0, Lcom/google/android/gms/internal/zzir;->zzbch:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzir;->zzbci:Ljava/util/List;

    iput-boolean v3, p0, Lcom/google/android/gms/internal/zzir;->zzbcj:Z

    iput v4, p0, Lcom/google/android/gms/internal/zzir;->zzbck:I

    iput-boolean v3, p0, Lcom/google/android/gms/internal/zzir;->zzalh:Z

    iput-object v2, p0, Lcom/google/android/gms/internal/zzir;->zzbcl:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/internal/zzir;->zzbcm:Lcom/google/android/gms/internal/zzls;

    iput-object v2, p0, Lcom/google/android/gms/internal/zzir;->zzgz:Landroid/location/Location;

    iput-object v2, p0, Lcom/google/android/gms/internal/zzir;->zzbcn:Ljava/lang/String;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzir;->zzbco:Landroid/os/Bundle;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzir;->zzbcp:Landroid/os/Bundle;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzir;->zzbcq:Ljava/util/List;

    iput-object v2, p0, Lcom/google/android/gms/internal/zzir;->zzbcr:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/internal/zzir;->zzbcs:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/google/android/gms/internal/zzir;->zzbct:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zziq;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-wide v0, p1, Lcom/google/android/gms/internal/zziq;->zzbbq:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzir;->zzbcg:J

    iget-object v0, p1, Lcom/google/android/gms/internal/zziq;->extras:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzir;->mExtras:Landroid/os/Bundle;

    iget v0, p1, Lcom/google/android/gms/internal/zziq;->zzbbr:I

    iput v0, p0, Lcom/google/android/gms/internal/zzir;->zzbch:I

    iget-object v0, p1, Lcom/google/android/gms/internal/zziq;->zzbbs:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzir;->zzbci:Ljava/util/List;

    iget-boolean v0, p1, Lcom/google/android/gms/internal/zziq;->zzbbt:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzir;->zzbcj:Z

    iget v0, p1, Lcom/google/android/gms/internal/zziq;->zzbbu:I

    iput v0, p0, Lcom/google/android/gms/internal/zzir;->zzbck:I

    iget-boolean v0, p1, Lcom/google/android/gms/internal/zziq;->zzbbv:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzir;->zzalh:Z

    iget-object v0, p1, Lcom/google/android/gms/internal/zziq;->zzbbw:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzir;->zzbcl:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/zziq;->zzbbx:Lcom/google/android/gms/internal/zzls;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzir;->zzbcm:Lcom/google/android/gms/internal/zzls;

    iget-object v0, p1, Lcom/google/android/gms/internal/zziq;->zzbby:Landroid/location/Location;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzir;->zzgz:Landroid/location/Location;

    iget-object v0, p1, Lcom/google/android/gms/internal/zziq;->zzbbz:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzir;->zzbcn:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/zziq;->zzbca:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzir;->zzbco:Landroid/os/Bundle;

    iget-object v0, p1, Lcom/google/android/gms/internal/zziq;->zzbcb:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzir;->zzbcp:Landroid/os/Bundle;

    iget-object v0, p1, Lcom/google/android/gms/internal/zziq;->zzbcc:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzir;->zzbcq:Ljava/util/List;

    iget-object v0, p1, Lcom/google/android/gms/internal/zziq;->zzbcd:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzir;->zzbcr:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/zziq;->zzbce:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzir;->zzbcs:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza(Landroid/location/Location;)Lcom/google/android/gms/internal/zzir;
    .locals 1
    .param p1    # Landroid/location/Location;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzir;->zzgz:Landroid/location/Location;

    return-object p0
.end method

.method public final zzhl()Lcom/google/android/gms/internal/zziq;
    .locals 22

    new-instance v2, Lcom/google/android/gms/internal/zziq;

    const/4 v3, 0x7

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/gms/internal/zzir;->zzbcg:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzir;->mExtras:Landroid/os/Bundle;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/android/gms/internal/zzir;->zzbch:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/zzir;->zzbci:Ljava/util/List;

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/google/android/gms/internal/zzir;->zzbcj:Z

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/gms/internal/zzir;->zzbck:I

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/google/android/gms/internal/zzir;->zzalh:Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/gms/internal/zzir;->zzbcl:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/gms/internal/zzir;->zzbcm:Lcom/google/android/gms/internal/zzls;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/gms/internal/zzir;->zzgz:Landroid/location/Location;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/gms/internal/zzir;->zzbcn:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzir;->zzbco:Landroid/os/Bundle;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzir;->zzbcp:Landroid/os/Bundle;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzir;->zzbcq:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzir;->zzbcr:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzir;->zzbcs:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-direct/range {v2 .. v21}, Lcom/google/android/gms/internal/zziq;-><init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lcom/google/android/gms/internal/zzls;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v2
.end method
