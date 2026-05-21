.class public Lcom/vungle/publisher/net/http/AppFingerprintHttpResponseHandler;
.super Lcom/vungle/publisher/net/http/FireAndForgetHttpResponseHandler;
.source "vungle"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/env/SdkConfig;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/vungle/publisher/net/http/FireAndForgetHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/vungle/publisher/net/http/HttpTransaction;Lcom/vungle/publisher/net/http/HttpResponse;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 23
    invoke-super {p0, p1, p2}, Lcom/vungle/publisher/net/http/FireAndForgetHttpResponseHandler;->a(Lcom/vungle/publisher/net/http/HttpTransaction;Lcom/vungle/publisher/net/http/HttpResponse;)V

    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 25
    const-string/jumbo v2, "VungleData"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "sent fingerprint at time: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    iget-object v2, p0, Lcom/vungle/publisher/net/http/AppFingerprintHttpResponseHandler;->a:Lcom/vungle/publisher/env/SdkConfig;

    invoke-virtual {v2, v0, v1}, Lcom/vungle/publisher/env/SdkConfig;->a(J)V

    .line 27
    return-void
.end method
