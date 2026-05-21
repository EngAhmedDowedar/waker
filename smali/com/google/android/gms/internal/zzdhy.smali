.class public final enum Lcom/google/android/gms/internal/zzdhy;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gms/internal/zzdhy;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zzles:Lcom/google/android/gms/internal/zzdhy;

.field public static final enum zzlet:Lcom/google/android/gms/internal/zzdhy;

.field private static final synthetic zzleu:[Lcom/google/android/gms/internal/zzdhy;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/internal/zzdhy;

    const-string/jumbo v1, "COMPRESSED"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzdhy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzdhy;->zzles:Lcom/google/android/gms/internal/zzdhy;

    new-instance v0, Lcom/google/android/gms/internal/zzdhy;

    const-string/jumbo v1, "UNCOMPRESSED"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/zzdhy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzdhy;->zzlet:Lcom/google/android/gms/internal/zzdhy;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/gms/internal/zzdhy;

    sget-object v1, Lcom/google/android/gms/internal/zzdhy;->zzles:Lcom/google/android/gms/internal/zzdhy;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/zzdhy;->zzlet:Lcom/google/android/gms/internal/zzdhy;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/gms/internal/zzdhy;->zzleu:[Lcom/google/android/gms/internal/zzdhy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/zzdhy;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzdhy;->zzleu:[Lcom/google/android/gms/internal/zzdhy;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/zzdhy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/zzdhy;

    return-object v0
.end method
