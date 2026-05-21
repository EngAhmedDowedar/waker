.class final Lcom/payssion/android/sdk/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/payssion/android/sdk/model/PayssionResponseHandler;


# instance fields
.field private synthetic a:Lcom/payssion/android/sdk/PayssionActivity;

.field private final synthetic b:Lcom/payssion/android/sdk/model/d;


# direct methods
.method constructor <init>(Lcom/payssion/android/sdk/PayssionActivity;Lcom/payssion/android/sdk/model/d;)V
    .locals 0

    iput-object p1, p0, Lcom/payssion/android/sdk/k;->a:Lcom/payssion/android/sdk/PayssionActivity;

    iput-object p2, p0, Lcom/payssion/android/sdk/k;->b:Lcom/payssion/android/sdk/model/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    instance-of v0, p3, Lorg/apache/http/conn/ConnectTimeoutException;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/payssion/android/sdk/k;->a:Lcom/payssion/android/sdk/PayssionActivity;

    const-string/jumbo p2, "Failed to connect to the server, please try again."

    :cond_0
    :goto_0
    invoke-static {v0, p2}, Lcom/payssion/android/sdk/PayssionActivity;->a(Lcom/payssion/android/sdk/PayssionActivity;Ljava/lang/String;)V

    return-void

    :cond_1
    instance-of v0, p3, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/payssion/android/sdk/k;->a:Lcom/payssion/android/sdk/PayssionActivity;

    const-string/jumbo p2, "Failed to connect to the server, please give it another try."

    goto :goto_0

    :cond_2
    instance-of v0, p3, Ljava/net/UnknownHostException;

    if-nez v0, :cond_3

    instance-of v0, p3, Ljava/io/IOException;

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/payssion/android/sdk/k;->a:Lcom/payssion/android/sdk/PayssionActivity;

    const-string/jumbo p2, "Failed to connect to the server, please try again"

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/payssion/android/sdk/k;->a:Lcom/payssion/android/sdk/PayssionActivity;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public final onFinish()V
    .locals 1

    iget-object v0, p0, Lcom/payssion/android/sdk/k;->a:Lcom/payssion/android/sdk/PayssionActivity;

    invoke-virtual {v0}, Lcom/payssion/android/sdk/PayssionActivity;->b()V

    return-void
.end method

.method public final onStart()V
    .locals 2

    iget-object v0, p0, Lcom/payssion/android/sdk/k;->a:Lcom/payssion/android/sdk/PayssionActivity;

    const-string/jumbo v1, "LOADING..."

    invoke-virtual {v0, v1}, Lcom/payssion/android/sdk/PayssionActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final onSuccess(Lcom/payssion/android/sdk/model/PayssionResponse;)V
    .locals 3

    iget-object v0, p0, Lcom/payssion/android/sdk/k;->a:Lcom/payssion/android/sdk/PayssionActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/payssion/android/sdk/PayssionActivity;->d:Z

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/payssion/android/sdk/model/PayssionResponse;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "Pay"

    iget-object v1, p0, Lcom/payssion/android/sdk/k;->b:Lcom/payssion/android/sdk/model/d;

    invoke-virtual {v1}, Lcom/payssion/android/sdk/model/d;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/payssion/android/sdk/k;->a:Lcom/payssion/android/sdk/PayssionActivity;

    check-cast p1, Lcom/payssion/android/sdk/model/PayResponse;

    iput-object p1, v0, Lcom/payssion/android/sdk/PayssionActivity;->b:Lcom/payssion/android/sdk/model/PayResponse;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/payssion/android/sdk/k;->b:Lcom/payssion/android/sdk/model/d;

    instance-of v1, v1, Lcom/payssion/android/sdk/model/PayRequest;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/payssion/android/sdk/k;->b:Lcom/payssion/android/sdk/model/d;

    check-cast v0, Lcom/payssion/android/sdk/model/PayRequest;

    :cond_0
    iget-object v1, p0, Lcom/payssion/android/sdk/k;->a:Lcom/payssion/android/sdk/PayssionActivity;

    iget-object v1, v1, Lcom/payssion/android/sdk/PayssionActivity;->b:Lcom/payssion/android/sdk/model/PayResponse;

    invoke-virtual {v0}, Lcom/payssion/android/sdk/model/PayRequest;->getPMId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/payssion/android/sdk/model/PayResponse;->setPMId(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/payssion/android/sdk/k;->a:Lcom/payssion/android/sdk/PayssionActivity;

    iget-object v1, v1, Lcom/payssion/android/sdk/PayssionActivity;->b:Lcom/payssion/android/sdk/model/PayResponse;

    invoke-virtual {v0}, Lcom/payssion/android/sdk/model/PayRequest;->getPayerEmail()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/payssion/android/sdk/model/PayResponse;->setPayerEmail(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/payssion/android/sdk/k;->a:Lcom/payssion/android/sdk/PayssionActivity;

    invoke-static {v0}, Lcom/payssion/android/sdk/PayssionActivity;->a(Lcom/payssion/android/sdk/PayssionActivity;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/payssion/android/sdk/k;->a:Lcom/payssion/android/sdk/PayssionActivity;

    invoke-virtual {p1}, Lcom/payssion/android/sdk/model/PayssionResponse;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/payssion/android/sdk/PayssionActivity;->a(Lcom/payssion/android/sdk/PayssionActivity;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/payssion/android/sdk/k;->a:Lcom/payssion/android/sdk/PayssionActivity;

    const-string/jumbo v1, "server error"

    invoke-static {v0, v1}, Lcom/payssion/android/sdk/PayssionActivity;->a(Lcom/payssion/android/sdk/PayssionActivity;Ljava/lang/String;)V

    goto :goto_0
.end method
