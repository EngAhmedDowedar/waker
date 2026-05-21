.class final Lcom/a/a/a/n;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/io/File;

.field public b:[B

.field final synthetic c:Lcom/a/a/a/m;


# direct methods
.method public constructor <init>(Lcom/a/a/a/m;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/a/a/a/n;->c:Lcom/a/a/a/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0, p4}, Lcom/a/a/a/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a/n;->b:[B

    iput-object p3, p0, Lcom/a/a/a/n;->a:Ljava/io/File;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 4

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    iget-object v0, p0, Lcom/a/a/a/n;->c:Lcom/a/a/a/m;

    invoke-static {v0}, Lcom/a/a/a/m;->a(Lcom/a/a/a/m;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget-object v0, p0, Lcom/a/a/a/n;->c:Lcom/a/a/a/m;

    invoke-static {p1, p2}, Lcom/a/a/a/m;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget-object v0, p0, Lcom/a/a/a/n;->c:Lcom/a/a/a/m;

    invoke-static {p3}, Lcom/a/a/a/m;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-static {}, Lcom/a/a/a/m;->b()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-static {}, Lcom/a/a/a/m;->c()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "SimpleMultipartEntity"

    const-string/jumbo v3, "createHeader ByteArrayOutputStream exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
