.class public Lcom/helpshift/DownloadTask;
.super Ljava/lang/Object;
.source "DownloadTask.java"

# interfaces
.implements Lcom/helpshift/DownloadRunnable$DownloadRunnableMethods;


# static fields
.field public static final TAG:Ljava/lang/String; = "HelpShiftDebug"

.field private static downloadManager:Lcom/helpshift/DownloadManager;


# instance fields
.field private final FINAL_FILE:I

.field private final TEMP_FILE:I

.field private contentType:Ljava/lang/String;

.field currentThread:Ljava/lang/Thread;

.field private downloadRunnable:Ljava/lang/Runnable;

.field private downloadState:I

.field private downloadTaskCallBacks:Lcom/helpshift/DownloadTaskCallBacks;

.field private downloadType:I

.field private downloadURL:Ljava/net/URL;

.field private downloadedFilePath:Ljava/lang/String;

.field private fileName:Ljava/lang/String;

.field private fileType:Ljava/lang/String;

.field private finalFile:Ljava/io/File;

.field private height:J

.field private hsApiData:Lcom/helpshift/HSApiData;

.field private hsStorage:Lcom/helpshift/HSStorage;

.field private issueId:Ljava/lang/String;

.field private msgId:Ljava/lang/String;

.field private position:I

.field private progress:D

.field private size:I

.field private tempFile:Ljava/io/File;

.field private thumbnailUrl:Ljava/net/URL;

.field private width:J


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/helpshift/DownloadTask;->TEMP_FILE:I

    .line 40
    const/4 v0, 0x1

    iput v0, p0, Lcom/helpshift/DownloadTask;->FINAL_FILE:I

    .line 47
    new-instance v0, Lcom/helpshift/DownloadRunnable;

    invoke-direct {v0, p0}, Lcom/helpshift/DownloadRunnable;-><init>(Lcom/helpshift/DownloadRunnable$DownloadRunnableMethods;)V

    iput-object v0, p0, Lcom/helpshift/DownloadTask;->downloadRunnable:Ljava/lang/Runnable;

    .line 48
    invoke-static {}, Lcom/helpshift/DownloadManager;->getInstance()Lcom/helpshift/DownloadManager;

    move-result-object v0

    sput-object v0, Lcom/helpshift/DownloadTask;->downloadManager:Lcom/helpshift/DownloadManager;

    .line 49
    return-void
.end method

.method private createFile(I)Ljava/io/File;
    .locals 6
    .param p1, "type"    # I

    .prologue
    .line 236
    sget-object v3, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v3}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 237
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 238
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 240
    :cond_0
    const/4 v1, 0x0

    .line 241
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 242
    const-string/jumbo v2, ""

    .line 243
    .local v2, "fileName":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 254
    .end local v2    # "fileName":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v1

    .line 245
    .restart local v2    # "fileName":Ljava/lang/String;
    :pswitch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Support_Temp_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/helpshift/DownloadTask;->fileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 246
    new-instance v1, Ljava/io/File;

    .end local v1    # "file":Ljava/io/File;
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 247
    .restart local v1    # "file":Ljava/io/File;
    goto :goto_0

    .line 249
    :pswitch_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Support_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/helpshift/DownloadTask;->fileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 250
    new-instance v1, Ljava/io/File;

    .end local v1    # "file":Ljava/io/File;
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v1    # "file":Ljava/io/File;
    goto :goto_0

    .line 243
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method getCurrentThread()Ljava/lang/Thread;
    .locals 2

    .prologue
    .line 213
    sget-object v1, Lcom/helpshift/DownloadTask;->downloadManager:Lcom/helpshift/DownloadManager;

    monitor-enter v1

    .line 214
    :try_start_0
    iget-object v0, p0, Lcom/helpshift/DownloadTask;->currentThread:Ljava/lang/Thread;

    monitor-exit v1

    return-object v0

    .line 215
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getDownloadRunnable()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/helpshift/DownloadTask;->downloadRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method public getDownloadState()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lcom/helpshift/DownloadTask;->downloadState:I

    return v0
.end method

.method public getDownloadTaskCallBacks()Lcom/helpshift/DownloadTaskCallBacks;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/helpshift/DownloadTask;->downloadTaskCallBacks:Lcom/helpshift/DownloadTaskCallBacks;

    return-object v0
