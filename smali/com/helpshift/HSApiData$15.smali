.class Lcom/helpshift/HSApiData$15;
.super Ljava/lang/Object;
.source "HSApiData.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/HSApiData;->loadIndex()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/HSApiData;


# direct methods
.method constructor <init>(Lcom/helpshift/HSApiData;)V
    .locals 0

    .prologue
    .line 1231
    iput-object p1, p0, Lcom/helpshift/HSApiData$15;->this$0:Lcom/helpshift/HSApiData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1233
    iget-object v0, p0, Lcom/helpshift/HSApiData$15;->this$0:Lcom/helpshift/HSApiData;

    iget-object v0, v0, Lcom/helpshift/HSApiData;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {v0}, Lcom/helpshift/HSStorage;->loadIndex()V

    .line 1234
    return-void
.end method
