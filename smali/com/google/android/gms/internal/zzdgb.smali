.class public final enum Lcom/google/android/gms/internal/zzdgb;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/google/android/gms/internal/zzefg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gms/internal/zzdgb;",
        ">;",
        "Lcom/google/android/gms/internal/zzefg;"
    }
.end annotation


# static fields
.field private static final zzbaw:Lcom/google/android/gms/internal/zzefh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzefh",
            "<",
            "Lcom/google/android/gms/internal/zzdgb;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum zzlak:Lcom/google/android/gms/internal/zzdgb;

.field public static final enum zzlal:Lcom/google/android/gms/internal/zzdgb;

.field private static enum zzlam:Lcom/google/android/gms/internal/zzdgb;

.field public static final enum zzlan:Lcom/google/android/gms/internal/zzdgb;

.field public static final enum zzlao:Lcom/google/android/gms/internal/zzdgb;

.field public static final enum zzlap:Lcom/google/android/gms/internal/zzdgb;

.field private static final synthetic zzlaq:[Lcom/google/android/gms/internal/zzdgb;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/google/android/gms/internal/zzdgb;

    const-string/jumbo v1, "UNKNOWN_HASH"

    invoke-direct {v0, v1, v4, v4}, Lcom/google/android/gms/internal/zzdgb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/zzdgb;->zzlak:Lcom/google/android/gms/internal/zzdgb;

    new-instance v0, Lcom/google/android/gms/internal/zzdgb;

    const-string/jumbo v1, "SHA1"

    invoke-direct {v0, v1, v5, v5}, Lcom/google/android/gms/internal/zzdgb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/zzdgb;->zzlal:Lcom/google/android/gms/internal/zzdgb;

    new-instance v0, Lcom/google/android/gms/internal/zzdgb;

    const-string/jumbo v1, "SHA224"

    invoke-direct {v0, v1, v6, v6}, Lcom/google/android/gms/internal/zzdgb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/zzdgb;->zzlam:Lcom/google/android/gms/internal/zzdgb;

    new-instance v0, Lcom/google/android/gms/internal/zzdgb;

    const-string/jumbo v1, "SHA256"

    invoke-direct {v0, v1, v7, v7}, Lcom/google/android/gms/internal/zzdgb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/zzdgb;->zzlan:Lcom/google/android/gms/internal/zzdgb;

    new-instance v0, Lcom/google/android/gms/internal/zzdgb;

    const-string/jumbo v1, "SHA512"

    invoke-direct {v0, v1, v8, v8}, Lcom/google/android/gms/internal/zzdgb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/zzdgb;->zzlao:Lcom/google/android/gms/internal/zzdgb;

    new-instance v0, Lcom/google/android/gms/internal/zzdgb;

    const-string/jumbo v1, "UNRECOGNIZED"

    const/4 v2, 0x5

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzdgb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/zzdgb;->zzlap:Lcom/google/android/gms/internal/zzdgb;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/android/gms/internal/zzdgb;

    sget-object v1, Lcom/google/android/gms/internal/zzdgb;->zzlak:Lcom/google/android/gms/internal/zzdgb;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/internal/zzdgb;->zzlal:Lcom/google/android/gms/internal/zzdgb;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/gms/internal/zzdgb;->zzlam:Lcom/google/android/gms/internal/zzdgb;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/gms/internal/zzdgb;->zzlan:Lcom/google/android/gms/internal/zzdgb;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/android/gms/internal/zzdgb;->zzlao:Lcom/google/android/gms/internal/zzdgb;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/gms/internal/zzdgb;->zzlap:Lcom/google/android/gms/internal/zzdgb;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/internal/zzdgb;->zzlaq:[Lcom/google/android/gms/internal/zzdgb;

    new-instance v0, Lcom/google/android/gms/internal/zzdgc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzdgc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzdgb;->zzbaw:Lcom/google/android/gms/internal/zzefh;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/internal/zzdgb;->value:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/zzdgb;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzdgb;->zzlaq:[Lcom/google/android/gms/internal/zzdgb;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/zzdgb;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/zzdgb;

    return-object v0
.end method

.method public static zzff(I)Lcom/google/android/gms/internal/zzdgb;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/google/android/gms/internal/zzdgb;->zzlak:Lcom/google/android/gms/internal/zzdgb;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/google/android/gms/internal/zzdgb;->zzlal:Lcom/google/android/gms/internal/zzdgb;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/google/android/gms/internal/zzdgb;->zzlam:Lcom/google/android/gms/internal/zzdgb;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/google/android/gms/internal/zzdgb;->zzlan:Lcom/google/android/gms/internal/zzdgb;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/google/android/gms/internal/zzdgb;->zzlao:Lcom/google/android/gms/internal/zzdgb;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public final zzhk()I
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzdgb;->zzlap:Lcom/google/android/gms/internal/zzdgb;

    if-ne p0, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/zzdgb;->value:I

    return v0
.end method
