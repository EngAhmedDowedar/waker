.class Lcom/anansimobile/nge/NDKRenderer;
.super Ljava/lang/Object;
.source "RootActivity.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# static fields
.field private static final frameInterval:J = 0x21L

.field private static final framesPerSecond:J = 0x1eL


# instance fields
.field private mHeight:I

.field private mOrientationChanged:Z

.field private mWidth:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 1395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1413
    iput v0, p0, Lcom/anansimobile/nge/NDKRenderer;->mWidth:I

    .line 1414
    iput v0, p0, Lcom/anansimobile/nge/NDKRenderer;->mHeight:I

    .line 1416
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anansimobile/nge/NDKRenderer;->mOrientationChanged:Z

    return-void
.end method

.method private native nativeDone()V
.end method

.method private native nativeInit()V
.end method

.method private native nativeRender()V
.end method

.method private native nativeResize(II)V
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 10
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const-wide/16 v8, 0x21

    const/4 v6, -0x1

    .line 1435
    iget v1, p0, Lcom/anansimobile/nge/NDKRenderer;->mWidth:I

    if-eq v1, v6, :cond_0

    iget v1, p0, Lcom/anansimobile/nge/NDKRenderer;->mHeight:I

    if-ne v1, v6, :cond_1

    .line 1461
    :cond_0
    :goto_0
    return-void

    .line 1440
    :cond_1
    iget-boolean v1, p0, Lcom/anansimobile/nge/NDKRenderer;->mOrientationChanged:Z

    if-nez v1, :cond_0

    .line 1445
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1449
    .local v4, "frameStartAt":J
    invoke-direct {p0}, Lcom/anansimobile/nge/NDKRenderer;->nativeRender()V

    .line 1451
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1453
    .local v2, "frameEndAt":J
    sub-long v6, v2, v4

    cmp-long v1, v8, v6

    if-lez v1, :cond_0

    .line 1455
    sub-long v6, v2, v4

    sub-long v6, v8, v6

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1456
    :catch_0
    move-exception v0

    .line 1457
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v1, "sleep failed, msg: %s."

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v1, v6}, Lcom/anansimobile/nge/NextGenEngine;->nge_logf(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 3
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 1419
    iget v0, p0, Lcom/anansimobile/nge/NDKRenderer;->mWidth:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/anansimobile/nge/NDKRenderer;->mHeight:I

    if-ne v0, v1, :cond_0

    .line 1420
    iput p2, p0, Lcom/anansimobile/nge/NDKRenderer;->mWidth:I

    .line 1421
    iput p3, p0, Lcom/anansimobile/nge/NDKRenderer;->mHeight:I

    .line 1422
    iput-boolean v2, p0, Lcom/anansimobile/nge/NDKRenderer;->mOrientationChanged:Z

    .line 1423
    iget v0, p0, Lcom/anansimobile/nge/NDKRenderer;->mWidth:I

    iget v1, p0, Lcom/anansimobile/nge/NDKRenderer;->mHeight:I

    invoke-direct {p0, v0, v1}, Lcom/anansimobile/nge/NDKRenderer;->nativeResize(II)V

    .line 1431
    :goto_0
    return-void

    .line 1425
    :cond_0
    iget v0, p0, Lcom/anansimobile/nge/NDKRenderer;->mWidth:I

    if-eq v0, p2, :cond_1

    iget v0, p0, Lcom/anansimobile/nge/NDKRenderer;->mHeight:I

    if-eq v0, p3, :cond_1

    .line 1426
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anansimobile/nge/NDKRenderer;->mOrientationChanged:Z

    goto :goto_0

    .line 1428
    :cond_1
    iput-boolean v2, p0, Lcom/anansimobile/nge/NDKRenderer;->mOrientationChanged:Z

    goto :goto_0
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 1405
    invoke-direct {p0}, Lcom/anansimobile/nge/NDKRenderer;->nativeInit()V

    .line 1406
    sput-object p1, Lcom/anansimobile/nge/NextGenEngine;->glInstance:Ljavax/microedition/khronos/opengles/GL10;

    .line 1407
    return-void
.end method
