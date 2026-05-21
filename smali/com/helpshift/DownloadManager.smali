.class public Lcom/helpshift/DownloadManager;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpshift/DownloadManager$Holder;
    }
.end annotation


# static fields
.field private static final CORE_POOL_SIZE:I = 0x5

.field static final DOWNLOAD_COMPLETE:I = 0x4

.field static final DOWNLOAD_FAILED:I = -0x1

.field static final DOWNLOAD_PAUSED:I = 0x2

.field static final DOWNLOAD_RESUMED:I = 0x3

.field static final DOWNLOAD_STARTED:I = 0x1

.field public static final GENERIC:I = 0x6

.field public static final IMAGE:I = 0x7

.field private static final KEEP_ALIVE_TIME:I = 0x1

.field private static final KEEP_ALIVE_TIME_UNIT:Ljava/util/concurrent/TimeUnit;

.field private static final MAXIMUM_POOL_SIZE:I = 0x5

.field static final PROGRESS_CHANGED:I = 0x5

.field public static final TAG:Ljava/lang/String; = "HelpShiftDebug"

.field public static final THUMBNAIL:I = 0x8

.field private static downloadTaskCallBacks:Lcom/helpshift/DownloadTaskCallBacks;


# instance fields
.field private final downloadRunnableQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final downloadTasksQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/helpshift/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private final downloadThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

.field private handler:Landroid/os/Handler;

.field private hsApiData:Lcom/helpshift/HSApiData;

