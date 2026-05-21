.class public final Lcom/tendcloud/tenddata/game/bv;
.super Ljava/lang/Object;


# static fields
.field static final a:I = 0x64

.field static final b:I = 0x1

.field static final c:I = 0x2

.field static final d:I = 0x3

.field static final e:I = 0x4

.field static final f:I = 0x5

.field static final g:I = 0x6

.field static final h:I = 0x7

.field static final i:I = 0x8

.field static final j:I = 0x9

.field static final k:I = 0xa

.field static final l:I = 0xb

.field static final m:I = 0xc

.field static final n:I = 0xd

.field static final o:I = 0xe

.field static final p:I = 0xf

.field static final q:I = 0x10

.field static final r:I = 0x11

.field static final s:I = 0x12

.field private static t:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/tendcloud/tenddata/game/bw;

    sget-object v1, Lcom/tendcloud/tenddata/TalkingDataGA;->k:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tendcloud/tenddata/game/bw;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/tendcloud/tenddata/game/bv;->t:Landroid/os/Handler;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)J
    .locals 6

    const-wide v2, 0x3ffffffffffe5L

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    const-wide/16 v4, 0x83

    mul-long/2addr v2, v4

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-wide v2
.end method

.method public static final a()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/tendcloud/tenddata/game/bv;->t:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Landroid/os/Message;)V
    .locals 0

    invoke-static {p0}, Lcom/tendcloud/tenddata/game/bv;->b(Landroid/os/Message;)V

    return-void
.end method

