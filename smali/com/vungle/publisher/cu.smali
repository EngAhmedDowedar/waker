.class public Lcom/vungle/publisher/cu;
.super Lcom/vungle/publisher/cs;
.source "vungle"


# instance fields
.field public a:Lcom/vungle/publisher/net/http/ReportExceptionsHttpTransactionFactory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public b:Lcom/vungle/publisher/net/http/AppFingerprintHttpTransactionFactory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public f:Lcom/vungle/publisher/db/model/LoggedException$Factory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/vungle/publisher/cs;-><init>()V

    return-void
.end method
