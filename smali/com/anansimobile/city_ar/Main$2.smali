.class Lcom/anansimobile/city_ar/Main$2;
.super Ljava/lang/Object;
.source "Main.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anansimobile/city_ar/Main;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/anansimobile/city_ar/Main;


# direct methods
.method constructor <init>(Lcom/anansimobile/city_ar/Main;)V
    .locals 0
    .param p1, "this$0"    # Lcom/anansimobile/city_ar/Main;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/anansimobile/city_ar/Main$2;->this$0:Lcom/anansimobile/city_ar/Main;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 165
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 166
    return-void
.end method