.method private static b()V
    .locals 12

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-object v0, Lcom/tendcloud/tenddata/TalkingDataGA;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bq;->b(Landroid/content/Context;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-nez v0, :cond_2

    new-instance v0, Lcom/tendcloud/tenddata/game/cd;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/cd;-><init>()V

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/aw;->a(Lcom/tendcloud/tenddata/game/bz;)Z

    sget-object v0, Lcom/tendcloud/tenddata/TalkingDataGA;->a:Landroid/content/Context;

    invoke-static {v0, v4, v5}, Lcom/tendcloud/tenddata/game/bq;->a(Landroid/content/Context;J)V

    move v0, v1

    :goto_0
    invoke-static {}, Lcom/tendcloud/tenddata/game/bq;->b()J

    move-result-wide v6

    sub-long v6, v4, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/32 v8, 0x493e0

    cmp-long v3, v6, v8

    if-lez v3, :cond_0

    sget-object v3, Lcom/tendcloud/tenddata/TalkingDataGA;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/tendcloud/tenddata/game/z;->f(Landroid/content/Context;)[[Ljava/lang/Long;

    move-result-object v3

    const-string/jumbo v8, ""

    const/16 v8, 0x15

    invoke-static {v8}, Lcom/tendcloud/tenddata/game/aa;->a(I)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {}, Lcom/tendcloud/tenddata/game/bv;->d()Ljava/lang/String;

    move-result-object v2

    :goto_1
    aget-object v1, v3, v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v1, ""

    if-eqz v0, :cond_4

    sget-object v0, Lcom/tendcloud/tenddata/TalkingDataGA;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/z;->g(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    new-instance v1, Lcom/tendcloud/tenddata/game/by;

    invoke-direct {v1, v0, v2, v8}, Lcom/tendcloud/tenddata/game/by;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/aw;->a(Lcom/tendcloud/tenddata/game/bz;)Z

    invoke-static {v4, v5}, Lcom/tendcloud/tenddata/game/bq;->a(J)V

    :cond_0
    new-instance v0, Lcom/tendcloud/tenddata/game/q;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/q;-><init>()V

    :try_start_0
    sget-object v1, Lcom/tendcloud/tenddata/TalkingDataGA;->a:Landroid/content/Context;

    const-string/jumbo v2, ""

    const-string/jumbo v3, "ga-dyn-act"

    const-class v4, Lcom/tendcloud/tenddata/game/at;

    const-class v5, Lcom/tendcloud/tenddata/game/au;

    const-string/jumbo v6, "com.tendcloud.tenddata.ota.az"

    invoke-virtual/range {v0 .. v6}, Lcom/tendcloud/tenddata/game/q;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Lcom/tendcloud/tenddata/game/s;

    move-result-object v0

    check-cast v0, Lcom/tendcloud/tenddata/game/at;

    invoke-interface {v0}, Lcom/tendcloud/tenddata/game/at;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_3
    invoke-static {}, Lcom/tendcloud/tenddata/game/bv;->c()V

    return-void

    :cond_2
    new-instance v0, Lcom/tendcloud/tenddata/game/cd;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/cd;-><init>()V

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/be;->b(Lcom/tendcloud/tenddata/game/bz;)V

    move v0, v2

    goto :goto_0

    :cond_3
    aget-object v2, v3, v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_4
    const-wide/32 v10, 0x2255100

    cmp-long v0, v6, v10

    if-lez v0, :cond_5

    const/4 v0, 0x2

    aget-object v0, v3, v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/tendcloud/tenddata/game/bp;->b:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :cond_5
    move-object v0, v1

    goto :goto_2
.end method

.method private static final b(Landroid/os/Message;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    :try_start_0
    invoke-static {}, Lcom/tendcloud/tenddata/TalkingDataGA;->a()Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/tendcloud/tenddata/TalkingDataGA;->g:Z

    if-nez v0, :cond_1

    iget v0, p0, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "SDK not initialized. TalkingDataGAHandler.handleMessage()"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bp;->c([Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/bv;->c(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-array v1, v6, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MainHandler handleMessage() error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/bp;->c([Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :sswitch_1
    :try_start_1
    invoke-static {}, Lcom/tendcloud/tenddata/game/bv;->b()V

    goto :goto_0

    :sswitch_2
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/bv;->d(Landroid/os/Message;)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/tendcloud/tenddata/game/bz;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/aw;->a(Lcom/tendcloud/tenddata/game/bz;)Z

    move-result v0

    iget v1, p0, Landroid/os/Message;->what:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/tendcloud/tenddata/game/ck;

    sget-object v1, Lcom/tendcloud/tenddata/TalkingDataGA;->a:Landroid/content/Context;

    const-string/jumbo v2, "TalkingData_Push_SharedPreferences"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/ck;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/ck;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/ck;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v3, v0}, Lcom/tendcloud/tenddata/game/t;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/tendcloud/tenddata/game/bz;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/aw;->a(Lcom/tendcloud/tenddata/game/bz;)Z

    invoke-static {}, Lcom/tendcloud/tenddata/game/bm;->d()V

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/tendcloud/tenddata/game/ca;

    sget-object v1, Lcom/tendcloud/tenddata/game/ca$a;->b:Lcom/tendcloud/tenddata/game/ca$a;

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/game/ca;->a(Lcom/tendcloud/tenddata/game/ca$a;)V

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/aw;->a(Lcom/tendcloud/tenddata/game/bz;)Z

    invoke-static {}, Lcom/tendcloud/tenddata/game/bm;->d()V

    goto/16 :goto_0

    :sswitch_6
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/bv;->e(Landroid/os/Message;)V

    invoke-static {}, Lcom/tendcloud/tenddata/game/bm;->d()V

    goto/16 :goto_0

    :sswitch_7
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/bv;->f(Landroid/os/Message;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_3
        0x6 -> :sswitch_4
        0x7 -> :sswitch_5
        0x8 -> :sswitch_4
        0x9 -> :sswitch_3
        0xa -> :sswitch_3
        0xb -> :sswitch_3
        0xc -> :sswitch_6
        0xd -> :sswitch_3
        0xe -> :sswitch_7
        0xf -> :sswitch_3
        0x10 -> :sswitch_3
        0x11 -> :sswitch_3
        0x12 -> :sswitch_4
        0x64 -> :sswitch_1
    .end sparse-switch
.end method

.method private static c()V
    .locals 2

    sget-object v0, Lcom/tendcloud/tenddata/TalkingDataGA;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/o;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tendcloud/tenddata/game/bx;

    invoke-direct {v1}, Lcom/tendcloud/tenddata/game/bx;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private static final c(Landroid/os/Message;)V
    .locals 0

    invoke-static {}, Lcom/tendcloud/tenddata/game/bm;->b()V

    invoke-static {}, Lcom/tendcloud/tenddata/game/br;->a()V

    return-void
.end method

.method private static d()Ljava/lang/String;
    .locals 8

    const-string/jumbo v1, ""

    :try_start_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v0, "["

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/tendcloud/tenddata/game/u;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tendcloud/tenddata/game/a;

    iget-object v4, v0, Lcom/tendcloud/tenddata/game/a;->c:Ljava/lang/String;

    const-string/jumbo v5, "android."

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v0, Lcom/tendcloud/tenddata/game/a;->c:Ljava/lang/String;

    const-string/jumbo v5, "system"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lcom/tendcloud/tenddata/game/a;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bv;->a(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_1
    const-string/jumbo v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1
.end method

.method private static final d(Landroid/os/Message;)V
    .locals 0

    invoke-static {}, Lcom/tendcloud/tenddata/game/bm;->c()V

    invoke-static {}, Lcom/tendcloud/tenddata/game/br;->b()V

    return-void
.end method

.method private static final e(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/tendcloud/tenddata/TDGAAccount$a;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/br;->a(Lcom/tendcloud/tenddata/TDGAAccount$a;)V

    return-void
.end method

.method private static final f(Landroid/os/Message;)V
    .locals 3

    sget-object v1, Lcom/tendcloud/tenddata/TDGAAccount;->a:Lcom/tendcloud/tenddata/TDGAAccount;

    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/tendcloud/tenddata/TDGAAccount;

    invoke-static {v1, v0}, Lcom/tendcloud/tenddata/game/br;->a(Lcom/tendcloud/tenddata/TDGAAccount;Lcom/tendcloud/tenddata/TDGAAccount;)V

    new-instance v1, Lcom/tendcloud/tenddata/game/cn;

    sget-object v2, Lcom/tendcloud/tenddata/game/br;->a:Ljava/lang/String;

    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/tendcloud/tenddata/TDGAAccount;

    invoke-direct {v1, v2, v0}, Lcom/tendcloud/tenddata/game/cn;-><init>(Ljava/lang/String;Lcom/tendcloud/tenddata/TDGAAccount;)V

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/aw;->a(Lcom/tendcloud/tenddata/game/bz;)Z

    return-void
.end method
