.class final Lcom/tendcloud/tenddata/game/bg;
.super Ljava/lang/Object;


# static fields
.field static a:Lcom/tendcloud/tenddata/game/m; = null

.field static b:Ljava/lang/String; = null

.field static c:Ljava/lang/String; = null

.field static d:[B = null

.field static final e:Ljava/lang/String; = "pref_file"

.field static final f:Ljava/lang/String; = "pref.accountid.key"

.field static g:Landroid/content/SharedPreferences; = null

.field private static final h:Ljava/lang/String; = "LAST_SENT_PUSH_TIME"

.field private static final i:Ljava/lang/String; = "appcontext_push"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string/jumbo v0, "td_database_push"

    sput-object v0, Lcom/tendcloud/tenddata/game/bg;->b:Ljava/lang/String;

    const-string/jumbo v0, "utf-8"

    sput-object v0, Lcom/tendcloud/tenddata/game/bg;->c:Ljava/lang/String;

    :try_start_0
    new-instance v0, Lcom/tendcloud/tenddata/game/m;

    sget-object v1, Lcom/tendcloud/tenddata/game/az;->a:Landroid/content/Context;

    sget-object v2, Lcom/tendcloud/tenddata/game/bg;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/tendcloud/tenddata/game/m;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/tendcloud/tenddata/game/bg;->a:Lcom/tendcloud/tenddata/game/m;

    sget-object v0, Lcom/tendcloud/tenddata/game/az;->a:Landroid/content/Context;

    const-string/jumbo v1, "talkingdata_file_prefence"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/tendcloud/tenddata/game/bg;->g:Landroid/content/SharedPreferences;

    sget-object v0, Lcom/tendcloud/tenddata/game/az;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/aa;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/tendcloud/tenddata/game/az;->a:Landroid/content/Context;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/tendcloud/tenddata/game/bg;->d:[B

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-class v0, Lcom/tendcloud/tenddata/game/az;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/tendcloud/tenddata/game/bg;->d:[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/tendcloud/tenddata/game/bp;->b:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, "pref_file"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "pref.accountid.key"

    const-string/jumbo v2, "-1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static declared-synchronized a()Ljava/util/List;
    .locals 6

    const-class v2, Lcom/tendcloud/tenddata/game/bg;

    monitor-enter v2

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/tendcloud/tenddata/game/bg;->a:Lcom/tendcloud/tenddata/game/m;

    const/16 v3, 0x64

    invoke-virtual {v1, v3}, Lcom/tendcloud/tenddata/game/m;->a(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    sget-object v4, Lcom/tendcloud/tenddata/game/bg;->d:[B

    invoke-static {v0, v4}, Lcom/tendcloud/tenddata/game/aa;->c([B[B)[B

    move-result-object v0

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    :goto_1
    :try_start_2
    sget-boolean v3, Lcom/tendcloud/tenddata/game/bp;->b:Z

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    :goto_2
    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :catch_1
    move-exception v1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_2
.end method

.method static a(J)V
    .locals 2

    sget-object v0, Lcom/tendcloud/tenddata/game/bg;->g:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "LAST_SENT_PUSH_TIME"

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method static declared-synchronized a(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    const-class v2, Lcom/tendcloud/tenddata/game/bg;

    monitor-enter v2

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_2

    :cond_0
    const-string/jumbo v1, "TDGA"

    const-string/jumbo v3, "PushStoreManager storeMessage()# message is null or empty"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v2

    return v0

    :cond_2
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    sget-object v3, Lcom/tendcloud/tenddata/game/bg;->d:[B

    invoke-static {v1, v3}, Lcom/tendcloud/tenddata/game/aa;->b([B[B)[B

    move-result-object v1

    sget-object v3, Lcom/tendcloud/tenddata/game/bg;->a:Lcom/tendcloud/tenddata/game/m;

    invoke-virtual {v3, v1}, Lcom/tendcloud/tenddata/game/m;->a([B)V

    sget-object v1, Lcom/tendcloud/tenddata/game/bg;->a:Lcom/tendcloud/tenddata/game/m;

    invoke-virtual {v1}, Lcom/tendcloud/tenddata/game/m;->b()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    sget-boolean v3, Lcom/tendcloud/tenddata/game/bp;->b:Z

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method static b()V
    .locals 2

    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/bg;->a:Lcom/tendcloud/tenddata/game/m;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/m;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/tendcloud/tenddata/game/bp;->b:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method static b(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/tendcloud/tenddata/game/bg;->g:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "appcontext_push"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method static c()V
    .locals 0

    return-void
.end method

.method static d()Ljava/lang/Long;
    .locals 4

    sget-object v0, Lcom/tendcloud/tenddata/game/bg;->g:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "LAST_SENT_PUSH_TIME"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method static e()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/tendcloud/tenddata/game/bg;->g:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "appcontext_push"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