.field private hsStorage:Lcom/helpshift/HSStorage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sput-object v0, Lcom/helpshift/DownloadManager;->KEEP_ALIVE_TIME_UNIT:Ljava/util/concurrent/TimeUnit;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x5

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/helpshift/DownloadManager;->downloadTasksQueue:Ljava/util/concurrent/BlockingQueue;

    .line 47
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/helpshift/DownloadManager;->downloadRunnableQueue:Ljava/util/concurrent/BlockingQueue;

    .line 48
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x1

    sget-object v6, Lcom/helpshift/DownloadManager;->KEEP_ALIVE_TIME_UNIT:Ljava/util/concurrent/TimeUnit;

    iget-object v7, p0, Lcom/helpshift/DownloadManager;->downloadRunnableQueue:Ljava/util/concurrent/BlockingQueue;

    move v3, v2

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/helpshift/DownloadManager;->downloadThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 53
    new-instance v0, Lcom/helpshift/HSApiData;

    invoke-direct {v0, p1}, Lcom/helpshift/HSApiData;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/helpshift/DownloadManager;->hsApiData:Lcom/helpshift/HSApiData;

    .line 54
    iget-object v0, p0, Lcom/helpshift/DownloadManager;->hsApiData:Lcom/helpshift/HSApiData;

    iget-object v0, v0, Lcom/helpshift/HSApiData;->storage:Lcom/helpshift/HSStorage;

    iput-object v0, p0, Lcom/helpshift/DownloadManager;->hsStorage:Lcom/helpshift/HSStorage;

    .line 56
    new-instance v0, Lcom/helpshift/DownloadManager$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/helpshift/DownloadManager$1;-><init>(Lcom/helpshift/DownloadManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/helpshift/DownloadManager;->handler:Landroid/os/Handler;

    .line 113
    return-void
.end method

.method static synthetic access$000()Lcom/helpshift/DownloadTaskCallBacks;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/helpshift/DownloadManager;->downloadTaskCallBacks:Lcom/helpshift/DownloadTaskCallBacks;

    return-object v0
.end method

.method static synthetic access$100(Lcom/helpshift/DownloadManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/helpshift/DownloadManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/helpshift/DownloadManager;->removeFromCache(Ljava/lang/String;)V

    return-void
.end method

.method private addToCache(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "msgId"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 251
    iget-object v0, p0, Lcom/helpshift/DownloadManager;->hsStorage:Lcom/helpshift/HSStorage;

    invoke-virtual {v0, p1, p2}, Lcom/helpshift/HSStorage;->addToCachedAttachmentFiles(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    return-void
.end method

.method public static deregisterDownloadTaskCallBacks()V
    .locals 1

    .prologue
    .line 259
    const/4 v0, 0x0

    sput-object v0, Lcom/helpshift/DownloadManager;->downloadTaskCallBacks:Lcom/helpshift/DownloadTaskCallBacks;

    .line 260
    return-void
.end method

.method private getCachedAttachmentFiles()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/helpshift/DownloadManager;->hsStorage:Lcom/helpshift/HSStorage;

    invoke-virtual {v0}, Lcom/helpshift/HSStorage;->getCachedAttachmentFiles()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public static getDownloadTaskCallBacks()Lcom/helpshift/DownloadTaskCallBacks;
    .locals 1

    .prologue
    .line 263
    sget-object v0, Lcom/helpshift/DownloadManager;->downloadTaskCallBacks:Lcom/helpshift/DownloadTaskCallBacks;

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/helpshift/DownloadManager;
    .locals 2

    .prologue
    .line 120
    const-class v0, Lcom/helpshift/DownloadManager;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/helpshift/DownloadManager$Holder;->access$200()Lcom/helpshift/DownloadManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static pauseDownload(Lcom/helpshift/DownloadTask;Ljava/net/URL;I)V
    .locals 4
    .param p0, "downloadTask"    # Lcom/helpshift/DownloadTask;
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "position"    # I

    .prologue
    .line 211
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/helpshift/DownloadTask;->getDownloadUrl()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/net/URL;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 212
    invoke-static {}, Lcom/helpshift/DownloadManager;->getInstance()Lcom/helpshift/DownloadManager;

    move-result-object v2

    monitor-enter v2

    .line 213
    :try_start_0
    invoke-virtual {p0}, Lcom/helpshift/DownloadTask;->getCurrentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 214
    .local v0, "thread":Ljava/lang/Thread;
    if-eqz v0, :cond_0

    .line 215
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/helpshift/DownloadTask;->setDownloadState(I)V

    .line 216
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 218
    :cond_0
    invoke-static {}, Lcom/helpshift/DownloadManager;->getInstance()Lcom/helpshift/DownloadManager;

    move-result-object v1

    iget-object v1, v1, Lcom/helpshift/DownloadManager;->downloadThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p0}, Lcom/helpshift/DownloadTask;->getDownloadRunnable()Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    .line 219
    invoke-static {}, Lcom/helpshift/DownloadManager;->getInstance()Lcom/helpshift/DownloadManager;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v1, p0, v3, p2}, Lcom/helpshift/DownloadManager;->handleState(Lcom/helpshift/DownloadTask;II)V

    .line 220
    monitor-exit v2

    .line 222
    .end local v0    # "thread":Ljava/lang/Thread;
    :cond_1
    return-void

    .line 220
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static registerDownloadTaskCallbacks(Lcom/helpshift/DownloadTaskCallBacks;)V
    .locals 0
    .param p0, "callBacks"    # Lcom/helpshift/DownloadTaskCallBacks;

    .prologue
    .line 255
    sput-object p0, Lcom/helpshift/DownloadManager;->downloadTaskCallBacks:Lcom/helpshift/DownloadTaskCallBacks;

    .line 256
    return-void
.end method

.method public static removeDownload(Lcom/helpshift/DownloadTask;Ljava/net/URL;I)V
    .locals 3
    .param p0, "downloadTask"    # Lcom/helpshift/DownloadTask;
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "position"    # I

    .prologue
    .line 194
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/helpshift/DownloadTask;->getDownloadUrl()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/net/URL;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 196
    invoke-static {}, Lcom/helpshift/DownloadManager;->getInstance()Lcom/helpshift/DownloadManager;

    move-result-object v2

    monitor-enter v2

    .line 197
    :try_start_0
    invoke-virtual {p0}, Lcom/helpshift/DownloadTask;->getCurrentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 198
    .local v0, "thread":Ljava/lang/Thread;
    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 201
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    invoke-virtual {p0}, Lcom/helpshift/DownloadTask;->getTempFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 203
    invoke-static {}, Lcom/helpshift/DownloadManager;->getInstance()Lcom/helpshift/DownloadManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/helpshift/DownloadTask;->getMsgId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/helpshift/DownloadManager;->removeFromCache(Ljava/lang/String;)V

    .line 204
    invoke-static {}, Lcom/helpshift/DownloadManager;->getInstance()Lcom/helpshift/DownloadManager;

    move-result-object v1

    iget-object v1, v1, Lcom/helpshift/DownloadManager;->downloadThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p0}, Lcom/helpshift/DownloadTask;->getDownloadRunnable()Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    .line 206
    .end local v0    # "thread":Ljava/lang/Thread;
    :cond_1
    return-void

    .line 201
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private removeFromCache(Ljava/lang/String;)V
    .locals 1
    .param p1, "msgId"    # Ljava/lang/String;

    .prologue
    .line 247
    iget-object v0, p0, Lcom/helpshift/DownloadManager;->hsStorage:Lcom/helpshift/HSStorage;

    invoke-virtual {v0, p1}, Lcom/helpshift/HSStorage;->removeFromCachedAttachmentFiles(Ljava/lang/String;)V

    .line 248
    return-void
.end method

.method public static resumeDownload(Lcom/helpshift/DownloadTask;Ljava/net/URL;I)V
    .locals 3
    .param p0, "downloadTask"    # Lcom/helpshift/DownloadTask;
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "position"    # I

    .prologue
    .line 227
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/helpshift/DownloadTask;->getDownloadUrl()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/URL;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    invoke-static {}, Lcom/helpshift/DownloadManager;->getInstance()Lcom/helpshift/DownloadManager;

    move-result-object v1

    monitor-enter v1

    .line 229
    const/4 v0, 0x2

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/helpshift/DownloadTask;->setDownloadState(I)V

    .line 230
    invoke-static {}, Lcom/helpshift/DownloadManager;->getInstance()Lcom/helpshift/DownloadManager;

    move-result-object v0

    iget-object v0, v0, Lcom/helpshift/DownloadManager;->downloadThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p0}, Lcom/helpshift/DownloadTask;->getDownloadRunnable()Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 231
    invoke-static {}, Lcom/helpshift/DownloadManager;->getInstance()Lcom/helpshift/DownloadManager;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, p0, v2, p2}, Lcom/helpshift/DownloadManager;->handleState(Lcom/helpshift/DownloadTask;II)V

    .line 232
    monitor-exit v1

    .line 234
    :cond_0
    return-void

    .line 232
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static startDownload(Lorg/json/JSONObject;ILjava/lang/String;Ljava/lang/String;I)Lcom/helpshift/DownloadTask;
    .locals 9
    .param p0, "attachment"    # Lorg/json/JSONObject;
    .param p1, "position"    # I
    .param p2, "msgId"    # Ljava/lang/String;
    .param p3, "issueId"    # Ljava/lang/String;
    .param p4, "downloadType"    # I

    .prologue
    .line 153
    invoke-static {}, Lcom/helpshift/DownloadManager;->getInstance()Lcom/helpshift/DownloadManager;

    move-result-object v1

    iget-object v1, v1, Lcom/helpshift/DownloadManager;->hsStorage:Lcom/helpshift/HSStorage;

    invoke-virtual {v1, p2, p3}, Lcom/helpshift/HSStorage;->addToActiveDownloads(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-static {}, Lcom/helpshift/DownloadManager;->getInstance()Lcom/helpshift/DownloadManager;

    move-result-object v1

    iget-object v1, v1, Lcom/helpshift/DownloadManager;->downloadTasksQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/DownloadTask;

    .line 156
    .local v0, "downloadTask":Lcom/helpshift/DownloadTask;
    if-nez v0, :cond_0

    .line 157
    new-instance v0, Lcom/helpshift/DownloadTask;

    .end local v0    # "downloadTask":Lcom/helpshift/DownloadTask;
    invoke-direct {v0}, Lcom/helpshift/DownloadTask;-><init>()V

    .line 159
    .restart local v0    # "downloadTask":Lcom/helpshift/DownloadTask;
    :cond_0
    invoke-static {}, Lcom/helpshift/DownloadManager;->getInstance()Lcom/helpshift/DownloadManager;

    move-result-object v1

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/helpshift/DownloadTask;->initializeDownloaderTask(Lcom/helpshift/DownloadManager;Lorg/json/JSONObject;ILjava/lang/String;Ljava/lang/String;I)V

    .line 167
    :try_start_0
    invoke-static {}, Lcom/helpshift/DownloadManager;->getInstance()Lcom/helpshift/DownloadManager;

    move-result-object v1

    invoke-direct {v1}, Lcom/helpshift/DownloadManager;->getCachedAttachmentFiles()Lorg/json/JSONObject;

    move-result-object v7

    .line 169
    .local v7, "cachedFiles":Lorg/json/JSONObject;
    invoke-virtual {v7, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 170
    new-instance v1, Ljava/io/File;

    invoke-virtual {v7, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/helpshift/DownloadTask;->setTempFile(Ljava/io/File;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    .end local v7    # "cachedFiles":Lorg/json/JSONObject;
    :goto_0
    invoke-virtual {v0}, Lcom/helpshift/DownloadTask;->getDownloadState()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/helpshift/DownloadTask;->getDownloadState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 181
    :cond_1
    invoke-static {}, Lcom/helpshift/DownloadManager;->getInstance()Lcom/helpshift/DownloadManager;

    move-result-object v1

    iget-object v1, v1, Lcom/helpshift/DownloadManager;->downloadThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Lcom/helpshift/DownloadTask;->getDownloadRunnable()Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 187
    :goto_1
    return-object v0

    .line 172
    .restart local v7    # "cachedFiles":Lorg/json/JSONObject;
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/helpshift/DownloadManager;->getInstance()Lcom/helpshift/DownloadManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/helpshift/DownloadTask;->getTempFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p2, v2}, Lcom/helpshift/DownloadManager;->addToCache(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 175
    .end local v7    # "cachedFiles":Lorg/json/JSONObject;
    :catch_0
    move-exception v8

    .line 176
    .local v8, "e":Lorg/json/JSONException;
    const-string/jumbo v1, "HelpShiftDebug"

    const-string/jumbo v2, "Exception JSON"

    invoke-static {v1, v2, v8}, Lcom/helpshift/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 183
    .end local v8    # "e":Lorg/json/JSONException;
    :cond_3
    invoke-static {}, Lcom/helpshift/DownloadManager;->getInstance()Lcom/helpshift/DownloadManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/helpshift/DownloadTask;->getDownloadState()I

    move-result v2

    invoke-virtual {v1, v0, v2, p1}, Lcom/helpshift/DownloadManager;->handleState(Lcom/helpshift/DownloadTask;II)V

    goto :goto_1
.end method


# virtual methods
.method public handleState(Lcom/helpshift/DownloadTask;II)V
    .locals 3
    .param p1, "downloadTask"    # Lcom/helpshift/DownloadTask;
    .param p2, "state"    # I
    .param p3, "position"    # I

    .prologue
    const/4 v2, 0x0

    .line 125
    packed-switch p2, :pswitch_data_0

    .line 143
    iget-object v1, p0, Lcom/helpshift/DownloadManager;->handler:Landroid/os/Handler;

    invoke-virtual {v1, p2, p3, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 146
    :goto_0
    return-void

    .line 127
    :pswitch_0
    iget-object v1, p0, Lcom/helpshift/DownloadManager;->handler:Landroid/os/Handler;

    invoke-virtual {v1, p2, p3, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 128
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 131
    .end local v0    # "msg":Landroid/os/Message;
    :pswitch_1
    iget-object v1, p0, Lcom/helpshift/DownloadManager;->handler:Landroid/os/Handler;

    invoke-virtual {v1, p2, p3, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 132
    .restart local v0    # "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 135
    .end local v0    # "msg":Landroid/os/Message;
    :pswitch_2
    iget-object v1, p0, Lcom/helpshift/DownloadManager;->handler:Landroid/os/Handler;

    invoke-virtual {v1, p2, p3, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 136
    .restart local v0    # "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 139
    .end local v0    # "msg":Landroid/os/Message;
    :pswitch_3
    iget-object v1, p0, Lcom/helpshift/DownloadManager;->handler:Landroid/os/Handler;

    invoke-virtual {v1, p2, p3, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 140
    .restart local v0    # "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 125
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method recycleTask(Lcom/helpshift/DownloadTask;)V
    .locals 1
    .param p1, "downloadTask"    # Lcom/helpshift/DownloadTask;

    .prologue
    .line 237
    invoke-virtual {p1}, Lcom/helpshift/DownloadTask;->recycle()V

    .line 239
    iget-object v0, p0, Lcom/helpshift/DownloadManager;->downloadTasksQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 240
    return-void
.end method
