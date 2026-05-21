.class final Lcom/payssion/android/sdk/g;
.super Lcom/a/a/a/k;


# instance fields
.field private final synthetic a:Lcom/payssion/android/sdk/model/PayssionResponseHandler;

.field private final synthetic b:Lcom/payssion/android/sdk/model/PayRequest;


# direct methods
.method constructor <init>(Lcom/payssion/android/sdk/model/PayssionResponseHandler;Lcom/payssion/android/sdk/model/PayRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/payssion/android/sdk/g;->a:Lcom/payssion/android/sdk/model/PayssionResponseHandler;

    iput-object p2, p0, Lcom/payssion/android/sdk/g;->b:Lcom/payssion/android/sdk/model/PayRequest;

    invoke-direct {p0}, Lcom/a/a/a/k;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I[B)V
    .locals 2

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/payssion/android/sdk/g;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/payssion/android/sdk/Payssion;->parseResponse([BLjava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payssion/android/sdk/g;->a:Lcom/payssion/android/sdk/model/PayssionResponseHandler;

    iget-object v1, p0, Lcom/payssion/android/sdk/g;->b:Lcom/payssion/android/sdk/model/PayRequest;

    invoke-virtual {v1}, Lcom/payssion/android/sdk/model/PayRequest;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/payssion/android/sdk/model/PayssionResponse;->getResponse(Ljava/lang/String;Ljava/lang/Object;)Lcom/payssion/android/sdk/model/PayssionResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/payssion/android/sdk/model/PayssionResponseHandler;->onSuccess(Lcom/payssion/android/sdk/model/PayssionResponse;)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/payssion/android/sdk/g;->a(I[BLjava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public final a(I[BLjava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lcom/payssion/android/sdk/g;->a:Lcom/payssion/android/sdk/model/PayssionResponseHandler;

    invoke-virtual {p0}, Lcom/payssion/android/sdk/g;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/payssion/android/sdk/Payssion;->getResponseString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p3}, Lcom/payssion/android/sdk/model/PayssionResponseHandler;->onError(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a([Lorg/apache/http/Header;)V
    .locals 6

    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    aget-object v2, p1, v0

    const-string/jumbo v3, "payssion"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "requestheader1:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final b(I)V
    .locals 0

    return-void
.end method

.method public final e()V
    .locals 0

    return-void
.end method
