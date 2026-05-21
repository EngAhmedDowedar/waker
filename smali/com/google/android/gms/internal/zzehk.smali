.class public final Lcom/google/android/gms/internal/zzehk;
.super Lcom/google/android/gms/internal/zzeha;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzeha",
        "<",
        "Lcom/google/android/gms/internal/zzehk;",
        ">;"
    }
.end annotation


# instance fields
.field public url:Ljava/lang/String;

.field public zznhb:Ljava/lang/Integer;

.field private zznhc:Ljava/lang/Integer;

.field public zznhd:Ljava/lang/String;

.field private zznhe:Ljava/lang/String;

.field public zznhf:Lcom/google/android/gms/internal/zzehl;

.field public zznhg:[Lcom/google/android/gms/internal/zzehs;

.field public zznhh:Ljava/lang/String;

.field public zznhi:Lcom/google/android/gms/internal/zzehr;

.field private zznhj:Ljava/lang/Boolean;

.field private zznhk:[Ljava/lang/String;

.field private zznhl:Ljava/lang/String;

.field private zznhm:Ljava/lang/Boolean;

.field private zznhn:Ljava/lang/Boolean;

.field private zznho:[B

.field public zznhp:Lcom/google/android/gms/internal/zzeht;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzeha;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzehk;->zznhb:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzehk;->zznhc:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzehk;->url:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzehk;->zznhd:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzehk;->zznhe:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzehk;->zznhf:Lcom/google/android/gms/internal/zzehl;

    invoke-static {}, Lcom/google/android/gms/internal/zzehs;->zzceq()[Lcom/google/android/gms/internal/zzehs;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzehk;->zznhg:[Lcom/google/android/gms/internal/zzehs;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzehk;->zznhh:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzehk;->zznhi:Lcom/google/android/gms/internal/zzehr;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzehk;->zznhj:Ljava/lang/Boolean;

    sget-object v0, Lcom/google/android/gms/internal/zzehj;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzehk;->zznhk:[Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzehk;->zznhl:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzehk;->zznhm:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzehk;->zznhn:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzehk;->zznho:[B

    iput-object v1, p0, Lcom/google/android/gms/internal/zzehk;->zznhp:Lcom/google/android/gms/internal/zzeht;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzehk;->zzngg:Lcom/google/android/gms/internal/zzehc;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzehk;->zzngp:I

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/zzegx;)Lcom/google/android/gms/internal/zzehg;
    .locals 4
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
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegx;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzehk;->url:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegx;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzehk;->zznhd:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegx;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzehk;->zznhe:Ljava/lang/String;

    goto :goto_0

    :sswitch_4
    const/16 v0, 0x22

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzehj;->zzb(Lcom/google/android/gms/internal/zzegx;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzehk;->zznhg:[Lcom/google/android/gms/internal/zzehs;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/internal/zzehs;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzehk;->zznhg:[Lcom/google/android/gms/internal/zzehs;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    new-instance v3, Lcom/google/android/gms/internal/zzehs;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzehs;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/zzegx;->zza(Lcom/google/android/gms/internal/zzehg;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegx;->zzcby()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzehk;->zznhg:[Lcom/google/android/gms/internal/zzehs;

    array-length v0, v0

    goto :goto_1

    :cond_3
    new-instance v3, Lcom/google/android/gms/internal/zzehs;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzehs;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzegx;->zza(Lcom/google/android/gms/internal/zzehg;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzehk;->zznhg:[Lcom/google/android/gms/internal/zzehs;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegx;->zzcea()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzehk;->zznhj:Ljava/lang/Boolean;

    goto :goto_0

    :sswitch_6
    const/16 v0, 0x32

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzehj;->zzb(Lcom/google/android/gms/internal/zzegx;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzehk;->zznhk:[Ljava/lang/String;

    if-nez v0, :cond_5

    move v0, v1

    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/google/android/gms/internal/zzehk;->zznhk:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegx;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegx;->zzcby()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzehk;->zznhk:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_3

    :cond_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegx;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    iput-object v2, p0, Lcom/google/android/gms/internal/zzehk;->zznhk:[Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegx;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzehk;->zznhl:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegx;->zzcea()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzehk;->zznhm:Ljava/lang/Boolean;

    goto/16 :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegx;->zzcea()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzehk;->zznhn:Ljava/lang/Boolean;

    goto/16 :goto_0

    :sswitch_a
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

    iput-object v0, p0, Lcom/google/android/gms/internal/zzehk;->zznhb:Ljava/lang/Integer;

    goto/16 :goto_0

    :sswitch_b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegx;->getPosition()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegx;->zzcdz()I

    move-result v3

    packed-switch v3, :pswitch_data_1

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/zzegx;->zzhb(I)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzeha;->zza(Lcom/google/android/gms/internal/zzegx;I)Z

    goto/16 :goto_0

    :pswitch_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzehk;->zznhc:Ljava/lang/Integer;

    goto/16 :goto_0

    :sswitch_c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzehk;->zznhf:Lcom/google/android/gms/internal/zzehl;

    if-nez v0, :cond_7

    new-instance v0, Lcom/google/android/gms/internal/zzehl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzehl;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzehk;->zznhf:Lcom/google/android/gms/internal/zzehl;

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/zzehk;->zznhf:Lcom/google/android/gms/internal/zzehl;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzegx;->zza(Lcom/google/android/gms/internal/zzehg;)V

    goto/16 :goto_0

    :sswitch_d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegx;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzehk;->zznhh:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzehk;->zznhi:Lcom/google/android/gms/internal/zzehr;

    if-nez v0, :cond_8

    new-instance v0, Lcom/google/android/gms/internal/zzehr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzehr;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzehk;->zznhi:Lcom/google/android/gms/internal/zzehr;

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/zzehk;->zznhi:Lcom/google/android/gms/internal/zzehr;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzegx;->zza(Lcom/google/android/gms/internal/zzehg;)V

    goto/16 :goto_0

    :sswitch_f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegx;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzehk;->zznho:[B

    goto/16 :goto_0

    :sswitch_10
    iget-object v0, p0, Lcom/google/android/gms/internal/zzehk;->zznhp:Lcom/google/android/gms/internal/zzeht;

    if-nez v0, :cond_9

    new-instance v0, Lcom/google/android/gms/internal/zzeht;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzeht;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzehk;->zznhp:Lcom/google/android/gms/internal/zzeht;

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/zzehk;->zznhp:Lcom/google/android/gms/internal/zzeht;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzegx;->zza(Lcom/google/android/gms/internal/zzehg;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
        0x50 -> :sswitch_a
        0x58 -> :sswitch_b
        0x62 -> :sswitch_c
        0x6a -> :sswitch_d
        0x72 -> :sswitch_e
        0x7a -> :sswitch_f
        0x8a -> :sswitch_10
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzehk;->url:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzehk;->url:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzegy;->zzl(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzehk;->zznhd:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzehk;->zznhd:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzegy;->zzl(ILjava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzehk;->zznhe:Ljava/lang/String;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzehk;->zznhe:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzegy;->zzl(ILjava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzehk;->zznhg:[Lcom/google/android/gms/internal/zzehs;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzehk;->zznhg:[Lcom/google/android/gms/internal/zzehs;

    array-length v0, v0

    if-lez v0, :cond_4

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzehk;->zznhg:[Lcom/google/android/gms/internal/zzehs;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzehk;->zznhg:[Lcom/google/android/gms/internal/zzehs;

    aget-object v2, v2, v0

    if-eqz v2, :cond_3

    const/4 v3, 0x4

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/zzegy;->zza(ILcom/google/android/gms/internal/zzehg;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzehk;->zznhj:Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    const/4 v0, 0x5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzehk;->zznhj:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzegy;->zzl(IZ)V

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzehk;->zznhk:[Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/zzehk;->zznhk:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_7

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzehk;->zznhk:[Ljava/lang/String;

    array-length v0, v0

    if-ge v1, v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/zzehk;->zznhk:[Ljava/lang/String;

    aget-object v0, v0, v1

    if-eqz v0, :cond_6

    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/zzegy;->zzl(ILjava/lang/String;)V

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/zzehk;->zznhl:Ljava/lang/String;

    if-eqz v0, :cond_8

    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/android/gms/internal/zzehk;->zznhl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzegy;->zzl(ILjava/lang/String;)V

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/zzehk;->zznhm:Ljava/lang/Boolean;

    if-eqz v0, :cond_9

    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/android/gms/internal/zzehk;->zznhm:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzegy;->zzl(IZ)V

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/zzehk;->zznhn:Ljava/lang/Boolean;

    if-eqz v0, :cond_a

    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/android/gms/internal/zzehk;->zznhn:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzegy;->zzl(IZ)V

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzehk;->zznhb:Ljava/lang/Integer;

    if-eqz v0, :cond_b

    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/android/gms/internal/zzehk;->zznhb:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzegy;->zzv(II)V

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzehk;->zznhc:Ljava/lang/Integer;

    if-eqz v0, :cond_c

    const/16 v0, 0xb

    iget-object v1, p0, Lcom/google/android/gms/internal/zzehk;->zznhc:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzegy;->zzv(II)V

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzehk;->zznhf:Lcom/google/android/gms/internal/zzehl;

    if-eqz v0, :cond_d

    const/16 v0, 0xc

    iget-object v1, p0, Lcom/google/android/gms/internal/zzehk;->zznhf:Lcom/google/android/gms/internal/zzehl;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzegy;->zza(ILcom/google/android/gms/internal/zzehg;)V

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzehk;->zznhh:Ljava/lang/String;

    if-eqz v0, :cond_e

    const/16 v0, 0xd

    iget-object v1, p0, Lcom/google/android/gms/internal/zzehk;->zznhh:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzegy;->zzl(ILjava/lang/String;)V

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzehk;->zznhi:Lcom/google/android/gms/internal/zzehr;

    if-eqz v0, :cond_f

    const/16 v0, 0xe

    iget-object v1, p0, Lcom/google/android/gms/internal/zzehk;->zznhi:Lcom/google/android/gms/internal/zzehr;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzegy;->zza(ILcom/google/android/gms/internal/zzehg;)V

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzehk;->zznho:[B

    if-eqz v0, :cond_10

    const/16 v0, 0xf

    iget-object v1, p0, Lcom/google/android/gms/internal/zzehk;->zznho:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzegy;->zzc(I[B)V

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/zzehk;->zznhp:Lcom/google/android/gms/internal/zzeht;

    if-eqz v0, :cond_11

    const/16 v0, 0x11

    iget-object v1, p0, Lcom/google/android/gms/internal/zzehk;->zznhp:Lcom/google/android/gms/internal/zzeht;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzegy;->zza(ILcom/google/android/gms/internal/zzehg;)V

    :cond_11
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzeha;->zza(Lcom/google/android/gms/internal/zzegy;)V

    return-void
.end method

.method protected final zzn()I
    .locals 5

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzeha;->zzn()I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzehk;->url:Ljava/lang/String;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzehk;->url:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzegy;->zzm(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzehk;->zznhd:Ljava/lang/String;

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzehk;->zznhd:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzegy;->zzm(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/zzehk;->zznhe:Ljava/lang/String;

    if-eqz v2, :cond_2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/android/gms/internal/zzehk;->zznhe:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzegy;->zzm(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/zzehk;->zznhg:[Lcom/google/android/gms/internal/zzehs;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzehk;->zznhg:[Lcom/google/android/gms/internal/zzehs;

    array-length v2, v2

    if-lez v2, :cond_5

    move v2, v0

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/zzehk;->zznhg:[Lcom/google/android/gms/internal/zzehs;

    array-length v3, v3

    if-ge v0, v3, :cond_4

    iget-object v3, p0, Lcom/google/android/gms/internal/zzehk;->zznhg:[Lcom/google/android/gms/internal/zzehs;

    aget-object v3, v3, v0

    if-eqz v3, :cond_3

    const/4 v4, 0x4

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/zzegy;->zzb(ILcom/google/android/gms/internal/zzehg;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v2

    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/internal/zzehk;->zznhj:Ljava/lang/Boolean;

    if-eqz v2, :cond_6

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/android/gms/internal/zzehk;->zznhj:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-static {v2}, Lcom/google/android/gms/internal/zzegy;->zzgs(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/internal/zzehk;->zznhk:[Ljava/lang/String;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/google/android/gms/internal/zzehk;->zznhk:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_9

    move v2, v1

    move v3, v1

    :goto_1
    iget-object v4, p0, Lcom/google/android/gms/internal/zzehk;->zznhk:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_8

    iget-object v4, p0, Lcom/google/android/gms/internal/zzehk;->zznhk:[Ljava/lang/String;

    aget-object v4, v4, v1

    if-eqz v4, :cond_7

    add-int/lit8 v3, v3, 0x1

    invoke-static {v4}, Lcom/google/android/gms/internal/zzegy;->zzrk(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_8
    add-int/2addr v0, v2

    mul-int/lit8 v1, v3, 0x1

    add-int/2addr v0, v1

    :cond_9
    iget-object v1, p0, Lcom/google/android/gms/internal/zzehk;->zznhl:Ljava/lang/String;

    if-eqz v1, :cond_a

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/gms/internal/zzehk;->zznhl:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzegy;->zzm(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    iget-object v1, p0, Lcom/google/android/gms/internal/zzehk;->zznhm:Ljava/lang/Boolean;

    if-eqz v1, :cond_b

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/gms/internal/zzehk;->zznhm:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-static {v1}, Lcom/google/android/gms/internal/zzegy;->zzgs(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_b
    iget-object v1, p0, Lcom/google/android/gms/internal/zzehk;->zznhn:Ljava/lang/Boolean;

    if-eqz v1, :cond_c

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/gms/internal/zzehk;->zznhn:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-static {v1}, Lcom/google/android/gms/internal/zzegy;->zzgs(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_c
    iget-object v1, p0, Lcom/google/android/gms/internal/zzehk;->zznhb:Ljava/lang/Integer;

    if-eqz v1, :cond_d

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/android/gms/internal/zzehk;->zznhb:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzegy;->zzaf(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_d
    iget-object v1, p0, Lcom/google/android/gms/internal/zzehk;->zznhc:Ljava/lang/Integer;

    if-eqz v1, :cond_e

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/android/gms/internal/zzehk;->zznhc:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzegy;->zzaf(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_e
    iget-object v1, p0, Lcom/google/android/gms/internal/zzehk;->zznhf:Lcom/google/android/gms/internal/zzehl;

    if-eqz v1, :cond_f

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/android/gms/internal/zzehk;->zznhf:Lcom/google/android/gms/internal/zzehl;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzegy;->zzb(ILcom/google/android/gms/internal/zzehg;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_f
    iget-object v1, p0, Lcom/google/android/gms/internal/zzehk;->zznhh:Ljava/lang/String;

    if-eqz v1, :cond_10

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/android/gms/internal/zzehk;->zznhh:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzegy;->zzm(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_10
    iget-object v1, p0, Lcom/google/android/gms/internal/zzehk;->zznhi:Lcom/google/android/gms/internal/zzehr;

    if-eqz v1, :cond_11

    const/16 v1, 0xe

    iget-object v2, p0, Lcom/google/android/gms/internal/zzehk;->zznhi:Lcom/google/android/gms/internal/zzehr;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzegy;->zzb(ILcom/google/android/gms/internal/zzehg;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_11
    iget-object v1, p0, Lcom/google/android/gms/internal/zzehk;->zznho:[B

    if-eqz v1, :cond_12

    const/16 v1, 0xf

    iget-object v2, p0, Lcom/google/android/gms/internal/zzehk;->zznho:[B

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzegy;->zzd(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_12
    iget-object v1, p0, Lcom/google/android/gms/internal/zzehk;->zznhp:Lcom/google/android/gms/internal/zzeht;

    if-eqz v1, :cond_13

    const/16 v1, 0x11

    iget-object v2, p0, Lcom/google/android/gms/internal/zzehk;->zznhp:Lcom/google/android/gms/internal/zzeht;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzegy;->zzb(ILcom/google/android/gms/internal/zzehg;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_13
    return v0
.end method
