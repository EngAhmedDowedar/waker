.class public final Lcom/vungle/publisher/display/view/ProgressBar;
.super Landroid/view/View;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/display/view/ProgressBar$Factory;
    }
.end annotation


# instance fields
.field private a:Landroid/graphics/drawable/ShapeDrawable;

.field private b:I

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 12
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    iput-object v0, p0, Lcom/vungle/publisher/display/view/ProgressBar;->a:Landroid/graphics/drawable/ShapeDrawable;

    .line 13
    const/4 v0, -0x1

    iput v0, p0, Lcom/vungle/publisher/display/view/ProgressBar;->b:I

    .line 22
    iget-object v0, p0, Lcom/vungle/publisher/display/view/ProgressBar;->a:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    const v1, -0xd06f32

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 23
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;B)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/vungle/publisher/display/view/ProgressBar;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/vungle/publisher/display/view/ProgressBar;)I
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x1

    iput v0, p0, Lcom/vungle/publisher/display/view/ProgressBar;->e:I

    return v0
.end method

.method static synthetic a(Lcom/vungle/publisher/display/view/ProgressBar;I)I
    .locals 0

    .prologue
    .line 11
    iput p1, p0, Lcom/vungle/publisher/display/view/ProgressBar;->d:I

    return p1
.end method

.method private setProgressWidth(F)V
    .locals 4
    .param p1, "percent"    # F

    .prologue
    const/4 v3, 0x0

    .line 43
    iget v0, p0, Lcom/vungle/publisher/display/view/ProgressBar;->b:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    .line 44
    iget-object v1, p0, Lcom/vungle/publisher/display/view/ProgressBar;->a:Landroid/graphics/drawable/ShapeDrawable;

    iget v2, p0, Lcom/vungle/publisher/display/view/ProgressBar;->d:I

    invoke-virtual {v1, v3, v3, v0, v2}, Landroid/graphics/drawable/ShapeDrawable;->setBounds(IIII)V

    .line 45
    return-void
.end method


# virtual methods
.method public final getId()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/vungle/publisher/display/view/ProgressBar;->e:I

    return v0
.end method

.method public final getScreenHeight()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/vungle/publisher/display/view/ProgressBar;->d:I

    return v0
.end method

.method public final hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 28
    iget-object v0, p0, Lcom/vungle/publisher/display/view/ProgressBar;->a:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 29
    return-void
.end method

.method protected final onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 33
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 34
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/vungle/publisher/display/view/ProgressBar;->b:I

    .line 35
    return-void
.end method

.method public final setCurrentTimeMillis(I)V
    .locals 2
    .param p1, "currentTimeMillis"    # I

    .prologue
    .line 52
    int-to-float v0, p1

    iget v1, p0, Lcom/vungle/publisher/display/view/ProgressBar;->c:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/vungle/publisher/display/view/ProgressBar;->setProgressWidth(F)V

    .line 53
    invoke-virtual {p0}, Lcom/vungle/publisher/display/view/ProgressBar;->invalidate()V

    .line 54
    return-void
.end method

.method public final setMaxTimeMillis(I)V
    .locals 0
    .param p1, "maxTimeMillis"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/vungle/publisher/display/view/ProgressBar;->c:I

    .line 49
    return-void
.end method
