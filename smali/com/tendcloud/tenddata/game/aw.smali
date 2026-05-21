.class public Lcom/tendcloud/tenddata/game/aw;
.super Ljava/lang/Object;


# static fields
.field static a:Lcom/tendcloud/tenddata/game/m;

.field static b:Ljava/lang/String;

.field static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string/jumbo v0, "tdgadatabase"

    sput-object v0, Lcom/tendcloud/tenddata/game/aw;->b:Ljava/lang/String;

    const-string/jumbo v0, "utf-8"

    sput-object v0, Lcom/tendcloud/tenddata/game/aw;->c:Ljava/lang/String;

    new-instance v0, Lcom/tendcloud/tenddata/game/m;

    sget-object v1, Lcom/tendcloud/tenddata/TalkingDataGA;->a:Landroid/content/Context;

    const-string/jumbo v2, "tdandroidgame"

    invoke-direct {v0, v1, v2}, Lcom/tendcloud/tenddata/game/m;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/tendcloud/tenddata/game/aw;->a:Lcom/tendcloud/tenddata/game/m;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static declared-synchronized a()Ljava/util/List;
    .locals 6

    const-class v2, Lcom/tendcloud/tenddata/game/aw;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/TalkingDataGA;->a:Landroid/content/Context;

    const-string/jumbo v1, "TDGAtcagentgame.db"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    const/4 v0, 0x0

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lcom/tendcloud/tenddata/game/av;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/av;-><init>()V

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/av;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tendcloud/tenddata/game/ap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v4, Lcom/tendcloud/tenddata/game/aw;->a:Lcom/tendcloud/tenddata/game/m;

    iget-object v0, v0, Lcom/tendcloud/tenddata/game/ap;->b:Ljava/lang/String;

    sget-object v5, Lcom/tendcloud/tenddata/game/aw;->c:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/tendcloud/tenddata/game/m;->a([B)V

    sget-object v0, Lcom/tendcloud/tenddata/game/aw;->a:Lcom/tendcloud/tenddata/game/m;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/m;->b()V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :cond_1
    :try_start_2
    sget-object v1, Lcom/tendcloud/tenddata/game/aw;->a:Lcom/tendcloud/tenddata/game/m;

    const/16 v3, 0xc8

    invoke-virtual {v1, v3}, Lcom/tendcloud/tenddata/game/m;->a(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    new-instance v4, Ljava/lang/String;

    sget-object v5, Lcom/tendcloud/tenddata/game/aw;->c:Ljava/lang/String;

    invoke-direct {v4, v0, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    new-instance v0, Lcom/tendcloud/tenddata/game/ap;

    invoke-direct {v0, v4}, Lcom/tendcloud/tenddata/game/ap;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    :cond_3
    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method static declared-synchronized a(Lcom/tendcloud/tenddata/game/bz;)Z
    .locals 5

    const-class v1, Lcom/tendcloud/tenddata/game/aw;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/be;->b(Lcom/tendcloud/tenddata/game/bz;)V

    sget-object v2, Lcom/tendcloud/tenddata/game/aw;->a:Lcom/tendcloud/tenddata/game/m;

    invoke-virtual {p0}, Lcom/tendcloud/tenddata/game/bz;->c()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/tendcloud/tenddata/game/aw;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tendcloud/tenddata/game/m;->a([B)V

    sget-object v2, Lcom/tendcloud/tenddata/game/aw;->a:Lcom/tendcloud/tenddata/game/m;

    invoke-virtual {v2}, Lcom/tendcloud/tenddata/game/m;->b()V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public static declared-synchronized b()Z
    .locals 2

    const-class v1, Lcom/tendcloud/tenddata/game/aw;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/aw;->a:Lcom/tendcloud/tenddata/game/m;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/m;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
