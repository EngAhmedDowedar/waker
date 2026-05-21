.class public Lcom/anansimobile/nge/RootService$RootServiceBinder;
.super Landroid/os/Binder;
.source "RootService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anansimobile/nge/RootService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RootServiceBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/anansimobile/nge/RootService;


# direct methods
.method public constructor <init>(Lcom/anansimobile/nge/RootService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/anansimobile/nge/RootService;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/anansimobile/nge/RootService$RootServiceBinder;->this$0:Lcom/anansimobile/nge/RootService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public add(II)I
    .locals 1
    .param p1, "a"    # I
    .param p2, "b"    # I

    .prologue
    .line 75
    add-int v0, p1, p2

    return v0
.end method

.method public getService()Lcom/anansimobile/nge/RootService;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/anansimobile/nge/RootService$RootServiceBinder;->this$0:Lcom/anansimobile/nge/RootService;

    return-object v0
.end method
