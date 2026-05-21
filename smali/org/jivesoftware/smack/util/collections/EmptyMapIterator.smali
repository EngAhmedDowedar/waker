.class public Lorg/jivesoftware/smack/util/collections/EmptyMapIterator;
.super Lorg/jivesoftware/smack/util/collections/AbstractEmptyIterator;
.source "EmptyMapIterator.java"

# interfaces
.implements Lorg/jivesoftware/smack/util/collections/MapIterator;
.implements Lorg/jivesoftware/smack/util/collections/ResettableIterator;


# static fields
.field public static final INSTANCE:Lorg/jivesoftware/smack/util/collections/MapIterator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lorg/jivesoftware/smack/util/collections/EmptyMapIterator;

    invoke-direct {v0}, Lorg/jivesoftware/smack/util/collections/EmptyMapIterator;-><init>()V

    sput-object v0, Lorg/jivesoftware/smack/util/collections/EmptyMapIterator;->INSTANCE:Lorg/jivesoftware/smack/util/collections/MapIterator;

    .line 26
    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lorg/jivesoftware/smack/util/collections/AbstractEmptyIterator;-><init>()V

    .line 40
    return-void
.end method
