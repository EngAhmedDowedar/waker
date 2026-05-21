.class public Lcom/anansimobile/nge/IAB/util_v2/Security$VerifiedPurchase;
.super Ljava/lang/Object;
.source "Security.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anansimobile/nge/IAB/util_v2/Security;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VerifiedPurchase"
.end annotation


# instance fields
.field public developerPayload:Ljava/lang/String;

.field public notificationId:Ljava/lang/String;

.field public orderId:Ljava/lang/String;

.field public productId:Ljava/lang/String;

.field public purchaseState:Lcom/anansimobile/nge/IAB/util_v2/Consts$PurchaseState;

.field public purchaseTime:J


# direct methods
.method public constructor <init>(Lcom/anansimobile/nge/IAB/util_v2/Consts$PurchaseState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 1
    .param p1, "purchaseState"    # Lcom/anansimobile/nge/IAB/util_v2/Consts$PurchaseState;
    .param p2, "notificationId"    # Ljava/lang/String;
    .param p3, "productId"    # Ljava/lang/String;
    .param p4, "orderId"    # Ljava/lang/String;
    .param p5, "purchaseTime"    # J
    .param p7, "developerPayload"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/anansimobile/nge/IAB/util_v2/Security$VerifiedPurchase;->purchaseState:Lcom/anansimobile/nge/IAB/util_v2/Consts$PurchaseState;

    .line 67
    iput-object p2, p0, Lcom/anansimobile/nge/IAB/util_v2/Security$VerifiedPurchase;->notificationId:Ljava/lang/String;

    .line 68
    iput-object p3, p0, Lcom/anansimobile/nge/IAB/util_v2/Security$VerifiedPurchase;->productId:Ljava/lang/String;

    .line 69
    iput-object p4, p0, Lcom/anansimobile/nge/IAB/util_v2/Security$VerifiedPurchase;->orderId:Ljava/lang/String;

    .line 70
    iput-wide p5, p0, Lcom/anansimobile/nge/IAB/util_v2/Security$VerifiedPurchase;->purchaseTime:J

    .line 71
    iput-object p7, p0, Lcom/anansimobile/nge/IAB/util_v2/Security$VerifiedPurchase;->developerPayload:Ljava/lang/String;

    .line 72
    return-void
.end method
