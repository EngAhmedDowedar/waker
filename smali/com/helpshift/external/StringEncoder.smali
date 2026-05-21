.class public interface abstract Lcom/helpshift/external/StringEncoder;
.super Ljava/lang/Object;
.source "StringEncoder.java"

# interfaces
.implements Lcom/helpshift/external/Encoder;


# virtual methods
.method public abstract encode(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helpshift/external/EncoderException;
        }
    .end annotation
.end method
