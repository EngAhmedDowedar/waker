.class public Lcom/tendcloud/tenddata/game/u;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "no instances"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static a()Ljava/util/List;
    .locals 8

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string/jumbo v2, "/proc"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    if-eqz v5, :cond_0

    :try_start_1
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    :try_start_2
    new-instance v5, Lcom/tendcloud/tenddata/game/a;

    const/4 v6, -0x1

    invoke-direct {v5, v6}, Lcom/tendcloud/tenddata/game/a;-><init>(I)V

    iget v6, v5, Lcom/tendcloud/tenddata/game/a;->b:I

    const/16 v7, 0x3e8

    if-lt v6, v7, :cond_1

    iget v6, v5, Lcom/tendcloud/tenddata/game/a;->b:I

    const/16 v7, 0x270f

    if-gt v6, v7, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v6, v5, Lcom/tendcloud/tenddata/game/a;->c:Ljava/lang/String;

    const-string/jumbo v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v5, v5, Lcom/tendcloud/tenddata/game/a;->c:Ljava/lang/String;

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v5, Lcom/tendcloud/tenddata/game/a;

    invoke-direct {v5, v4}, Lcom/tendcloud/tenddata/game/a;-><init>(I)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    goto :goto_1

    :catch_1
    move-exception v0

    :cond_2
    return-object v1

    :catch_2
    move-exception v4

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;)Ljava/util/List;
    .locals 7

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string/jumbo v2, "/proc"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_3

    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    if-eqz v5, :cond_0

    :try_start_1
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    :try_start_2
    new-instance v5, Lcom/tendcloud/tenddata/game/a;

    invoke-direct {v5, v4}, Lcom/tendcloud/tenddata/game/a;-><init>(I)V

    iget-boolean v4, v5, Lcom/tendcloud/tenddata/game/a;->a:Z

    if-nez v4, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v4, v5, Lcom/tendcloud/tenddata/game/a;->b:I

    const/16 v6, 0x3e8

    if-lt v4, v6, :cond_2

    iget v4, v5, Lcom/tendcloud/tenddata/game/a;->b:I

    const/16 v6, 0x270f

    if-le v4, v6, :cond_0

    :cond_2
    iget-object v4, v5, Lcom/tendcloud/tenddata/game/a;->c:Ljava/lang/String;

    const-string/jumbo v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v5, Lcom/tendcloud/tenddata/game/a;->c:Ljava/lang/String;

    const-string/jumbo v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    goto :goto_1

    :catch_1
    move-exception v0

    :cond_3
    return-object v1

    :catch_2
    move-exception v4

    goto :goto_1
.end method

.method public static b(Landroid/content/Context;)Ljava/util/List;
    .locals 7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_1

    invoke-static {}, Lcom/tendcloud/tenddata/game/u;->a()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tendcloud/tenddata/game/a;

    new-instance v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v4, v0, Lcom/tendcloud/tenddata/game/a;->c:Ljava/lang/String;

    iget v5, v0, Lcom/tendcloud/tenddata/game/a;->d:I

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    iget v0, v0, Lcom/tendcloud/tenddata/game/a;->b:I

    iput v0, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_1
    return-object v0

    :cond_1
    const-string/jumbo v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    goto :goto_1
.end method

.method public static b()Z
    .locals 4

    invoke-static {}, Lcom/tendcloud/tenddata/game/u;->a()Ljava/util/List;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tendcloud/tenddata/game/a;

    iget v3, v0, Lcom/tendcloud/tenddata/game/a;->d:I

    if-ne v3, v1, :cond_0

    iget-boolean v0, v0, Lcom/tendcloud/tenddata/game/a;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
