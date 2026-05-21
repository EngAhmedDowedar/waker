.class public Lcom/anansimobile/extra/payment/PMItem;
.super Ljava/lang/Object;
.source "PMItem.java"


# instance fields
.field private mCurrency:Ljava/lang/String;

.field private mItemId:I

.field private mPMId:Ljava/lang/String;

.field private mPMName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrency()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/anansimobile/extra/payment/PMItem;->mCurrency:Ljava/lang/String;

    return-object v0
.end method

.method public getItemId()I
    .locals 1

    .prologue
    .line 9
    iget v0, p0, Lcom/anansimobile/extra/payment/PMItem;->mItemId:I

    return v0
.end method

.method public getPMId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/anansimobile/extra/payment/PMItem;->mPMId:Ljava/lang/String;

    return-object v0
.end method

.method public getPMName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/anansimobile/extra/payment/PMItem;->mPMName:Ljava/lang/String;

    return-object v0
.end method

.method public setCurrency(Ljava/lang/String;)Lcom/anansimobile/extra/payment/PMItem;
    .locals 0
    .param p1, "currency"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/anansimobile/extra/payment/PMItem;->mCurrency:Ljava/lang/String;

    .line 37
    return-object p0
.end method

.method public setItemId(I)Lcom/anansimobile/extra/payment/PMItem;
    .locals 0
    .param p1, "itemId"    # I

    .prologue
    .line 12
    iput p1, p0, Lcom/anansimobile/extra/payment/PMItem;->mItemId:I

    .line 13
    return-object p0
.end method

.method public setPMId(Ljava/lang/String;)Lcom/anansimobile/extra/payment/PMItem;
    .locals 0
    .param p1, "pmId"    # Ljava/lang/String;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/anansimobile/extra/payment/PMItem;->mPMId:Ljava/lang/String;

    .line 21
    return-object p0
.end method

.method public setPMName(Ljava/lang/String;)Lcom/anansimobile/extra/payment/PMItem;
    .locals 0
    .param p1, "pmName"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/anansimobile/extra/payment/PMItem;->mPMName:Ljava/lang/String;

    .line 29
    return-object p0
.end method
