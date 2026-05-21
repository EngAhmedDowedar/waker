.class public final Lcom/tendcloud/tenddata/game/bm;
.super Ljava/lang/Object;


# static fields
.field static a:Ljava/util/Random; = null

.field private static b:Landroid/os/Handler; = null

.field private static final c:I = 0x1d4c0

.field private static final d:I = 0x1b7740

.field private static final e:I = 0xbb8

.field private static final f:I = 0xbb8

.field private static final g:I = 0x1

.field private static final h:I = 0x2

.field private static final i:I = 0x3

.field private static final j:I = 0x4

.field private static final k:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    sput-object v0, Lcom/tendcloud/tenddata/game/bm;->b:Landroid/os/Handler;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "unknow"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "Loop"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "Resume"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "Pause"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "Right Now"

    aput-object v2, v0, v1

    sput-object v0, Lcom/tendcloud/tenddata/game/bm;->k:[Ljava/lang/String;

    new-instance v0, Lcom/tendcloud/tenddata/game/bn;

    sget-object v1, Lcom/tendcloud/tenddata/TalkingDataGA;->k:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tendcloud/tenddata/game/bn;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/tendcloud/tenddata/game/bm;->b:Landroid/os/Handler;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/game/bm;->a:Ljava/util/Random;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 2

    invoke-static {}, Lcom/tendcloud/tenddata/TalkingDataGA;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bm;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x1d4c0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bm;->b(I)V

    sget-boolean v0, Lcom/tendcloud/tenddata/game/bp;->b:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "TDGA"

    const-string/jumbo v1, "init NORMAL_SEND_MESSAGE_INTERVAL"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v0, 0x1b7740

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bm;->b(I)V

    sget-boolean v0, Lcom/tendcloud/tenddata/game/bp;->b:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "TDGA"

    const-string/jumbo v1, "init SERVICE_SEND_MESSAGE_INTERVAL"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic a(I)V
    .locals 0

    invoke-static {p0}, Lcom/tendcloud/tenddata/game/bm;->b(I)V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/tendcloud/tenddata/game/bm;->b(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static b()V
    .locals 4

    const v0, 0x1d4c0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bm;->b(I)V

    sget-object v0, Lcom/tendcloud/tenddata/game/bm;->b:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    sget-object v0, Lcom/tendcloud/tenddata/game/bm;->b:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private static declared-synchronized b(I)V
    .locals 6

    const-class v1, Lcom/tendcloud/tenddata/game/bm;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/bm;->b:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/tendcloud/tenddata/game/bm;->b:Landroid/os/Handler;

    const/4 v2, 0x1

    int-to-long v4, p0

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static b(Landroid/content/Context;)Z
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    const-string/jumbo v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    iget v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v3, v4, :cond_0

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string/jumbo v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method static c()V
    .locals 4

    sget-object v0, Lcom/tendcloud/tenddata/game/bm;->b:Landroid/os/Handler;

    const/4 v1, 0x3

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public static d()V
    .locals 2

    sget-object v0, Lcom/tendcloud/tenddata/game/bm;->b:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public static e()V
    .locals 5

    const/4 v4, 0x1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v0, 0x3b6

    if-lt v1, v4, :cond_0

    const/4 v2, 0x6

    if-gt v1, v2, :cond_0

    const/16 v0, 0xc8

    :cond_0
    sget-object v1, Lcom/tendcloud/tenddata/game/bm;->a:Ljava/util/Random;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    if-le v1, v0, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    const-string/jumbo v2, "loc"

    invoke-static {}, Lcom/tendcloud/tenddata/TalkingDataGA;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/tendcloud/tenddata/game/z;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "net"

    invoke-static {}, Lcom/tendcloud/tenddata/TalkingDataGA;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/tendcloud/tenddata/game/o;->r(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    rem-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_2

    invoke-static {}, Lcom/tendcloud/tenddata/TalkingDataGA;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/z;->f(Landroid/content/Context;)[[Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "ruas"

    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "ras"

    aget-object v1, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string/jumbo v1, "__tx.env"

    invoke-static {v1, v0}, Lcom/tendcloud/tenddata/TalkingDataGA;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method static synthetic f()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tendcloud/tenddata/game/bm;->k:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g()V
    .locals 0

    invoke-static {}, Lcom/tendcloud/tenddata/game/bm;->h()V

    return-void
.end method

.method private static h()V
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/TalkingDataGA;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/o;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "Network is not connected!"

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bp;->a([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/tendcloud/tenddata/game/bm;->e()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_1
    sget-object v0, Lcom/tendcloud/tenddata/TalkingDataGA;->a:Landroid/content/Context;

    if-nez v0, :cond_2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "TalkingDataGA.sContext is null..."

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bp;->a([Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/tendcloud/tenddata/game/bm;->e()V

    goto :goto_0

    :cond_2
    :try_start_2
    invoke-static {}, Lcom/tendcloud/tenddata/game/aw;->a()Ljava/util/List;

    move-result-object v0

    new-instance v2, Lcom/tendcloud/tenddata/game/ay;

    invoke-direct {v2}, Lcom/tendcloud/tenddata/game/ay;-><init>()V

    const-string/jumbo v3, ""

    if-nez v0, :cond_3

    sget-object v3, Lcom/tendcloud/tenddata/TalkingDataGA;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/tendcloud/tenddata/game/o;->g(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_3
    invoke-virtual {v2, v0}, Lcom/tendcloud/tenddata/game/ay;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tendcloud/tenddata/game/bo;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v2, v0}, Lcom/tendcloud/tenddata/game/ay;->b(Ljava/util/List;)V

    sget-boolean v0, Lcom/tendcloud/tenddata/game/bp;->b:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "success post:\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x4

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bp;->a([Ljava/lang/String;)V

    :cond_4
    :goto_1
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Send success : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bp;->b([Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_0

    invoke-static {}, Lcom/tendcloud/tenddata/game/bm;->e()V

    goto/16 :goto_0

    :cond_5
    invoke-static {}, Lcom/tendcloud/tenddata/game/bm;->e()V

    goto/16 :goto_0

    :cond_6
    :try_start_3
    invoke-virtual {v2, v0}, Lcom/tendcloud/tenddata/game/ay;->c(Ljava/util/List;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v2, 0x1

    :try_start_4
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Send error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/tendcloud/tenddata/game/bp;->c([Ljava/lang/String;)V

    sget-boolean v2, Lcom/tendcloud/tenddata/game/bp;->b:Z

    if-eqz v2, :cond_7

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_7
    if-nez v1, :cond_0

    invoke-static {}, Lcom/tendcloud/tenddata/game/bm;->e()V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    if-nez v1, :cond_8

    invoke-static {}, Lcom/tendcloud/tenddata/game/bm;->e()V

    :cond_8
    throw v0
.end method
