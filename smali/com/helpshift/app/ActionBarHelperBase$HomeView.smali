.class public Lcom/helpshift/app/ActionBarHelperBase$HomeView;
.super Landroid/widget/LinearLayout;
.source "ActionBarHelperBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/app/ActionBarHelperBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HomeView"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIconView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 453
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 454
    iput-object p1, p0, Lcom/helpshift/app/ActionBarHelperBase$HomeView;->mContext:Landroid/content/Context;

    .line 455
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 458
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 459
    iput-object p1, p0, Lcom/helpshift/app/ActionBarHelperBase$HomeView;->mContext:Landroid/content/Context;

    .line 460
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 468
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 469
    sget v0, Lcom/helpshift/D$id;->hs__actionbar_compat_home:I

    invoke-virtual {p0, v0}, Lcom/helpshift/app/ActionBarHelperBase$HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/helpshift/app/ActionBarHelperBase$HomeView;->mIconView:Landroid/widget/ImageView;

    .line 470
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 463
    iget-object v0, p0, Lcom/helpshift/app/ActionBarHelperBase$HomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 464
    return-void
.end method
