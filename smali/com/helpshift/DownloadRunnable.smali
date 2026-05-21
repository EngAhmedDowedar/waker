.class public Lcom/helpshift/DownloadRunnable;
.super Ljava/lang/Object;
.source "DownloadRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpshift/DownloadRunnable$DownloadRunnableMethods;
    }
.end annotation


# static fields
.field static final HTTP_STATE_COMPLETED:I = 0x3

.field static final HTTP_STATE_FAILED:I = -0x1

.field static final HTTP_STATE_PAUSED:I = 0x1

.field static final HTTP_STATE_RESUMED:I = 0x2

.field static final HTTP_STATE_STARTED:I = 0x0

.field static final PROGRESS_CHANGED:I = 0x4

.field static final TAG:Ljava/lang/String; = "HelpShiftDebug"


# instance fields
.field byteBuffer:[B

.field final downloadTask:Lcom/helpshift/DownloadRunnable$DownloadRunnableMethods;

.field private downloadedBytes:J

.field private totalBytes:J

.field userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/helpshift/DownloadRunnable$DownloadRunnableMethods;)V
    .locals 2
    .param p1, "downloadTask"    # Lcom/helpshift/DownloadRunnable$DownloadRunnableMethods;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Helpshift-Android/3.10.0/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/DownloadRunnable;->userAgent:Ljava/lang/String;

    .line 57
    iput-object p1, p0, Lcom/helpshift/DownloadRunnable;->downloadTask:Lcom/helpshift/DownloadRunnable$DownloadRunnableMethods;

    .line 58
    return-void
.end method

