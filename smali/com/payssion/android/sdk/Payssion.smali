.class public Lcom/payssion/android/sdk/Payssion;
.super Ljava/lang/Object;


# static fields
.field private static final ACTION_PAY:Ljava/lang/String; = "create"

.field private static final LOG_TAG:Ljava/lang/String; = "Payssion"

.field public static MERCHANT:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/payssion/android/sdk/Payssion;->MERCHANT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static doRequest(Ljava/lang/String;Lcom/payssion/android/sdk/model/PayRequest;Lcom/payssion/android/sdk/model/PayssionResponseHandler;)V
    .locals 3

    new-instance v0, Lcom/a/a/a/a;

    invoke-direct {v0}, Lcom/a/a/a/a;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "https://www.payssion.com/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/payssion/android/sdk/g;

    invoke-direct {v2, p2, p1}, Lcom/payssion/android/sdk/g;-><init>(Lcom/payssion/android/sdk/model/PayssionResponseHandler;Lcom/payssion/android/sdk/model/PayRequest;)V

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/a;->b(Ljava/lang/String;Lcom/a/a/a/k;)Lcom/a/a/a/h;

    return-void
.end method

.method public static get(Ljava/lang/String;Lcom/a/a/a/k;)V
    .locals 4

    new-instance v0, Lcom/a/a/a/a;

    invoke-direct {v0}, Lcom/a/a/a/a;-><init>()V

    const-string/jumbo v1, "Payssion"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "url"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, p0, p1}, Lcom/a/a/a/a;->a(Ljava/lang/String;Lcom/a/a/a/k;)Lcom/a/a/a/h;

    return-void
.end method

.method public static getDetail(Lcom/payssion/android/sdk/model/GetDetailRequest;Lcom/payssion/android/sdk/model/PayssionResponseHandler;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/payssion/android/sdk/Payssion;->handleRequest(Lcom/payssion/android/sdk/model/d;Lcom/payssion/android/sdk/model/PayssionResponseHandler;)V

    return-void
.end method

.method public static getResponseString([BLjava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    move-object v1, v0

    :goto_0
    :try_start_0
    const-string/jumbo v2, "Payssion"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "response="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "Payssion"

    const-string/jumbo v3, "Encoding response into string failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static handleRequest(Lcom/payssion/android/sdk/model/d;Lcom/payssion/android/sdk/model/PayssionResponseHandler;)V
    .locals 5

    new-instance v0, Lcom/a/a/a/a;

    invoke-direct {v0}, Lcom/a/a/a/a;-><init>()V

    invoke-virtual {p0}, Lcom/payssion/android/sdk/model/d;->getUrl()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Payssion"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "url"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/payssion/android/sdk/model/d;->getParam()Lcom/a/a/a/i;

    move-result-object v2

    new-instance v3, Lcom/payssion/android/sdk/h;

    invoke-direct {v3, p1, p0}, Lcom/payssion/android/sdk/h;-><init>(Lcom/payssion/android/sdk/model/PayssionResponseHandler;Lcom/payssion/android/sdk/model/d;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/a/a/a/a;->a(Ljava/lang/String;Lcom/a/a/a/i;Lcom/a/a/a/k;)Lcom/a/a/a/h;

    return-void
.end method

.method public static parseResponse([BLjava/lang/String;)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0, p1}, Lcom/payssion/android/sdk/Payssion;->getResponseString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    new-instance v0, Lorg/json/JSONTokener;

    invoke-direct {v0, v1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    :goto_1
    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_3
    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    goto :goto_1
.end method

.method public static pay(Lcom/payssion/android/sdk/model/PayRequest;Lcom/payssion/android/sdk/model/PayssionResponseHandler;)V
    .locals 2

    const-string/jumbo v0, "create"

    new-instance v1, Lcom/payssion/android/sdk/i;

    invoke-direct {v1, p1}, Lcom/payssion/android/sdk/i;-><init>(Lcom/payssion/android/sdk/model/PayssionResponseHandler;)V

    invoke-static {v0, p0, v1}, Lcom/payssion/android/sdk/Payssion;->doRequest(Ljava/lang/String;Lcom/payssion/android/sdk/model/PayRequest;Lcom/payssion/android/sdk/model/PayssionResponseHandler;)V

    return-void
.end method


# virtual methods
.method public query(Lcom/payssion/android/sdk/model/QueryRequest;Lcom/payssion/android/sdk/model/PayssionResponseHandler;)V
    .locals 0

    return-void
.end method

.method public queryPM(Lcom/payssion/android/sdk/model/QueryPMRequest;Lcom/payssion/android/sdk/model/PayssionResponseHandler;)V
    .locals 0

    return-void
.end method
