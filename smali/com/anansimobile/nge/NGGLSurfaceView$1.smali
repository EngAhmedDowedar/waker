.class Lcom/anansimobile/nge/NGGLSurfaceView$1;
.super Ljava/lang/Object;
.source "RootActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anansimobile/nge/NGGLSurfaceView;->_onTouchBegin(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/anansimobile/nge/NGGLSurfaceView;

.field final synthetic val$x:I

.field final synthetic val$y:I


# direct methods
.method constructor <init>(Lcom/anansimobile/nge/NGGLSurfaceView;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/anansimobile/nge/NGGLSurfaceView;

    .prologue
    .line 1264
    iput-object p1, p0, Lcom/anansimobile/nge/NGGLSurfaceView$1;->this$0:Lcom/anansimobile/nge/NGGLSurfaceView;

    iput p2, p0, Lcom/anansimobile/nge/NGGLSurfaceView$1;->val$x:I

    iput p3, p0, Lcom/anansimobile/nge/NGGLSurfaceView$1;->val$y:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1268
    iget-object v0, p0, Lcom/anansimobile/nge/NGGLSurfaceView$1;->this$0:Lcom/anansimobile/nge/NGGLSurfaceView;

    iget v1, p0, Lcom/anansimobile/nge/NGGLSurfaceView$1;->val$x:I

    iget v2, p0, Lcom/anansimobile/nge/NGGLSurfaceView$1;->val$y:I

    invoke-static {v0, v1, v2}, Lcom/anansimobile/nge/NGGLSurfaceView;->access$000(Lcom/anansimobile/nge/NGGLSurfaceView;II)V

    .line 1269
    return-void
.end method
