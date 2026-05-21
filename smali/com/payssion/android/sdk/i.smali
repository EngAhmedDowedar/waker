.class final Lcom/payssion/android/sdk/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/payssion/android/sdk/model/PayssionResponseHandler;


# instance fields
.field private final synthetic a:Lcom/payssion/android/sdk/model/PayssionResponseHandler;


# direct methods
.method constructor <init>(Lcom/payssion/android/sdk/model/PayssionResponseHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/payssion/android/sdk/i;->a:Lcom/payssion/android/sdk/model/PayssionResponseHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lcom/payssion/android/sdk/i;->a:Lcom/payssion/android/sdk/model/PayssionResponseHandler;

    invoke-interface {v0, p1, p2, p3}, Lcom/payssion/android/sdk/model/PayssionResponseHandler;->onError(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onFinish()V
    .locals 0

    return-void
.end method

.method public final onStart()V
    .locals 1

    iget-object v0, p0, Lcom/payssion/android/sdk/i;->a:Lcom/payssion/android/sdk/model/PayssionResponseHandler;

    invoke-interface {v0}, Lcom/payssion/android/sdk/model/PayssionResponseHandler;->onStart()V

    return-void
.end method

.method public final onSuccess(Lcom/payssion/android/sdk/model/PayssionResponse;)V
    .locals 1

    instance-of v0, p1, Lcom/payssion/android/sdk/model/PayResponse;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/payssion/android/sdk/model/PayResponse;

    invoke-virtual {p1}, Lcom/payssion/android/sdk/model/PayResponse;->getRedirectUrl()Ljava/lang/String;

    :cond_0
    return-void
.end method