.end method

.method public getDownloadType()I
    .locals 1

    .prologue
    .line 205
    iget v0, p0, Lcom/helpshift/DownloadTask;->downloadType:I

    return v0
.end method

.method public getDownloadUrl()Ljava/net/URL;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/helpshift/DownloadTask;->downloadURL:Ljava/net/URL;

    return-object v0
.end method

.method public getDownloadedFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/helpshift/DownloadTask;->downloadedFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()I
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lcom/helpshift/DownloadTask;->size:I

    return v0
.end method

.method public getFinalFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/helpshift/DownloadTask;->finalFile:Ljava/io/File;

    return-object v0
.end method

.method public getIssueId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/helpshift/DownloadTask;->issueId:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/helpshift/DownloadTask;->msgId:Ljava/lang/String;

    return-object v0
.end method

.method public getProgress()D
    .locals 2

    .prologue
    .line 189
    iget-wide v0, p0, Lcom/helpshift/DownloadTask;->progress:D

    return-wide v0
.end method

.method public getTempFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/helpshift/DownloadTask;->tempFile:Ljava/io/File;

    return-object v0
.end method

.method public handleDownloadState(I)V
    .locals 6
    .param p1, "state"    # I

    .prologue
    .line 106
    packed-switch p1, :pswitch_data_0

    .line 145
    const/4 v1, 0x1

    .line 148
    .local v1, "outState":I
    :goto_0
    invoke-virtual {p0, v1}, Lcom/helpshift/DownloadTask;->handleState(I)V

    .line 150
    return-void

    .line 108
    .end local v1    # "outState":I
    :pswitch_0
    iget-object v3, p0, Lcom/helpshift/DownloadTask;->hsStorage:Lcom/helpshift/HSStorage;

    iget-object v4, p0, Lcom/helpshift/DownloadTask;->msgId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/helpshift/HSStorage;->removeFromActiveDownloads(Ljava/lang/String;)V

    .line 109
    iget v3, p0, Lcom/helpshift/DownloadTask;->downloadType:I

    packed-switch v3, :pswitch_data_1

    .line 126
    :goto_1
    const/4 v1, 0x4

    .line 127
    .restart local v1    # "outState":I
    goto :goto_0

    .line 111
    .end local v1    # "outState":I
    :pswitch_1
    iget-object v3, p0, Lcom/helpshift/DownloadTask;->hsStorage:Lcom/helpshift/HSStorage;

    iget-object v4, p0, Lcom/helpshift/DownloadTask;->msgId:Ljava/lang/String;

    iget-object v5, p0, Lcom/helpshift/DownloadTask;->downloadedFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/helpshift/HSStorage;->addToDownloadedGenericFiles(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 114
    :pswitch_2
    iget-object v3, p0, Lcom/helpshift/DownloadTask;->hsStorage:Lcom/helpshift/HSStorage;

    iget-object v4, p0, Lcom/helpshift/DownloadTask;->msgId:Ljava/lang/String;

    iget-object v5, p0, Lcom/helpshift/DownloadTask;->downloadedFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/helpshift/HSStorage;->addToDownloadedThumbnailFiles(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 117
    :pswitch_3
    iget-object v3, p0, Lcom/helpshift/DownloadTask;->hsStorage:Lcom/helpshift/HSStorage;

    iget-object v4, p0, Lcom/helpshift/DownloadTask;->msgId:Ljava/lang/String;

    iget-object v5, p0, Lcom/helpshift/DownloadTask;->downloadedFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/helpshift/HSStorage;->addToDownloadedImageFiles(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v3, p0, Lcom/helpshift/DownloadTask;->hsStorage:Lcom/helpshift/HSStorage;

    iget-object v4, p0, Lcom/helpshift/DownloadTask;->msgId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/helpshift/HSStorage;->getFilePathForThumbnail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 119
    .local v2, "thumbnailFilePath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 120
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 121
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 123
    :cond_0
    iget-object v3, p0, Lcom/helpshift/DownloadTask;->hsStorage:Lcom/helpshift/HSStorage;

    iget-object v4, p0, Lcom/helpshift/DownloadTask;->msgId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/helpshift/HSStorage;->removeFromDownloadedThumbnailFiles(Ljava/lang/String;)V

    goto :goto_1

    .line 129
    .end local v0    # "file":Ljava/io/File;
    .end local v2    # "thumbnailFilePath":Ljava/lang/String;
    :pswitch_4
    iget-object v3, p0, Lcom/helpshift/DownloadTask;->hsStorage:Lcom/helpshift/HSStorage;

    iget-object v4, p0, Lcom/helpshift/DownloadTask;->msgId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/helpshift/HSStorage;->removeFromActiveDownloads(Ljava/lang/String;)V

    .line 130
    const/4 v1, -0x1

    .line 131
    .restart local v1    # "outState":I
    goto :goto_0

    .line 133
    .end local v1    # "outState":I
    :pswitch_5
    const/4 v1, 0x3

    .line 134
    .restart local v1    # "outState":I
    goto :goto_0

    .line 136
    .end local v1    # "outState":I
    :pswitch_6
    const/4 v1, 0x2

    .line 137
    .restart local v1    # "outState":I
    goto :goto_0

    .line 139
    .end local v1    # "outState":I
    :pswitch_7
    const/4 v1, 0x5

    .line 140
    .restart local v1    # "outState":I
    goto :goto_0

    .line 142
    .end local v1    # "outState":I
    :pswitch_8
    const/4 v1, 0x1

    .line 143
    .restart local v1    # "outState":I
    goto :goto_0

    .line 106
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_4
        :pswitch_8
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_7
    .end packed-switch

    .line 109
    :pswitch_data_1
    .packed-switch 0x6
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method handleState(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 85
    sget-object v0, Lcom/helpshift/DownloadTask;->downloadManager:Lcom/helpshift/DownloadManager;

    iget v1, p0, Lcom/helpshift/DownloadTask;->position:I

    invoke-virtual {v0, p0, p1, v1}, Lcom/helpshift/DownloadManager;->handleState(Lcom/helpshift/DownloadTask;II)V

    .line 86
    return-void
.end method

.method initializeDownloaderTask(Lcom/helpshift/DownloadManager;Lorg/json/JSONObject;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p1, "downloadManager"    # Lcom/helpshift/DownloadManager;
    .param p2, "attachment"    # Lorg/json/JSONObject;
    .param p3, "position"    # I
    .param p4, "msgId"    # Ljava/lang/String;
    .param p5, "issueId"    # Ljava/lang/String;
    .param p6, "downloadType"    # I

    .prologue
    .line 58
    :try_start_0
    sput-object p1, Lcom/helpshift/DownloadTask;->downloadManager:Lcom/helpshift/DownloadManager;

    .line 59
    invoke-static {}, Lcom/helpshift/DownloadManager;->getDownloadTaskCallBacks()Lcom/helpshift/DownloadTaskCallBacks;

    move-result-object v2

    iput-object v2, p0, Lcom/helpshift/DownloadTask;->downloadTaskCallBacks:Lcom/helpshift/DownloadTaskCallBacks;

    .line 60
    new-instance v2, Lcom/helpshift/HSApiData;

    invoke-static {}, Lcom/helpshift/HelpshiftContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/helpshift/HSApiData;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/helpshift/DownloadTask;->hsApiData:Lcom/helpshift/HSApiData;

    .line 61
    iget-object v2, p0, Lcom/helpshift/DownloadTask;->hsApiData:Lcom/helpshift/HSApiData;

    iget-object v2, v2, Lcom/helpshift/HSApiData;->storage:Lcom/helpshift/HSStorage;

    iput-object v2, p0, Lcom/helpshift/DownloadTask;->hsStorage:Lcom/helpshift/HSStorage;

    .line 62
    iput p6, p0, Lcom/helpshift/DownloadTask;->downloadType:I

    .line 63
    new-instance v2, Ljava/net/URL;

    const-string/jumbo v3, "url"

    const-string/jumbo v4, ""

    invoke-virtual {p2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/helpshift/DownloadTask;->downloadURL:Ljava/net/URL;

    .line 64
    const-string/jumbo v2, "file-name"

    const-string/jumbo v3, ""

    invoke-virtual {p2, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/helpshift/DownloadTask;->fileName:Ljava/lang/String;

    .line 65
    const/16 v2, 0x8

    if-ne p6, v2, :cond_0

    .line 66
    new-instance v2, Ljava/net/URL;

    const-string/jumbo v3, "thumbnail"

    const-string/jumbo v4, ""

    invoke-virtual {p2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/helpshift/DownloadTask;->thumbnailUrl:Ljava/net/URL;

    .line 67
    iget-object v2, p0, Lcom/helpshift/DownloadTask;->thumbnailUrl:Ljava/net/URL;

    iput-object v2, p0, Lcom/helpshift/DownloadTask;->downloadURL:Ljava/net/URL;

    .line 69
    :cond_0
    const-string/jumbo v2, "content-type"

    const-string/jumbo v3, ""

    invoke-virtual {p2, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/helpshift/DownloadTask;->contentType:Ljava/lang/String;

    .line 70
    iget-object v2, p0, Lcom/helpshift/DownloadTask;->contentType:Ljava/lang/String;

    const-string/jumbo v3, "\\/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "split":[Ljava/lang/String;
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v1, v2

    iput-object v2, p0, Lcom/helpshift/DownloadTask;->fileType:Ljava/lang/String;

    .line 72
    const-string/jumbo v2, "size"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/helpshift/DownloadTask;->size:I

    .line 73
    const/4 v2, 0x0

    iput v2, p0, Lcom/helpshift/DownloadTask;->downloadState:I

    .line 74
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/helpshift/DownloadTask;->createFile(I)Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Lcom/helpshift/DownloadTask;->tempFile:Ljava/io/File;

    .line 75
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/helpshift/DownloadTask;->createFile(I)Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Lcom/helpshift/DownloadTask;->finalFile:Ljava/io/File;

    .line 76
    iput p3, p0, Lcom/helpshift/DownloadTask;->position:I

    .line 77
    iput-object p4, p0, Lcom/helpshift/DownloadTask;->msgId:Ljava/lang/String;

    .line 78
    iput-object p5, p0, Lcom/helpshift/DownloadTask;->issueId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .end local v1    # "split":[Ljava/lang/String;
    :goto_0
    return-void

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Ljava/net/MalformedURLException;
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v3, "Exception Malformed URL"

    invoke-static {v2, v3, v0}, Lcom/helpshift/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected recycle()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 225
    iput-object v0, p0, Lcom/helpshift/DownloadTask;->downloadedFilePath:Ljava/lang/String;

    .line 226
    iput-object v0, p0, Lcom/helpshift/DownloadTask;->tempFile:Ljava/io/File;

    .line 227
    iput-object v0, p0, Lcom/helpshift/DownloadTask;->finalFile:Ljava/io/File;

    .line 228
    return-void
.end method

.method setCurrentThread(Ljava/lang/Thread;)V
    .locals 2
    .param p1, "thread"    # Ljava/lang/Thread;

    .prologue
    .line 219
    sget-object v1, Lcom/helpshift/DownloadTask;->downloadManager:Lcom/helpshift/DownloadManager;

    monitor-enter v1

    .line 220
    :try_start_0
    iput-object p1, p0, Lcom/helpshift/DownloadTask;->currentThread:Ljava/lang/Thread;

    .line 221
    monitor-exit v1

    .line 222
    return-void

    .line 221
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDownloadState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 159
    iput p1, p0, Lcom/helpshift/DownloadTask;->downloadState:I

    .line 160
    return-void
.end method

.method public setDownloadThread(Ljava/lang/Thread;)V
    .locals 0
    .param p1, "currentThread"    # Ljava/lang/Thread;

    .prologue
    .line 90
    invoke-virtual {p0, p1}, Lcom/helpshift/DownloadTask;->setCurrentThread(Ljava/lang/Thread;)V

    .line 91
    return-void
.end method

.method public setDownloadedFilePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/helpshift/DownloadTask;->downloadedFilePath:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setFinalFile(Ljava/io/File;)V
    .locals 0
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/helpshift/DownloadTask;->finalFile:Ljava/io/File;

    .line 186
    return-void
.end method

.method public setProgress(D)V
    .locals 1
    .param p1, "progress"    # D

    .prologue
    .line 100
    iput-wide p1, p0, Lcom/helpshift/DownloadTask;->progress:D

    .line 101
    return-void
.end method

.method public setTempFile(Ljava/io/File;)V
    .locals 0
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/helpshift/DownloadTask;->tempFile:Ljava/io/File;

    .line 178
    return-void
.end method
