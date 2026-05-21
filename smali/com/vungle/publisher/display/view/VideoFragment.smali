.class public Lcom/vungle/publisher/display/view/VideoFragment;
.super Lcom/vungle/publisher/display/view/AdFragment;
.source "vungle"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/display/view/VideoFragment$Factory;,
        Lcom/vungle/publisher/display/view/VideoFragment$VideoEventListener;,
        Lcom/vungle/publisher/display/view/VideoFragment$b;,
        Lcom/vungle/publisher/display/view/VideoFragment$a;
    }
.end annotation


# instance fields
.field private A:Landroid/view/ViewGroup;

.field private B:Landroid/graphics/Bitmap;

.field private C:Landroid/graphics/Bitmap;

.field private final D:Lcom/nineoldandroids/animation/TypeEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nineoldandroids/animation/TypeEvaluator",
            "<*>;"
        }
    .end annotation
.end field

.field private final E:Landroid/os/Handler;

.field private final F:Ljava/lang/Runnable;

.field private G:Landroid/app/AlertDialog;

.field private H:Lcom/vungle/publisher/display/view/VideoFragment$VideoEventListener;

.field private I:Ljava/lang/String;

.field private J:I

.field private K:Z

.field private L:I

.field private M:Z

.field private N:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private O:I

.field a:Lcom/vungle/publisher/a;

.field b:Lcom/vungle/publisher/db/model/Video;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/publisher/db/model/Video",
            "<***>;"
        }
    .end annotation
.end field

.field c:Landroid/widget/ImageView;

.field d:Lcom/nineoldandroids/animation/ObjectAnimator;

.field e:Lcom/nineoldandroids/animation/ObjectAnimator;

.field f:Landroid/view/TouchDelegate;

.field g:Lcom/nineoldandroids/animation/ObjectAnimator;

.field h:Lcom/vungle/publisher/display/view/AlertDialogFactory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field i:Lcom/vungle/publisher/image/BitmapFactory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field j:Lcom/vungle/publisher/display/view/DisplayUtils;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field k:Lcom/vungle/publisher/event/EventBus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field l:Lcom/vungle/publisher/display/view/VideoFragment$Factory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field m:Lcom/vungle/publisher/display/view/PrivacyButton$Factory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field n:Lcom/vungle/publisher/display/view/ProgressBar$Factory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field o:Lcom/vungle/publisher/display/view/MuteButton$Factory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field p:Lcom/vungle/publisher/db/model/LoggedException$Factory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field q:Lcom/vungle/publisher/bt;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field r:Lcom/vungle/publisher/util/ViewUtils;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field s:Lcom/vungle/publisher/audio/VolumeChangeContentObserver;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field t:Lcom/vungle/publisher/display/view/VideoFragment$VideoEventListener$Factory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field u:Lcom/vungle/publisher/device/AudioHelper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private v:Landroid/widget/ImageView;

.field private w:Lcom/vungle/publisher/display/view/ProgressBar;

.field private x:Lcom/vungle/publisher/display/view/MuteButton;

.field private y:Landroid/widget/RelativeLayout;

.field private z:Landroid/widget/VideoView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/vungle/publisher/display/view/AdFragment;-><init>()V

    .line 106
    new-instance v0, Lcom/nineoldandroids/animation/ArgbEvaluator;

    invoke-direct {v0}, Lcom/nineoldandroids/animation/ArgbEvaluator;-><init>()V

    iput-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->D:Lcom/nineoldandroids/animation/TypeEvaluator;

    .line 107
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->E:Landroid/os/Handler;

    .line 108
    new-instance v0, Lcom/vungle/publisher/display/view/VideoFragment$b;

    invoke-direct {v0, p0}, Lcom/vungle/publisher/display/view/VideoFragment$b;-><init>(Lcom/vungle/publisher/display/view/VideoFragment;)V

    iput-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->F:Ljava/lang/Runnable;

    .line 118
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->N:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 824
    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    .line 389
    const/4 v0, 0x0

    .line 391
    :try_start_0
    iget-object v1, p0, Lcom/vungle/publisher/display/view/VideoFragment;->i:Lcom/vungle/publisher/image/BitmapFactory;

    invoke-interface {v1, p1}, Lcom/vungle/publisher/image/BitmapFactory;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 395
    :goto_0
    return-object v0

    .line 392
    :catch_0
    move-exception v1

    .line 393
    iget-object v2, p0, Lcom/vungle/publisher/display/view/VideoFragment;->p:Lcom/vungle/publisher/db/model/LoggedException$Factory;

    const-string/jumbo v3, "VungleAd"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "error loading "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Lcom/vungle/publisher/db/model/LoggedException$Factory;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static a(Landroid/view/View;)Lcom/nineoldandroids/animation/ObjectAnimator;
    .locals 2

    .prologue
    .line 415
    new-instance v0, Lcom/nineoldandroids/animation/ObjectAnimator;

    invoke-direct {v0}, Lcom/nineoldandroids/animation/ObjectAnimator;-><init>()V

    .line 416
    const-string/jumbo v1, "backgroundColor"

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    .line 417
    invoke-virtual {v0, p0}, Lcom/nineoldandroids/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 418
    return-object v0
.end method

