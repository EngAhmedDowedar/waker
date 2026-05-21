.class public Lcom/anansimobile/extra/payment/PaymentSelectActivity;
.super Landroid/app/Activity;
.source "PaymentSelectActivity.java"


# instance fields
.field private mPMList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/anansimobile/extra/payment/PMItem;",
            ">;"
        }
    .end annotation
.end field

.field private mPMListAdapter:Lcom/anansimobile/extra/payment/PMListAdapter;

.field private mPMListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 20
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    sget v0, Lcom/anansimobile/extra/payment/R$layout;->activity_paymentselect:I

    invoke-virtual {p0, v0}, Lcom/anansimobile/extra/payment/PaymentSelectActivity;->setContentView(I)V

    .line 22
    sget v0, Lcom/anansimobile/extra/payment/R$id;->pmList:I

    invoke-virtual {p0, v0}, Lcom/anansimobile/extra/payment/PaymentSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/anansimobile/extra/payment/PaymentSelectActivity;->mPMListView:Landroid/widget/ListView;

    .line 23
    new-instance v0, Lcom/anansimobile/extra/payment/PMListAdapter;

    invoke-direct {v0, p0}, Lcom/anansimobile/extra/payment/PMListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anansimobile/extra/payment/PaymentSelectActivity;->mPMListAdapter:Lcom/anansimobile/extra/payment/PMListAdapter;

    .line 24
    iget-object v0, p0, Lcom/anansimobile/extra/payment/PaymentSelectActivity;->mPMListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/anansimobile/extra/payment/PaymentSelectActivity;->mPMListAdapter:Lcom/anansimobile/extra/payment/PMListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 25
    iget-object v0, p0, Lcom/anansimobile/extra/payment/PaymentSelectActivity;->mPMListView:Landroid/widget/ListView;

    new-instance v1, Lcom/anansimobile/extra/payment/PaymentSelectActivity$1;

    invoke-direct {v1, p0}, Lcom/anansimobile/extra/payment/PaymentSelectActivity$1;-><init>(Lcom/anansimobile/extra/payment/PaymentSelectActivity;)V

    .line 26
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/anansimobile/extra/payment/PaymentSelectActivity;->mPMList:Ljava/util/List;

    .line 34
    iget-object v0, p0, Lcom/anansimobile/extra/payment/PaymentSelectActivity;->mPMList:Ljava/util/List;

    new-instance v1, Lcom/anansimobile/extra/payment/PMItem;

    invoke-direct {v1}, Lcom/anansimobile/extra/payment/PMItem;-><init>()V

    invoke-virtual {v1, v3}, Lcom/anansimobile/extra/payment/PMItem;->setItemId(I)Lcom/anansimobile/extra/payment/PMItem;

    move-result-object v1

    const-string/jumbo v2, "molpay"

    invoke-virtual {v1, v2}, Lcom/anansimobile/extra/payment/PMItem;->setPMId(Ljava/lang/String;)Lcom/anansimobile/extra/payment/PMItem;

    move-result-object v1

    const-string/jumbo v2, "molpay"

    invoke-virtual {v1, v2}, Lcom/anansimobile/extra/payment/PMItem;->setPMName(Ljava/lang/String;)Lcom/anansimobile/extra/payment/PMItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    iget-object v0, p0, Lcom/anansimobile/extra/payment/PaymentSelectActivity;->mPMList:Ljava/util/List;

    new-instance v1, Lcom/anansimobile/extra/payment/PMItem;

    invoke-direct {v1}, Lcom/anansimobile/extra/payment/PMItem;-><init>()V

    invoke-virtual {v1, v3}, Lcom/anansimobile/extra/payment/PMItem;->setItemId(I)Lcom/anansimobile/extra/payment/PMItem;

    move-result-object v1

    const-string/jumbo v2, "molpay"

    invoke-virtual {v1, v2}, Lcom/anansimobile/extra/payment/PMItem;->setPMId(Ljava/lang/String;)Lcom/anansimobile/extra/payment/PMItem;

    move-result-object v1

    const-string/jumbo v2, "molpay"

    invoke-virtual {v1, v2}, Lcom/anansimobile/extra/payment/PMItem;->setPMName(Ljava/lang/String;)Lcom/anansimobile/extra/payment/PMItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    iget-object v0, p0, Lcom/anansimobile/extra/payment/PaymentSelectActivity;->mPMList:Ljava/util/List;

    new-instance v1, Lcom/anansimobile/extra/payment/PMItem;

    invoke-direct {v1}, Lcom/anansimobile/extra/payment/PMItem;-><init>()V

    invoke-virtual {v1, v3}, Lcom/anansimobile/extra/payment/PMItem;->setItemId(I)Lcom/anansimobile/extra/payment/PMItem;

    move-result-object v1

    const-string/jumbo v2, "molpoints"

    invoke-virtual {v1, v2}, Lcom/anansimobile/extra/payment/PMItem;->setPMId(Ljava/lang/String;)Lcom/anansimobile/extra/payment/PMItem;

    move-result-object v1

    const-string/jumbo v2, "molpoints"

    invoke-virtual {v1, v2}, Lcom/anansimobile/extra/payment/PMItem;->setPMName(Ljava/lang/String;)Lcom/anansimobile/extra/payment/PMItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    iget-object v0, p0, Lcom/anansimobile/extra/payment/PaymentSelectActivity;->mPMList:Ljava/util/List;

    new-instance v1, Lcom/anansimobile/extra/payment/PMItem;

    invoke-direct {v1}, Lcom/anansimobile/extra/payment/PMItem;-><init>()V

    invoke-virtual {v1, v3}, Lcom/anansimobile/extra/payment/PMItem;->setItemId(I)Lcom/anansimobile/extra/payment/PMItem;

    move-result-object v1

    const-string/jumbo v2, "boleto_br"

    invoke-virtual {v1, v2}, Lcom/anansimobile/extra/payment/PMItem;->setPMId(Ljava/lang/String;)Lcom/anansimobile/extra/payment/PMItem;

    move-result-object v1

    const-string/jumbo v2, "Boleto"

    invoke-virtual {v1, v2}, Lcom/anansimobile/extra/payment/PMItem;->setPMName(Ljava/lang/String;)Lcom/anansimobile/extra/payment/PMItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    iget-object v0, p0, Lcom/anansimobile/extra/payment/PaymentSelectActivity;->mPMList:Ljava/util/List;

    new-instance v1, Lcom/anansimobile/extra/payment/PMItem;

    invoke-direct {v1}, Lcom/anansimobile/extra/payment/PMItem;-><init>()V

    invoke-virtual {v1, v3}, Lcom/anansimobile/extra/payment/PMItem;->setItemId(I)Lcom/anansimobile/extra/payment/PMItem;

    move-result-object v1

    const-string/jumbo v2, "bradesco_br"

    invoke-virtual {v1, v2}, Lcom/anansimobile/extra/payment/PMItem;->setPMId(Ljava/lang/String;)Lcom/anansimobile/extra/payment/PMItem;

    move-result-object v1

    const-string/jumbo v2, "Bradesco"

    invoke-virtual {v1, v2}, Lcom/anansimobile/extra/payment/PMItem;->setPMName(Ljava/lang/String;)Lcom/anansimobile/extra/payment/PMItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    iget-object v0, p0, Lcom/anansimobile/extra/payment/PaymentSelectActivity;->mPMList:Ljava/util/List;

    new-instance v1, Lcom/anansimobile/extra/payment/PMItem;

    invoke-direct {v1}, Lcom/anansimobile/extra/payment/PMItem;-><init>()V

    invoke-virtual {v1, v3}, Lcom/anansimobile/extra/payment/PMItem;->setItemId(I)Lcom/anansimobile/extra/payment/PMItem;

    move-result-object v1

    const-string/jumbo v2, "caixa_br"

    invoke-virtual {v1, v2}, Lcom/anansimobile/extra/payment/PMItem;->setPMId(Ljava/lang/String;)Lcom/anansimobile/extra/payment/PMItem;

    move-result-object v1

    const-string/jumbo v2, "Caixa"

    invoke-virtual {v1, v2}, Lcom/anansimobile/extra/payment/PMItem;->setPMName(Ljava/lang/String;)Lcom/anansimobile/extra/payment/PMItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    iget-object v0, p0, Lcom/anansimobile/extra/payment/PaymentSelectActivity;->mPMList:Ljava/util/List;

    new-instance v1, Lcom/anansimobile/extra/payment/PMItem;

    invoke-direct {v1}, Lcom/anansimobile/extra/payment/PMItem;-><init>()V

    invoke-virtual {v1, v3}, Lcom/anansimobile/extra/payment/PMItem;->setItemId(I)Lcom/anansimobile/extra/payment/PMItem;

    move-result-object v1

    const-string/jumbo v2, "santander_br"

    invoke-virtual {v1, v2}, Lcom/anansimobile/extra/payment/PMItem;->setPMId(Ljava/lang/String;)Lcom/anansimobile/extra/payment/PMItem;

    move-result-object v1

    const-string/jumbo v2, "Santander"

    invoke-virtual {v1, v2}, Lcom/anansimobile/extra/payment/PMItem;->setPMName(Ljava/lang/String;)Lcom/anansimobile/extra/payment/PMItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    iget-object v0, p0, Lcom/anansimobile/extra/payment/PaymentSelectActivity;->mPMList:Ljava/util/List;

    new-instance v1, Lcom/anansimobile/extra/payment/PMItem;

    invoke-direct {v1}, Lcom/anansimobile/extra/payment/PMItem;-><init>()V

    invoke-virtual {v1, v3}, Lcom/anansimobile/extra/payment/PMItem;->setItemId(I)Lcom/anansimobile/extra/payment/PMItem;

    move-result-object v1

    const-string/jumbo v2, "hsbc_br"

    invoke-virtual {v1, v2}, Lcom/anansimobile/extra/payment/PMItem;->setPMId(Ljava/lang/String;)Lcom/anansimobile/extra/payment/PMItem;

    move-result-object v1

    const-string/jumbo v2, "HSBC"

    invoke-virtual {v1, v2}, Lcom/anansimobile/extra/payment/PMItem;->setPMName(Ljava/lang/String;)Lcom/anansimobile/extra/payment/PMItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    iget-object v0, p0, Lcom/anansimobile/extra/payment/PaymentSelectActivity;->mPMList:Ljava/util/List;

    new-instance v1, Lcom/anansimobile/extra/payment/PMItem;

    invoke-direct {v1}, Lcom/anansimobile/extra/payment/PMItem;-><init>()V

    invoke-virtual {v1, v3}, Lcom/anansimobile/extra/payment/PMItem;->setItemId(I)Lcom/anansimobile/extra/payment/PMItem;

    move-result-object v1

    const-string/jumbo v2, "bancodobrasil_br"

    invoke-virtual {v1, v2}, Lcom/anansimobile/extra/payment/PMItem;->setPMId(Ljava/lang/String;)Lcom/anansimobile/extra/payment/PMItem;

    move-result-object v1

    const-string/jumbo v2, "Bradesco"

    invoke-virtual {v1, v2}, Lcom/anansimobile/extra/payment/PMItem;->setPMName(Ljava/lang/String;)Lcom/anansimobile/extra/payment/PMItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    iget-object v0, p0, Lcom/anansimobile/extra/payment/PaymentSelectActivity;->mPMList:Ljava/util/List;

    new-instance v1, Lcom/anansimobile/extra/payment/PMItem;

    invoke-direct {v1}, Lcom/anansimobile/extra/payment/PMItem;-><init>()V

    invoke-virtual {v1, v3}, Lcom/anansimobile/extra/payment/PMItem;->setItemId(I)Lcom/anansimobile/extra/payment/PMItem;

    move-result-object v1

    const-string/jumbo v2, "itau_br"

    invoke-virtual {v1, v2}, Lcom/anansimobile/extra/payment/PMItem;->setPMId(Ljava/lang/String;)Lcom/anansimobile/extra/payment/PMItem;

    move-result-object v1

    const-string/jumbo v2, "Itau"

    invoke-virtual {v1, v2}, Lcom/anansimobile/extra/payment/PMItem;->setPMName(Ljava/lang/String;)Lcom/anansimobile/extra/payment/PMItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    iget-object v0, p0, Lcom/anansimobile/extra/payment/PaymentSelectActivity;->mPMList:Ljava/util/List;

    new-instance v1, Lcom/anansimobile/extra/payment/PMItem;

    invoke-direct {v1}, Lcom/anansimobile/extra/payment/PMItem;-><init>()V

    invoke-virtual {v1, v3}, Lcom/anansimobile/extra/payment/PMItem;->setItemId(I)Lcom/anansimobile/extra/payment/PMItem;

    move-result-object v1

    const-string/jumbo v2, "visa_br"

    invoke-virtual {v1, v2}, Lcom/anansimobile/extra/payment/PMItem;->setPMId(Ljava/lang/String;)Lcom/anansimobile/extra/payment/PMItem;

    move-result-object v1

    const-string/jumbo v2, "Bradesco"

    invoke-virtual {v1, v2}, Lcom/anansimobile/extra/payment/PMItem;->setPMName(Ljava/lang/String;)Lcom/anansimobile/extra/payment/PMItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    iget-object v0, p0, Lcom/anansimobile/extra/payment/PaymentSelectActivity;->mPMList:Ljava/util/List;

    new-instance v1, Lcom/anansimobile/extra/payment/PMItem;

    invoke-direct {v1}, Lcom/anansimobile/extra/payment/PMItem;-><init>()V

    invoke-virtual {v1, v3}, Lcom/anansimobile/extra/payment/PMItem;->setItemId(I)Lcom/anansimobile/extra/payment/PMItem;

    move-result-object v1

    const-string/jumbo v2, "mastercard_br"

    invoke-virtual {v1, v2}, Lcom/anansimobile/extra/payment/PMItem;->setPMId(Ljava/lang/String;)Lcom/anansimobile/extra/payment/PMItem;

    move-result-object v1

    const-string/jumbo v2, "Bradesco"

    invoke-virtual {v1, v2}, Lcom/anansimobile/extra/payment/PMItem;->setPMName(Ljava/lang/String;)Lcom/anansimobile/extra/payment/PMItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    iget-object v0, p0, Lcom/anansimobile/extra/payment/PaymentSelectActivity;->mPMList:Ljava/util/List;

    new-instance v1, Lcom/anansimobile/extra/payment/PMItem;

    invoke-direct {v1}, Lcom/anansimobile/extra/payment/PMItem;-><init>()V

    invoke-virtual {v1, v3}, Lcom/anansimobile/extra/payment/PMItem;->setItemId(I)Lcom/anansimobile/extra/payment/PMItem;

    move-result-object v1

    const-string/jumbo v2, "hipercard_br"

    invoke-virtual {v1, v2}, Lcom/anansimobile/extra/payment/PMItem;->setPMId(Ljava/lang/String;)Lcom/anansimobile/extra/payment/PMItem;

    move-result-object v1

    const-string/jumbo v2, "Hipercard"

    invoke-virtual {v1, v2}, Lcom/anansimobile/extra/payment/PMItem;->setPMName(Ljava/lang/String;)Lcom/anansimobile/extra/payment/PMItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    iget-object v0, p0, Lcom/anansimobile/extra/payment/PaymentSelectActivity;->mPMList:Ljava/util/List;

    new-instance v1, Lcom/anansimobile/extra/payment/PMItem;

    invoke-direct {v1}, Lcom/anansimobile/extra/payment/PMItem;-><init>()V

    invoke-virtual {v1, v3}, Lcom/anansimobile/extra/payment/PMItem;->setItemId(I)Lcom/anansimobile/extra/payment/PMItem;

    move-result-object v1

    const-string/jumbo v2, "americanexpress_br"

    invoke-virtual {v1, v2}, Lcom/anansimobile/extra/payment/PMItem;->setPMId(Ljava/lang/String;)Lcom/anansimobile/extra/payment/PMItem;

    move-result-object v1

    const-string/jumbo v2, "American Express"

    invoke-virtual {v1, v2}, Lcom/anansimobile/extra/payment/PMItem;->setPMName(Ljava/lang/String;)Lcom/anansimobile/extra/payment/PMItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    iget-object v0, p0, Lcom/anansimobile/extra/payment/PaymentSelectActivity;->mPMList:Ljava/util/List;

    new-instance v1, Lcom/anansimobile/extra/payment/PMItem;

    invoke-direct {v1}, Lcom/anansimobile/extra/payment/PMItem;-><init>()V

    invoke-virtual {v1, v3}, Lcom/anansimobile/extra/payment/PMItem;->setItemId(I)Lcom/anansimobile/extra/payment/PMItem;

    move-result-object v1

    const-string/jumbo v2, "dinersclub_br"

    invoke-virtual {v1, v2}, Lcom/anansimobile/extra/payment/PMItem;->setPMId(Ljava/lang/String;)Lcom/anansimobile/extra/payment/PMItem;

    move-result-object v1

    const-string/jumbo v2, "Dinersclub"

    invoke-virtual {v1, v2}, Lcom/anansimobile/extra/payment/PMItem;->setPMName(Ljava/lang/String;)Lcom/anansimobile/extra/payment/PMItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    iget-object v0, p0, Lcom/anansimobile/extra/payment/PaymentSelectActivity;->mPMListAdapter:Lcom/anansimobile/extra/payment/PMListAdapter;

    iget-object v1, p0, Lcom/anansimobile/extra/payment/PaymentSelectActivity;->mPMList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/anansimobile/extra/payment/PMListAdapter;->setDataForRefresh(Ljava/util/List;)V

    .line 50
    return-void
.end method
