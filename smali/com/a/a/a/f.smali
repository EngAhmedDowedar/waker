.class public final Lcom/a/a/a/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lorg/apache/http/impl/client/AbstractHttpClient;

.field private final b:Lorg/apache/http/protocol/HttpContext;

.field private final c:Lorg/apache/http/client/methods/HttpUriRequest;

.field private final d:Lcom/a/a/a/k;

.field private e:I


# direct methods
.method public constructor <init>(Lorg/apache/http/impl/client/AbstractHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Lcom/a/a/a/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a/a/a/f;->a:Lorg/apache/http/impl/client/AbstractHttpClient;

    iput-object p2, p0, Lcom/a/a/a/f;->b:Lorg/apache/http/protocol/HttpContext;

    iput-object p3, p0, Lcom/a/a/a/f;->c:Lorg/apache/http/client/methods/HttpUriRequest;

    iput-object p4, p0, Lcom/a/a/a/f;->d:Lcom/a/a/a/k;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/a/a/a/f;->d:Lcom/a/a/a/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/a/f;->d:Lcom/a/a/a/k;

    invoke-virtual {v0}, Lcom/a/a/a/k;->a()V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/a/a/a/f;->a:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getHttpRequestRetryHandler()Lorg/apache/http/client/HttpRequestRetryHandler;

    move-result-object v5

    move-object v0, v3

    move v4, v1

    :cond_1
    :goto_0
    if-nez v4, :cond_4

    :goto_1
    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/a/a/a/f;->d:Lcom/a/a/a/k;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/a/a/a/f;->d:Lcom/a/a/a/k;

    invoke-virtual {v1, v2, v3, v3, v0}, Lcom/a/a/a/k;->a(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V

    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/a/a/a/f;->d:Lcom/a/a/a/k;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/a/a/a/f;->d:Lcom/a/a/a/k;

    invoke-virtual {v0}, Lcom/a/a/a/k;->b()V

    :cond_3
    return-void

    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/a/a/a/f;->c:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/net/MalformedURLException;

    const-string/jumbo v4, "No valid URI scheme was provided"

    invoke-direct {v0, v4}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :catch_1
    move-exception v0

    :try_start_2
    new-instance v4, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "UnknownHostException exception: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/a/a/a/f;->e:I

    if-lez v0, :cond_6

    iget v0, p0, Lcom/a/a/a/f;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/a/a/a/f;->e:I

    iget-object v6, p0, Lcom/a/a/a/f;->b:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v5, v4, v0, v6}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_3
    move-object v8, v4

    move v4, v0

    move-object v0, v8

    :goto_4
    if-eqz v4, :cond_1

    iget-object v6, p0, Lcom/a/a/a/f;->d:Lcom/a/a/a/k;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/a/a/a/f;->d:Lcom/a/a/a/k;

    iget v7, p0, Lcom/a/a/a/f;->e:I

    invoke-virtual {v6, v7}, Lcom/a/a/a/k;->a(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_2
    move-exception v0

    move-object v1, v0

    :try_start_3
    const-string/jumbo v0, "AsyncHttpRequest"

    const-string/jumbo v4, "Unhandled exception origin cause"

    invoke-static {v0, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Unhandled exception: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    :cond_5
    :try_start_4
    iget-object v0, p0, Lcom/a/a/a/f;->a:Lorg/apache/http/impl/client/AbstractHttpClient;

    iget-object v4, p0, Lcom/a/a/a/f;->c:Lorg/apache/http/client/methods/HttpUriRequest;

    iget-object v6, p0, Lcom/a/a/a/f;->b:Lorg/apache/http/protocol/HttpContext;

    invoke-virtual {v0, v4, v6}, Lorg/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    iget-object v4, p0, Lcom/a/a/a/f;->d:Lcom/a/a/a/k;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/a/a/a/f;->d:Lcom/a/a/a/k;

    invoke-virtual {v4, v0}, Lcom/a/a/a/k;->a(Lorg/apache/http/HttpResponse;)V
    :try_end_4
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_2

    :catch_3
    move-exception v0

    :try_start_5
    new-instance v4, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "NPE in HttpClient: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/a/a/a/f;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/a/a/a/f;->e:I

    iget-object v6, p0, Lcom/a/a/a/f;->b:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v5, v4, v0, v6}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v0

    move-object v8, v4

    move v4, v0

    move-object v0, v8

    goto :goto_4

    :cond_6
    move v0, v2

    goto :goto_3

    :catch_4
    move-exception v0

    iget v4, p0, Lcom/a/a/a/f;->e:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/a/a/a/f;->e:I

    iget-object v6, p0, Lcom/a/a/a/f;->b:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v5, v0, v4, v6}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    move-result v4

    goto/16 :goto_4

    :cond_7
    const-string/jumbo v1, "AsyncHttpRequest"

    const-string/jumbo v2, "makeRequestWithRetries returned error, but handler is null"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2
.end method
