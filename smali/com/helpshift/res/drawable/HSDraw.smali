.class public final Lcom/helpshift/res/drawable/HSDraw;
.super Ljava/lang/Object;
.source "HSDraw.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBitmapDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 5
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "imageString"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 25
    invoke-static {p1, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 26
    .local v2, "decodedByte":[B
    array-length v3, v2

    invoke-static {v2, v4, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 27
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 28
    .local v1, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    return-object v1
.end method

.method public static getBitmapDrawable(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 5
    .param p0, "imageString"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 16
    invoke-static {p0, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 17
    .local v2, "decodedByte":[B
    array-length v3, v2

    invoke-static {v2, v4, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 18
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 19
    .local v1, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    return-object v1
.end method

.method public static getNinePatchDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/NinePatchDrawable;
    .locals 7
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "resId"    # I

    .prologue
    .line 45
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 46
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v3

    .line 47
    .local v3, "chunk":[B
    invoke-static {v3}, Lcom/helpshift/res/drawable/NinePatchChunk;->deserialize([B)Lcom/helpshift/res/drawable/NinePatchChunk;

    move-result-object v6

    .line 48
    .local v6, "npc":Lcom/helpshift/res/drawable/NinePatchChunk;
    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v4, v6, Lcom/helpshift/res/drawable/NinePatchChunk;->mPaddings:Landroid/graphics/Rect;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    .line 53
    .local v0, "npDrawable":Landroid/graphics/drawable/NinePatchDrawable;
    return-object v0
.end method

.method public static getNinePatchDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/NinePatchDrawable;
    .locals 8
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "imageString"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 32
    invoke-static {p1, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v6

    .line 33
    .local v6, "decodedByte":[B
    array-length v1, v6

    invoke-static {v6, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 34
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v3

    .line 35
    .local v3, "chunk":[B
    invoke-static {v3}, Lcom/helpshift/res/drawable/NinePatchChunk;->deserialize([B)Lcom/helpshift/res/drawable/NinePatchChunk;

    move-result-object v7

    .line 36
    .local v7, "npc":Lcom/helpshift/res/drawable/NinePatchChunk;
    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v4, v7, Lcom/helpshift/res/drawable/NinePatchChunk;->mPaddings:Landroid/graphics/Rect;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    .line 41
    .local v0, "npDrawable":Landroid/graphics/drawable/NinePatchDrawable;
    return-object v0
.end method

.method public static getStateDrawable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/StateListDrawable;
    .locals 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "normal"    # Ljava/lang/String;
    .param p2, "pressed"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 57
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 58
    .local v0, "states":Landroid/graphics/drawable/StateListDrawable;
    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x10100a7

    aput v2, v1, v3

    invoke-static {p0, p2}, Lcom/helpshift/res/drawable/HSDraw;->getNinePatchDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/NinePatchDrawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 60
    new-array v1, v3, [I

    invoke-static {p0, p1}, Lcom/helpshift/res/drawable/HSDraw;->getNinePatchDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/NinePatchDrawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 61
    return-object v0
.end method
