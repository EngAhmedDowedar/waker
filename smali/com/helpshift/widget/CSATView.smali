.class public Lcom/helpshift/widget/CSATView;
.super Landroid/widget/RelativeLayout;
.source "CSATView.java"

# interfaces
.implements Landroid/widget/RatingBar$OnRatingBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpshift/widget/CSATView$CSATListener;
    }
.end annotation


# instance fields
.field private csatDialog:Lcom/helpshift/widget/CSATDialog;

.field private csatListener:Lcom/helpshift/widget/CSATView$CSATListener;

.field private divider:Landroid/widget/RelativeLayout;

.field private ratingBar:Landroid/widget/RatingBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/helpshift/widget/CSATView;->csatListener:Lcom/helpshift/widget/CSATView$CSATListener;

    .line 28
    invoke-direct {p0, p1}, Lcom/helpshift/widget/CSATView;->initView(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/helpshift/widget/CSATView;->csatListener:Lcom/helpshift/widget/CSATView$CSATListener;

    .line 33
    invoke-direct {p0, p1}, Lcom/helpshift/widget/CSATView;->initView(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/helpshift/widget/CSATView;->csatListener:Lcom/helpshift/widget/CSATView$CSATListener;

    .line 38
    invoke-direct {p0, p1}, Lcom/helpshift/widget/CSATView;->initView(Landroid/content/Context;)V

    .line 39
    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    sget v0, Lcom/helpshift/D$layout;->hs__csat_view:I

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 43
    new-instance v0, Lcom/helpshift/widget/CSATDialog;

    invoke-direct {v0, p1}, Lcom/helpshift/widget/CSATDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/helpshift/widget/CSATView;->csatDialog:Lcom/helpshift/widget/CSATDialog;

    .line 44
    return-void
.end method


# virtual methods
.method protected dismiss()V
    .locals 1

    .prologue
    .line 75
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/helpshift/widget/CSATView;->setVisibility(I)V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/helpshift/widget/CSATView;->csatDialog:Lcom/helpshift/widget/CSATDialog;

    .line 77
    iget-object v0, p0, Lcom/helpshift/widget/CSATView;->csatListener:Lcom/helpshift/widget/CSATView$CSATListener;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/helpshift/widget/CSATView;->csatListener:Lcom/helpshift/widget/CSATView$CSATListener;

    invoke-interface {v0}, Lcom/helpshift/widget/CSATView$CSATListener;->csatViewDissmissed()V

    .line 80
    :cond_0
    return-void
.end method

.method protected getRatingBar()Landroid/widget/RatingBar;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/helpshift/widget/CSATView;->ratingBar:Landroid/widget/RatingBar;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    .line 48
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 49
    sget v3, Lcom/helpshift/D$id;->ratingBar:I

    invoke-virtual {p0, v3}, Lcom/helpshift/widget/CSATView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RatingBar;

    iput-object v3, p0, Lcom/helpshift/widget/CSATView;->ratingBar:Landroid/widget/RatingBar;

    .line 50
    iget-object v3, p0, Lcom/helpshift/widget/CSATView;->ratingBar:Landroid/widget/RatingBar;

    invoke-virtual {v3, p0}, Landroid/widget/RatingBar;->setOnRatingBarChangeListener(Landroid/widget/RatingBar$OnRatingBarChangeListener;)V

    .line 52
    sget v3, Lcom/helpshift/D$id;->csat_dislike_msg:I

    invoke-virtual {p0, v3}, Lcom/helpshift/widget/CSATView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 53
    .local v0, "dislikeMessage":Landroid/widget/TextView;
    sget v3, Lcom/helpshift/D$id;->csat_like_msg:I

    invoke-virtual {p0, v3}, Lcom/helpshift/widget/CSATView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 54
    .local v1, "likeMessage":Landroid/widget/TextView;
    sget v3, Lcom/helpshift/D$id;->option_text:I

    invoke-virtual {p0, v3}, Lcom/helpshift/widget/CSATView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 56
    .local v2, "optionText":Landroid/widget/TextView;
    invoke-static {v0, v4}, Lcom/helpshift/util/HSColor;->setTextViewAlpha(Landroid/widget/TextView;F)V

    .line 57
    invoke-static {v1, v4}, Lcom/helpshift/util/HSColor;->setTextViewAlpha(Landroid/widget/TextView;F)V

    .line 58
    invoke-static {v2, v4}, Lcom/helpshift/util/HSColor;->setTextViewAlpha(Landroid/widget/TextView;F)V

    .line 60
    sget v3, Lcom/helpshift/D$id;->divider:I

    invoke-virtual {p0, v3}, Lcom/helpshift/widget/CSATView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/helpshift/widget/CSATView;->divider:Landroid/widget/RelativeLayout;

    .line 61
    return-void
.end method

.method public onRatingChanged(Landroid/widget/RatingBar;FZ)V
    .locals 1
    .param p1, "ratingBar"    # Landroid/widget/RatingBar;
    .param p2, "rating"    # F
    .param p3, "fromUser"    # Z

    .prologue
    .line 65
    if-eqz p3, :cond_0

    .line 66
    iget-object v0, p0, Lcom/helpshift/widget/CSATView;->csatDialog:Lcom/helpshift/widget/CSATDialog;

    invoke-virtual {v0, p0}, Lcom/helpshift/widget/CSATDialog;->show(Lcom/helpshift/widget/CSATView;)V

    .line 68
    :cond_0
    return-void
.end method

.method protected sendCSATSurvey(FLjava/lang/String;)V
    .locals 2
    .param p1, "rating"    # F
    .param p2, "feedback"    # Ljava/lang/String;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/helpshift/widget/CSATView;->csatListener:Lcom/helpshift/widget/CSATView$CSATListener;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/helpshift/widget/CSATView;->csatListener:Lcom/helpshift/widget/CSATView$CSATListener;

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-interface {v0, v1, p2}, Lcom/helpshift/widget/CSATView$CSATListener;->sendCSATSurvey(ILjava/lang/String;)V

    .line 86
    :cond_0
    return-void
.end method

.method public setCSATListener(Lcom/helpshift/widget/CSATView$CSATListener;)V
    .locals 0
    .param p1, "csatListener"    # Lcom/helpshift/widget/CSATView$CSATListener;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/helpshift/widget/CSATView;->csatListener:Lcom/helpshift/widget/CSATView$CSATListener;

    .line 90
    return-void
.end method

.method public setDividerMargin(IIII)V
    .locals 2
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 93
    iget-object v1, p0, Lcom/helpshift/widget/CSATView;->divider:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 94
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 95
    iget-object v1, p0, Lcom/helpshift/widget/CSATView;->divider:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    return-void
.end method
