.class final Lcom/payssion/android/sdk/h;
.super Lcom/a/a/a/k;


# instance fields
.field private final synthetic a:Lcom/payssion/android/sdk/model/PayssionResponseHandler;

.field private final synthetic b:Lcom/payssion/android/sdk/model/d;


# direct methods
.method constructor <init>(Lcom/payssion/android/sdk/model/PayssionResponseHandler;Lcom/payssion/android/sdk/model/d;)V
    .locals 0

    iput-object p1, p0, Lcom/payssion/android/sdk/h;->a:Lcom/payssion/android/sdk/model/PayssionResponseHandler;

    iput-object p2, p0, Lcom/payssion/android/sdk/h;->b:Lcom/payssion/android/sdk/model/d;

    invoke-direct {p0}, Lcom/a/a/a/k;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I[B)V
    .locals 5

    const-string/jumbo v0, "Payssion"

    const-string/jumbo v1, "handleRequest::onSuccess()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/payssion/android/sdk/h;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/payssion/android/sdk/Payssion;->parseResponse([BLjava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/payssion/android/sdk/h;->a:Lcom/payssion/android/sdk/model/PayssionResponseHandler;

    iget-object v2, p0, Lcom/payssion/android/sdk/h;->b:Lcom/payssion/android/sdk/model/d;

    invoke-virtual {v2}, Lcom/payssion/android/sdk/model/d;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/payssion/android/sdk/model/PayssionResponse;->getResponse(Ljava/lang/String;Ljava/lang/Object;)Lcom/payssion/android/sdk/model/PayssionResponse;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/payssion/android/sdk/model/PayssionResponseHandler;->onSuccess(Lcom/payssion/android/sdk/model/PayssionResponse;)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "Payssion"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "response:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, p2, v0}, Lcom/payssion/android/sdk/h;->a(I[BLjava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public final a(I[BLjava/lang/Throwable;)V
    .locals 3

    const-string/jumbo v0, "Payssion"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "handleRequest::onFailure()"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/payssion/android/sdk/h;->a:Lcom/payssion/android/sdk/model/PayssionResponseHandler;

    invoke-virtual {p0}, Lcom/payssion/android/sdk/h;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/payssion/android/sdk/Payssion;->getResponseString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p3}, Lcom/payssion/android/sdk/model/PayssionResponseHandler;->onError(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final b(I)V
    .locals 2

    const-string/jumbo v0, "Payssion"

    const-string/jumbo v1, "handleRequest::onRetry()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final e()V
    .locals 2

    const-string/jumbo v0, "Payssion"

    const-string/jumbo v1, "handleRequest:onStart()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/payssion/android/sdk/h;->a:Lcom/payssion/android/sdk/model/PayssionResponseHandler;

    invoke-interface {v0}, Lcom/payssion/android/sdk/model/PayssionResponseHandler;->onStart()V

    return-void
.end method

.method public final f()V
    .locals 2

    const-string/jumbo v0, "Payssion"

    const-string/jumbo v1, "handleRequest:onFinish()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/payssion/android/sdk/h;->a:Lcom/payssion/android/sdk/model/PayssionResponseHandler;

    invoke-interface {v0}, Lcom/payssion/android/sdk/model/PayssionResponseHandler;->onFinish()V

    return-void
.end method
