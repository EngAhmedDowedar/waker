.class Lcom/helpshift/HSApiData$1$1;
.super Ljava/lang/Object;
.source "HSApiData.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/HSApiData$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/helpshift/HSApiData$1;


# direct methods
.method constructor <init>(Lcom/helpshift/HSApiData$1;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/helpshift/HSApiData$1$1;->this$1:Lcom/helpshift/HSApiData$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/helpshift/HSApiData$1$1;->this$1:Lcom/helpshift/HSApiData$1;

    iget-object v0, v0, Lcom/helpshift/HSApiData$1;->this$0:Lcom/helpshift/HSApiData;

    invoke-static {v0}, Lcom/helpshift/HSApiData;->access$100(Lcom/helpshift/HSApiData;)V

    .line 147
    invoke-static {}, Lcom/helpshift/HSApiData;->signalSearchIndexesUpdated()V

    .line 148
    return-void
.end method
