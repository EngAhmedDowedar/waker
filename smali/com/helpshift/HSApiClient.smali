.class public final Lcom/helpshift/HSApiClient;
.super Ljava/lang/Object;
.source "HSApiClient.java"


# static fields
.field static final TAG:Ljava/lang/String; = "HelpShiftDebug"

.field public static final apiVersion:Ljava/lang/String; = "2"

.field public static final libraryVersion:Ljava/lang/String; = "3.10.0"

.field private static timeStampErrorReplies:I = 0x0

.field static final timeStampMaxRetries:I = 0x3


# instance fields
.field final SC_SENT:Ljava/lang/String;

.field final SOL_ACCEPT:Ljava/lang/String;

.field final SOL_REJECTED:Ljava/lang/String;

.field final SOL_REVIEW:Ljava/lang/String;

.field final apiBase:Ljava/lang/String;

.field final apiKey:Ljava/lang/String;

.field final appId:Ljava/lang/String;

.field final domain:Ljava/lang/String;

.field final scheme:Ljava/lang/String;

.field private storage:Lcom/helpshift/HSStorage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    sput v0, Lcom/helpshift/HSApiClient;->timeStampErrorReplies:I

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/helpshift/HSStorage;)V
    .locals 1
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "apiKey"    # Ljava/lang/String;
    .param p4, "storage"    # Lcom/helpshift/HSStorage;

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const-string/jumbo v0, "/api/lib/"

    iput-object v0, p0, Lcom/helpshift/HSApiClient;->apiBase:Ljava/lang/String;

    .line 73
    const-string/jumbo v0, "https://"

    iput-object v0, p0, Lcom/helpshift/HSApiClient;->scheme:Ljava/lang/String;

    .line 74
    const-string/jumbo v0, "Did not accept the solution"

    iput-object v0, p0, Lcom/helpshift/HSApiClient;->SOL_REJECTED:Ljava/lang/String;

    .line 75
    const-string/jumbo v0, "Accepted the solution"

    iput-object v0, p0, Lcom/helpshift/HSApiClient;->SOL_ACCEPT:Ljava/lang/String;

    .line 76
    const-string/jumbo v0, "Accepted review request"

    iput-object v0, p0, Lcom/helpshift/HSApiClient;->SOL_REVIEW:Ljava/lang/String;

    .line 77
    const-string/jumbo v0, "Screenshot sent"

    iput-object v0, p0, Lcom/helpshift/HSApiClient;->SC_SENT:Ljava/lang/String;

    .line 84
    iput-object p1, p0, Lcom/helpshift/HSApiClient;->domain:Ljava/lang/String;

    .line 85
    iput-object p2, p0, Lcom/helpshift/HSApiClient;->appId:Ljava/lang/String;

    .line 86
    iput-object p3, p0, Lcom/helpshift/HSApiClient;->apiKey:Ljava/lang/String;

    .line 87
    iput-object p4, p0, Lcom/helpshift/HSApiClient;->storage:Lcom/helpshift/HSStorage;

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/helpshift/HSApiClient;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/HSApiClient;
    .param p1, "x1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helpshift/exceptions/InstallException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/helpshift/HSApiClient;->getApiUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/helpshift/HSApiClient;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/HSApiClient;
    .param p1, "x1"    # Ljava/util/HashMap;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helpshift/exceptions/InstallException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/helpshift/HSApiClient;->addAuth(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/helpshift/HSApiClient;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/HSApiClient;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/helpshift/HSApiClient;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/helpshift/HSApiClient;Ljava/util/HashMap;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/HSApiClient;
    .param p1, "x1"    # Ljava/util/HashMap;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/helpshift/HSApiClient;->constructGetParams(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Ljava/net/HttpURLConnection;)V
    .locals 0
    .param p0, "x0"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 59
    invoke-static {p0}, Lcom/helpshift/HSApiClient;->addHeadersToConnection(Ljava/net/HttpURLConnection;)V

    return-void
.end method

