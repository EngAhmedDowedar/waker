.class public final Lcom/google/android/gms/internal/zzehs;
.super Lcom/google/android/gms/internal/zzeha;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzeha",
        "<",
        "Lcom/google/android/gms/internal/zzehs;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zznie:[Lcom/google/android/gms/internal/zzehs;


# instance fields
.field public url:Ljava/lang/String;

.field public zzixm:Ljava/lang/Integer;

.field public zznif:Lcom/google/android/gms/internal/zzehn;

.field private zznig:Lcom/google/android/gms/internal/zzehp;

.field private zznih:Ljava/lang/Integer;

.field private zznii:[I

.field private zznij:Ljava/lang/String;

.field public zznik:Ljava/lang/Integer;

.field public zznil:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzeha;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzehs;->zzixm:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzehs;->url:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzehs;->zznif:Lcom/google/android/gms/internal/zzehn;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzehs;->zznig:Lcom/google/android/gms/internal/zzehp;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzehs;->zznih:Ljava/lang/Integer;

    sget-object v0, Lcom/google/android/gms/internal/zzehj;->zzngu:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/zzehs;->zznii:[I

    iput-object v1, p0, Lcom/google/android/gms/internal/zzehs;->zznij:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzehs;->zznik:Ljava/lang/Integer;

    sget-object v0, Lcom/google/android/gms/internal/zzehj;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzehs;->zznil:[Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzehs;->zzngg:Lcom/google/android/gms/internal/zzehc;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzehs;->zzngp:I

    return-void
.end method

.method public static zzceq()[Lcom/google/android/gms/internal/zzehs;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzehs;->zznie:[Lcom/google/android/gms/internal/zzehs;

    if-nez v0, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/zzehe;->zzngo:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzehs;->zznie:[Lcom/google/android/gms/internal/zzehs;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/internal/zzehs;

    sput-object v0, Lcom/google/android/gms/internal/zzehs;->zznie:[Lcom/google/android/gms/internal/zzehs;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/zzehs;->zznie:[Lcom/google/android/gms/internal/zzehs;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/zzegx;)Lcom/google/android/gms/internal/zzehg;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegx;->zzcby()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/zzeha;->zza(Lcom/google/android/gms/internal/zzegx;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegx;->zzcdz()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzehs;->zzixm:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegx;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzehs;->url:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzehs;->zznif:Lcom/google/android/gms/internal/zzehn;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/zzehn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzehn;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzehs;->zznif:Lcom/google/android/gms/internal/zzehn;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzehs;->zznif:Lcom/google/android/gms/internal/zzehn;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzegx;->zza(Lcom/google/android/gms/internal/zzehg;)V

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzehs;->zznig:Lcom/google/android/gms/internal/zzehp;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/zzehp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzehp;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzehs;->zznig:Lcom/google/android/gms/internal/zzehp;

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzehs;->zznig:Lcom/google/android/gms/internal/zzehp;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzegx;->zza(Lcom/google/android/gms/internal/zzehg;)V

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegx;->zzcdz()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzehs;->zznih:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_6
    const/16 v0, 0x30

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzehj;->zzb(Lcom/google/android/gms/internal/zzegx;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzehs;->zznii:[I

    if-nez v0, :cond_4

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [I

    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/google/android/gms/internal/zzehs;->zznii:[I

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_5

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegx;->zzcdz()I

    move-result v3

    aput v3, v2, v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegx;->zzcby()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzehs;->zznii:[I

    array-length v0, v0

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegx;->zzcdz()I

    move-result v3

    aput v3, v2, v0

    iput-object v2, p0, Lcom/google/android/gms/internal/zzehs;->zznii:[I

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegx;->zzccj()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzegx;->zzgn(I)I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegx;->getPosition()I

    move-result v2

    move v0, v1

    :goto_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegx;->zzcef()I

    move-result v4

    if-lez v4, :cond_6

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegx;->zzcdz()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/zzegx;->zzhb(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzehs;->zznii:[I

    if-nez v2, :cond_8

    move v2, v1

    :goto_4
    add-int/2addr v0, v2

    new-array v0, v0, [I

    if-eqz v2, :cond_7

    iget-object v4, p0, Lcom/google/android/gms/internal/zzehs;->zznii:[I

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    :goto_5
    array-length v4, v0

    if-ge v2, v4, :cond_9

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegx;->zzcdz()I

    move-result v4

    aput v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_8
    iget-object v2, p0, Lcom/google/android/gms/internal/zzehs;->zznii:[I

    array-length v2, v2

    goto :goto_4

    :cond_9
    iput-object v0, p0, Lcom/google/android/gms/internal/zzehs;->zznii:[I

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/zzegx;->zzgo(I)V

    goto/16 :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegx;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzehs;->zznij:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegx;->getPosition()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegx;->zzcdz()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/zzegx;->zzhb(I)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzeha;->zza(Lcom/google/android/gms/internal/zzegx;I)Z

    goto/16 :goto_0

    :pswitch_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzehs;->zznik:Ljava/lang/Integer;

    goto/16 :goto_0

    :sswitch_a
    const/16 v0, 0x4a

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzehj;->zzb(Lcom/google/android/gms/internal/zzegx;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzehs;->zznil:[Ljava/lang/String;

    if-nez v0, :cond_b

    move v0, v1

    :goto_6
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v3, p0, Lcom/google/android/gms/internal/zzehs;->zznil:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_a
    :goto_7
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_c

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegx;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegx;->zzcby()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzehs;->zznil:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_6

    :cond_c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegx;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    iput-object v2, p0, Lcom/google/android/gms/internal/zzehs;->zznil:[Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x32 -> :sswitch_7
        0x3a -> :sswitch_8
        0x40 -> :sswitch_9
        0x4a -> :sswitch_a
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final zza(Lcom/google/android/gms/internal/zzegy;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzehs;->zzixm:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzegy;->zzv(II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzehs;->url:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzehs;->url:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzegy;->zzl(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzehs;->zznif:Lcom/google/android/gms/internal/zzehn;

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzehs;->zznif:Lcom/google/android/gms/internal/zzehn;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzegy;->zza(ILcom/google/android/gms/internal/zzehg;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzehs;->zznig:Lcom/google/android/gms/internal/zzehp;

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzehs;->zznig:Lcom/google/android/gms/internal/zzehp;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzegy;->zza(ILcom/google/android/gms/internal/zzehg;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzehs;->zznih:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    const/4 v0, 0x5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzehs;->zznih:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzegy;->zzv(II)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzehs;->zznii:[I

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzehs;->zznii:[I

    array-length v0, v0

    if-lez v0, :cond_4

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzehs;->zznii:[I

    array-length v2, v2

    if-ge v0, v2, :cond_4

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/android/gms/internal/zzehs;->zznii:[I

    aget v3, v3, v0

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/zzegy;->zzv(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzehs;->zznij:Ljava/lang/String;

    if-eqz v0, :cond_5

    const/4 v0, 0x7

    iget-object v2, p0, Lcom/google/android/gms/internal/zzehs;->zznij:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzegy;->zzl(ILjava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzehs;->zznik:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    const/16 v0, 0x8

    iget-object v2, p0, Lcom/google/android/gms/internal/zzehs;->zznik:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzegy;->zzv(II)V

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/zzehs;->zznil:[Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/zzehs;->zznil:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_8

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzehs;->zznil:[Ljava/lang/String;

    array-length v0, v0

    if-ge v1, v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/zzehs;->zznil:[Ljava/lang/String;

    aget-object v0, v0, v1

    if-eqz v0, :cond_7

    const/16 v2, 0x9

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/zzegy;->zzl(ILjava/lang/String;)V

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_8
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzeha;->zza(Lcom/google/android/gms/internal/zzegy;)V

    return-void
.end method

.method protected final zzn()I
    .locals 5

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzeha;->zzn()I

    move-result v0

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzehs;->zzixm:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/zzegy;->zzaf(II)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzehs;->url:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzehs;->url:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/zzegy;->zzm(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzehs;->zznif:Lcom/google/android/gms/internal/zzehn;

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    iget-object v3, p0, Lcom/google/android/gms/internal/zzehs;->zznif:Lcom/google/android/gms/internal/zzehn;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/zzegy;->zzb(ILcom/google/android/gms/internal/zzehg;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzehs;->zznig:Lcom/google/android/gms/internal/zzehp;

    if-eqz v1, :cond_2

    const/4 v1, 0x4

    iget-object v3, p0, Lcom/google/android/gms/internal/zzehs;->zznig:Lcom/google/android/gms/internal/zzehp;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/zzegy;->zzb(ILcom/google/android/gms/internal/zzehg;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/zzehs;->zznih:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    const/4 v1, 0x5

    iget-object v3, p0, Lcom/google/android/gms/internal/zzehs;->zznih:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/zzegy;->zzaf(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzehs;->zznii:[I

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzehs;->zznii:[I

    array-length v1, v1

    if-lez v1, :cond_5

    move v1, v2

    move v3, v2

    :goto_0
    iget-object v4, p0, Lcom/google/android/gms/internal/zzehs;->zznii:[I

    array-length v4, v4

    if-ge v1, v4, :cond_4

    iget-object v4, p0, Lcom/google/android/gms/internal/zzehs;->zznii:[I

    aget v4, v4, v1

    invoke-static {v4}, Lcom/google/android/gms/internal/zzegy;->zzhd(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    add-int/2addr v0, v3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzehs;->zznii:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/zzehs;->zznij:Ljava/lang/String;

    if-eqz v1, :cond_6

    const/4 v1, 0x7

    iget-object v3, p0, Lcom/google/android/gms/internal/zzehs;->zznij:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/zzegy;->zzm(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/zzehs;->zznik:Ljava/lang/Integer;

    if-eqz v1, :cond_7

    const/16 v1, 0x8

    iget-object v3, p0, Lcom/google/android/gms/internal/zzehs;->zznik:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/zzegy;->zzaf(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/internal/zzehs;->zznil:[Ljava/lang/String;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/google/android/gms/internal/zzehs;->zznil:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_a

    move v1, v2

    move v3, v2

    :goto_1
    iget-object v4, p0, Lcom/google/android/gms/internal/zzehs;->zznil:[Ljava/lang/String;

    array-length v4, v4

    if-ge v2, v4, :cond_9

    iget-object v4, p0, Lcom/google/android/gms/internal/zzehs;->zznil:[Ljava/lang/String;

    aget-object v4, v4, v2

    if-eqz v4, :cond_8

    add-int/lit8 v3, v3, 0x1

    invoke-static {v4}, Lcom/google/android/gms/internal/zzegy;->zzrk(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v1, v4

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_9
    add-int/2addr v0, v1

    mul-int/lit8 v1, v3, 0x1

    add-int/2addr v0, v1

    :cond_a
    return v0
.end method
