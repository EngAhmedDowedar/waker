.class public Lcom/helpshift/util/DBUtil;
.super Ljava/lang/Object;
.source "DBUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HelpShiftDebug"

.field private static final sdPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, ".backups/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/helpshift/HelpshiftContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/helpshift/databases/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/helpshift/util/DBUtil;->sdPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static backupDatabase(Ljava/lang/String;)V
    .locals 11
    .param p0, "dbName"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-static {p0}, Lcom/helpshift/util/DBUtil;->doesDatabaseExist(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 28
    :cond_1
    :try_start_0
    sget-object v2, Lcom/helpshift/util/DBUtil;->sdPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    .line 29
    .local v9, "sd":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 30
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    .line 33
    :cond_2
    invoke-virtual {v9}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 34
    invoke-static {}, Lcom/helpshift/HelpshiftContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 37
    .local v6, "currentDBPath":Ljava/lang/String;
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 38
    .local v10, "srcDBPath":Ljava/io/File;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v9, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 39
    .local v7, "dstDBPath":Ljava/io/File;
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 40
    .local v1, "src":Ljava/nio/channels/FileChannel;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 42
    .local v0, "dst":Ljava/nio/channels/FileChannel;
    const-wide/16 v2, 0x0

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    .line 43
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 44
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 46
    .end local v0    # "dst":Ljava/nio/channels/FileChannel;
    .end local v1    # "src":Ljava/nio/channels/FileChannel;
    .end local v6    # "currentDBPath":Ljava/lang/String;
    .end local v7    # "dstDBPath":Ljava/io/File;
    .end local v9    # "sd":Ljava/io/File;
    .end local v10    # "srcDBPath":Ljava/io/File;
    :catch_0
    move-exception v8

    .line 47
    .local v8, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v3, "backupDatabase"

    invoke-static {v2, v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static createDatabaseFolder()V
    .locals 0

    .prologue
    .line 81
    invoke-static {}, Lcom/helpshift/storage/IssuesDataSource;->createDB()V

    .line 82
    return-void
.end method

.method private static doesDatabaseExist(Ljava/lang/String;)Z
    .locals 2
    .param p0, "dbName"    # Ljava/lang/String;

    .prologue
    .line 85
    invoke-static {}, Lcom/helpshift/HelpshiftContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 86
    .local v0, "dbFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public static restoreDatabaseBackup(Ljava/lang/String;)V
    .locals 11
    .param p0, "dbName"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-static {p0}, Lcom/helpshift/util/DBUtil;->doesDatabaseExist(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    invoke-static {}, Lcom/helpshift/util/DBUtil;->createDatabaseFolder()V

    .line 59
    :try_start_0
    sget-object v2, Lcom/helpshift/util/DBUtil;->sdPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    .line 61
    .local v9, "sd":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 62
    invoke-static {}, Lcom/helpshift/HelpshiftContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 65
    .local v6, "currentDBPath":Ljava/lang/String;
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v9, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 66
    .local v10, "srcDBPath":Ljava/io/File;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 68
    .local v7, "dstDBPath":Ljava/io/File;
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 69
    .local v1, "src":Ljava/nio/channels/FileChannel;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 71
    .local v0, "dst":Ljava/nio/channels/FileChannel;
    const-wide/16 v2, 0x0

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    .line 72
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 73
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 75
    .end local v0    # "dst":Ljava/nio/channels/FileChannel;
    .end local v1    # "src":Ljava/nio/channels/FileChannel;
    .end local v6    # "currentDBPath":Ljava/lang/String;
    .end local v7    # "dstDBPath":Ljava/io/File;
    .end local v9    # "sd":Ljava/io/File;
    .end local v10    # "srcDBPath":Ljava/io/File;
    :catch_0
    move-exception v8

    .line 76
    .local v8, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v3, "restoreDatabaseBackup"

    invoke-static {v2, v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
