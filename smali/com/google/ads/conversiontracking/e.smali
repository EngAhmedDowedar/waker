.class public Lcom/google/ads/conversiontracking/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/conversiontracking/e$b;,
        Lcom/google/ads/conversiontracking/e$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/ads/conversiontracking/d;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/Context;

.field private d:Z

.field private e:Z

.field private f:Lcom/google/ads/conversiontracking/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10

    .prologue
    const-wide/32 v4, 0x493e0

    const-wide/16 v6, 0x0

    const/4 v2, 0x1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/ads/conversiontracking/e;->a:Ljava/lang/Object;

    .line 37
    iput-boolean v2, p0, Lcom/google/ads/conversiontracking/e;->d:Z

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/conversiontracking/e;->e:Z

    .line 43
    iput-object p1, p0, Lcom/google/ads/conversiontracking/e;->c:Landroid/content/Context;

    .line 44
    new-instance v0, Lcom/google/ads/conversiontracking/f;

    invoke-direct {v0, p1}, Lcom/google/ads/conversiontracking/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/ads/conversiontracking/e;->f:Lcom/google/ads/conversiontracking/f;

    .line 45
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/ads/conversiontracking/e;->b:Ljava/util/List;

    .line 46
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/ads/conversiontracking/e$b;

    invoke-direct {v1, p0}, Lcom/google/ads/conversiontracking/e$b;-><init>(Lcom/google/ads/conversiontracking/e;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 47
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-direct {v0, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    .line 48
    invoke-static {p1}, Lcom/google/ads/conversiontracking/g;->b(Landroid/content/Context;)J

    move-result-wide v2

    .line 49
    invoke-static {}, Lcom/google/ads/conversiontracking/g;->a()J

    move-result-wide v8

    .line 50
    add-long/2addr v2, v4

    sub-long/2addr v2, v8

    .line 51
    new-instance v1, Lcom/google/ads/conversiontracking/e$a;

    const/4 v8, 0x0

    invoke-direct {v1, p0, v8}, Lcom/google/ads/conversiontracking/e$a;-><init>(Lcom/google/ads/conversiontracking/e;Lcom/google/ads/conversiontracking/e$1;)V

    cmp-long v8, v2, v6

    if-lez v8, :cond_0

    .line 52
    :goto_0
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 51
    invoke-virtual/range {v0 .. v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 55
    return-void

    :cond_0
    move-wide v2, v6

    .line 52
    goto :goto_0
.end method

.method static synthetic a(Lcom/google/ads/conversiontracking/e;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/ads/conversiontracking/e;->a:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lcom/google/ads/conversiontracking/e;Z)Z
    .locals 0

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/google/ads/conversiontracking/e;->d:Z

    return p1
.end method

.method private b(Lcom/google/ads/conversiontracking/d;)V
    .locals 3

    .prologue
    .line 254
    iget-boolean v0, p1, Lcom/google/ads/conversiontracking/d;->b:Z

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lcom/google/ads/conversiontracking/d;->a:Z

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/google/ads/conversiontracking/e;->c:Landroid/content/Context;

    iget-object v1, p1, Lcom/google/ads/conversiontracking/d;->e:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/ads/conversiontracking/d;->f:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/ads/conversiontracking/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/google/ads/conversiontracking/e;)Z
    .locals 1

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/google/ads/conversiontracking/e;->e:Z

    return v0
.end method

.method static synthetic b(Lcom/google/ads/conversiontracking/e;Z)Z
    .locals 0

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/google/ads/conversiontracking/e;->e:Z

    return p1
.end method

.method static synthetic c(Lcom/google/ads/conversiontracking/e;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/ads/conversiontracking/e;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/google/ads/conversiontracking/e;)Z
    .locals 1

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/google/ads/conversiontracking/e;->d:Z

    return v0
.end method

.method static synthetic e(Lcom/google/ads/conversiontracking/e;)Lcom/google/ads/conversiontracking/f;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/ads/conversiontracking/e;->f:Lcom/google/ads/conversiontracking/f;

    return-object v0
.end method

.method static synthetic f(Lcom/google/ads/conversiontracking/e;)Ljava/util/List;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/ads/conversiontracking/e;->b:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/google/ads/conversiontracking/d;)I
    .locals 8

    .prologue
    const/4 v3, 0x2

    .line 210
    const/4 v1, 0x0

    .line 211
    const-string/jumbo v0, "http.agent"

    .line 212
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/google/ads/conversiontracking/e;->c:Landroid/content/Context;

    .line 211
    invoke-static {v0, v2}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;Landroid/content/Context;)Landroid/net/http/AndroidHttpClient;

    move-result-object v4

    .line 215
    :try_start_0
    const-string/jumbo v2, "GoogleConversionReporter"

    const-string/jumbo v5, "Pinging: "

    iget-object v0, p1, Lcom/google/ads/conversiontracking/d;->g:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    iget-object v0, p1, Lcom/google/ads/conversiontracking/d;->g:Ljava/lang/String;

    invoke-direct {v2, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    :try_start_1
    invoke-virtual {v4, v2}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 218
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 219
    const-string/jumbo v5, "GoogleConversionReporter"

    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x21

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v7, "Receive response code "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 222
    if-eqz v0, :cond_0

    .line 223
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 229
    :cond_0
    const/16 v0, 0xc8

    if-ne v1, v0, :cond_4

    move v0, v3

    .line 230
    :goto_1
    if-ne v0, v3, :cond_1

    .line 231
    invoke-direct {p0, p1}, Lcom/google/ads/conversiontracking/e;->b(Lcom/google/ads/conversiontracking/d;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 245
    :cond_1
    invoke-virtual {v4}, Landroid/net/http/AndroidHttpClient;->close()V

    :goto_2
    return v0

    .line 215
    :cond_2
    :try_start_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 234
    :catch_0
    move-exception v0

    .line 235
    :goto_3
    :try_start_3
    const-string/jumbo v2, "GoogleConversionReporter"

    const-string/jumbo v3, "Error sending ping"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 236
    if-eqz v1, :cond_3

    .line 238
    :try_start_4
    invoke-interface {v1}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V
    :try_end_4
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 243
    :cond_3
    :goto_4
    const/4 v0, 0x0

    .line 245
    invoke-virtual {v4}, Landroid/net/http/AndroidHttpClient;->close()V

    goto :goto_2

    .line 229
    :cond_4
    const/4 v0, 0x1

    goto :goto_1

    .line 245
    :catchall_0
    move-exception v0

    invoke-virtual {v4}, Landroid/net/http/AndroidHttpClient;->close()V

    throw v0

    .line 239
    :catch_1
    move-exception v0

    goto :goto_4

    .line 234
    :catch_2
    move-exception v0

    move-object v1, v2

    goto :goto_3
.end method

.method protected a(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 108
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 109
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/google/ads/conversiontracking/g$c;ZZZ)V
    .locals 3

    .prologue
    .line 85
    new-instance v0, Lcom/google/ads/conversiontracking/d;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/ads/conversiontracking/d;-><init>(Ljava/lang/String;Lcom/google/ads/conversiontracking/g$c;ZZ)V

    .line 87
    iget-object v1, p0, Lcom/google/ads/conversiontracking/e;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 88
    if-nez p5, :cond_0

    .line 89
    :try_start_0
    new-instance v2, Lcom/google/ads/conversiontracking/e$1;

    invoke-direct {v2, p0, v0}, Lcom/google/ads/conversiontracking/e$1;-><init>(Lcom/google/ads/conversiontracking/e;Lcom/google/ads/conversiontracking/d;)V

    invoke-virtual {p0, v2}, Lcom/google/ads/conversiontracking/e;->a(Ljava/lang/Runnable;)V

    .line 95
    monitor-exit v1

    .line 105
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-object v2, p0, Lcom/google/ads/conversiontracking/e;->f:Lcom/google/ads/conversiontracking/f;

    invoke-virtual {v2, v0}, Lcom/google/ads/conversiontracking/f;->b(Lcom/google/ads/conversiontracking/d;)V

    .line 99
    iget-boolean v2, p0, Lcom/google/ads/conversiontracking/e;->e:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/ads/conversiontracking/e;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/ads/conversiontracking/g;->d(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 100
    iget-object v2, p0, Lcom/google/ads/conversiontracking/e;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/conversiontracking/e;->d:Z

    .line 102
    iget-object v0, p0, Lcom/google/ads/conversiontracking/e;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 104
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
