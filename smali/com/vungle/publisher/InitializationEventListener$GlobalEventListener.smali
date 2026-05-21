.class Lcom/vungle/publisher/InitializationEventListener$GlobalEventListener;
.super Lcom/vungle/publisher/by;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/InitializationEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GlobalEventListener"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/device/data/AppFingerprintManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/vungle/publisher/by;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/vungle/publisher/ag;)V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/vungle/publisher/InitializationEventListener$GlobalEventListener;->a:Lcom/vungle/publisher/device/data/AppFingerprintManager;

    invoke-virtual {v0}, Lcom/vungle/publisher/device/data/AppFingerprintManager;->a()V

    .line 117
    return-void
.end method

.method public onEvent(Lcom/vungle/publisher/cq;)V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/vungle/publisher/InitializationEventListener$GlobalEventListener;->a:Lcom/vungle/publisher/device/data/AppFingerprintManager;

    invoke-virtual {v0}, Lcom/vungle/publisher/device/data/AppFingerprintManager;->a()V

    .line 113
    return-void
.end method
