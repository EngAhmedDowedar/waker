.class Lcom/anansimobile/nge/NGGLSurfaceView$2;
.super Ljava/lang/Object;
.source "RootActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anansimobile/nge/NGGLSurfaceView;->_onTouchMoved(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/anansimobile/nge/NGGLSurfaceView;

.field final synthetic val$prevX:I

.field final synthetic val$prevY:I

.field final synthetic val$x:I

.field final synthetic val$y:I


# direct methods
.method constructor <init>(Lcom/anansimobile/nge/NGGLSurfaceView;IIII)V
    .locals 0
    .param p1, "this$0"    # Lcom/anansimobile/nge/NGGLSurfaceView;

    .prologue
    .line 1275
    iput-object p1, p0, Lcom/anansimobile/nge/NGGLSurfaceView$2;->this$0:Lcom/anansimobile/nge/NGGLSurfaceView;

    iput p2, p0, Lcom/anansimobile/nge/NGGLSurfaceView$2;->val$prevX:I

    iput p3, p0, Lcom/anansimobile/nge/NGGLSurfaceView$2;->val$prevY:I

    iput p4, p0, Lcom/anansimobile/nge/NGGLSurfaceView$2;->val$x:I

    iput p5, p0, Lcom/anansimobile/nge/NGGLSurfaceView$2;->val$y:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1279
    iget-object v0, p0, Lcom/anansimobile/nge/NGGLSurfaceView$2;->this$0:Lcom/anansimobile/nge/NGGLSurfaceView;

    iget v1, p0, Lcom/anansimobile/nge/NGGLSurfaceView$2;->val$prevX:I

    iget v2, p0, Lcom/anansimobile/nge/NGGLSurfaceView$2;->val$prevY:I

    iget v3, p0, Lcom/anansimobile/nge/NGGLSurfaceView$2;->val$x:I

    iget v4, p0, Lcom/anansimobile/nge/NGGLSurfaceView$2;->val$y:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/anansimobile/nge/NGGLSurfaceView;->access$100(Lcom/anansimobile/nge/NGGLSurfaceView;IIII)V

    .line 1280
    return-void
.end method
