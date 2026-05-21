.class public Lcom/payssion/android/sdk/model/FillinfoRequest;
.super Lcom/payssion/android/sdk/model/PayRequest;


# instance fields
.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/payssion/android/sdk/model/PayRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public SetUrl(Ljava/lang/String;)Lcom/payssion/android/sdk/model/FillinfoRequest;
    .locals 0

    return-object p0
.end method

.method public getPayerEmail()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/payssion/android/sdk/model/FillinfoRequest;->e:Ljava/lang/String;

    return-object v0
.end method

.method public setPayerEmail(Ljava/lang/String;)Lcom/payssion/android/sdk/model/FillinfoRequest;
    .locals 0

    iput-object p1, p0, Lcom/payssion/android/sdk/model/FillinfoRequest;->e:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setPayerEmail(Ljava/lang/String;)Lcom/payssion/android/sdk/model/PayRequest;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/payssion/android/sdk/model/FillinfoRequest;->setPayerEmail(Ljava/lang/String;)Lcom/payssion/android/sdk/model/FillinfoRequest;

    move-result-object v0

    return-object v0
.end method

.method public setPayerName(Ljava/lang/String;)Lcom/payssion/android/sdk/model/FillinfoRequest;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic setPayerName(Ljava/lang/String;)Lcom/payssion/android/sdk/model/PayRequest;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/payssion/android/sdk/model/FillinfoRequest;->setPayerName(Ljava/lang/String;)Lcom/payssion/android/sdk/model/FillinfoRequest;

    move-result-object v0

    return-object v0
.end method

.method public setPayerRef(Ljava/lang/String;)Lcom/payssion/android/sdk/model/FillinfoRequest;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic setPayerRef(Ljava/lang/String;)Lcom/payssion/android/sdk/model/PayRequest;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/payssion/android/sdk/model/FillinfoRequest;->setPayerRef(Ljava/lang/String;)Lcom/payssion/android/sdk/model/FillinfoRequest;

    move-result-object v0

    return-object v0
.end method
