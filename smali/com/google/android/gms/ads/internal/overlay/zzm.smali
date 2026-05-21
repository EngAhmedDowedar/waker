.class public final Lcom/google/android/gms/ads/internal/overlay/zzm;
.super Lcom/google/android/gms/internal/zzxb;

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzaj;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzn;
.end annotation


# static fields
.field private static zzcga:I


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private zzbvz:Lcom/google/android/gms/internal/zzakl;

.field zzcgb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

.field private zzcgc:Lcom/google/android/gms/ads/internal/overlay/zzr;

.field private zzcgd:Lcom/google/android/gms/ads/internal/overlay/zzae;

.field private zzcge:Z

.field private zzcgf:Landroid/widget/FrameLayout;

.field private zzcgg:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private zzcgh:Z

.field private zzcgi:Z

.field private zzcgj:Lcom/google/android/gms/ads/internal/overlay/zzq;

.field private zzcgk:Z

.field private zzcgl:I

.field private final zzcgm:Ljava/lang/Object;

.field private zzcgn:Ljava/lang/Runnable;

.field private zzcgo:Z

.field private zzcgp:Z

.field private zzcgq:Z

.field private zzcgr:Z

.field private zzcgs:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcga:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzxb;-><init>()V

    iput-boolean v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcge:Z

    iput-boolean v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgh:Z

    iput-boolean v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgi:Z

    iput-boolean v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgk:Z

    iput v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgl:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgm:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgq:Z

    iput-boolean v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgr:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgs:Z

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/internal/overlay/zzm;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method private final zzms()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgq:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgq:Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzbvz:Lcom/google/android/gms/internal/zzakl;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgl:I

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzbvz:Lcom/google/android/gms/internal/zzakl;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zzakl;->zzae(I)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgm:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgo:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzbvz:Lcom/google/android/gms/internal/zzakl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzakl;->zzsq()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzo;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/internal/overlay/zzo;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzm;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgn:Ljava/lang/Runnable;

    sget-object v2, Lcom/google/android/gms/internal/zzahg;->zzdbz:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgn:Ljava/lang/Runnable;

    sget-object v0, Lcom/google/android/gms/internal/zzmn;->zzbjp:Lcom/google/android/gms/internal/zzmd;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzen()Lcom/google/android/gms/internal/zzml;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/zzml;->zzd(Lcom/google/android/gms/internal/zzmd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzmt()V

    goto :goto_0
.end method

.method private final zzmv()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzbvz:Lcom/google/android/gms/internal/zzakl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzakl;->zzmv()V

    return-void
.end method

.method private final zzs(Z)V
    .locals 5

    const/4 v4, -0x2

    const/4 v2, 0x0

    sget-object v0, Lcom/google/android/gms/internal/zzmn;->zzbpa:Lcom/google/android/gms/internal/zzmd;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzen()Lcom/google/android/gms/internal/zzml;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzml;->zzd(Lcom/google/android/gms/internal/zzmd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-instance v3, Lcom/google/android/gms/ads/internal/overlay/zzaf;

    invoke-direct {v3}, Lcom/google/android/gms/ads/internal/overlay/zzaf;-><init>()V

    const/16 v0, 0x32

    iput v0, v3, Lcom/google/android/gms/ads/internal/overlay/zzaf;->size:I

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    iput v0, v3, Lcom/google/android/gms/ads/internal/overlay/zzaf;->paddingLeft:I

    if-eqz p1, :cond_1

    move v0, v2

    :goto_1
    iput v0, v3, Lcom/google/android/gms/ads/internal/overlay/zzaf;->paddingRight:I

    iput v2, v3, Lcom/google/android/gms/ads/internal/overlay/zzaf;->paddingTop:I

    iput v1, v3, Lcom/google/android/gms/ads/internal/overlay/zzaf;->paddingBottom:I

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzae;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, v3, p0}, Lcom/google/android/gms/ads/internal/overlay/zzae;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/zzaf;Lcom/google/android/gms/ads/internal/overlay/zzaj;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgd:Lcom/google/android/gms/ads/internal/overlay/zzae;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    if-eqz p1, :cond_2

    const/16 v0, 0xb

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzche:Z

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/ads/internal/overlay/zzm;->zza(ZZ)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgj:Lcom/google/android/gms/ads/internal/overlay/zzq;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgd:Lcom/google/android/gms/ads/internal/overlay/zzae;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/ads/internal/overlay/zzq;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    const/16 v0, 0x9

    goto :goto_2
.end method

.method private final zzt(Z)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/ads/internal/overlay/zzp;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgp:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzp;

    const-string/jumbo v1, "Invalid activity, no window available."

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzp;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v1, 0x1

    invoke-static {}, Lcom/google/android/gms/common/util/zzp;->isAtLeastN()Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object v0, Lcom/google/android/gms/internal/zzmn;->zzboy:Lcom/google/android/gms/internal/zzmd;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzen()Lcom/google/android/gms/internal/zzml;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/zzml;->zzd(Lcom/google/android/gms/internal/zzmd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzea()Lcom/google/android/gms/internal/zzahg;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzahg;->zza(Landroid/app/Activity;Landroid/content/res/Configuration;)Z

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzchj:Lcom/google/android/gms/ads/internal/zzaq;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzchj:Lcom/google/android/gms/ads/internal/zzaq;

    iget-boolean v1, v1, Lcom/google/android/gms/ads/internal/zzaq;->zzapo:Z

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    :goto_1
    iget-boolean v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgi:Z

    if-eqz v3, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    if-eqz v0, :cond_3

    const/16 v0, 0x400

    const/16 v1, 0x400

    invoke-virtual {v2, v0, v1}, Landroid/view/Window;->setFlags(II)V

    sget-object v0, Lcom/google/android/gms/internal/zzmn;->zzbjq:Lcom/google/android/gms/internal/zzmd;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzen()Lcom/google/android/gms/internal/zzml;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzml;->zzd(Lcom/google/android/gms/internal/zzmd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/google/android/gms/common/util/zzp;->zzali()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzchj:Lcom/google/android/gms/ads/internal/zzaq;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzchj:Lcom/google/android/gms/ads/internal/zzaq;

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/zzaq;->zzapt:Z

    if-eqz v0, :cond_3

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1002

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzchb:Lcom/google/android/gms/internal/zzakl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzakl;->zzse()Lcom/google/android/gms/internal/zzakm;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzakm;->zzfo()Z

    move-result v4

    :goto_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgk:Z

    if-eqz v4, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->orientation:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzec()Lcom/google/android/gms/internal/zzahl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzahl;->zzrb()I

    move-result v1

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgk:Z

    :cond_4
    :goto_4
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgk:Z

    const/16 v1, 0x2e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "Delay onShow to next orientation change: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzafy;->zzca(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->orientation:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zzm;->setRequestedOrientation(I)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzec()Lcom/google/android/gms/internal/zzahl;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzahl;->zza(Landroid/view/Window;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "Hardware acceleration on the AdActivity window enabled."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzafy;->zzca(Ljava/lang/String;)V

    :cond_5
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgi:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgj:Lcom/google/android/gms/ads/internal/overlay/zzq;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzq;->setBackgroundColor(I)V

    :goto_5
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgj:Lcom/google/android/gms/ads/internal/overlay/zzq;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgp:Z

    if-eqz p1, :cond_f

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzeb()Lcom/google/android/gms/internal/zzakv;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzchb:Lcom/google/android/gms/internal/zzakl;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzakl;->zzbk()Lcom/google/android/gms/internal/zziu;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v6, v6, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzasz:Lcom/google/android/gms/internal/zzajl;

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v9, v9, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzchb:Lcom/google/android/gms/internal/zzakl;

    invoke-interface {v9}, Lcom/google/android/gms/internal/zzakl;->zzbi()Lcom/google/android/gms/ads/internal/zzv;

    move-result-object v9

    invoke-static {}, Lcom/google/android/gms/internal/zzhz;->zzhf()Lcom/google/android/gms/internal/zzhz;

    move-result-object v10

    invoke-virtual/range {v0 .. v10}, Lcom/google/android/gms/internal/zzakv;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zziu;ZZLcom/google/android/gms/internal/zzcs;Lcom/google/android/gms/internal/zzajl;Lcom/google/android/gms/internal/zzna;Lcom/google/android/gms/ads/internal/zzbo;Lcom/google/android/gms/ads/internal/zzv;Lcom/google/android/gms/internal/zzhz;)Lcom/google/android/gms/internal/zzakl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzbvz:Lcom/google/android/gms/internal/zzakl;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzbvz:Lcom/google/android/gms/internal/zzakl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzakl;->zzse()Lcom/google/android/gms/internal/zzakm;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v8, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzchc:Lcom/google/android/gms/internal/zzqn;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v9, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzchg:Lcom/google/android/gms/ads/internal/overlay/zzag;

    const/4 v10, 0x1

    const/4 v11, 0x0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzchb:Lcom/google/android/gms/internal/zzakl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzakl;->zzse()Lcom/google/android/gms/internal/zzakm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzakm;->zzsw()Lcom/google/android/gms/ads/internal/zzw;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v5 .. v14}, Lcom/google/android/gms/internal/zzakm;->zza(Lcom/google/android/gms/internal/zzil;Lcom/google/android/gms/ads/internal/overlay/zzw;Lcom/google/android/gms/internal/zzqn;Lcom/google/android/gms/ads/internal/overlay/zzag;ZLcom/google/android/gms/internal/zzrp;Lcom/google/android/gms/ads/internal/zzw;Lcom/google/android/gms/internal/zzwy;Lcom/google/android/gms/internal/zzaew;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzbvz:Lcom/google/android/gms/internal/zzakl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzakl;->zzse()Lcom/google/android/gms/internal/zzakm;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/zzn;

    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/internal/overlay/zzn;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzm;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzakm;->zza(Lcom/google/android/gms/internal/zzakq;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->url:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzbvz:Lcom/google/android/gms/internal/zzakl;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->url:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzakl;->loadUrl(Ljava/lang/String;)V

    :goto_6
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzchb:Lcom/google/android/gms/internal/zzakl;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzchb:Lcom/google/android/gms/internal/zzakl;

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/zzakl;->zzc(Lcom/google/android/gms/ads/internal/overlay/zzm;)V

    :cond_6
    :goto_7
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzbvz:Lcom/google/android/gms/internal/zzakl;

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/zzakl;->zzb(Lcom/google/android/gms/ads/internal/overlay/zzm;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzbvz:Lcom/google/android/gms/internal/zzakl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzakl;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_11

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_11

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzbvz:Lcom/google/android/gms/internal/zzakl;

    if-nez v1, :cond_10

    const/4 v0, 0x0

    throw v0

    :cond_7
    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_8
    const/4 v4, 0x0

    goto/16 :goto_2

    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_3

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->orientation:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzec()Lcom/google/android/gms/internal/zzahl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzahl;->zzrc()I

    move-result v1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_8
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgk:Z

    goto/16 :goto_4

    :cond_b
    const/4 v0, 0x0

    goto :goto_8

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgj:Lcom/google/android/gms/ads/internal/overlay/zzq;

    sget v1, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcga:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzq;->setBackgroundColor(I)V

    goto/16 :goto_5

    :catch_0
    move-exception v0

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzp;

    const-string/jumbo v1, "Could not obtain webview for the overlay."

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzp;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzchf:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzbvz:Lcom/google/android/gms/internal/zzakl;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v6, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzchd:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v7, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzchf:Ljava/lang/String;

    const-string/jumbo v8, "text/html"

    const-string/jumbo v9, "UTF-8"

    const/4 v10, 0x0

    invoke-interface/range {v5 .. v10}, Lcom/google/android/gms/internal/zzakl;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_e
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzp;

    const-string/jumbo v1, "No URL or HTML to display in ad overlay."

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzp;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzchb:Lcom/google/android/gms/internal/zzakl;

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzbvz:Lcom/google/android/gms/internal/zzakl;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzbvz:Lcom/google/android/gms/internal/zzakl;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->mActivity:Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzakl;->setContext(Landroid/content/Context;)V

    goto/16 :goto_7

    :cond_10
    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_11
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgi:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzbvz:Lcom/google/android/gms/internal/zzakl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzakl;->zzsv()V

    :cond_12
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgj:Lcom/google/android/gms/ads/internal/overlay/zzq;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzbvz:Lcom/google/android/gms/internal/zzakl;

    if-nez v0, :cond_13

    const/4 v0, 0x0

    throw v0

    :cond_13
    check-cast v0, Landroid/view/View;

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/ads/internal/overlay/zzq;->addView(Landroid/view/View;II)V

    if-nez p1, :cond_14

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgk:Z

    if-nez v0, :cond_14

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzmv()V

    :cond_14
    invoke-direct {p0, v4}, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzs(Z)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzbvz:Lcom/google/android/gms/internal/zzakl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzakl;->zzsf()Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    invoke-virtual {p0, v4, v0}, Lcom/google/android/gms/ads/internal/overlay/zzm;->zza(ZZ)V

    :cond_15
    return-void

    :cond_16
    move v0, v1

    goto/16 :goto_0
.end method


# virtual methods
.method public final close()V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgl:I

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public final onBackPressed()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgl:I

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v3}, Landroid/app/Activity;->requestWindowFeature(I)Z

    if-eqz p1, :cond_0

    const-string/jumbo v1, "com.google.android.gms.ads.internal.overlay.hasResumed"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :cond_0
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgh:Z

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzb(Landroid/content/Intent;)Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzp;

    const-string/jumbo v1, "Could not get info for ad overlay."

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzp;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/google/android/gms/ads/internal/overlay/zzp; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzp;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzafy;->zzcr(Ljava/lang/String;)V

    iput v4, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgl:I

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzasz:Lcom/google/android/gms/internal/zzajl;

    iget v0, v0, Lcom/google/android/gms/internal/zzajl;->zzdex:I

    const v1, 0x7270e0

    if-le v0, v1, :cond_3

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgl:I

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "shouldCallOnOverlayOpened"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgs:Z

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzchj:Lcom/google/android/gms/ads/internal/zzaq;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzchj:Lcom/google/android/gms/ads/internal/zzaq;

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/zzaq;->zzapn:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgi:Z

    :goto_1
    sget-object v0, Lcom/google/android/gms/internal/zzmn;->zzbmd:Lcom/google/android/gms/internal/zzmd;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzen()Lcom/google/android/gms/internal/zzml;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzml;->zzd(Lcom/google/android/gms/internal/zzmd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgi:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzchj:Lcom/google/android/gms/ads/internal/zzaq;

    iget v0, v0, Lcom/google/android/gms/ads/internal/zzaq;->zzaps:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzs;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzs;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzm;Lcom/google/android/gms/ads/internal/overlay/zzn;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzafw;->zzqt()Ljava/util/concurrent/Future;

    :cond_5
    if-nez p1, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzcha:Lcom/google/android/gms/ads/internal/overlay/zzw;

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgs:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzcha:Lcom/google/android/gms/ads/internal/overlay/zzw;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzw;->zzbz()V

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzchh:I

    if-eq v0, v3, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzcgz:Lcom/google/android/gms/internal/zzil;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzcgz:Lcom/google/android/gms/internal/zzil;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzil;->onAdClicked()V

    :cond_7
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzq;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzchi:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzasz:Lcom/google/android/gms/internal/zzajl;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzajl;->zzcp:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/ads/internal/overlay/zzq;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgj:Lcom/google/android/gms/ads/internal/overlay/zzq;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgj:Lcom/google/android/gms/ads/internal/overlay/zzq;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzq;->setId(I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzchh:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzp;

    const-string/jumbo v1, "Could not determine ad overlay type."

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzp;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgi:Z

    goto :goto_1

    :pswitch_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzt(Z)V

    goto/16 :goto_0

    :pswitch_1
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzr;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzchb:Lcom/google/android/gms/internal/zzakl;

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzr;-><init>(Lcom/google/android/gms/internal/zzakl;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgc:Lcom/google/android/gms/ads/internal/overlay/zzr;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzt(Z)V

    goto/16 :goto_0

    :pswitch_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzt(Z)V

    goto/16 :goto_0

    :pswitch_3
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgh:Z

    if-eqz v0, :cond_9

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgl:I

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    :cond_9
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzdx()Lcom/google/android/gms/ads/internal/overlay/zza;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzcgy:Lcom/google/android/gms/ads/internal/overlay/zzc;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzchg:Lcom/google/android/gms/ads/internal/overlay/zzag;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/ads/internal/overlay/zza;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/zzc;Lcom/google/android/gms/ads/internal/overlay/zzag;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgl:I

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_1
    .catch Lcom/google/android/gms/ads/internal/overlay/zzp; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzbvz:Lcom/google/android/gms/internal/zzakl;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgj:Lcom/google/android/gms/ads/internal/overlay/zzq;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzbvz:Lcom/google/android/gms/internal/zzakl;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/internal/overlay/zzq;->removeView(Landroid/view/View;)V

    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzms()V

    return-void
.end method

.method public final onPause()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzmo()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzcha:Lcom/google/android/gms/ads/internal/overlay/zzw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzcha:Lcom/google/android/gms/ads/internal/overlay/zzw;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzw;->onPause()V

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/zzmn;->zzboz:Lcom/google/android/gms/internal/zzmd;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzen()Lcom/google/android/gms/internal/zzml;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzml;->zzd(Lcom/google/android/gms/internal/zzmd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzbvz:Lcom/google/android/gms/internal/zzakl;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgc:Lcom/google/android/gms/ads/internal/overlay/zzr;

    if-nez v0, :cond_2

    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzec()Lcom/google/android/gms/internal/zzahl;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzbvz:Lcom/google/android/gms/internal/zzakl;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzahl;->zzj(Lcom/google/android/gms/internal/zzakl;)Z

    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzms()V

    return-void
.end method

.method public final onRestart()V
    .locals 0

    return-void
.end method

.method public final onResume()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzchh:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgh:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgl:I

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzcha:Lcom/google/android/gms/ads/internal/overlay/zzw;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzcha:Lcom/google/android/gms/ads/internal/overlay/zzw;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzw;->onResume()V

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/zzmn;->zzboz:Lcom/google/android/gms/internal/zzmd;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzen()Lcom/google/android/gms/internal/zzml;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzml;->zzd(Lcom/google/android/gms/internal/zzmd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzbvz:Lcom/google/android/gms/internal/zzakl;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzbvz:Lcom/google/android/gms/internal/zzakl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzakl;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzec()Lcom/google/android/gms/internal/zzahl;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzbvz:Lcom/google/android/gms/internal/zzakl;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzahl;->zzk(Lcom/google/android/gms/internal/zzakl;)Z

    :cond_2
    :goto_1
    return-void

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgh:Z

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "The webview does not exist. Ignoring action."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzafy;->zzcr(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string/jumbo v0, "com.google.android.gms.ads.internal.overlay.hasResumed"

    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgh:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public final onStart()V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzmn;->zzboz:Lcom/google/android/gms/internal/zzmd;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzen()Lcom/google/android/gms/internal/zzml;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzml;->zzd(Lcom/google/android/gms/internal/zzmd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzbvz:Lcom/google/android/gms/internal/zzakl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzbvz:Lcom/google/android/gms/internal/zzakl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzakl;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzec()Lcom/google/android/gms/internal/zzahl;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzbvz:Lcom/google/android/gms/internal/zzakl;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzahl;->zzk(Lcom/google/android/gms/internal/zzakl;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "The webview does not exist. Ignoring action."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzafy;->zzcr(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onStop()V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzmn;->zzboz:Lcom/google/android/gms/internal/zzmd;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzen()Lcom/google/android/gms/internal/zzml;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzml;->zzd(Lcom/google/android/gms/internal/zzmd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzbvz:Lcom/google/android/gms/internal/zzakl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgc:Lcom/google/android/gms/ads/internal/overlay/zzr;

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzec()Lcom/google/android/gms/internal/zzahl;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzbvz:Lcom/google/android/gms/internal/zzakl;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzahl;->zzj(Lcom/google/android/gms/internal/zzakl;)Z

    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzms()V

    return-void
.end method

.method public final setRequestedOrientation(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method

.method public final zza(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, -0x1

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgf:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgf:Landroid/widget/FrameLayout;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgf:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, v2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgf:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    iput-boolean v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgp:Z

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgg:Landroid/webkit/WebChromeClient$CustomViewCallback;

    iput-boolean v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcge:Z

    return-void
.end method

.method public final zza(ZZ)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/google/android/gms/internal/zzmn;->zzbjr:Lcom/google/android/gms/internal/zzmd;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzen()Lcom/google/android/gms/internal/zzml;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/zzml;->zzd(Lcom/google/android/gms/internal/zzmd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzchj:Lcom/google/android/gms/ads/internal/zzaq;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzchj:Lcom/google/android/gms/ads/internal/zzaq;

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/zzaq;->zzapu:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz v0, :cond_0

    new-instance v3, Lcom/google/android/gms/internal/zzwx;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzbvz:Lcom/google/android/gms/internal/zzakl;

    const-string/jumbo v5, "useCustomClose"

    invoke-direct {v3, v4, v5}, Lcom/google/android/gms/internal/zzwx;-><init>(Lcom/google/android/gms/internal/zzakl;Ljava/lang/String;)V

    const-string/jumbo v4, "Custom close has been disabled for interstitial ads in this ad slot."

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/zzwx;->zzbm(Ljava/lang/String;)V

    :cond_0
    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgd:Lcom/google/android/gms/ads/internal/overlay/zzae;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgd:Lcom/google/android/gms/ads/internal/overlay/zzae;

    if-eqz p2, :cond_3

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v3, p1, v0}, Lcom/google/android/gms/ads/internal/overlay/zzae;->zza(ZZ)V

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method public final zzay()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgp:Z

    return-void
.end method

.method public final zzk(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 4

    const/16 v3, 0x800

    const/16 v2, 0x400

    sget-object v0, Lcom/google/android/gms/internal/zzmn;->zzboy:Lcom/google/android/gms/internal/zzmd;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzen()Lcom/google/android/gms/internal/zzml;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzml;->zzd(Lcom/google/android/gms/internal/zzmd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/common/util/zzp;->isAtLeastN()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zzn;->zzx(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Configuration;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzea()Lcom/google/android/gms/internal/zzahg;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzahg;->zza(Landroid/app/Activity;Landroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->clearFlags(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->addFlags(I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method

.method public final zzmo()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcge:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->orientation:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zzm;->setRequestedOrientation(I)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgf:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgj:Lcom/google/android/gms/ads/internal/overlay/zzq;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgp:Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgf:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgf:Landroid/widget/FrameLayout;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgg:Landroid/webkit/WebChromeClient$CustomViewCallback;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgg:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgg:Landroid/webkit/WebChromeClient$CustomViewCallback;

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcge:Z

    return-void
.end method

.method public final zzmp()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgl:I

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final zzmq()Z
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgl:I

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzbvz:Lcom/google/android/gms/internal/zzakl;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzbvz:Lcom/google/android/gms/internal/zzakl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzakl;->zzsk()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzbvz:Lcom/google/android/gms/internal/zzakl;

    const-string/jumbo v2, "onbackblocked"

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/zzakl;->zza(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public final zzmr()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgj:Lcom/google/android/gms/ads/internal/overlay/zzq;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgd:Lcom/google/android/gms/ads/internal/overlay/zzae;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzq;->removeView(Landroid/view/View;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzs(Z)V

    return-void
.end method

.method final zzmt()V
    .locals 5

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgr:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgr:Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzbvz:Lcom/google/android/gms/internal/zzakl;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgj:Lcom/google/android/gms/ads/internal/overlay/zzq;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzbvz:Lcom/google/android/gms/internal/zzakl;

    if-nez v0, :cond_2

    throw v4

    :cond_2
    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/internal/overlay/zzq;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgc:Lcom/google/android/gms/ads/internal/overlay/zzr;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzbvz:Lcom/google/android/gms/internal/zzakl;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgc:Lcom/google/android/gms/ads/internal/overlay/zzr;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/overlay/zzr;->zzahy:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzakl;->setContext(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzbvz:Lcom/google/android/gms/internal/zzakl;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzakl;->zzab(Z)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgc:Lcom/google/android/gms/ads/internal/overlay/zzr;

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/zzr;->parent:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzbvz:Lcom/google/android/gms/internal/zzakl;

    if-nez v0, :cond_3

    throw v4

    :cond_3
    check-cast v0, Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgc:Lcom/google/android/gms/ads/internal/overlay/zzr;

    iget v2, v2, Lcom/google/android/gms/ads/internal/overlay/zzr;->index:I

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgc:Lcom/google/android/gms/ads/internal/overlay/zzr;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/zzr;->zzcgv:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iput-object v4, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgc:Lcom/google/android/gms/ads/internal/overlay/zzr;

    :cond_4
    :goto_1
    iput-object v4, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzbvz:Lcom/google/android/gms/internal/zzakl;

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzcha:Lcom/google/android/gms/ads/internal/overlay/zzw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzcha:Lcom/google/android/gms/ads/internal/overlay/zzw;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzw;->zzby()V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzbvz:Lcom/google/android/gms/internal/zzakl;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzakl;->setContext(Landroid/content/Context;)V

    goto :goto_1
.end method

.method public final zzmu()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgk:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgk:Z

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzmv()V

    :cond_0
    return-void
.end method

.method public final zzmw()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgj:Lcom/google/android/gms/ads/internal/overlay/zzq;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/ads/internal/overlay/zzq;->zzcgu:Z

    return-void
.end method

.method public final zzmx()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgm:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgo:Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgn:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zzahg;->zzdbz:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgn:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/google/android/gms/internal/zzahg;->zzdbz:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzcgn:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
