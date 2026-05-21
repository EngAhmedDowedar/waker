.class final Lcom/a/a/a/e;
.super Lorg/apache/http/entity/HttpEntityWrapper;


# instance fields
.field private a:Ljava/io/InputStream;

.field private b:Ljava/io/PushbackInputStream;

.field private c:Ljava/util/zip/GZIPInputStream;


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpEntity;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/http/entity/HttpEntityWrapper;-><init>(Lorg/apache/http/HttpEntity;)V

    return-void
.end method


# virtual methods
.method public final consumeContent()V
    .locals 1

    iget-object v0, p0, Lcom/a/a/a/e;->a:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/a/a/a/a;->a(Ljava/io/InputStream;)V

    iget-object v0, p0, Lcom/a/a/a/e;->b:Ljava/io/PushbackInputStream;

    invoke-static {v0}, Lcom/a/a/a/a;->a(Ljava/io/InputStream;)V

    iget-object v0, p0, Lcom/a/a/a/e;->c:Ljava/util/zip/GZIPInputStream;

    invoke-static {v0}, Lcom/a/a/a/a;->a(Ljava/io/InputStream;)V

    invoke-super {p0}, Lorg/apache/http/entity/HttpEntityWrapper;->consumeContent()V

    return-void
.end method

.method public final getContent()Ljava/io/InputStream;
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v6, 0x2

    iget-object v2, p0, Lcom/a/a/a/e;->wrappedEntity:Lorg/apache/http/HttpEntity;

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/a/a/a/e;->a:Ljava/io/InputStream;

    new-instance v2, Ljava/io/PushbackInputStream;

    iget-object v3, p0, Lcom/a/a/a/e;->a:Ljava/io/InputStream;

    invoke-direct {v2, v3, v6}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v2, p0, Lcom/a/a/a/e;->b:Ljava/io/PushbackInputStream;

    iget-object v2, p0, Lcom/a/a/a/e;->b:Ljava/io/PushbackInputStream;

    if-eqz v2, :cond_0

    new-array v3, v6, [B

    invoke-virtual {v2, v3}, Ljava/io/PushbackInputStream;->read([B)I

    move-result v4

    invoke-virtual {v2, v3}, Ljava/io/PushbackInputStream;->unread([B)V

    aget-byte v2, v3, v1

    and-int/lit16 v2, v2, 0xff

    aget-byte v3, v3, v0

    shl-int/lit8 v3, v3, 0x8

    const v5, 0xff00

    and-int/2addr v3, v5

    or-int/2addr v2, v3

    if-ne v4, v6, :cond_0

    const v3, 0x8b1f

    if-ne v3, v2, :cond_0

    :goto_0
    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    iget-object v1, p0, Lcom/a/a/a/e;->b:Ljava/io/PushbackInputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/a/a/a/e;->c:Ljava/util/zip/GZIPInputStream;

    iget-object v0, p0, Lcom/a/a/a/e;->c:Ljava/util/zip/GZIPInputStream;

    :goto_1
    return-object v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/a/a/a/e;->b:Ljava/io/PushbackInputStream;

    goto :goto_1
.end method

.method public final getContentLength()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method