.method private copy(Ljava/io/File;Ljava/io/File;)V
    .locals 7
    .param p1, "src"    # Ljava/io/File;
    .param p2, "dst"    # Ljava/io/File;

    .prologue
    .line 173
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 174
    .local v2, "in":Ljava/io/InputStream;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 177
    .local v4, "out":Ljava/io/OutputStream;
    const/16 v5, 0x400

    new-array v0, v5, [B

    .line 179
    .local v0, "buf":[B
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .local v3, "len":I
    if-lez v3, :cond_0

    .line 180
    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 184
    .end local v0    # "buf":[B
    .end local v2    # "in":Ljava/io/InputStream;
    .end local v3    # "len":I
    .end local v4    # "out":Ljava/io/OutputStream;
    :catch_0
    move-exception v1

    .line 185
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v5, "HelpShiftDebug"

    const-string/jumbo v6, "Exception File Not Found"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 189
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :goto_1
    return-void

    .line 182
    .restart local v0    # "buf":[B
    .restart local v2    # "in":Ljava/io/InputStream;
    .restart local v3    # "len":I
    .restart local v4    # "out":Ljava/io/OutputStream;
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 183
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 186
    .end local v0    # "buf":[B
    .end local v2    # "in":Ljava/io/InputStream;
    .end local v3    # "len":I
    .end local v4    # "out":Ljava/io/OutputStream;
    :catch_1
    move-exception v1

    .line 187
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v5, "HelpShiftDebug"

    const-string/jumbo v6, "Exception IO"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 64
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/helpshift/DownloadRunnable;->downloadTask:Lcom/helpshift/DownloadRunnable$DownloadRunnableMethods;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v14

    invoke-interface {v13, v14}, Lcom/helpshift/DownloadRunnable$DownloadRunnableMethods;->setDownloadThread(Ljava/lang/Thread;)V

    .line 65
    const/16 v13, 0xa

    invoke-static {v13}, Landroid/os/Process;->setThreadPriority(I)V

    .line 68
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 69
    new-instance v13, Ljava/lang/InterruptedException;

    invoke-direct {v13}, Ljava/lang/InterruptedException;-><init>()V

    throw v13
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 158
    :catch_0
    move-exception v4

    .line 159
    .local v4, "e":Ljava/lang/InterruptedException;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/helpshift/DownloadRunnable;->downloadTask:Lcom/helpshift/DownloadRunnable$DownloadRunnableMethods;

    const/4 v14, -0x1

    invoke-interface {v13, v14}, Lcom/helpshift/DownloadRunnable$DownloadRunnableMethods;->setDownloadState(I)V

    .line 160
    const-string/jumbo v13, "HelpShiftDebug"

    const-string/jumbo v14, "Exception Interrupted"

    invoke-static {v13, v14, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 165
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/helpshift/DownloadRunnable;->downloadTask:Lcom/helpshift/DownloadRunnable$DownloadRunnableMethods;

    invoke-interface {v13}, Lcom/helpshift/DownloadRunnable$DownloadRunnableMethods;->getDownloadState()I

    move-result v13

    const/4 v14, -0x1

    if-ne v13, v14, :cond_0

    .line 166
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/helpshift/DownloadRunnable;->downloadTask:Lcom/helpshift/DownloadRunnable$DownloadRunnableMethods;

    const/4 v14, -0x1

    invoke-interface {v13, v14}, Lcom/helpshift/DownloadRunnable$DownloadRunnableMethods;->handleDownloadState(I)V

    .line 169
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/helpshift/DownloadRunnable;->downloadTask:Lcom/helpshift/DownloadRunnable$DownloadRunnableMethods;

    invoke-interface {v13}, Lcom/helpshift/DownloadRunnable$DownloadRunnableMethods;->getDownloadUrl()Ljava/net/URL;

    move-result-object v13

    invoke-virtual {v13}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    check-cast v9, Ljava/net/HttpURLConnection;

    .line 75
    .local v9, "httpURLConnection":Ljava/net/HttpURLConnection;
    const-string/jumbo v13, "User-Agent"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/helpshift/DownloadRunnable;->userAgent:Ljava/lang/String;

    invoke-virtual {v9, v13, v14}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/helpshift/DownloadRunnable;->downloadTask:Lcom/helpshift/DownloadRunnable$DownloadRunnableMethods;

    invoke-interface {v13}, Lcom/helpshift/DownloadRunnable$DownloadRunnableMethods;->getTempFile()Ljava/io/File;

    move-result-object v5

    .line 79
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/helpshift/DownloadRunnable;->downloadedBytes:J

    .line 80
    const-string/jumbo v13, "Range"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "bytes="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/helpshift/DownloadRunnable;->downloadedBytes:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "-"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v13, v14}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/helpshift/DownloadRunnable;->downloadTask:Lcom/helpshift/DownloadRunnable$DownloadRunnableMethods;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/helpshift/DownloadRunnable;->downloadTask:Lcom/helpshift/DownloadRunnable$DownloadRunnableMethods;

    invoke-interface {v14}, Lcom/helpshift/DownloadRunnable$DownloadRunnableMethods;->getDownloadState()I

    move-result v14

    invoke-interface {v13, v14}, Lcom/helpshift/DownloadRunnable$DownloadRunnableMethods;->handleDownloadState(I)V

    .line 84
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/helpshift/DownloadRunnable;->downloadTask:Lcom/helpshift/DownloadRunnable$DownloadRunnableMethods;

    invoke-interface {v13}, Lcom/helpshift/DownloadRunnable$DownloadRunnableMethods;->getDownloadState()I

    move-result v13

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/helpshift/DownloadRunnable;->downloadTask:Lcom/helpshift/DownloadRunnable$DownloadRunnableMethods;

    invoke-interface {v13}, Lcom/helpshift/DownloadRunnable$DownloadRunnableMethods;->getDownloadState()I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_3

    .line 86
    :cond_2
    const/4 v2, 0x0

    .line 87
    .local v2, "byteStream":Ljava/io/InputStream;
    const/4 v7, 0x0

    .line 90
    .local v7, "fos":Ljava/io/FileOutputStream;
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 91
    new-instance v13, Ljava/lang/InterruptedException;

    invoke-direct {v13}, Ljava/lang/InterruptedException;-><init>()V

    throw v13
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 144
    :catch_1
    move-exception v4

    .line 145
    .local v4, "e":Ljava/io/IOException;
    :goto_1
    :try_start_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/helpshift/DownloadRunnable;->downloadTask:Lcom/helpshift/DownloadRunnable$DownloadRunnableMethods;

    const/4 v14, -0x1

    invoke-interface {v13, v14}, Lcom/helpshift/DownloadRunnable$DownloadRunnableMethods;->setDownloadState(I)V

    .line 146
    const-string/jumbo v13, "HelpShiftDebug"

    const-string/jumbo v14, "Exception IO"

    invoke-static {v13, v14, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 148
    if-eqz v2, :cond_3

    .line 150
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 165
    .end local v2    # "byteStream":Ljava/io/InputStream;
    .end local v4    # "e":Ljava/io/IOException;
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/helpshift/DownloadRunnable;->downloadTask:Lcom/helpshift/DownloadRunnable$DownloadRunnableMethods;

    invoke-interface {v13}, Lcom/helpshift/DownloadRunnable$DownloadRunnableMethods;->getDownloadState()I

    move-result v13

    const/4 v14, -0x1

    if-ne v13, v14, :cond_0

    .line 166
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/helpshift/DownloadRunnable;->downloadTask:Lcom/helpshift/DownloadRunnable$DownloadRunnableMethods;

    const/4 v14, -0x1

    invoke-interface {v13, v14}, Lcom/helpshift/DownloadRunnable$DownloadRunnableMethods;->handleDownloadState(I)V

    goto/16 :goto_0

    .line 93
    .restart local v2    # "byteStream":Ljava/io/InputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    :cond_4
    :try_start_6
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 95
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 96
    new-instance v13, Ljava/lang/InterruptedException;

    invoke-direct {v13}, Ljava/lang/InterruptedException;-><init>()V

    throw v13
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 148
    :catchall_0
    move-exception v13

    :goto_3
    if-eqz v2, :cond_5

    .line 150
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 154
    :cond_5
    :goto_4
    :try_start_8
    throw v13
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 161
    .end local v2    # "byteStream":Ljava/io/InputStream;
    .end local v5    # "file":Ljava/io/File;
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .end local v9    # "httpURLConnection":Ljava/net/HttpURLConnection;
    :catch_2
    move-exception v4

    .line 162
    .restart local v4    # "e":Ljava/io/IOException;
    :try_start_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/helpshift/DownloadRunnable;->downloadTask:Lcom/helpshift/DownloadRunnable$DownloadRunnableMethods;

    const/4 v14, -0x1

    invoke-interface {v13, v14}, Lcom/helpshift/DownloadRunnable$DownloadRunnableMethods;->setDownloadState(I)V

    .line 163
    const-string/jumbo v13, "HelpShiftDebug"

    const-string/jumbo v14, "Exception IO"

    invoke-static {v13, v14, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 165
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/helpshift/DownloadRunnable;->downloadTask:Lcom/helpshift/DownloadRunnable$DownloadRunnableMethods;

    invoke-interface {v13}, Lcom/helpshift/DownloadRunnable$DownloadRunnableMethods;->getDownloadState()I

    move-result v13

    const/4 v14, -0x1

    if-ne v13, v14, :cond_0

    .line 166
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/helpshift/DownloadRunnable;->downloadTask:Lcom/helpshift/DownloadRunnable$DownloadRunnableMethods;

    const/4 v14, -0x1

    invoke-interface {v13, v14}, Lcom/helpshift/DownloadRunnable$DownloadRunnableMethods;->handleDownloadState(I)V

    goto/16 :goto_0

    .line 99
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v2    # "byteStream":Ljava/io/InputStream;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "httpURLConnection":Ljava/net/HttpURLConnection;
    :cond_6
    :try_start_a
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v3

    .line 100
    .local v3, "contentSize":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/helpshift/DownloadRunnable;->downloadTask:Lcom/helpshift/DownloadRunnable$DownloadRunnableMethods;

    invoke-interface {v13}, Lcom/helpshift/DownloadRunnable$DownloadRunnableMethods;->getFileSize()I

    move-result v13

    int-to-long v14, v13

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/helpshift/DownloadRunnable;->totalBytes:J

    .line 102
    new-instance v8, Ljava/io/FileOutputStream;

    const/4 v13, 0x1

    invoke-direct {v8, v5, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 104
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .local v8, "fos":Ljava/io/FileOutputStream;
    const/16 v13, 0x400

    :try_start_b
    new-array v13, v13, [B

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/helpshift/DownloadRunnable;->byteBuffer:[B

    .line 107
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/helpshift/DownloadRunnable;->byteBuffer:[B

    const/4 v14, 0x0

    const/16 v15, 0x400

    invoke-virtual {v2, v13, v14, v15}, Ljava/io/InputStream;->read([BII)I

    move-result v12

    .local v12, "readResult":I
    const/4 v13, -0x1

    if-eq v12, v13, :cond_9

    .line 109
    if-gez v12, :cond_8

    .line 110
    new-instance v13, Ljava/io/EOFException;

    invoke-direct {v13}, Ljava/io/EOFException;-><init>()V

    throw v13

    .line 144
    .end local v12    # "readResult":I
    :catch_3
    move-exception v4

    move-object v7, v8

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_1

    .line 113
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v12    # "readResult":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/helpshift/DownloadRunnable;->byteBuffer:[B

    const/4 v14, 0x0

    invoke-virtual {v8, v13, v14, v12}, Ljava/io/FileOutputStream;->write([BII)V

    .line 114
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/helpshift/DownloadRunnable;->downloadedBytes:J

    .line 115
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/helpshift/DownloadRunnable;->downloadedBytes:J

    long-to-double v14, v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/helpshift/DownloadRunnable;->totalBytes:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    const-wide v16, 0x40c3880000000000L    # 10000.0

    mul-double v10, v14, v16

    .line 116
    .local v10, "progress":D
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/helpshift/DownloadRunnable;->downloadTask:Lcom/helpshift/DownloadRunnable$DownloadRunnableMethods;

    invoke-interface {v13, v10, v11}, Lcom/helpshift/DownloadRunnable$DownloadRunnableMethods;->setProgress(D)V

    .line 117
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/helpshift/DownloadRunnable;->downloadTask:Lcom/helpshift/DownloadRunnable$DownloadRunnableMethods;

    const/4 v14, 0x4

    invoke-interface {v13, v14}, Lcom/helpshift/DownloadRunnable$DownloadRunnableMethods;->handleDownloadState(I)V

    .line 119
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 120
    new-instance v13, Ljava/lang/InterruptedException;

    invoke-direct {v13}, Ljava/lang/InterruptedException;-><init>()V

    throw v13

    .line 148
    .end local v10    # "progress":D
    .end local v12    # "readResult":I
    :catchall_1
    move-exception v13

    move-object v7, v8

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_3

    .line 124
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v12    # "readResult":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/helpshift/DownloadRunnable;->downloadTask:Lcom/helpshift/DownloadRunnable$DownloadRunnableMethods;

    invoke-interface {v13}, Lcom/helpshift/DownloadRunnable$DownloadRunnableMethods;->getDownloadState()I

    move-result v13

    if-eqz v13, :cond_a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/helpshift/DownloadRunnable;->downloadTask:Lcom/helpshift/DownloadRunnable$DownloadRunnableMethods;

    invoke-interface {v13}, Lcom/helpshift/DownloadRunnable$DownloadRunnableMethods;->getDownloadState()I

    move-result v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_c

    .line 126
    :cond_a
    if-eqz v8, :cond_b

    .line 127
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 132
    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/helpshift/DownloadRunnable;->downloadTask:Lcom/helpshift/DownloadRunnable$DownloadRunnableMethods;

    invoke-interface {v13}, Lcom/helpshift/DownloadRunnable$DownloadRunnableMethods;->getTempFile()Ljava/io/File;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/helpshift/DownloadRunnable;->downloadTask:Lcom/helpshift/DownloadRunnable$DownloadRunnableMethods;

    invoke-interface {v14}, Lcom/helpshift/DownloadRunnable$DownloadRunnableMethods;->getFinalFile()Ljava/io/File;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/helpshift/DownloadRunnable;->copy(Ljava/io/File;Ljava/io/File;)V

    .line 133
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/helpshift/DownloadRunnable;->downloadTask:Lcom/helpshift/DownloadRunnable$DownloadRunnableMethods;

    invoke-interface {v13}, Lcom/helpshift/DownloadRunnable$DownloadRunnableMethods;->getTempFile()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    .line 135
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/helpshift/DownloadRunnable;->downloadTask:Lcom/helpshift/DownloadRunnable$DownloadRunnableMethods;

    invoke-interface {v13}, Lcom/helpshift/DownloadRunnable$DownloadRunnableMethods;->getFinalFile()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 136
    .local v6, "filePath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/helpshift/DownloadRunnable;->downloadTask:Lcom/helpshift/DownloadRunnable$DownloadRunnableMethods;

    invoke-interface {v13, v6}, Lcom/helpshift/DownloadRunnable$DownloadRunnableMethods;->setDownloadedFilePath(Ljava/lang/String;)V

    .line 138
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/helpshift/DownloadRunnable;->byteBuffer:[B

    .line 139
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/helpshift/DownloadRunnable;->downloadTask:Lcom/helpshift/DownloadRunnable$DownloadRunnableMethods;

    const/4 v14, 0x0

    invoke-interface {v13, v14}, Lcom/helpshift/DownloadRunnable$DownloadRunnableMethods;->setDownloadThread(Ljava/lang/Thread;)V

    .line 140
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 141
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/helpshift/DownloadRunnable;->downloadTask:Lcom/helpshift/DownloadRunnable$DownloadRunnableMethods;

    const/4 v14, 0x3

    invoke-interface {v13, v14}, Lcom/helpshift/DownloadRunnable$DownloadRunnableMethods;->setDownloadState(I)V

    .line 142
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/helpshift/DownloadRunnable;->downloadTask:Lcom/helpshift/DownloadRunnable$DownloadRunnableMethods;

    const/4 v14, 0x3

    invoke-interface {v13, v14}, Lcom/helpshift/DownloadRunnable$DownloadRunnableMethods;->handleDownloadState(I)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 148
    .end local v6    # "filePath":Ljava/lang/String;
    :cond_c
    if-eqz v2, :cond_3

    .line 150
    :try_start_c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto/16 :goto_2

    .line 151
    :catch_4
    move-exception v4

    .line 152
    .restart local v4    # "e":Ljava/io/IOException;
    :try_start_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/helpshift/DownloadRunnable;->downloadTask:Lcom/helpshift/DownloadRunnable$DownloadRunnableMethods;

    const/4 v14, -0x1

    invoke-interface {v13, v14}, Lcom/helpshift/DownloadRunnable$DownloadRunnableMethods;->setDownloadState(I)V

    .line 153
    const-string/jumbo v13, "HelpShiftDebug"

    const-string/jumbo v14, "Exception IO"

    invoke-static {v13, v14, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto/16 :goto_2

    .line 165
    .end local v2    # "byteStream":Ljava/io/InputStream;
    .end local v3    # "contentSize":I
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "file":Ljava/io/File;
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .end local v9    # "httpURLConnection":Ljava/net/HttpURLConnection;
    .end local v12    # "readResult":I
    :catchall_2
    move-exception v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/helpshift/DownloadRunnable;->downloadTask:Lcom/helpshift/DownloadRunnable$DownloadRunnableMethods;

    invoke-interface {v14}, Lcom/helpshift/DownloadRunnable$DownloadRunnableMethods;->getDownloadState()I

    move-result v14

    const/4 v15, -0x1

    if-ne v14, v15, :cond_d

    .line 166
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/helpshift/DownloadRunnable;->downloadTask:Lcom/helpshift/DownloadRunnable$DownloadRunnableMethods;

    const/4 v15, -0x1

    invoke-interface {v14, v15}, Lcom/helpshift/DownloadRunnable$DownloadRunnableMethods;->handleDownloadState(I)V

    :cond_d
    throw v13

    .line 151
    .restart local v2    # "byteStream":Ljava/io/InputStream;
    .restart local v4    # "e":Ljava/io/IOException;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "httpURLConnection":Ljava/net/HttpURLConnection;
    :catch_5
    move-exception v4

    .line 152
    :try_start_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/helpshift/DownloadRunnable;->downloadTask:Lcom/helpshift/DownloadRunnable$DownloadRunnableMethods;

    const/4 v14, -0x1

    invoke-interface {v13, v14}, Lcom/helpshift/DownloadRunnable$DownloadRunnableMethods;->setDownloadState(I)V

    .line 153
    const-string/jumbo v13, "HelpShiftDebug"

    const-string/jumbo v14, "Exception IO"

    invoke-static {v13, v14, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 151
    .end local v4    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v4

    .line 152
    .restart local v4    # "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/helpshift/DownloadRunnable;->downloadTask:Lcom/helpshift/DownloadRunnable$DownloadRunnableMethods;

    const/4 v15, -0x1

    invoke-interface {v14, v15}, Lcom/helpshift/DownloadRunnable$DownloadRunnableMethods;->setDownloadState(I)V

    .line 153
    const-string/jumbo v14, "HelpShiftDebug"

    const-string/jumbo v15, "Exception IO"

    invoke-static {v14, v15, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    goto/16 :goto_4
.end method