.method static synthetic access$400(Lcom/helpshift/HSApiClient;)Lcom/helpshift/HSStorage;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/HSApiClient;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/helpshift/HSApiClient;->storage:Lcom/helpshift/HSStorage;

    return-object v0
.end method

.method static synthetic access$500(Lcom/helpshift/HSApiClient;Ljava/util/HashMap;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/HSApiClient;
    .param p1, "x1"    # Ljava/util/HashMap;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/helpshift/HSApiClient;->constructPostParams(Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/util/List;

    .prologue
    .line 59
    invoke-static {p0}, Lcom/helpshift/HSApiClient;->constructPostParamsQuery(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700()I
    .locals 1

    .prologue
    .line 59
    sget v0, Lcom/helpshift/HSApiClient;->timeStampErrorReplies:I

    return v0
.end method

.method static synthetic access$702(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 59
    sput p0, Lcom/helpshift/HSApiClient;->timeStampErrorReplies:I

    return p0
.end method

.method static synthetic access$708()I
    .locals 2

    .prologue
    .line 59
    sget v0, Lcom/helpshift/HSApiClient;->timeStampErrorReplies:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/helpshift/HSApiClient;->timeStampErrorReplies:I

    return v0
.end method

.method static synthetic access$800(Lcom/helpshift/HSApiClient;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 0
    .param p0, "x0"    # Lcom/helpshift/HSApiClient;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/util/HashMap;
    .param p4, "x4"    # Landroid/os/Handler;
    .param p5, "x5"    # Landroid/os/Handler;

    .prologue
    .line 59
    invoke-direct/range {p0 .. p5}, Lcom/helpshift/HSApiClient;->makeRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Landroid/os/Handler;Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic access$900(Lcom/helpshift/HSApiClient;Landroid/os/Handler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/helpshift/HSApiClient;
    .param p1, "x1"    # Landroid/os/Handler;
    .param p2, "x2"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/helpshift/HSApiClient;->sendFailMessage(Landroid/os/Handler;I)V

    return-void
.end method

.method private addAuth(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 11
    .param p2, "route"    # Ljava/lang/String;
    .param p3, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helpshift/exceptions/InstallException;
        }
    .end annotation

    .prologue
    .line 172
    .local p1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p2}, Lcom/helpshift/HSApiClient;->getApiUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 173
    .local v7, "uriStr":Ljava/lang/String;
    iget-object v8, p0, Lcom/helpshift/HSApiClient;->appId:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 174
    new-instance v8, Lcom/helpshift/exceptions/InstallException;

    const-string/jumbo v9, "appId Missing"

    invoke-direct {v8, v9}, Lcom/helpshift/exceptions/InstallException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 176
    :cond_0
    const-string/jumbo v8, "platform-id"

    iget-object v9, p0, Lcom/helpshift/HSApiClient;->appId:Ljava/lang/String;

    invoke-virtual {p1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    const-string/jumbo v8, "method"

    invoke-virtual {p1, v8, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    const-string/jumbo v8, "uri"

    invoke-virtual {p1, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    iget-object v8, p0, Lcom/helpshift/HSApiClient;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {v8}, Lcom/helpshift/HSStorage;->getServerTimeDelta()Ljava/lang/Float;

    move-result-object v8

    invoke-static {v8}, Lcom/helpshift/util/HSTimeUtil;->getAdjustedTimestamp(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v6

    .line 180
    .local v6, "ts":Ljava/lang/String;
    const-string/jumbo v8, "timestamp"

    invoke-virtual {p1, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 183
    .local v5, "mapKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 185
    .local v0, "dataList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 186
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 187
    .local v4, "key":Ljava/lang/String;
    const-string/jumbo v8, "screenshot"

    if-eq v4, v8, :cond_1

    const-string/jumbo v8, "meta"

    if-eq v4, v8, :cond_1

    .line 188
    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/helpshift/HSApiClient;->getStringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 189
    .local v1, "dataString":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 190
    new-instance v8, Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 196
    .end local v1    # "dataString":Ljava/lang/String;
    .end local v4    # "key":Ljava/lang/String;
    :cond_2
    :try_start_0
    const-string/jumbo v8, "signature"

    const-string/jumbo v9, "&"

    invoke-static {v9, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/helpshift/HSApiClient;->getSignature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    const-string/jumbo v8, "method"

    invoke-virtual {p1, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    const-string/jumbo v8, "uri"

    invoke-virtual {p1, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    :goto_1
    return-object p1

    .line 200
    :catch_0
    move-exception v2

    .line 201
    .local v2, "e":Ljava/security/GeneralSecurityException;
    const-string/jumbo v8, "HelpShiftDebug"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Could not generate signature: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/security/GeneralSecurityException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private static addHeadersToConnection(Ljava/net/HttpURLConnection;)V
    .locals 6
    .param p0, "connection"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 741
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Helpshift-Android/3.10.0/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 742
    .local v1, "userAgent":Ljava/lang/String;
    const-string/jumbo v2, "%s;q=1.0"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Lcom/helpshift/util/LocaleUtil;->getAcceptLanguageHeader()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 743
    .local v0, "acceptLangHead":Ljava/lang/String;
    const/16 v2, 0x1388

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 744
    const-string/jumbo v2, "http.useragent"

    invoke-virtual {p0, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    const-string/jumbo v2, "Accept-Language"

    invoke-virtual {p0, v2, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    const-string/jumbo v2, "Accept-Encoding"

    const-string/jumbo v3, "gzip"

    invoke-virtual {p0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    const-string/jumbo v2, "X-HS-V"

    const-string/jumbo v3, "Helpshift-Android/3.10.0"

    invoke-virtual {p0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    return-void
.end method

.method private bytesToHex([B)Ljava/lang/String;
    .locals 6
    .param p1, "bytes"    # [B

    .prologue
    .line 91
    const/16 v4, 0x10

    new-array v0, v4, [C

    fill-array-data v0, :array_0

    .line 92
    .local v0, "hexArray":[C
    array-length v4, p1

    mul-int/lit8 v4, v4, 0x2

    new-array v1, v4, [C

    .line 94
    .local v1, "hexChars":[C
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    array-length v4, p1

    if-ge v2, v4, :cond_0

    .line 95
    aget-byte v4, p1, v2

    and-int/lit16 v3, v4, 0xff

    .line 96
    .local v3, "v":I
    mul-int/lit8 v4, v2, 0x2

    ushr-int/lit8 v5, v3, 0x4

    aget-char v5, v0, v5

    aput-char v5, v1, v4

    .line 97
    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x1

    and-int/lit8 v5, v3, 0xf

    aget-char v5, v0, v5

    aput-char v5, v1, v4

    .line 94
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 100
    .end local v3    # "v":I
    :cond_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([C)V

    return-object v4

    .line 91
    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method private constructGetParams(Ljava/util/HashMap;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 136
    .local p1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .local v0, "dataList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 138
    .local v3, "mapKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 139
    .local v2, "key":Ljava/lang/String;
    new-instance v5, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 141
    .end local v2    # "key":Ljava/lang/String;
    :cond_0
    const-string/jumbo v4, "&"

    invoke-static {v4, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private constructPostParams(Ljava/util/HashMap;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 159
    .local p1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 160
    .local v3, "mapKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 161
    .local v4, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 162
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/helpshift/HSApiClient;->getStringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, "dataString":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 164
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v5, v2, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 168
    .end local v0    # "dataString":Ljava/lang/String;
    .end local v2    # "key":Ljava/lang/String;
    :cond_1
    return-object v4
.end method

.method private static constructPostParamsQuery(Ljava/util/List;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 751
    .local p0, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 752
    .local v4, "result":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 754
    .local v1, "first":Z
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/http/NameValuePair;

    .line 755
    .local v3, "pair":Lorg/apache/http/NameValuePair;
    if-eqz v1, :cond_0

    .line 756
    const/4 v1, 0x0

    .line 762
    :goto_1
    :try_start_0
    invoke-interface {v3}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 763
    const-string/jumbo v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 764
    invoke-interface {v3}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 765
    :catch_0
    move-exception v0

    .line 766
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v5, "HelpShiftDebug"

    const-string/jumbo v6, "Exception Unsupported Encoding"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 758
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_0
    const-string/jumbo v5, "&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 769
    .end local v3    # "pair":Lorg/apache/http/NameValuePair;
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private getApiUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "route"    # Ljava/lang/String;

    .prologue
    .line 125
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "/api/lib/2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private getApiUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "route"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helpshift/exceptions/InstallException;
        }
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lcom/helpshift/HSApiClient;->domain:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    new-instance v0, Lcom/helpshift/exceptions/InstallException;

    const-string/jumbo v1, "domain Missing"

    invoke-direct {v0, v1}, Lcom/helpshift/exceptions/InstallException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_0
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/helpshift/HSApiClient;->domain:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/helpshift/HSApiClient;->getApiUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 388
    const/4 v2, 0x0

    .line 390
    .local v2, "type":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 391
    .local v1, "is":Ljava/io/InputStream;
    invoke-static {v1}, Ljava/net/URLConnection;->guessContentTypeFromStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    .line 392
    if-nez v2, :cond_0

    .line 393
    invoke-static {p1}, Ljava/net/URLConnection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 395
    :cond_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    .end local v1    # "is":Ljava/io/InputStream;
    :goto_0
    return-object v2

    .line 396
    :catch_0
    move-exception v0

    .line 397
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private getSignature(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "sigString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Lcom/helpshift/exceptions/InstallException;
        }
    .end annotation

    .prologue
    .line 105
    move-object v0, p1

    .line 106
    .local v0, "data":Ljava/lang/String;
    iget-object v3, p0, Lcom/helpshift/HSApiClient;->apiKey:Ljava/lang/String;

    .line 107
    .local v3, "key":Ljava/lang/String;
    const/4 v2, 0x0

    .line 109
    .local v2, "hmacData":[B
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 110
    new-instance v6, Lcom/helpshift/exceptions/InstallException;

    const-string/jumbo v7, "apiKey Missing"

    invoke-direct {v6, v7}, Lcom/helpshift/exceptions/InstallException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 114
    :cond_0
    :try_start_0
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v6, "UTF-8"

    invoke-virtual {v3, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    const-string/jumbo v7, "HmacSHA256"

    invoke-direct {v5, v6, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 115
    .local v5, "secretKey":Ljavax/crypto/spec/SecretKeySpec;
    const-string/jumbo v6, "HmacSHA256"

    invoke-static {v6}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v4

    .line 116
    .local v4, "mac":Ljavax/crypto/Mac;
    invoke-virtual {v4, v5}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 117
    const-string/jumbo v6, "UTF-8"

    invoke-virtual {v0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v2

    .line 118
    invoke-direct {p0, v2}, Lcom/helpshift/HSApiClient;->bytesToHex([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    return-object v6

    .line 119
    .end local v4    # "mac":Ljavax/crypto/Mac;
    .end local v5    # "secretKey":Ljavax/crypto/spec/SecretKeySpec;
    :catch_0
    move-exception v1

    .line 120
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v6, Ljava/security/GeneralSecurityException;

    invoke-direct {v6, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method private getStringValue(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 146
    const/4 v0, 0x0

    .line 147
    .local v0, "dataString":Ljava/lang/String;
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 148
    check-cast v0, Ljava/lang/String;

    .line 154
    .end local p1    # "value":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v0

    .line 149
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v1, p1, Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 150
    new-instance v1, Lorg/json/JSONArray;

    check-cast p1, Ljava/util/ArrayList;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private makeRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 8
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "route"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/util/HashMap;
    .param p4, "success"    # Landroid/os/Handler;
    .param p5, "failure"    # Landroid/os/Handler;

    .prologue
    .line 218
    new-instance v7, Ljava/lang/Thread;

    new-instance v0, Lcom/helpshift/HSApiClient$1;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p2

    move-object v4, p1

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/helpshift/HSApiClient$1;-><init>(Lcom/helpshift/HSApiClient;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Landroid/os/Handler;)V

    invoke-direct {v7, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 385
    return-void
.end method

.method private sendFailMessage(Landroid/os/Handler;I)V
    .locals 4
    .param p1, "failure"    # Landroid/os/Handler;
    .param p2, "status"    # I

    .prologue
    .line 208
    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 209
    .local v1, "result":Landroid/os/Message;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 210
    .local v0, "messageResponse":Ljava/util/HashMap;
    const-string/jumbo v2, "status"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 212
    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 213
    return-void
.end method

.method private uploadImage(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 8
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "route"    # Ljava/lang/String;
    .param p3, "plainData"    # Ljava/util/HashMap;
    .param p4, "success"    # Landroid/os/Handler;
    .param p5, "failure"    # Landroid/os/Handler;

    .prologue
    .line 405
    new-instance v7, Ljava/lang/Thread;

    new-instance v0, Lcom/helpshift/HSApiClient$2;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p2

    move-object v4, p1

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/helpshift/HSApiClient$2;-><init>(Lcom/helpshift/HSApiClient;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Landroid/os/Handler;)V

    invoke-direct {v7, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 570
    return-void
.end method


# virtual methods
.method protected addMessage(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "success"    # Landroid/os/Handler;
    .param p2, "failure"    # Landroid/os/Handler;
    .param p3, "profileId"    # Ljava/lang/String;
    .param p4, "issueId"    # Ljava/lang/String;
    .param p5, "messageText"    # Ljava/lang/String;
    .param p6, "type"    # Ljava/lang/String;
    .param p7, "refers"    # Ljava/lang/String;
    .param p8, "messageMeta"    # Ljava/lang/String;

    .prologue
    .line 636
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 638
    .local v3, "data":Ljava/util/HashMap;
    const-string/jumbo v0, "ca"

    if-ne p6, v0, :cond_1

    .line 639
    const-string/jumbo p5, "Accepted the solution"

    .line 646
    :cond_0
    :goto_0
    const-string/jumbo v0, "profile-id"

    invoke-virtual {v3, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    const-string/jumbo v0, "message-text"

    invoke-virtual {v3, v0, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    const-string/jumbo v0, "type"

    invoke-virtual {v3, v0, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    const-string/jumbo v0, "refers"

    invoke-virtual {v3, v0, p7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    const-string/jumbo v0, "message-meta"

    invoke-virtual {v3, v0, p8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 651
    const-string/jumbo v1, "POST"

    new-instance v2, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "/issues/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "/messages/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/helpshift/HSApiClient;->makeRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Landroid/os/Handler;Landroid/os/Handler;)V

    .line 653
    return-void

    .line 640
    :cond_1
    const-string/jumbo v0, "ncr"

    if-ne p6, v0, :cond_2

    .line 641
    const-string/jumbo p5, "Did not accept the solution"

    goto :goto_0

    .line 642
    :cond_2
    const-string/jumbo v0, "ar"

    if-ne p6, v0, :cond_0

    .line 643
    const-string/jumbo p5, "Accepted review request"

    goto :goto_0
.end method

.method protected addScMessage(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "success"    # Landroid/os/Handler;
    .param p2, "failure"    # Landroid/os/Handler;
    .param p3, "profileId"    # Ljava/lang/String;
    .param p4, "issueId"    # Ljava/lang/String;
    .param p5, "messageText"    # Ljava/lang/String;
    .param p6, "type"    # Ljava/lang/String;
    .param p7, "refers"    # Ljava/lang/String;
    .param p8, "imageUri"    # Ljava/lang/String;

    .prologue
    .line 658
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 659
    .local v3, "data":Ljava/util/HashMap;
    const-string/jumbo v0, "sc"

    if-ne p6, v0, :cond_0

    .line 660
    const-string/jumbo p5, "Screenshot sent"

    .line 662
    :cond_0
    const-string/jumbo v0, "profile-id"

    invoke-virtual {v3, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    const-string/jumbo v0, "message-text"

    invoke-virtual {v3, v0, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    const-string/jumbo v0, "type"

    invoke-virtual {v3, v0, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    const-string/jumbo v0, "refers"

    invoke-virtual {v3, v0, p7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 666
    const-string/jumbo v0, "screenshot"

    invoke-virtual {v3, v0, p8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    const-string/jumbo v1, "POST"

    new-instance v2, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "/issues/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "/messages/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/helpshift/HSApiClient;->uploadImage(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Landroid/os/Handler;Landroid/os/Handler;)V

    .line 669
    return-void
.end method

.method protected createIssue(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "success"    # Landroid/os/Handler;
    .param p2, "failure"    # Landroid/os/Handler;
    .param p3, "profileId"    # Ljava/lang/String;
    .param p4, "messageText"    # Ljava/lang/String;
    .param p5, "meta"    # Ljava/lang/String;

    .prologue
    .line 626
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 627
    .local v3, "data":Ljava/util/HashMap;
    const-string/jumbo v0, "profile-id"

    invoke-virtual {v3, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    const-string/jumbo v0, "message-text"

    invoke-virtual {v3, v0, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    const-string/jumbo v0, "meta"

    invoke-virtual {v3, v0, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    const-string/jumbo v1, "POST"

    const-string/jumbo v2, "/issues/"

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/helpshift/HSApiClient;->makeRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Landroid/os/Handler;Landroid/os/Handler;)V

    .line 631
    return-void
.end method

.method protected fetchFaq(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 6
    .param p1, "success"    # Landroid/os/Handler;
    .param p2, "failure"    # Landroid/os/Handler;
    .param p3, "faqId"    # Ljava/lang/String;

    .prologue
    .line 577
    new-instance v2, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "/faqs/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 578
    .local v2, "route":Ljava/lang/String;
    const-string/jumbo v1, "GET"

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/helpshift/HSApiClient;->makeRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Landroid/os/Handler;Landroid/os/Handler;)V

    .line 579
    return-void
.end method

.method protected fetchFaqs(Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 6
    .param p1, "success"    # Landroid/os/Handler;
    .param p2, "failure"    # Landroid/os/Handler;

    .prologue
    .line 573
    const-string/jumbo v1, "GET"

    const-string/jumbo v2, "/faqs/"

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/helpshift/HSApiClient;->makeRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Landroid/os/Handler;Landroid/os/Handler;)V

    .line 574
    return-void
.end method

.method protected fetchMessages(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "success"    # Landroid/os/Handler;
    .param p2, "failure"    # Landroid/os/Handler;
    .param p3, "profileId"    # Ljava/lang/String;
    .param p4, "issueId"    # Ljava/lang/String;
    .param p5, "since"    # Ljava/lang/String;
    .param p6, "chatLaunchSource"    # Ljava/lang/String;

    .prologue
    .line 674
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 675
    .local v3, "data":Ljava/util/HashMap;
    const-string/jumbo v0, "profile-id"

    invoke-virtual {v3, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 676
    const-string/jumbo v0, "since"

    invoke-virtual {v3, v0, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 677
    if-eqz p6, :cond_0

    .line 678
    const-string/jumbo v0, "chat-launch-source"

    invoke-virtual {v3, v0, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    :cond_0
    const-string/jumbo v1, "GET"

    new-instance v2, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "/issues/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "/messages/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/helpshift/HSApiClient;->makeRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Landroid/os/Handler;Landroid/os/Handler;)V

    .line 682
    return-void
.end method

.method protected fetchMyIssues(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "success"    # Landroid/os/Handler;
    .param p2, "failure"    # Landroid/os/Handler;
    .param p3, "profileId"    # Ljava/lang/String;
    .param p4, "since"    # Ljava/lang/String;
    .param p5, "mc"    # Ljava/lang/String;
    .param p6, "chatLaunchSource"    # Ljava/lang/String;

    .prologue
    .line 613
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 614
    .local v3, "data":Ljava/util/HashMap;
    const-string/jumbo v0, "profile-id"

    invoke-virtual {v3, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    const-string/jumbo v0, "since"

    invoke-virtual {v3, v0, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    const-string/jumbo v0, "mc"

    invoke-virtual {v3, v0, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    if-eqz p6, :cond_0

    .line 618
    const-string/jumbo v0, "chat-launch-source"

    invoke-virtual {v3, v0, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    :cond_0
    const-string/jumbo v1, "POST"

    const-string/jumbo v2, "/my-issues/"

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/helpshift/HSApiClient;->makeRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Landroid/os/Handler;Landroid/os/Handler;)V

    .line 622
    return-void
.end method

.method protected getConfig(Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 6
    .param p1, "success"    # Landroid/os/Handler;
    .param p2, "failure"    # Landroid/os/Handler;

    .prologue
    .line 700
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 701
    .local v3, "data":Ljava/util/HashMap;
    const-string/jumbo v1, "GET"

    const-string/jumbo v2, "/config/"

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/helpshift/HSApiClient;->makeRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Landroid/os/Handler;Landroid/os/Handler;)V

    .line 702
    return-void
.end method

.method protected getQuestion(Ljava/lang/String;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 6
    .param p1, "publishId"    # Ljava/lang/String;
    .param p2, "success"    # Landroid/os/Handler;
    .param p3, "failure"    # Landroid/os/Handler;

    .prologue
    .line 718
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 719
    .local v3, "data":Ljava/util/HashMap;
    const-string/jumbo v1, "GET"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "/faqs/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/helpshift/HSApiClient;->makeRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Landroid/os/Handler;Landroid/os/Handler;)V

    .line 720
    return-void
.end method

.method protected markHelpful(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 6
    .param p1, "success"    # Landroid/os/Handler;
    .param p2, "failure"    # Landroid/os/Handler;
    .param p3, "faqId"    # Ljava/lang/String;

    .prologue
    .line 687
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 688
    .local v3, "data":Ljava/util/HashMap;
    const-string/jumbo v1, "POST"

    new-instance v2, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "/faqs/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "/helpful/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/helpshift/HSApiClient;->makeRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Landroid/os/Handler;Landroid/os/Handler;)V

    .line 689
    return-void
.end method

.method protected markUnhelpful(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 6
    .param p1, "success"    # Landroid/os/Handler;
    .param p2, "failure"    # Landroid/os/Handler;
    .param p3, "faqId"    # Ljava/lang/String;

    .prologue
    .line 694
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 695
    .local v3, "data":Ljava/util/HashMap;
    const-string/jumbo v1, "POST"

    new-instance v2, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "/faqs/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "/unhelpful/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/helpshift/HSApiClient;->makeRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Landroid/os/Handler;Landroid/os/Handler;)V

    .line 696
    return-void
.end method

.method protected registerProfile(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "success"    # Landroid/os/Handler;
    .param p2, "failure"    # Landroid/os/Handler;
    .param p3, "username"    # Ljava/lang/String;
    .param p4, "email"    # Ljava/lang/String;
    .param p5, "identifier"    # Ljava/lang/String;
    .param p6, "crittercismId"    # Ljava/lang/String;

    .prologue
    .line 590
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 591
    .local v3, "data":Ljava/util/HashMap;
    const-string/jumbo v0, "displayname"

    invoke-virtual {v3, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    const-string/jumbo v0, "email"

    invoke-virtual {v3, v0, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    const-string/jumbo v0, "identifier"

    invoke-virtual {v3, v0, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    if-eqz p6, :cond_0

    .line 595
    const-string/jumbo v0, "crittercism-id"

    invoke-virtual {v3, v0, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    :cond_0
    const-string/jumbo v1, "POST"

    const-string/jumbo v2, "/profiles/"

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/helpshift/HSApiClient;->makeRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Landroid/os/Handler;Landroid/os/Handler;)V

    .line 598
    return-void
.end method

.method protected reportActionEvents(Landroid/os/Handler;Landroid/os/Handler;Ljava/util/HashMap;)V
    .locals 6
    .param p1, "success"    # Landroid/os/Handler;
    .param p2, "failure"    # Landroid/os/Handler;
    .param p3, "data"    # Ljava/util/HashMap;

    .prologue
    .line 714
    const-string/jumbo v1, "POST"

    const-string/jumbo v2, "/events/"

    move-object v0, p0

    move-object v3, p3

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/helpshift/HSApiClient;->makeRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Landroid/os/Handler;Landroid/os/Handler;)V

    .line 715
    return-void
.end method

.method protected search(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 6
    .param p1, "success"    # Landroid/os/Handler;
    .param p2, "failure"    # Landroid/os/Handler;
    .param p3, "query"    # Ljava/lang/String;

    .prologue
    .line 582
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 583
    .local v3, "data":Ljava/util/HashMap;
    const-string/jumbo v0, "query"

    invoke-virtual {v3, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    const-string/jumbo v1, "GET"

    const-string/jumbo v2, "/search/"

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/helpshift/HSApiClient;->makeRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Landroid/os/Handler;Landroid/os/Handler;)V

    .line 585
    return-void
.end method

.method protected sendCustomerSatisfactionRating(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 6
    .param p1, "rating"    # Ljava/lang/Integer;
    .param p2, "feedback"    # Ljava/lang/String;
    .param p3, "issueId"    # Ljava/lang/String;
    .param p4, "success"    # Landroid/os/Handler;
    .param p5, "failure"    # Landroid/os/Handler;

    .prologue
    .line 732
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 733
    .local v3, "data":Ljava/util/HashMap;
    const-string/jumbo v0, "rating"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 734
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 735
    const-string/jumbo v0, "feedback"

    invoke-virtual {v3, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 737
    :cond_0
    const-string/jumbo v1, "POST"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "/issues/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "/customer-survey/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/helpshift/HSApiClient;->makeRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Landroid/os/Handler;Landroid/os/Handler;)V

    .line 738
    return-void
.end method

.method protected updateMessageSeenState(Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 6
    .param p1, "messageIds"    # Lorg/json/JSONArray;
    .param p2, "source"    # Ljava/lang/String;
    .param p3, "readAt"    # Ljava/lang/String;
    .param p4, "success"    # Landroid/os/Handler;
    .param p5, "failure"    # Landroid/os/Handler;

    .prologue
    .line 724
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 725
    .local v3, "data":Ljava/util/HashMap;
    const-string/jumbo v0, "message-ids"

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 726
    const-string/jumbo v0, "source"

    invoke-virtual {v3, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 727
    const-string/jumbo v0, "read-at"

    invoke-virtual {v3, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 728
    const-string/jumbo v1, "POST"

    const-string/jumbo v2, "/events/messages/seen/"

    move-object v0, p0

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/helpshift/HSApiClient;->makeRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Landroid/os/Handler;Landroid/os/Handler;)V

    .line 729
    return-void
.end method

.method protected updateUAToken(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "success"    # Landroid/os/Handler;
    .param p2, "failure"    # Landroid/os/Handler;
    .param p3, "deviceToken"    # Ljava/lang/String;
    .param p4, "profileId"    # Ljava/lang/String;

    .prologue
    .line 603
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 604
    .local v3, "data":Ljava/util/HashMap;
    const-string/jumbo v0, "token"

    invoke-virtual {v3, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    const-string/jumbo v0, "profile-id"

    invoke-virtual {v3, v0, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    const-string/jumbo v1, "POST"

    const-string/jumbo v2, "/update-ua-token/"

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/helpshift/HSApiClient;->makeRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Landroid/os/Handler;Landroid/os/Handler;)V

    .line 608
    return-void
.end method
