.class Lcom/anansimobile/nge/NGGLSurfaceView;
.super Landroid/opengl/GLSurfaceView;
.source "RootActivity.java"


# instance fields
.field private mRenderer:Lcom/anansimobile/nge/NDKRenderer;

.field private touchPointer:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1226
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 1223
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anansimobile/nge/NGGLSurfaceView;->mRenderer:Lcom/anansimobile/nge/NDKRenderer;

    .line 1307
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/anansimobile/nge/NGGLSurfaceView;->touchPointer:Ljava/util/HashMap;

    .line 1228
    new-instance v0, Lcom/anansimobile/nge/NDKRenderer;

    invoke-direct {v0}, Lcom/anansimobile/nge/NDKRenderer;-><init>()V

    iput-object v0, p0, Lcom/anansimobile/nge/NGGLSurfaceView;->mRenderer:Lcom/anansimobile/nge/NDKRenderer;

    .line 1229
    iget-object v0, p0, Lcom/anansimobile/nge/NGGLSurfaceView;->mRenderer:Lcom/anansimobile/nge/NDKRenderer;

    invoke-virtual {p0, v0}, Lcom/anansimobile/nge/NGGLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 1242
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/anansimobile/nge/NGTextInputConn;->createInstance(Landroid/view/View;ZLandroid/content/Context;)Lcom/anansimobile/nge/NGTextInputConn;

    .line 1244
    return-void
.end method

