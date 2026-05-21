.class public Lorg/jivesoftware/smack/util/collections/EmptyIterator;
.super Lorg/jivesoftware/smack/util/collections/AbstractEmptyIterator;
.source "EmptyIterator.java"

# interfaces
.implements Lorg/jivesoftware/smack/util/collections/ResettableIterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/jivesoftware/smack/util/collections/AbstractEmptyIterator",
        "<TE;>;",
        "Lorg/jivesoftware/smack/util/collections/ResettableIterator",
        "<TE;>;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Ljava/util/Iterator;

.field public static final RESETTABLE_INSTANCE:Lorg/jivesoftware/smack/util/collections/ResettableIterator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lorg/jivesoftware/smack/util/collections/EmptyIterator;

    invoke-direct {v0}, Lorg/jivesoftware/smack/util/collections/EmptyIterator;-><init>()V

    sput-object v0, Lorg/jivesoftware/smack/util/collections/EmptyIterator;->RESETTABLE_INSTANCE:Lorg/jivesoftware/smack/util/collections/ResettableIterator;

    .line 45
    sget-object v0, Lorg/jivesoftware/smack/util/collections/EmptyIterator;->RESETTABLE_INSTANCE:Lorg/jivesoftware/smack/util/collections/ResettableIterator;

    sput-object v0, Lorg/jivesoftware/smack/util/collections/EmptyIterator;->INSTANCE:Ljava/util/Iterator;

    .line 32
    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 55
    .local p0, "this":Lorg/jivesoftware/smack/util/collections/EmptyIterator;, "Lorg/jivesoftware/smack/util/collections/EmptyIterator<TE;>;"
    invoke-direct {p0}, Lorg/jivesoftware/smack/util/collections/AbstractEmptyIterator;-><init>()V

    .line 56
    return-void
.end method

.method public static getInstance()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 48
    sget-object v0, Lorg/jivesoftware/smack/util/collections/EmptyIterator;->INSTANCE:Ljava/util/Iterator;

    return-object v0
.end method
