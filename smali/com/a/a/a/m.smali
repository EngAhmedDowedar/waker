.class final Lcom/a/a/a/m;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/http/HttpEntity;


# static fields
.field private static final a:[B

.field private static final b:[B

.field private static final c:[C


# instance fields
.field private final d:Ljava/lang/String;

.field private final e:[B

.field private final f:[B

.field private final g:Ljava/util/List;

.field private final h:Ljava/io/ByteArrayOutputStream;

.field private final i:Lcom/a/a/a/k;

.field private j:I

.field private k:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "\r\n"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/a/a/a/m;->a:[B

    const-string/jumbo v0, "Content-Transfer-Encoding: binary\r\n"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/a/a/a/m;->b:[B

    const-string/jumbo v0, "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/a/a/a/m;->c:[C

    return-void
.end method

.method public constructor <init>(Lcom/a/a/a/k;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/a/a/a/m;->g:Ljava/util/List;

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/a/a/a/m;->h:Ljava/io/ByteArrayOutputStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    const/4 v0, 0x0

    :goto_0
    const/16 v3, 0x1e

    if-lt v0, v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a/m;->d:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "--"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/a/a/a/m;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a/m;->e:[B

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "--"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/a/a/a/m;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "--\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a/m;->f:[B

    iput-object p1, p0, Lcom/a/a/a/m;->i:Lcom/a/a/a/k;

    return-void

    :cond_0
    sget-object v3, Lcom/a/a/a/m;->c:[C

    sget-object v4, Lcom/a/a/a/m;->c:[C

    array-length v4, v4

    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    aget-char v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static a()V
    .locals 0

    return-void
.end method

.method private a(I)V
    .locals 3

    iget v0, p0, Lcom/a/a/a/m;->j:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/a/a/a/m;->j:I

    iget-object v0, p0, Lcom/a/a/a/m;->i:Lcom/a/a/a/k;

    iget v1, p0, Lcom/a/a/a/m;->j:I

    iget v2, p0, Lcom/a/a/a/m;->k:I

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/k;->a(II)V

    return-void
.end method

.method static synthetic a(Lcom/a/a/a/m;)[B
    .locals 1

    iget-object v0, p0, Lcom/a/a/a/m;->e:[B

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;)[B
    .locals 1

    invoke-static {p0}, Lcom/a/a/a/m;->c(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 1

    invoke-static {p0, p1}, Lcom/a/a/a/m;->b(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string/jumbo p0, "application/octet-stream"

    :cond_0
    return-object p0
.end method

.method static synthetic b()[B
    .locals 1

    sget-object v0, Lcom/a/a/a/m;->b:[B

    return-object v0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Content-Disposition: form-data; name=\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\"; filename=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\"\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic c()[B
    .locals 1

    sget-object v0, Lcom/a/a/a/m;->a:[B

    return-object v0
.end method

.method private static c(Ljava/lang/String;)[B
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Content-Type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/a/a/a/m;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/a/a/a/m;->g:Ljava/util/List;

    new-instance v1, Lcom/a/a/a/n;

    invoke-static {p3}, Lcom/a/a/a/m;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/a/a/a/n;-><init>(Lcom/a/a/a/m;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/a/a/a/m;->h:Ljava/io/ByteArrayOutputStream;

    iget-object v1, p0, Lcom/a/a/a/m;->e:[B

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget-object v0, p0, Lcom/a/a/a/m;->h:Ljava/io/ByteArrayOutputStream;

    invoke-static {p1, p2}, Lcom/a/a/a/m;->b(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget-object v0, p0, Lcom/a/a/a/m;->h:Ljava/io/ByteArrayOutputStream;

    invoke-static {p4}, Lcom/a/a/a/m;->c(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget-object v0, p0, Lcom/a/a/a/m;->h:Ljava/io/ByteArrayOutputStream;

    sget-object v1, Lcom/a/a/a/m;->b:[B

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget-object v0, p0, Lcom/a/a/a/m;->h:Ljava/io/ByteArrayOutputStream;

    sget-object v1, Lcom/a/a/a/m;->a:[B

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const/16 v0, 0x1000

    new-array v0, v0, [B

    :goto_0
    invoke-virtual {p3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    iget-object v0, p0, Lcom/a/a/a/m;->h:Ljava/io/ByteArrayOutputStream;

    sget-object v1, Lcom/a/a/a/m;->a:[B

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget-object v0, p0, Lcom/a/a/a/m;->h:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    iget-object v0, p0, Lcom/a/a/a/m;->h:Ljava/io/ByteArrayOutputStream;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v2, p0, Lcom/a/a/a/m;->h:Ljava/io/ByteArrayOutputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AsyncHttpClient"

    const-string/jumbo v2, "Cannot close output stream"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    if-nez p3, :cond_0

    const-string/jumbo p3, "UTF-8"

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "text/plain; charset="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/a/a/a/m;->h:Ljava/io/ByteArrayOutputStream;

    iget-object v2, p0, Lcom/a/a/a/m;->e:[B

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget-object v1, p0, Lcom/a/a/a/m;->h:Ljava/io/ByteArrayOutputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Content-Disposition: form-data; name=\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\"\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget-object v1, p0, Lcom/a/a/a/m;->h:Ljava/io/ByteArrayOutputStream;

    invoke-static {v0}, Lcom/a/a/a/m;->c(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget-object v0, p0, Lcom/a/a/a/m;->h:Ljava/io/ByteArrayOutputStream;

    sget-object v1, Lcom/a/a/a/m;->a:[B

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget-object v0, p0, Lcom/a/a/a/m;->h:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget-object v0, p0, Lcom/a/a/a/m;->h:Ljava/io/ByteArrayOutputStream;

    sget-object v1, Lcom/a/a/a/m;->a:[B

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SimpleMultipartEntity"

    const-string/jumbo v2, "addPart ByteArrayOutputStream exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final consumeContent()V
    .locals 2

    invoke-virtual {p0}, Lcom/a/a/a/m;->isStreaming()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Streaming entity does not implement #consumeContent()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public final getContent()Ljava/io/InputStream;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "getContent() is not supported. Use writeTo() instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getContentEncoding()Lorg/apache/http/Header;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getContentLength()J
    .locals 10

    iget-object v0, p0, Lcom/a/a/a/m;->h:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    int-to-long v0, v0

    iget-object v2, p0, Lcom/a/a/a/m;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v2, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/a/a/a/m;->f:[B

    array-length v0, v0

    int-to-long v0, v0

    add-long/2addr v0, v2

    :goto_1
    return-wide v0

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/n;

    iget-object v1, v0, Lcom/a/a/a/n;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    sget-object v1, Lcom/a/a/a/m;->a:[B

    array-length v1, v1

    int-to-long v8, v1

    add-long/2addr v6, v8

    iget-object v0, v0, Lcom/a/a/a/n;->b:[B

    array-length v0, v0

    int-to-long v0, v0

    add-long/2addr v0, v6

    const-wide/16 v6, 0x0

    cmp-long v5, v0, v6

    if-gez v5, :cond_1

    const-wide/16 v0, -0x1

    goto :goto_1

    :cond_1
    add-long/2addr v0, v2

    move-wide v2, v0

    goto :goto_0
.end method

.method public final getContentType()Lorg/apache/http/Header;
    .locals 4

    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string/jumbo v1, "Content-Type"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "multipart/form-data; boundary="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/a/a/a/m;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final isChunked()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final isRepeatable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final isStreaming()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final writeTo(Ljava/io/OutputStream;)V
    .locals 7

    const/4 v6, 0x0

    iput v6, p0, Lcom/a/a/a/m;->j:I

    invoke-virtual {p0}, Lcom/a/a/a/m;->getContentLength()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/a/a/a/m;->k:I

    iget-object v0, p0, Lcom/a/a/a/m;->h:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    iget-object v0, p0, Lcom/a/a/a/m;->h:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/a/a/a/m;->a(I)V

    iget-object v0, p0, Lcom/a/a/a/m;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/a/a/a/m;->f:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lcom/a/a/a/m;->f:[B

    array-length v0, v0

    invoke-direct {p0, v0}, Lcom/a/a/a/m;->a(I)V

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/n;

    iget-object v2, v0, Lcom/a/a/a/n;->b:[B

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    iget-object v2, v0, Lcom/a/a/a/n;->c:Lcom/a/a/a/m;

    iget-object v3, v0, Lcom/a/a/a/n;->b:[B

    array-length v3, v3

    invoke-direct {v2, v3}, Lcom/a/a/a/m;->a(I)V

    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, v0, Lcom/a/a/a/n;->a:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v3, 0x1000

    new-array v3, v3, [B

    :goto_1
    invoke-virtual {v2, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    sget-object v3, Lcom/a/a/a/m;->a:[B

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, v0, Lcom/a/a/a/n;->c:Lcom/a/a/a/m;

    sget-object v3, Lcom/a/a/a/m;->a:[B

    array-length v3, v3

    invoke-direct {v0, v3}, Lcom/a/a/a/m;->a(I)V

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    invoke-static {v2}, Lcom/a/a/a/a;->a(Ljava/io/InputStream;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v3, v6, v4}, Ljava/io/OutputStream;->write([BII)V

    iget-object v5, v0, Lcom/a/a/a/n;->c:Lcom/a/a/a/m;

    invoke-direct {v5, v4}, Lcom/a/a/a/m;->a(I)V

    goto :goto_1
.end method
