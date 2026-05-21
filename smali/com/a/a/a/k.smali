.class public abstract Lcom/a/a/a/k;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/os/Handler;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "UTF-8"

    iput-object v0, p0, Lcom/a/a/a/k;->a:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    const-string/jumbo v1, "AsyncHttpResponseHandler"

    const-string/jumbo v2, "Current thread has not called Looper.prepare(). Forcing synchronous mode."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/a/a/a/k;->b:Landroid/os/Handler;

    if-nez v1, :cond_2

    new-instance v1, Lcom/a/a/a/g;

    invoke-direct {v1, p0}, Lcom/a/a/a/g;-><init>(Lcom/a/a/a/k;)V

    iput-object v1, p0, Lcom/a/a/a/k;->b:Landroid/os/Handler;

    :cond_1
    :goto_0
    iput-boolean v0, p0, Lcom/a/a/a/k;->c:Z

    return-void

    :cond_2
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/a/a/a/k;->b:Landroid/os/Handler;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/a/a/a/k;->b:Landroid/os/Handler;

    goto :goto_0
.end method

.method private a(ILjava/lang/Object;)Landroid/os/Message;
    .locals 1

    iget-object v0, p0, Lcom/a/a/a/k;->b:Landroid/os/Handler;

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_0

    iput p1, v0, Landroid/os/Message;->what:I

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/a/a/a/k;->b:Landroid/os/Handler;

    invoke-static {v0, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Lorg/apache/http/HttpEntity;)[B
    .locals 10

    const-wide/16 v8, 0x0

    const/16 v0, 0x1000

    const/4 v4, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v2

    const-wide/32 v6, 0x7fffffff

    cmp-long v1, v2, v6

    if-lez v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "HTTP entity too large to be buffered in memory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    cmp-long v1, v2, v8

    if-gtz v1, :cond_2

    :goto_0
    :try_start_0
    new-instance v6, Lorg/apache/http/util/ByteArrayBuffer;

    invoke-direct {v6, v0}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v0, 0x1000

    :try_start_1
    new-array v7, v0, [B

    move v0, v4

    :goto_1
    invoke-virtual {v5, v7}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->isInterrupted()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-eqz v4, :cond_3

    :cond_1
    :try_start_2
    invoke-static {v5}, Lcom/a/a/a/a;->a(Ljava/io/InputStream;)V

    invoke-static {p1}, Lcom/a/a/a/a;->a(Lorg/apache/http/HttpEntity;)V

    invoke-virtual {v6}, Lorg/apache/http/util/ByteArrayBuffer;->toByteArray()[B
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    :goto_2
    return-object v0

    :cond_2
    long-to-int v0, v2

    goto :goto_0

    :cond_3
    add-int v4, v0, v1

    const/4 v0, 0x0

    :try_start_3
    invoke-virtual {v6, v7, v0, v1}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V

    cmp-long v0, v2, v8

    if-gtz v0, :cond_4

    const-wide/16 v0, 0x1

    :goto_3
    long-to-int v0, v0

    invoke-virtual {p0, v4, v0}, Lcom/a/a/a/k;->a(II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v0, v4

    goto :goto_1

    :cond_4
    move-wide v0, v2

    goto :goto_3

    :catchall_0
    move-exception v0

    :try_start_4
    invoke-static {v5}, Lcom/a/a/a/a;->a(Ljava/io/InputStream;)V

    invoke-static {p1}, Lcom/a/a/a/a;->a(Lorg/apache/http/HttpEntity;)V

    throw v0
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/System;->gc()V

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "File too large to fit into available memory"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    move-object v0, v1

    goto :goto_2
.end method

.method private b(Landroid/os/Message;)V
    .locals 1

    iget-boolean v0, p0, Lcom/a/a/a/k;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/a/a/a/k;->b:Landroid/os/Handler;

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {p0, p1}, Lcom/a/a/a/k;->a(Landroid/os/Message;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/a/a/a/k;->b:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/a/a/a/k;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/a/a/a/k;->b(Landroid/os/Message;)V

    return-void
.end method

.method public final a(I)V
    .locals 4

    const/4 v0, 0x5

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/a/a/a/k;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/a/a/a/k;->b(Landroid/os/Message;)V

    return-void
.end method

.method public final a(II)V
    .locals 4

    const/4 v0, 0x4

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/a/a/a/k;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/a/a/a/k;->b(Landroid/os/Message;)V

    return-void
.end method

.method public abstract a(I[B)V
.end method

.method public abstract a(I[BLjava/lang/Throwable;)V
.end method

.method public final a(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    aput-object p2, v0, v3

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    invoke-direct {p0, v3, v0}, Lcom/a/a/a/k;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/a/a/a/k;->b(Landroid/os/Message;)V

    return-void
.end method

.method protected final a(Landroid/os/Message;)V
    .locals 8

    const/4 v5, 0x3

    const/4 v2, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lt v1, v5, :cond_0

    aget-object v1, v0, v3

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v4

    check-cast v0, [B

    invoke-virtual {p0, v1, v0}, Lcom/a/a/a/k;->a(I[B)V

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "AsyncHttpResponseHandler"

    const-string/jumbo v1, "SUCCESS_MESSAGE didn\'t got enough params"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x4

    if-lt v1, v2, :cond_1

    aget-object v1, v0, v3

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v1, v0, v4

    check-cast v1, [B

    aget-object v0, v0, v5

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {p0, v2, v1, v0}, Lcom/a/a/a/k;->a(I[BLjava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "AsyncHttpResponseHandler"

    const-string/jumbo v1, "FAILURE_MESSAGE didn\'t got enough params"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/a/a/a/k;->e()V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/a/a/a/k;->f()V

    goto :goto_0

    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    if-eqz v0, :cond_3

    array-length v1, v0

    if-lt v1, v4, :cond_3

    const/4 v1, 0x0

    :try_start_0
    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string/jumbo v2, "AsyncHttpResponseHandler"

    const-string/jumbo v3, "Progress %d from %d (%2.0f%%)"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    if-lez v0, :cond_2

    int-to-double v6, v1

    int-to-double v0, v0

    div-double v0, v6, v0

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v6

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AsyncHttpResponseHandler"

    const-string/jumbo v2, "custom onProgress contains an error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :cond_2
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    goto :goto_1

    :cond_3
    const-string/jumbo v0, "AsyncHttpResponseHandler"

    const-string/jumbo v1, "PROGRESS_MESSAGE didn\'t got enough params"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    if-eqz v0, :cond_4

    array-length v1, v0

    if-ne v1, v2, :cond_4

    aget-object v0, v0, v3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/a/a/a/k;->b(I)V

    goto/16 :goto_0

    :cond_4
    const-string/jumbo v0, "AsyncHttpResponseHandler"

    const-string/jumbo v1, "RETRY_MESSAGE didn\'t get enough params"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_6
    const-string/jumbo v0, "AsyncHttpResponseHandler"

    const-string/jumbo v1, "Request got cancelled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public final a(Lorg/apache/http/HttpResponse;)V
    .locals 6

    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/a/a/a/k;->a(Lorg/apache/http/HttpEntity;)[B

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0x12c

    if-lt v2, v3, :cond_1

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v3

    new-instance v4, Lorg/apache/http/client/HttpResponseException;

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v5, v0}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v2, v3, v1, v4}, Lcom/a/a/a/k;->a(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v2, v3, v0

    const/4 v0, 0x2

    aput-object v1, v3, v0

    invoke-direct {p0, v4, v3}, Lcom/a/a/a/k;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/a/a/a/k;->b(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public a([Lorg/apache/http/Header;)V
    .locals 0

    return-void
.end method

.method public final b()V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/a/a/a/k;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/a/a/a/k;->b(Landroid/os/Message;)V

    return-void
.end method

.method public b(I)V
    .locals 5

    const-string/jumbo v0, "AsyncHttpResponseHandler"

    const-string/jumbo v1, "Request retry no. %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/a/a/a/k;->c:Z

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/a/a/a/k;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string/jumbo v0, "UTF-8"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/a/a/a/k;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 0

    return-void
.end method
