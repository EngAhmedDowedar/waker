.class public Lcom/payssion/android/sdk/model/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field protected d:Z

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/payssion/android/sdk/model/d;->d:Z

    return-void
.end method

.method public constructor <init>(Lcom/payssion/android/sdk/model/d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/payssion/android/sdk/model/d;->d:Z

    invoke-virtual {p1}, Lcom/payssion/android/sdk/model/d;->getAPIKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payssion/android/sdk/model/d;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/payssion/android/sdk/model/d;->getSecretKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payssion/android/sdk/model/d;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/payssion/android/sdk/model/d;->isLiveMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/payssion/android/sdk/model/d;->d:Z

    invoke-virtual {p1}, Lcom/payssion/android/sdk/model/d;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payssion/android/sdk/model/d;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAPIKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/payssion/android/sdk/model/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getAction()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Request"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/payssion/android/sdk/model/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getParam()Lcom/a/a/a/i;
    .locals 1

    new-instance v0, Lcom/a/a/a/i;

    invoke-direct {v0}, Lcom/a/a/a/i;-><init>()V

    invoke-virtual {p0, v0}, Lcom/payssion/android/sdk/model/d;->prepareParams(Lcom/a/a/a/i;)V

    return-object v0
.end method

.method public getSecretKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/payssion/android/sdk/model/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/payssion/android/sdk/model/d;->isLiveMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "https://www.payssion.com/api/v1/"

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/payssion/android/sdk/model/d;->getMethod()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "http://sandbox.payssion.com/api/v1/"

    goto :goto_0
.end method

.method getUserAgent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/payssion/android/sdk/model/d;->e:Ljava/lang/String;

    return-object v0
.end method

.method public isLiveMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/payssion/android/sdk/model/d;->d:Z

    return v0
.end method

.method protected prepareParams(Lcom/a/a/a/i;)V
    .locals 2

    const-string/jumbo v0, "user_agent"

    invoke-virtual {p0}, Lcom/payssion/android/sdk/model/d;->getUserAgent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "source"

    const-string/jumbo v1, "PayssionSDK"

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setAPIKey(Ljava/lang/String;)Lcom/payssion/android/sdk/model/d;
    .locals 0

    iput-object p1, p0, Lcom/payssion/android/sdk/model/d;->b:Ljava/lang/String;

    return-object p0
.end method

.method public setLiveMode(Z)Lcom/payssion/android/sdk/model/d;
    .locals 0

    iput-boolean p1, p0, Lcom/payssion/android/sdk/model/d;->d:Z

    return-object p0
.end method

.method protected setMethod(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/payssion/android/sdk/model/d;->a:Ljava/lang/String;

    return-void
.end method

.method public setSecretKey(Ljava/lang/String;)Lcom/payssion/android/sdk/model/d;
    .locals 0

    iput-object p1, p0, Lcom/payssion/android/sdk/model/d;->c:Ljava/lang/String;

    return-object p0
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/payssion/android/sdk/model/d;->e:Ljava/lang/String;

    return-void
.end method

.method public validate(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
