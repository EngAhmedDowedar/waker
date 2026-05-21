.class public Lcom/helpshift/widget/CSATDialog;
.super Landroid/app/Dialog;
.source "CSATDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private addtionalFeedback:Landroid/widget/EditText;

.field private context:Landroid/content/Context;

.field private csatView:Lcom/helpshift/widget/CSATView;

.field private dialogRatingBar:Landroid/widget/RatingBar;

.field private likeStatus:Landroid/widget/TextView;

.field private rating:F

.field private submitted:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/helpshift/widget/CSATDialog;->submitted:Z

    .line 37
    iput-object p1, p0, Lcom/helpshift/widget/CSATDialog;->context:Landroid/content/Context;

    .line 38
    return-void
.end method

.method private showSubmitToast()V
    .locals 3

    .prologue
    .line 110
    iget-object v0, p0, Lcom/helpshift/widget/CSATDialog;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/helpshift/widget/CSATDialog;->context:Landroid/content/Context;

    sget v2, Lcom/helpshift/D$string;->hs__csat_submit_toast:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 111
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 85
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 86
    .local v0, "id":I
    sget v1, Lcom/helpshift/D$id;->submit:I

    if-ne v0, v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/helpshift/widget/CSATDialog;->csatView:Lcom/helpshift/widget/CSATView;

    iget-object v2, p0, Lcom/helpshift/widget/CSATDialog;->dialogRatingBar:Landroid/widget/RatingBar;

    invoke-virtual {v2}, Landroid/widget/RatingBar;->getRating()F

    move-result v2

    iget-object v3, p0, Lcom/helpshift/widget/CSATDialog;->addtionalFeedback:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/helpshift/widget/CSATView;->sendCSATSurvey(FLjava/lang/String;)V

    .line 88
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/helpshift/widget/CSATDialog;->submitted:Z

    .line 89
    invoke-direct {p0}, Lcom/helpshift/widget/CSATDialog;->showSubmitToast()V

    .line 90
    invoke-virtual {p0}, Lcom/helpshift/widget/CSATDialog;->dismiss()V

    .line 92
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/helpshift/widget/CSATDialog;->requestWindowFeature(I)Z

    .line 44
    sget v1, Lcom/helpshift/D$layout;->hs__csat_dialog:I

    invoke-virtual {p0, v1}, Lcom/helpshift/widget/CSATDialog;->setContentView(I)V

    .line 45
    invoke-virtual {p0, p0}, Lcom/helpshift/widget/CSATDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 46
    invoke-virtual {p0, p0}, Lcom/helpshift/widget/CSATDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 48
    sget v1, Lcom/helpshift/D$id;->ratingBar:I

    invoke-virtual {p0, v1}, Lcom/helpshift/widget/CSATDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RatingBar;

    iput-object v1, p0, Lcom/helpshift/widget/CSATDialog;->dialogRatingBar:Landroid/widget/RatingBar;

    .line 49
    iget-object v1, p0, Lcom/helpshift/widget/CSATDialog;->dialogRatingBar:Landroid/widget/RatingBar;

    invoke-virtual {v1, p0}, Landroid/widget/RatingBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 51
    sget v1, Lcom/helpshift/D$id;->like_status:I

    invoke-virtual {p0, v1}, Lcom/helpshift/widget/CSATDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/helpshift/widget/CSATDialog;->likeStatus:Landroid/widget/TextView;

    .line 52
    sget v1, Lcom/helpshift/D$id;->additional_feedback:I

    invoke-virtual {p0, v1}, Lcom/helpshift/widget/CSATDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/helpshift/widget/CSATDialog;->addtionalFeedback:Landroid/widget/EditText;

    .line 54
    sget v1, Lcom/helpshift/D$id;->submit:I

    invoke-virtual {p0, v1}, Lcom/helpshift/widget/CSATDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 55
    .local v0, "submit":Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/helpshift/widget/CSATDialog;->submitted:Z

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/helpshift/widget/CSATDialog;->csatView:Lcom/helpshift/widget/CSATView;

    invoke-virtual {v0}, Lcom/helpshift/widget/CSATView;->dismiss()V

    .line 81
    :goto_0
    return-void

    .line 78
    :cond_0
    const-string/jumbo v0, "cr"

    invoke-static {v0}, Lcom/helpshift/HSFunnel;->pushEvent(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/helpshift/widget/CSATDialog;->csatView:Lcom/helpshift/widget/CSATView;

    invoke-virtual {v0}, Lcom/helpshift/widget/CSATView;->getRatingBar()Landroid/widget/RatingBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setRating(F)V

    goto :goto_0
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 7
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .prologue
    .line 60
    const-string/jumbo v1, "sr"

    invoke-static {v1}, Lcom/helpshift/HSFunnel;->pushEvent(Ljava/lang/String;)V

    .line 61
    iget-object v1, p0, Lcom/helpshift/widget/CSATDialog;->dialogRatingBar:Landroid/widget/RatingBar;

    iget v2, p0, Lcom/helpshift/widget/CSATDialog;->rating:F

    invoke-virtual {v1, v2}, Landroid/widget/RatingBar;->setRating(F)V

    .line 63
    iget-object v1, p0, Lcom/helpshift/widget/CSATDialog;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/helpshift/D$plurals;->hs__csat_rating_value:I

    iget v3, p0, Lcom/helpshift/widget/CSATDialog;->rating:F

    float-to-int v3, v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/helpshift/widget/CSATDialog;->rating:F

    float-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "ratingValue":Ljava/lang/CharSequence;
    iget v1, p0, Lcom/helpshift/widget/CSATDialog;->rating:F

    float-to-double v2, v1

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    cmpl-double v1, v2, v4

    if-lez v1, :cond_0

    .line 66
    iget-object v1, p0, Lcom/helpshift/widget/CSATDialog;->likeStatus:Landroid/widget/TextView;

    sget v2, Lcom/helpshift/D$string;->hs__csat_like_message:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 70
    :goto_0
    iget-object v1, p0, Lcom/helpshift/widget/CSATDialog;->dialogRatingBar:Landroid/widget/RatingBar;

    invoke-virtual {v1, v0}, Landroid/widget/RatingBar;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 71
    return-void

    .line 68
    :cond_0
    iget-object v1, p0, Lcom/helpshift/widget/CSATDialog;->likeStatus:Landroid/widget/TextView;

    sget v2, Lcom/helpshift/D$string;->hs__csat_dislike_message:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 96
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 97
    .local v0, "id":I
    sget v1, Lcom/helpshift/D$id;->ratingBar:I

    if-ne v0, v1, :cond_0

    .line 98
    const/4 v1, 0x1

    .line 100
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected show(Lcom/helpshift/widget/CSATView;)V
    .locals 1
    .param p1, "csatView"    # Lcom/helpshift/widget/CSATView;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/helpshift/widget/CSATDialog;->csatView:Lcom/helpshift/widget/CSATView;

    .line 105
    invoke-virtual {p1}, Lcom/helpshift/widget/CSATView;->getRatingBar()Landroid/widget/RatingBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RatingBar;->getRating()F

    move-result v0

    iput v0, p0, Lcom/helpshift/widget/CSATDialog;->rating:F

    .line 106
    invoke-virtual {p0}, Lcom/helpshift/widget/CSATDialog;->show()V

    .line 107
    return-void
.end method
