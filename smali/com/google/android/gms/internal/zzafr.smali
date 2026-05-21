.class final Lcom/google/android/gms/internal/zzafr;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final enum zzdaq:I

.field public static final enum zzdar:I

.field public static final enum zzdas:I

.field private static final synthetic zzdat:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x3

    const/4 v0, 0x1

    sput v0, Lcom/google/android/gms/internal/zzafr;->zzdaq:I

    const/4 v0, 0x2

    sput v0, Lcom/google/android/gms/internal/zzafr;->zzdar:I

    sput v1, Lcom/google/android/gms/internal/zzafr;->zzdas:I

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/zzafr;->zzdat:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
    .end array-data
.end method