.method static synthetic a(Lcom/vungle/publisher/display/view/VideoFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/vungle/publisher/display/view/VideoFragment;->I:Ljava/lang/String;

    return-object p1
.end method

.method private static a(Landroid/view/View;II)V
    .locals 4

    .prologue
    .line 663
    invoke-static {p0}, Lcom/nineoldandroids/view/ViewHelper;->getAlpha(Landroid/view/View;)F

    move-result v1

    .line 664
    mul-int/lit16 v2, p1, 0x3e8

    const/4 v0, 0x0

    add-int/lit16 v3, v2, -0x2ee

    if-le p2, v3, :cond_0

    if-lt p2, v2, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    .line 665
    :cond_0
    :goto_0
    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1

    .line 666
    invoke-static {p0, v0}, Lcom/nineoldandroids/view/ViewHelper;->setAlpha(Landroid/view/View;F)V

    .line 668
    :cond_1
    return-void

    .line 664
    :cond_2
    sub-int v0, p2, v3

    int-to-float v0, v0

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v0, v2

    goto :goto_0
.end method

.method private a(Lcom/nineoldandroids/animation/ObjectAnimator;I)V
    .locals 6

    .prologue
    .line 566
    const/high16 v2, 0x44000000    # 512.0f

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/vungle/publisher/display/view/VideoFragment;->a(Lcom/nineoldandroids/animation/ObjectAnimator;IIIF)V

    .line 567
    return-void
.end method

.method private a(Lcom/nineoldandroids/animation/ObjectAnimator;IIIF)V
    .locals 3

    .prologue
    .line 579
    const-string/jumbo v0, "VungleAd"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "animateBar startColor: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", endColor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", durationMillis: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", startPercent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    int-to-long v0, p4

    invoke-virtual {p1, v0, v1}, Lcom/nineoldandroids/animation/ObjectAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ObjectAnimator;

    .line 581
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 v1, 0x1

    aput p3, v0, v1

    invoke-virtual {p1, v0}, Lcom/nineoldandroids/animation/ObjectAnimator;->setIntValues([I)V

    .line 582
    int-to-float v0, p4

    mul-float/2addr v0, p5

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/nineoldandroids/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    .line 584
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->D:Lcom/nineoldandroids/animation/TypeEvaluator;

    invoke-virtual {p1, v0}, Lcom/nineoldandroids/animation/ObjectAnimator;->setEvaluator(Lcom/nineoldandroids/animation/TypeEvaluator;)V

    .line 585
    invoke-virtual {p1}, Lcom/nineoldandroids/animation/ObjectAnimator;->start()V

    .line 586
    return-void
.end method

.method static synthetic a(Lcom/vungle/publisher/display/view/VideoFragment;)Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->K:Z

    return v0
.end method

.method static synthetic a(Lcom/vungle/publisher/display/view/VideoFragment;Z)Z
    .locals 0

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/vungle/publisher/display/view/VideoFragment;->M:Z

    return p1
.end method

.method static synthetic b(Lcom/vungle/publisher/display/view/VideoFragment;)V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vungle/publisher/display/view/VideoFragment;->f(Z)V

    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 500
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->E:Landroid/os/Handler;

    iget-object v1, p0, Lcom/vungle/publisher/display/view/VideoFragment;->F:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 501
    return-void
.end method

.method static synthetic c(Lcom/vungle/publisher/display/view/VideoFragment;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/vungle/publisher/display/view/VideoFragment;->g()V

    return-void
.end method

.method static synthetic d(Lcom/vungle/publisher/display/view/VideoFragment;)Landroid/widget/VideoView;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->z:Landroid/widget/VideoView;

    return-object v0
.end method

.method private d()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 504
    iget-boolean v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->M:Z

    if-nez v0, :cond_1

    move v0, v1

    .line 505
    :goto_0
    iput-boolean v1, p0, Lcom/vungle/publisher/display/view/VideoFragment;->M:Z

    .line 506
    iget-object v3, p0, Lcom/vungle/publisher/display/view/VideoFragment;->G:Landroid/app/AlertDialog;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/vungle/publisher/display/view/VideoFragment;->G:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    if-eqz v1, :cond_3

    .line 518
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v0, v2

    .line 504
    goto :goto_0

    :cond_2
    move v1, v2

    .line 506
    goto :goto_1

    .line 509
    :cond_3
    iget-object v1, p0, Lcom/vungle/publisher/display/view/VideoFragment;->z:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/vungle/publisher/display/view/VideoFragment;->c(I)V

    .line 510
    iget-object v1, p0, Lcom/vungle/publisher/display/view/VideoFragment;->z:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->requestFocus()Z

    .line 511
    iget-object v1, p0, Lcom/vungle/publisher/display/view/VideoFragment;->z:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->start()V

    .line 512
    const/16 v1, 0x7d0

    invoke-virtual {p0, v1}, Lcom/vungle/publisher/display/view/VideoFragment;->b(I)V

    .line 514
    iget-object v1, p0, Lcom/vungle/publisher/display/view/VideoFragment;->E:Landroid/os/Handler;

    iget-object v2, p0, Lcom/vungle/publisher/display/view/VideoFragment;->F:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 515
    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->k:Lcom/vungle/publisher/event/EventBus;

    new-instance v1, Lcom/vungle/publisher/ah;

    invoke-direct {v1}, Lcom/vungle/publisher/ah;-><init>()V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/event/EventBus;->a(Ljava/lang/Object;)V

    goto :goto_2
.end method

.method private d(Z)V
    .locals 4

    .prologue
    .line 643
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->I:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 644
    :goto_0
    const-string/jumbo v2, "VungleAd"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "cta button "

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    const-string/jumbo v1, "enabled"

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    iput-boolean v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->K:Z

    .line 646
    iget-object v1, p0, Lcom/vungle/publisher/display/view/VideoFragment;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->B:Landroid/graphics/Bitmap;

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 647
    return-void

    .line 643
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 644
    :cond_1
    const-string/jumbo v1, "disabled"

    goto :goto_1

    .line 646
    :cond_2
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->C:Landroid/graphics/Bitmap;

    goto :goto_2
.end method

.method static synthetic e(Lcom/vungle/publisher/display/view/VideoFragment;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->N:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private e()V
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->z:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 522
    invoke-direct {p0}, Lcom/vungle/publisher/display/view/VideoFragment;->c()V

    .line 523
    return-void
.end method

.method private e(Z)V
    .locals 1

    .prologue
    .line 650
    iget-boolean v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->K:Z

    if-eq p1, v0, :cond_0

    .line 651
    invoke-direct {p0, p1}, Lcom/vungle/publisher/display/view/VideoFragment;->d(Z)V

    .line 653
    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/vungle/publisher/display/view/VideoFragment;)Lcom/vungle/publisher/display/view/ProgressBar;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->w:Lcom/vungle/publisher/display/view/ProgressBar;

    return-object v0
.end method

.method private f(Z)V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 706
    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/vungle/publisher/display/view/VideoFragment;->f()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->a:Lcom/vungle/publisher/a;

    invoke-interface {v0}, Lcom/vungle/publisher/a;->isBackButtonImmediatelyEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 707
    :goto_1
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->N:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 708
    const-string/jumbo v0, "VungleAd"

    const-string/jumbo v1, "exiting video"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->a:Lcom/vungle/publisher/a;

    invoke-interface {v0}, Lcom/vungle/publisher/a;->isIncentivized()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 712
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->z:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 713
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->G:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->G:Landroid/app/AlertDialog;

    :goto_2
    iput-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->G:Landroid/app/AlertDialog;

    .line 714
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 722
    :cond_1
    :goto_3
    return-void

    :cond_2
    move v0, v1

    .line 706
    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/vungle/publisher/display/view/VideoFragment;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 713
    :cond_4
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->h:Lcom/vungle/publisher/display/view/AlertDialogFactory;

    invoke-virtual {p0}, Lcom/vungle/publisher/display/view/VideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/vungle/publisher/display/view/VideoFragment;->a:Lcom/vungle/publisher/a;

    new-instance v3, Lcom/vungle/publisher/display/view/VideoFragment$4;

    invoke-direct {v3, p0}, Lcom/vungle/publisher/display/view/VideoFragment$4;-><init>(Lcom/vungle/publisher/display/view/VideoFragment;)V

    new-instance v4, Landroid/app/AlertDialog$Builder;

    new-instance v5, Landroid/view/ContextThemeWrapper;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->theme:I

    invoke-direct {v5, v1, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-interface {v2}, Lcom/vungle/publisher/a;->getIncentivizedCancelDialogTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-interface {v2}, Lcom/vungle/publisher/a;->getIncentivizedCancelDialogBodyText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-interface {v2}, Lcom/vungle/publisher/a;->getIncentivizedCancelDialogKeepWatchingButtonText()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Lcom/vungle/publisher/display/view/AlertDialogFactory$1;

    invoke-direct {v5, v0, v3}, Lcom/vungle/publisher/display/view/AlertDialogFactory$1;-><init>(Lcom/vungle/publisher/display/view/AlertDialogFactory;Lcom/vungle/publisher/display/view/AlertDialogFactory$a;)V

    invoke-virtual {v4, v1, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-interface {v2}, Lcom/vungle/publisher/a;->getIncentivizedCancelDialogCloseButtonText()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/vungle/publisher/display/view/AlertDialogFactory$2;

    invoke-direct {v2, v0, v3}, Lcom/vungle/publisher/display/view/AlertDialogFactory$2;-><init>(Lcom/vungle/publisher/display/view/AlertDialogFactory;Lcom/vungle/publisher/display/view/AlertDialogFactory$a;)V

    invoke-virtual {v4, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/vungle/publisher/display/view/AlertDialogFactory$3;

    invoke-direct {v1, v0, v3}, Lcom/vungle/publisher/display/view/AlertDialogFactory$3;-><init>(Lcom/vungle/publisher/display/view/AlertDialogFactory;Lcom/vungle/publisher/display/view/AlertDialogFactory$a;)V

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_2

    .line 717
    :cond_5
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->v:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 718
    invoke-direct {p0}, Lcom/vungle/publisher/display/view/VideoFragment;->g()V

    goto :goto_3
.end method

.method private f()Z
    .locals 2

    .prologue
    .line 617
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->v:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/nineoldandroids/view/ViewHelper;->getAlpha(Landroid/view/View;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic g(Lcom/vungle/publisher/display/view/VideoFragment;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->E:Landroid/os/Handler;

    return-object v0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 700
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vungle/publisher/display/view/VideoFragment;->b(Z)V

    .line 701
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->z:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 702
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->k:Lcom/vungle/publisher/event/EventBus;

    new-instance v1, Lcom/vungle/publisher/al;

    invoke-direct {v1}, Lcom/vungle/publisher/al;-><init>()V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/event/EventBus;->a(Ljava/lang/Object;)V

    .line 703
    return-void
.end method

.method static synthetic h(Lcom/vungle/publisher/display/view/VideoFragment;)Lcom/vungle/publisher/display/view/MuteButton;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->x:Lcom/vungle/publisher/display/view/MuteButton;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 608
    const-string/jumbo v0, "VungleAd"

    const-string/jumbo v1, "back button pressed"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/vungle/publisher/display/view/VideoFragment;->f(Z)V

    .line 610
    return-void
.end method

.method final a(Lcom/nineoldandroids/animation/ObjectAnimator;F)V
    .locals 6

    .prologue
    .line 575
    const/4 v2, 0x0

    const/high16 v3, 0x44000000    # 512.0f

    const/16 v4, 0x2ed

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/vungle/publisher/display/view/VideoFragment;->a(Lcom/nineoldandroids/animation/ObjectAnimator;IIIF)V

    .line 576
    return-void
.end method

.method public final a(Z)V
    .locals 4

    .prologue
    .line 475
    :try_start_0
    invoke-super {p0, p1}, Lcom/vungle/publisher/display/view/AdFragment;->a(Z)V

    .line 476
    if-eqz p1, :cond_0

    .line 477
    invoke-direct {p0}, Lcom/vungle/publisher/display/view/VideoFragment;->d()V

    .line 485
    :goto_0
    return-void

    .line 480
    :cond_0
    invoke-direct {p0}, Lcom/vungle/publisher/display/view/VideoFragment;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 482
    :catch_0
    move-exception v0

    .line 483
    iget-object v1, p0, Lcom/vungle/publisher/display/view/VideoFragment;->p:Lcom/vungle/publisher/db/model/LoggedException$Factory;

    const-string/jumbo v2, "VungleAd"

    const-string/jumbo v3, "exception in onWindowFocusChanged"

    invoke-virtual {v1, v2, v3, v0}, Lcom/vungle/publisher/db/model/LoggedException$Factory;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final a(I)Z
    .locals 2

    .prologue
    .line 726
    const/16 v0, 0x18

    if-ne p1, v0, :cond_0

    .line 727
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->u:Lcom/vungle/publisher/device/AudioHelper;

    invoke-virtual {v0}, Lcom/vungle/publisher/device/AudioHelper;->b()I

    move-result v0

    if-nez v0, :cond_0

    .line 728
    const-string/jumbo v0, "VungleAd"

    const-string/jumbo v1, "volume up - unmuting"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->u:Lcom/vungle/publisher/device/AudioHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/device/AudioHelper;->a(Z)V

    .line 732
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 797
    const-string/jumbo v0, "videoFragment"

    return-object v0
.end method

.method final b(I)V
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->d:Lcom/nineoldandroids/animation/ObjectAnimator;

    invoke-direct {p0, v0, p1}, Lcom/vungle/publisher/display/view/VideoFragment;->a(Lcom/nineoldandroids/animation/ObjectAnimator;I)V

    .line 562
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->g:Lcom/nineoldandroids/animation/ObjectAnimator;

    invoke-direct {p0, v0, p1}, Lcom/vungle/publisher/display/view/VideoFragment;->a(Lcom/nineoldandroids/animation/ObjectAnimator;I)V

    .line 563
    return-void
.end method

.method final b(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 526
    invoke-direct {p0}, Lcom/vungle/publisher/display/view/VideoFragment;->c()V

    .line 527
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/display/view/VideoFragment;->c(Z)I

    move-result v1

    .line 528
    iget-object v2, p0, Lcom/vungle/publisher/display/view/VideoFragment;->k:Lcom/vungle/publisher/event/EventBus;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/vungle/publisher/k;

    invoke-direct {v0, v1}, Lcom/vungle/publisher/k;-><init>(I)V

    :goto_0
    invoke-virtual {v2, v0}, Lcom/vungle/publisher/event/EventBus;->a(Ljava/lang/Object;)V

    .line 530
    iput-boolean v3, p0, Lcom/vungle/publisher/display/view/VideoFragment;->M:Z

    iput v3, p0, Lcom/vungle/publisher/display/view/VideoFragment;->O:I

    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->N:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 531
    return-void

    .line 528
    :cond_0
    new-instance v0, Lcom/vungle/publisher/p;

    invoke-direct {v0, v1}, Lcom/vungle/publisher/p;-><init>(I)V

    goto :goto_0
.end method

.method final c(Z)I
    .locals 5

    .prologue
    .line 535
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->z:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getDuration()I

    move-result v0

    .line 536
    :goto_0
    iget v1, p0, Lcom/vungle/publisher/display/view/VideoFragment;->O:I

    .line 537
    if-le v0, v1, :cond_1

    .line 538
    iput v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->O:I

    .line 543
    :goto_1
    return v0

    .line 535
    :cond_0
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->z:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    goto :goto_0

    .line 540
    :cond_1
    if-ge v0, v1, :cond_2

    .line 541
    const-string/jumbo v2, "VungleAd"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "watched millis decreased from "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " --> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method final c(I)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 625
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v3, p0, Lcom/vungle/publisher/display/view/VideoFragment;->b:Lcom/vungle/publisher/db/model/Video;

    iget-object v3, v3, Lcom/vungle/publisher/db/model/Video;->h:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v3, p0, Lcom/vungle/publisher/display/view/VideoFragment;->b:Lcom/vungle/publisher/db/model/Video;

    iget-object v3, v3, Lcom/vungle/publisher/db/model/Video;->i:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/vungle/publisher/display/view/VideoFragment;->c:Landroid/widget/ImageView;

    invoke-static {v2}, Lcom/nineoldandroids/view/ViewHelper;->getAlpha(Landroid/view/View;)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_2

    :goto_0
    invoke-direct {p0, v0}, Lcom/vungle/publisher/display/view/VideoFragment;->e(Z)V

    .line 626
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->a:Lcom/vungle/publisher/a;

    invoke-interface {v0}, Lcom/vungle/publisher/a;->isIncentivized()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->b:Lcom/vungle/publisher/db/model/Video;

    iget-object v0, v0, Lcom/vungle/publisher/db/model/Video;->k:Ljava/lang/Integer;

    :goto_2
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/vungle/publisher/display/view/VideoFragment;->v:Landroid/widget/ImageView;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0, p1}, Lcom/vungle/publisher/display/view/VideoFragment;->a(Landroid/view/View;II)V

    .line 627
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 625
    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/vungle/publisher/display/view/VideoFragment;->c:Landroid/widget/ImageView;

    iget v3, p0, Lcom/vungle/publisher/display/view/VideoFragment;->L:I

    invoke-static {v2, v3, p1}, Lcom/vungle/publisher/display/view/VideoFragment;->a(Landroid/view/View;II)V

    iget v2, p0, Lcom/vungle/publisher/display/view/VideoFragment;->J:I

    mul-int/lit16 v2, v2, 0x3e8

    if-lt p1, v2, :cond_4

    :goto_3
    invoke-direct {p0, v0}, Lcom/vungle/publisher/display/view/VideoFragment;->e(Z)V

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_3

    .line 626
    :cond_5
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->b:Lcom/vungle/publisher/db/model/Video;

    iget-object v0, v0, Lcom/vungle/publisher/db/model/Video;->l:Ljava/lang/Integer;

    goto :goto_2
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 180
    :try_start_0
    invoke-super {p0, p1}, Lcom/vungle/publisher/display/view/AdFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 181
    invoke-static {p0, p1}, Lcom/vungle/publisher/display/view/VideoFragment$Factory;->a(Lcom/vungle/publisher/display/view/VideoFragment;Landroid/os/Bundle;)V

    .line 182
    iget-boolean v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->M:Z

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->k:Lcom/vungle/publisher/event/EventBus;

    new-instance v1, Lcom/vungle/publisher/an;

    invoke-direct {v1}, Lcom/vungle/publisher/an;-><init>()V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/event/EventBus;->a(Ljava/lang/Object;)V

    .line 185
    :cond_0
    invoke-virtual {p0}, Lcom/vungle/publisher/display/view/VideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 186
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->t:Lcom/vungle/publisher/display/view/VideoFragment$VideoEventListener$Factory;

    iget-object v2, v0, Lcom/vungle/publisher/display/view/VideoFragment$VideoEventListener$Factory;->a:Lcom/vungle/publisher/display/view/VideoFragment$VideoEventListener;

    invoke-static {v2, p0}, Lcom/vungle/publisher/display/view/VideoFragment$VideoEventListener;->a(Lcom/vungle/publisher/display/view/VideoFragment$VideoEventListener;Lcom/vungle/publisher/display/view/VideoFragment;)Lcom/vungle/publisher/display/view/VideoFragment;

    iget-object v0, v0, Lcom/vungle/publisher/display/view/VideoFragment$VideoEventListener$Factory;->a:Lcom/vungle/publisher/display/view/VideoFragment$VideoEventListener;

    iput-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->H:Lcom/vungle/publisher/display/view/VideoFragment$VideoEventListener;

    .line 188
    new-instance v2, Landroid/widget/VideoView;

    invoke-direct {v2, v1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/vungle/publisher/display/view/VideoFragment;->z:Landroid/widget/VideoView;

    .line 189
    new-instance v3, Lcom/vungle/publisher/bq;

    invoke-direct {v3, v1}, Lcom/vungle/publisher/bq;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/vungle/publisher/display/view/VideoFragment;->v:Landroid/widget/ImageView;

    .line 190
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->o:Lcom/vungle/publisher/display/view/MuteButton$Factory;

    iget-object v4, p0, Lcom/vungle/publisher/display/view/VideoFragment;->a:Lcom/vungle/publisher/a;

    invoke-interface {v4}, Lcom/vungle/publisher/a;->isSoundEnabled()Z

    move-result v4

    new-instance v5, Lcom/vungle/publisher/display/view/MuteButton;

    iget-object v6, v0, Lcom/vungle/publisher/display/view/MuteButton$Factory;->a:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/vungle/publisher/display/view/MuteButton;-><init>(Landroid/content/Context;B)V

    iget-object v6, v0, Lcom/vungle/publisher/display/view/MuteButton$Factory;->b:Lcom/vungle/publisher/util/ViewUtils;

    const-string/jumbo v7, "vg_mute_on.png"

    invoke-virtual {v6, v7}, Lcom/vungle/publisher/util/ViewUtils;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/vungle/publisher/display/view/MuteButton;->a(Lcom/vungle/publisher/display/view/MuteButton;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget-object v6, v0, Lcom/vungle/publisher/display/view/MuteButton$Factory;->b:Lcom/vungle/publisher/util/ViewUtils;

    const-string/jumbo v7, "vg_mute_off.png"

    invoke-virtual {v6, v7}, Lcom/vungle/publisher/util/ViewUtils;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/vungle/publisher/display/view/MuteButton;->b(Lcom/vungle/publisher/display/view/MuteButton;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget-object v6, v0, Lcom/vungle/publisher/display/view/MuteButton$Factory;->c:Lcom/vungle/publisher/device/AudioHelper;

    invoke-static {v5, v6}, Lcom/vungle/publisher/display/view/MuteButton;->a(Lcom/vungle/publisher/display/view/MuteButton;Lcom/vungle/publisher/device/AudioHelper;)Lcom/vungle/publisher/device/AudioHelper;

    invoke-static {v5, v4}, Lcom/vungle/publisher/display/view/MuteButton;->a(Lcom/vungle/publisher/display/view/MuteButton;Z)Z

    iget-object v4, v0, Lcom/vungle/publisher/display/view/MuteButton$Factory;->d:Lcom/vungle/publisher/event/EventBus;

    invoke-static {v5, v4}, Lcom/vungle/publisher/display/view/MuteButton;->a(Lcom/vungle/publisher/display/view/MuteButton;Lcom/vungle/publisher/event/EventBus;)Lcom/vungle/publisher/event/EventBus;

    new-instance v4, Lcom/vungle/publisher/display/view/MuteButton$Factory$1;

    invoke-direct {v4, v0, v5}, Lcom/vungle/publisher/display/view/MuteButton$Factory$1;-><init>(Lcom/vungle/publisher/display/view/MuteButton$Factory;Lcom/vungle/publisher/display/view/MuteButton;)V

    invoke-virtual {v5, v4}, Lcom/vungle/publisher/display/view/MuteButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v5, p0, Lcom/vungle/publisher/display/view/VideoFragment;->x:Lcom/vungle/publisher/display/view/MuteButton;

    .line 191
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->m:Lcom/vungle/publisher/display/view/PrivacyButton$Factory;

    new-instance v4, Lcom/vungle/publisher/display/view/PrivacyButton;

    invoke-direct {v4, v1}, Lcom/vungle/publisher/display/view/PrivacyButton;-><init>(Landroid/content/Context;)V

    const/16 v6, 0x10

    invoke-virtual {v4, v6}, Lcom/vungle/publisher/display/view/PrivacyButton;->setGravity(I)V

    new-instance v6, Lcom/vungle/publisher/bq;

    invoke-direct {v6, v1}, Lcom/vungle/publisher/bq;-><init>(Landroid/content/Context;)V

    iget-object v7, v0, Lcom/vungle/publisher/display/view/PrivacyButton$Factory;->a:Lcom/vungle/publisher/util/ViewUtils;

    const-string/jumbo v8, "vg_privacy.png"

    invoke-virtual {v7, v8}, Lcom/vungle/publisher/util/ViewUtils;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/vungle/publisher/util/ViewUtils;->a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string/jumbo v8, "privacy"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v8, 0x41800000    # 16.0f

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v8, 0xa

    const/4 v9, 0x0

    const/16 v10, 0xa

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v4, v7}, Lcom/vungle/publisher/display/view/PrivacyButton;->addView(Landroid/view/View;)V

    invoke-virtual {v4, v6}, Lcom/vungle/publisher/display/view/PrivacyButton;->addView(Landroid/view/View;)V

    iget-object v0, v0, Lcom/vungle/publisher/display/view/PrivacyButton$Factory;->b:Lcom/vungle/publisher/event/EventBus;

    invoke-static {v4, v0}, Lcom/vungle/publisher/display/view/PrivacyButton;->a(Lcom/vungle/publisher/display/view/PrivacyButton;Lcom/vungle/publisher/event/EventBus;)Lcom/vungle/publisher/event/EventBus;

    invoke-static {v4, v7}, Lcom/vungle/publisher/display/view/PrivacyButton;->a(Lcom/vungle/publisher/display/view/PrivacyButton;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 192
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->n:Lcom/vungle/publisher/display/view/ProgressBar$Factory;

    new-instance v6, Lcom/vungle/publisher/display/view/ProgressBar;

    iget-object v7, v0, Lcom/vungle/publisher/display/view/ProgressBar$Factory;->a:Landroid/content/Context;

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lcom/vungle/publisher/display/view/ProgressBar;-><init>(Landroid/content/Context;B)V

    invoke-static {v6}, Lcom/vungle/publisher/display/view/ProgressBar;->a(Lcom/vungle/publisher/display/view/ProgressBar;)I

    iget-object v0, v0, Lcom/vungle/publisher/display/view/ProgressBar$Factory;->b:Lcom/vungle/publisher/display/view/DisplayUtils;

    const/4 v7, 0x2

    invoke-virtual {v0, v7}, Lcom/vungle/publisher/display/view/DisplayUtils;->a(I)F

    move-result v0

    float-to-int v0, v0

    invoke-static {v6, v0}, Lcom/vungle/publisher/display/view/ProgressBar;->a(Lcom/vungle/publisher/display/view/ProgressBar;I)I

    iput-object v6, p0, Lcom/vungle/publisher/display/view/VideoFragment;->w:Lcom/vungle/publisher/display/view/ProgressBar;

    .line 194
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->A:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 195
    invoke-virtual {v2}, Landroid/widget/VideoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 197
    const/4 v7, -0x1

    iput v7, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 198
    const/4 v7, -0x1

    iput v7, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 199
    const/16 v7, 0xd

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 202
    new-instance v7, Landroid/widget/RelativeLayout;

    invoke-direct {v7, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 203
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->A:Landroid/view/ViewGroup;

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 204
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 205
    const/4 v8, -0x1

    iput v8, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 206
    const/16 v8, 0xa

    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 209
    invoke-virtual {v7, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 210
    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 211
    const/16 v8, 0x9

    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 212
    const/16 v8, 0xf

    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 213
    const/4 v0, 0x0

    invoke-static {v3, v0}, Lcom/nineoldandroids/view/ViewHelper;->setAlpha(Landroid/view/View;F)V

    .line 216
    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 217
    invoke-virtual {v4}, Lcom/vungle/publisher/display/view/PrivacyButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 218
    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 219
    const/16 v4, 0xf

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 222
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-virtual {v6}, Lcom/vungle/publisher/display/view/ProgressBar;->getScreenHeight()I

    move-result v8

    invoke-direct {v0, v4, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 224
    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 225
    iget-object v4, p0, Lcom/vungle/publisher/display/view/VideoFragment;->A:Landroid/view/ViewGroup;

    invoke-virtual {v4, v6, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 228
    new-instance v4, Landroid/widget/RelativeLayout;

    invoke-direct {v4, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/vungle/publisher/display/view/VideoFragment;->y:Landroid/widget/RelativeLayout;

    .line 229
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->A:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 230
    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 231
    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 232
    const/4 v1, 0x2

    const/4 v6, 0x1

    invoke-virtual {v0, v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 235
    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 236
    invoke-virtual {v5}, Lcom/vungle/publisher/display/view/MuteButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 237
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 238
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 241
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->j:Lcom/vungle/publisher/display/view/DisplayUtils;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/display/view/DisplayUtils;->a(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 242
    iget-object v1, p0, Lcom/vungle/publisher/display/view/VideoFragment;->j:Lcom/vungle/publisher/display/view/DisplayUtils;

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lcom/vungle/publisher/display/view/DisplayUtils;->a(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 243
    invoke-virtual {v7, v0, v1, v0, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 244
    invoke-virtual {v4, v0, v1, v0, v1}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 245
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->v:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->x:Lcom/vungle/publisher/display/view/MuteButton;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 246
    const-string/jumbo v0, "vg_close.png"

    invoke-direct {p0, v0}, Lcom/vungle/publisher/display/view/VideoFragment;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 248
    :cond_1
    const-string/jumbo v0, "VungleAd"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "video play URI = "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/vungle/publisher/display/view/VideoFragment;->b:Lcom/vungle/publisher/db/model/Video;

    invoke-virtual {v5}, Lcom/vungle/publisher/db/model/Video;->i()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->b:Lcom/vungle/publisher/db/model/Video;

    invoke-virtual {v0}, Lcom/vungle/publisher/db/model/Video;->i()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 251
    invoke-static {v4}, Lcom/vungle/publisher/display/view/VideoFragment;->a(Landroid/view/View;)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->d:Lcom/nineoldandroids/animation/ObjectAnimator;

    .line 252
    invoke-static {v7}, Lcom/vungle/publisher/display/view/VideoFragment;->a(Landroid/view/View;)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->g:Lcom/nineoldandroids/animation/ObjectAnimator;

    .line 253
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/vungle/publisher/display/view/VideoFragment;->b:Lcom/vungle/publisher/db/model/Video;

    iget-object v1, v1, Lcom/vungle/publisher/db/model/Video;->h:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "vg_cta.png"

    invoke-direct {p0, v0}, Lcom/vungle/publisher/display/view/VideoFragment;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->B:Landroid/graphics/Bitmap;

    const-string/jumbo v0, "vg_cta_disabled.png"

    invoke-direct {p0, v0}, Lcom/vungle/publisher/display/view/VideoFragment;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->C:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->b:Lcom/vungle/publisher/db/model/Video;

    iget-object v1, v0, Lcom/vungle/publisher/db/model/Video;->f:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->b:Lcom/vungle/publisher/db/model/Video;

    iget-object v0, v0, Lcom/vungle/publisher/db/model/Video;->j:Ljava/lang/Integer;

    if-nez v1, :cond_4

    if-eqz v0, :cond_b

    const-string/jumbo v1, "VungleAd"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "overriding cta enabled from null to "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    :goto_0
    const-string/jumbo v4, "VungleAd"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "cta shown at "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " seconds; enabled at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " seconds"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_1
    iput v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->J:I

    if-nez v1, :cond_7

    const/4 v0, 0x0

    :goto_2
    iput v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->L:I

    new-instance v1, Lcom/vungle/publisher/bq;

    invoke-virtual {p0}, Lcom/vungle/publisher/display/view/VideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/vungle/publisher/bq;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vungle/publisher/display/view/VideoFragment;->c:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->y:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v4, 0x9

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v4, 0xf

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->b:Lcom/vungle/publisher/db/model/Video;

    iget-object v0, v0, Lcom/vungle/publisher/db/model/Video;->e:Ljava/lang/Float;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_8

    :cond_2
    const-string/jumbo v0, "VungleAd"

    const-string/jumbo v4, "cta clickable area not scaled"

    invoke-static {v0, v4}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v4, p0, Lcom/vungle/publisher/display/view/VideoFragment;->b:Lcom/vungle/publisher/db/model/Video;

    iget-object v4, v4, Lcom/vungle/publisher/db/model/Video;->i:Ljava/lang/Boolean;

    invoke-virtual {v0, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/nineoldandroids/view/ViewHelper;->setAlpha(Landroid/view/View;F)V

    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->B:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const-string/jumbo v0, "alpha"

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-static {v1, v0, v4}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->e:Lcom/nineoldandroids/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->e:Lcom/nineoldandroids/animation/ObjectAnimator;

    const-wide/16 v4, 0x2ee

    invoke-virtual {v0, v4, v5}, Lcom/nineoldandroids/animation/ObjectAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ObjectAnimator;

    :goto_4
    new-instance v0, Lcom/vungle/publisher/display/view/VideoFragment$3;

    invoke-direct {v0, p0, v1}, Lcom/vungle/publisher/display/view/VideoFragment$3;-><init>(Lcom/vungle/publisher/display/view/VideoFragment;Landroid/widget/ImageView;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    :cond_3
    new-instance v0, Lcom/vungle/publisher/display/view/VideoFragment$a;

    invoke-direct {v0, p0}, Lcom/vungle/publisher/display/view/VideoFragment$a;-><init>(Lcom/vungle/publisher/display/view/VideoFragment;)V

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    new-instance v0, Lcom/vungle/publisher/display/view/VideoFragment$1;

    invoke-direct {v0, p0}, Lcom/vungle/publisher/display/view/VideoFragment$1;-><init>(Lcom/vungle/publisher/display/view/VideoFragment;)V

    invoke-virtual {v2, v0}, Landroid/widget/VideoView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 265
    invoke-virtual {v2, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 266
    invoke-virtual {v2, p0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 267
    invoke-virtual {v2, p0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 271
    :goto_5
    return-void

    .line 253
    :cond_4
    if-nez v0, :cond_5

    const-string/jumbo v0, "VungleAd"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "overriding cta shown from null to "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-le v4, v5, :cond_b

    const-string/jumbo v4, "VungleAd"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "overriding cta shown from "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, " to "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto/16 :goto_1

    :cond_7
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto/16 :goto_2

    :cond_8
    new-instance v4, Lcom/vungle/publisher/display/view/VideoFragment$2;

    invoke-direct {v4, p0, v0, v1}, Lcom/vungle/publisher/display/view/VideoFragment$2;-><init>(Lcom/vungle/publisher/display/view/VideoFragment;Ljava/lang/Float;Landroid/widget/ImageView;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 268
    :catch_0
    move-exception v0

    .line 269
    iget-object v1, p0, Lcom/vungle/publisher/display/view/VideoFragment;->p:Lcom/vungle/publisher/db/model/LoggedException$Factory;

    const-string/jumbo v2, "VungleAd"

    const-string/jumbo v3, "exception in onActivityCreated"

    invoke-virtual {v1, v2, v3, v0}, Lcom/vungle/publisher/db/model/LoggedException$Factory;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 253
    :cond_9
    :try_start_1
    iget v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->L:I

    iget v4, p0, Lcom/vungle/publisher/display/view/VideoFragment;->J:I

    if-lt v0, v4, :cond_a

    const/4 v0, 0x1

    :goto_6
    invoke-direct {p0, v0}, Lcom/vungle/publisher/display/view/VideoFragment;->d(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4

    :cond_a
    const/4 v0, 0x0

    goto :goto_6

    :cond_b
    move-object v12, v0

    move-object v0, v1

    move-object v1, v12

    goto/16 :goto_0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    .prologue
    .line 686
    const-string/jumbo v0, "VungleAd"

    const-string/jumbo v1, "video.onCompletion"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vungle/publisher/display/view/VideoFragment;->b(Z)V

    .line 688
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->k:Lcom/vungle/publisher/event/EventBus;

    new-instance v1, Lcom/vungle/publisher/am;

    invoke-direct {v1}, Lcom/vungle/publisher/am;-><init>()V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/event/EventBus;->a(Ljava/lang/Object;)V

    .line 689
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 166
    :try_start_0
    invoke-super {p0, p1}, Lcom/vungle/publisher/display/view/AdFragment;->onCreate(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :goto_0
    return-void

    .line 167
    :catch_0
    move-exception v0

    .line 168
    iget-object v1, p0, Lcom/vungle/publisher/display/view/VideoFragment;->p:Lcom/vungle/publisher/db/model/LoggedException$Factory;

    const-string/jumbo v2, "VungleAd"

    const-string/jumbo v3, "exception in onCreate"

    invoke-virtual {v1, v2, v3, v0}, Lcom/vungle/publisher/db/model/LoggedException$Factory;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 174
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/vungle/publisher/display/view/VideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->A:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 693
    const-string/jumbo v0, "VungleAd"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "video.onError: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vungle/publisher/display/view/VideoFragment;->b(Z)V

    .line 695
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->k:Lcom/vungle/publisher/event/EventBus;

    new-instance v1, Lcom/vungle/publisher/am;

    invoke-direct {v1}, Lcom/vungle/publisher/am;-><init>()V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/event/EventBus;->a(Ljava/lang/Object;)V

    .line 696
    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 453
    const-string/jumbo v0, "VungleAd"

    const-string/jumbo v1, "video onPause"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    :try_start_0
    invoke-super {p0}, Lcom/vungle/publisher/display/view/AdFragment;->onPause()V

    .line 456
    invoke-direct {p0}, Lcom/vungle/publisher/display/view/VideoFragment;->e()V

    .line 458
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->s:Lcom/vungle/publisher/audio/VolumeChangeContentObserver;

    iget-object v1, v0, Lcom/vungle/publisher/audio/VolumeChangeContentObserver;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 459
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->H:Lcom/vungle/publisher/display/view/VideoFragment$VideoEventListener;

    invoke-virtual {v0}, Lcom/vungle/publisher/display/view/VideoFragment$VideoEventListener;->unregister()V

    .line 460
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->u:Lcom/vungle/publisher/device/AudioHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/device/AudioHelper;->a(Z)V

    .line 462
    iget-boolean v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->M:Z

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->k:Lcom/vungle/publisher/event/EventBus;

    new-instance v1, Lcom/vungle/publisher/ad;

    iget-object v2, p0, Lcom/vungle/publisher/display/view/VideoFragment;->z:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/vungle/publisher/ad;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/event/EventBus;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 470
    :cond_0
    :goto_0
    return-void

    .line 466
    :catch_0
    move-exception v0

    .line 467
    iget-object v1, p0, Lcom/vungle/publisher/display/view/VideoFragment;->p:Lcom/vungle/publisher/db/model/LoggedException$Factory;

    const-string/jumbo v2, "VungleAd"

    const-string/jumbo v3, "error in VideoFragment.onPause()"

    invoke-virtual {v1, v2, v3, v0}, Lcom/vungle/publisher/db/model/LoggedException$Factory;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 468
    invoke-direct {p0}, Lcom/vungle/publisher/display/view/VideoFragment;->c()V

    goto :goto_0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 4
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;

    .prologue
    .line 423
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    .line 424
    const-string/jumbo v1, "VungleAd"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "video ready: duration "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    iget-object v1, p0, Lcom/vungle/publisher/display/view/VideoFragment;->w:Lcom/vungle/publisher/display/view/ProgressBar;

    invoke-virtual {v1, v0}, Lcom/vungle/publisher/display/view/ProgressBar;->setMaxTimeMillis(I)V

    .line 426
    iget-object v1, p0, Lcom/vungle/publisher/display/view/VideoFragment;->k:Lcom/vungle/publisher/event/EventBus;

    new-instance v2, Lcom/vungle/publisher/o;

    invoke-direct {v2, v0}, Lcom/vungle/publisher/o;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/vungle/publisher/event/EventBus;->a(Ljava/lang/Object;)V

    .line 427
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->q:Lcom/vungle/publisher/bt;

    invoke-virtual {p0}, Lcom/vungle/publisher/display/view/VideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/vungle/publisher/bt;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 428
    invoke-direct {p0}, Lcom/vungle/publisher/display/view/VideoFragment;->d()V

    .line 430
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 435
    :try_start_0
    invoke-super {p0}, Lcom/vungle/publisher/display/view/AdFragment;->onResume()V

    .line 436
    const-string/jumbo v2, "VungleAd"

    const-string/jumbo v3, "video onResume"

    invoke-static {v2, v3}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    const/4 v2, 0x0

    iput v2, p0, Lcom/vungle/publisher/display/view/VideoFragment;->O:I

    .line 441
    iget-object v2, p0, Lcom/vungle/publisher/display/view/VideoFragment;->x:Lcom/vungle/publisher/display/view/MuteButton;

    const-string/jumbo v3, "VungleAd"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "refresh mute state. is muted? "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v5, v2, Lcom/vungle/publisher/display/view/MuteButton;->a:Z

    if-nez v5, :cond_1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, v2, Lcom/vungle/publisher/display/view/MuteButton;->a:Z

    invoke-virtual {v2, v0}, Lcom/vungle/publisher/display/view/MuteButton;->setSoundEnabled(Z)V

    iget-object v0, v2, Lcom/vungle/publisher/display/view/MuteButton;->c:Lcom/vungle/publisher/event/EventBus;

    new-instance v1, Lcom/vungle/publisher/ap;

    iget-object v2, v2, Lcom/vungle/publisher/display/view/MuteButton;->b:Lcom/vungle/publisher/device/AudioHelper;

    invoke-virtual {v2}, Lcom/vungle/publisher/device/AudioHelper;->c()F

    move-result v2

    invoke-direct {v1, v2}, Lcom/vungle/publisher/ap;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/event/EventBus;->a(Ljava/lang/Object;)V

    .line 442
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->s:Lcom/vungle/publisher/audio/VolumeChangeContentObserver;

    iget-boolean v1, v0, Lcom/vungle/publisher/audio/VolumeChangeContentObserver;->b:Z

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/vungle/publisher/audio/VolumeChangeContentObserver;->c:Lcom/vungle/publisher/device/AudioHelper;

    invoke-virtual {v1}, Lcom/vungle/publisher/device/AudioHelper;->b()I

    move-result v1

    iput v1, v0, Lcom/vungle/publisher/audio/VolumeChangeContentObserver;->a:I

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/vungle/publisher/audio/VolumeChangeContentObserver;->b:Z

    :cond_0
    iget-object v1, v0, Lcom/vungle/publisher/audio/VolumeChangeContentObserver;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 443
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->H:Lcom/vungle/publisher/display/view/VideoFragment$VideoEventListener;

    invoke-virtual {v0}, Lcom/vungle/publisher/display/view/VideoFragment$VideoEventListener;->register()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 449
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 441
    goto :goto_0

    .line 445
    :catch_0
    move-exception v0

    .line 446
    iget-object v1, p0, Lcom/vungle/publisher/display/view/VideoFragment;->p:Lcom/vungle/publisher/db/model/LoggedException$Factory;

    const-string/jumbo v2, "VungleAd"

    const-string/jumbo v3, "error resuming VideoFragment"

    invoke-virtual {v1, v2, v3, v0}, Lcom/vungle/publisher/db/model/LoggedException$Factory;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 447
    invoke-direct {p0}, Lcom/vungle/publisher/display/view/VideoFragment;->c()V

    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 276
    :try_start_0
    invoke-super {p0, p1}, Lcom/vungle/publisher/display/view/AdFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 277
    const-string/jumbo v0, "adId"

    iget-object v1, p0, Lcom/vungle/publisher/display/view/VideoFragment;->b:Lcom/vungle/publisher/db/model/Video;

    invoke-virtual {v1}, Lcom/vungle/publisher/db/model/Video;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string/jumbo v1, "adConfig"

    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment;->a:Lcom/vungle/publisher/a;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 279
    const-string/jumbo v0, "adStarted"

    iget-boolean v1, p0, Lcom/vungle/publisher/display/view/VideoFragment;->M:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    :goto_0
    return-void

    .line 280
    :catch_0
    move-exception v0

    .line 281
    iget-object v1, p0, Lcom/vungle/publisher/display/view/VideoFragment;->p:Lcom/vungle/publisher/db/model/LoggedException$Factory;

    const-string/jumbo v2, "VungleAd"

    const-string/jumbo v3, "exception in onSaveInstanceState"

    invoke-virtual {v1, v2, v3, v0}, Lcom/vungle/publisher/db/model/LoggedException$Factory;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
