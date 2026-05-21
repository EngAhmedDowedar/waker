.class Lcom/anansimobile/nge/IAB/NGStoreKit$StoreKitMsgHandler$1;
.super Ljava/lang/Object;
.source "NGStoreKit.java"

# interfaces
.implements Lcom/anansimobile/nge/IAB/util/IabHelper$OnConsumeFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anansimobile/nge/IAB/NGStoreKit$StoreKitMsgHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/anansimobile/nge/IAB/NGStoreKit$StoreKitMsgHandler;


# direct methods
.method constructor <init>(Lcom/anansimobile/nge/IAB/NGStoreKit$StoreKitMsgHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/anansimobile/nge/IAB/NGStoreKit$StoreKitMsgHandler;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/anansimobile/nge/IAB/NGStoreKit$StoreKitMsgHandler$1;->this$0:Lcom/anansimobile/nge/IAB/NGStoreKit$StoreKitMsgHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsumeFinished(Lcom/anansimobile/nge/IAB/util/Purchase;Lcom/anansimobile/nge/IAB/util/IabResult;)V
    .locals 2
    .param p1, "purchase"    # Lcom/anansimobile/nge/IAB/util/Purchase;
    .param p2, "result"    # Lcom/anansimobile/nge/IAB/util/IabResult;

    .prologue
    .line 216
    const-string/jumbo v0, "[IAB] debug product onConsumeFinished"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/anansimobile/nge/IAB/NGStoreKit;->access$200(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    return-void
.end method
