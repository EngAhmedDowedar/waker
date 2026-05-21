.class public final Lcom/google/android/gms/internal/zzey;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzn;
.end annotation


# instance fields
.field private final zzauk:Ljava/lang/String;

.field private final zzaul:Lorg/json/JSONObject;

.field private final zzaum:Ljava/lang/String;

.field private final zzaun:Ljava/lang/String;

.field private final zzauo:Z

.field private final zzaup:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzajl;Ljava/lang/String;Lorg/json/JSONObject;ZZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p2, Lcom/google/android/gms/internal/zzajl;->zzcp:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzey;->zzaun:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzey;->zzaul:Lorg/json/JSONObject;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzey;->zzaum:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzey;->zzauk:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/zzey;->zzauo:Z

    iput-boolean p6, p0, Lcom/google/android/gms/internal/zzey;->zzaup:Z

    return-void
.end method


# virtual methods
.method public final zzfk()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzey;->zzauk:Ljava/lang/String;

    return-object v0
.end method

.method public final zzfl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzey;->zzaun:Ljava/lang/String;

    return-object v0
.end method

.method public final zzfm()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzey;->zzaul:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final zzfn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzey;->zzaum:Ljava/lang/String;

    return-object v0
.end method

.method public final zzfo()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzey;->zzauo:Z

    return v0
.end method

.method public final zzfp()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzey;->zzaup:Z

    return v0
.end method
