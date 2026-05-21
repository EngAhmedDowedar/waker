.class public Lcom/vungle/publisher/net/http/AppFingerprintHttpTransactionFactory;
.super Lcom/vungle/publisher/net/http/HttpTransaction$Factory;
.source "vungle"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/net/http/AppFingerprintHttpRequest$Factory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcom/vungle/publisher/net/http/AppFingerprintHttpResponseHandler;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/vungle/publisher/net/http/HttpTransaction$Factory;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/vungle/publisher/device/data/AppFingerprint;)Lcom/vungle/publisher/net/http/HttpTransaction;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 19
    iget-object v0, p0, Lcom/vungle/publisher/net/http/AppFingerprintHttpTransactionFactory;->a:Lcom/vungle/publisher/net/http/AppFingerprintHttpRequest$Factory;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/net/http/AppFingerprintHttpRequest$Factory;->a(Lcom/vungle/publisher/device/data/AppFingerprint;)Lcom/vungle/publisher/net/http/AppFingerprintHttpRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/publisher/net/http/AppFingerprintHttpTransactionFactory;->b:Lcom/vungle/publisher/net/http/AppFingerprintHttpResponseHandler;

    invoke-super {p0, v0, v1}, Lcom/vungle/publisher/net/http/HttpTransaction$Factory;->a(Lcom/vungle/publisher/net/http/HttpRequest;Lcom/vungle/publisher/ct;)Lcom/vungle/publisher/net/http/HttpTransaction;

    move-result-object v0

    return-object v0
.end method