.method private _onTouchBegin(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1264
    new-instance v0, Lcom/anansimobile/nge/NGGLSurfaceView$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/anansimobile/nge/NGGLSurfaceView$1;-><init>(Lcom/anansimobile/nge/NGGLSurfaceView;II)V

    invoke-virtual {p0, v0}, Lcom/anansimobile/nge/NGGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 1272
    return-void
.end method

.method private _onTouchCanceled()V
    .locals 1

    .prologue
    .line 1297
    new-instance v0, Lcom/anansimobile/nge/NGGLSurfaceView$4;

    invoke-direct {v0, p0}, Lcom/anansimobile/nge/NGGLSurfaceView$4;-><init>(Lcom/anansimobile/nge/NGGLSurfaceView;)V

    invoke-virtual {p0, v0}, Lcom/anansimobile/nge/NGGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 1305
    return-void
.end method

.method private _onTouchEnd(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1286
    new-instance v0, Lcom/anansimobile/nge/NGGLSurfaceView$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/anansimobile/nge/NGGLSurfaceView$3;-><init>(Lcom/anansimobile/nge/NGGLSurfaceView;II)V

    invoke-virtual {p0, v0}, Lcom/anansimobile/nge/NGGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 1294
    return-void
.end method

.method private _onTouchMoved(IIII)V
    .locals 6
    .param p1, "prevX"    # I
    .param p2, "prevY"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    .line 1275
    new-instance v0, Lcom/anansimobile/nge/NGGLSurfaceView$2;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/anansimobile/nge/NGGLSurfaceView$2;-><init>(Lcom/anansimobile/nge/NGGLSurfaceView;IIII)V

    invoke-virtual {p0, v0}, Lcom/anansimobile/nge/NGGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 1283
    return-void
.end method

.method static synthetic access$000(Lcom/anansimobile/nge/NGGLSurfaceView;II)V
    .locals 0
    .param p0, "x0"    # Lcom/anansimobile/nge/NGGLSurfaceView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 1221
    invoke-direct {p0, p1, p2}, Lcom/anansimobile/nge/NGGLSurfaceView;->onTouchBegin(II)V

    return-void
.end method

.method static synthetic access$100(Lcom/anansimobile/nge/NGGLSurfaceView;IIII)V
    .locals 0
    .param p0, "x0"    # Lcom/anansimobile/nge/NGGLSurfaceView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 1221
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/anansimobile/nge/NGGLSurfaceView;->onTouchMoved(IIII)V

    return-void
.end method

.method static synthetic access$200(Lcom/anansimobile/nge/NGGLSurfaceView;II)V
    .locals 0
    .param p0, "x0"    # Lcom/anansimobile/nge/NGGLSurfaceView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 1221
    invoke-direct {p0, p1, p2}, Lcom/anansimobile/nge/NGGLSurfaceView;->onTouchEnd(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/anansimobile/nge/NGGLSurfaceView;)V
    .locals 0
    .param p0, "x0"    # Lcom/anansimobile/nge/NGGLSurfaceView;

    .prologue
    .line 1221
    invoke-direct {p0}, Lcom/anansimobile/nge/NGGLSurfaceView;->onTouchCanceled()V

    return-void
.end method

.method private getTouchX(F)I
    .locals 2
    .param p1, "x"    # F

    .prologue
    .line 1315
    sget-object v1, Lcom/anansimobile/nge/NextGenEngine;->sMainActivity:Lcom/anansimobile/nge/RootActivity;

    invoke-virtual {v1}, Lcom/anansimobile/nge/RootActivity;->getDensity()F

    move-result v0

    .line 1316
    .local v0, "density":F
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 1317
    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v0, v1

    .line 1319
    rem-float v1, p1, v0

    sub-float v1, p1, v1

    float-to-int v1, v1

    .line 1321
    :goto_0
    return v1

    :cond_0
    float-to-int v1, p1

    goto :goto_0
.end method

.method private getTouchY(F)I
    .locals 2
    .param p1, "y"    # F

    .prologue
    .line 1331
    sget-object v1, Lcom/anansimobile/nge/NextGenEngine;->sMainActivity:Lcom/anansimobile/nge/RootActivity;

    invoke-virtual {v1}, Lcom/anansimobile/nge/RootActivity;->getDensity()F

    move-result v0

    .line 1332
    .local v0, "density":F
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 1333
    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v0, v1

    .line 1335
    rem-float v1, p1, v0

    sub-float v1, p1, v1

    float-to-int v1, v1

    .line 1337
    :goto_0
    return v1

    :cond_0
    float-to-int v1, p1

    goto :goto_0
.end method

.method private native onTouchBegin(II)V
.end method

.method private native onTouchCanceled()V
.end method

.method private native onTouchEnd(II)V
.end method

.method private native onTouchMoved(IIII)V
.end method


# virtual methods
.method public onCheckIsTextEditor()Z
    .locals 1

    .prologue
    .line 1255
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 1248
    invoke-static {}, Lcom/anansimobile/nge/NGTextInputConn;->getInstance()Lcom/anansimobile/nge/NGTextInputConn;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/anansimobile/nge/NGTextInputConn;->setEditInfo(Landroid/view/inputmethod/EditorInfo;)V

    .line 1249
    invoke-static {}, Lcom/anansimobile/nge/NGTextInputConn;->getInstance()Lcom/anansimobile/nge/NGTextInputConn;

    move-result-object v0

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 1344
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1391
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v2, 0x1

    return v2

    .line 1346
    :pswitch_1
    iget-object v2, p0, Lcom/anansimobile/nge/NGGLSurfaceView;->touchPointer:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 1347
    iget-object v2, p0, Lcom/anansimobile/nge/NGGLSurfaceView;->touchPointer:Ljava/util/HashMap;

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-direct {p0, v5}, Lcom/anansimobile/nge/NGGLSurfaceView;->getTouchX(F)I

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-direct {p0, v6}, Lcom/anansimobile/nge/NGGLSurfaceView;->getTouchY(F)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1348
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-direct {p0, v2}, Lcom/anansimobile/nge/NGGLSurfaceView;->getTouchX(F)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v3}, Lcom/anansimobile/nge/NGGLSurfaceView;->getTouchY(F)I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/anansimobile/nge/NGGLSurfaceView;->_onTouchBegin(II)V

    goto :goto_0

    .line 1351
    :pswitch_2
    iget-object v2, p0, Lcom/anansimobile/nge/NGGLSurfaceView;->touchPointer:Ljava/util/HashMap;

    .line 1352
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Landroid/graphics/Point;

    .line 1354
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    invoke-direct {p0, v5}, Lcom/anansimobile/nge/NGGLSurfaceView;->getTouchX(F)I

    move-result v5

    .line 1355
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    invoke-direct {p0, v6}, Lcom/anansimobile/nge/NGGLSurfaceView;->getTouchY(F)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    .line 1351
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1358
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-direct {p0, v2}, Lcom/anansimobile/nge/NGGLSurfaceView;->getTouchX(F)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-direct {p0, v3}, Lcom/anansimobile/nge/NGGLSurfaceView;->getTouchY(F)I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/anansimobile/nge/NGGLSurfaceView;->_onTouchBegin(II)V

    goto/16 :goto_0

    .line 1362
    :pswitch_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1364
    iget-object v2, p0, Lcom/anansimobile/nge/NGGLSurfaceView;->touchPointer:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    .line 1365
    .local v1, "pt":Landroid/graphics/Point;
    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v3, v1, Landroid/graphics/Point;->y:I

    .line 1370
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-direct {p0, v4}, Lcom/anansimobile/nge/NGGLSurfaceView;->getTouchX(F)I

    move-result v4

    .line 1371
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-direct {p0, v5}, Lcom/anansimobile/nge/NGGLSurfaceView;->getTouchY(F)I

    move-result v5

    .line 1365
    invoke-direct {p0, v2, v3, v4, v5}, Lcom/anansimobile/nge/NGGLSurfaceView;->_onTouchMoved(IIII)V

    .line 1373
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-direct {p0, v2}, Lcom/anansimobile/nge/NGGLSurfaceView;->getTouchX(F)I

    move-result v2

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 1374
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-direct {p0, v2}, Lcom/anansimobile/nge/NGGLSurfaceView;->getTouchY(F)I

    move-result v2

    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 1362
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1378
    .end local v0    # "i":I
    .end local v1    # "pt":Landroid/graphics/Point;
    :pswitch_4
    iget-object v2, p0, Lcom/anansimobile/nge/NGGLSurfaceView;->touchPointer:Ljava/util/HashMap;

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1379
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-direct {p0, v2}, Lcom/anansimobile/nge/NGGLSurfaceView;->getTouchX(F)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v3}, Lcom/anansimobile/nge/NGGLSurfaceView;->getTouchY(F)I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/anansimobile/nge/NGGLSurfaceView;->_onTouchEnd(II)V

    goto/16 :goto_0

    .line 1382
    :pswitch_5
    iget-object v2, p0, Lcom/anansimobile/nge/NGGLSurfaceView;->touchPointer:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1383
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-direct {p0, v2}, Lcom/anansimobile/nge/NGGLSurfaceView;->getTouchX(F)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-direct {p0, v3}, Lcom/anansimobile/nge/NGGLSurfaceView;->getTouchY(F)I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/anansimobile/nge/NGGLSurfaceView;->_onTouchEnd(II)V

    goto/16 :goto_0

    .line 1386
    :pswitch_6
    invoke-direct {p0}, Lcom/anansimobile/nge/NGGLSurfaceView;->_onTouchCanceled()V

    .line 1387
    iget-object v2, p0, Lcom/anansimobile/nge/NGGLSurfaceView;->touchPointer:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    goto/16 :goto_0

    .line 1344
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method
