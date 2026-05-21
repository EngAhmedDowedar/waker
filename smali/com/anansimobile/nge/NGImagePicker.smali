.class public Lcom/anansimobile/nge/NGImagePicker;
.super Ljava/lang/Object;
.source "NGImagePicker.java"


# static fields
.field private static final PHOTO_DIR:Ljava/io/File;

.field public static final REQ_PIC_FROM_ALBUM:I = 0xbb9

.field public static final REQ_PIC_FROM_CAMERA:I = 0xbba

.field public static final REQ_PIC_FROM_EDITOR:I = 0xbbb

.field private static editable:Z

.field private static nListener:I

.field private static tempFile:Ljava/io/File;


# instance fields
.field private mCurrentPhotoFile:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 26
    const/4 v0, 0x0

    sput v0, Lcom/anansimobile/nge/NGImagePicker;->nListener:I

    .line 27
    const/4 v0, 0x1

    sput-boolean v0, Lcom/anansimobile/nge/NGImagePicker;->editable:Z

    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/anansimobile/nge/NGImagePicker;->tempFile:Ljava/io/File;

    .line 138
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/DCIM/Camera"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/anansimobile/nge/NGImagePicker;->PHOTO_DIR:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CameraPermissionGranted()V
    .locals 0

    .prologue
    .line 116
    invoke-static {}, Lcom/anansimobile/nge/NGImagePicker;->TryOpenCamera()V

    .line 117
    return-void
.end method

.method public static TryOpenCamera()V
    .locals 5

    .prologue
    .line 105
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 107
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "output"

    sget-object v3, Lcom/anansimobile/nge/NGImagePicker;->tempFile:Ljava/io/File;

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 109
    :try_start_0
    sget-object v2, Lcom/anansimobile/nge/NextGenEngine;->sMainActivity:Lcom/anansimobile/nge/RootActivity;

    const/16 v3, 0xbba

    invoke-virtual {v2, v1, v3}, Lcom/anansimobile/nge/RootActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :goto_0
    return-void

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    sget-object v2, Lcom/anansimobile/nge/NextGenEngine;->sMainActivity:Lcom/anansimobile/nge/RootActivity;

    const-string/jumbo v3, "can not open camera!"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/anansimobile/nge/RootActivity;->ToastMessage(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private static native bitmapDataDidLoad(I[BIII)V
.end method

.method private static native bitmapDataDidScaled(I[BIII)V
.end method

.method private static native bitmapDidLoad(ILandroid/graphics/Bitmap;)V
.end method

.method private static native bitmapDidScaled(ILandroid/graphics/Bitmap;)V
.end method

.method public static editPicture(Landroid/content/Intent;I)V
    .locals 4
    .param p0, "data"    # Landroid/content/Intent;
    .param p1, "src"    # I

    .prologue
    .line 120
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.EDIT"

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 122
    .local v1, "editIntent":Landroid/content/Intent;
    :try_start_0
    sget-object v2, Lcom/anansimobile/nge/NextGenEngine;->sMainActivity:Lcom/anansimobile/nge/RootActivity;

    const/16 v3, 0xbbb

    invoke-virtual {v2, v1, v3}, Lcom/anansimobile/nge/RootActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :goto_0
    return-void

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v2, "can not edit picture data, use it directly!~"

    invoke-static {v2}, Lcom/anansimobile/nge/NextGenEngine;->nge_log(Ljava/lang/String;)V

    .line 125
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 127
    :pswitch_0
    invoke-static {p0}, Lcom/anansimobile/nge/NGImagePicker;->onPicFromAlbum(Landroid/content/Intent;)V

    goto :goto_0

    .line 130
    :pswitch_1
    invoke-static {p0}, Lcom/anansimobile/nge/NGImagePicker;->onPicFromCamera(Landroid/content/Intent;)V

    goto :goto_0

    .line 125
    nop

    :pswitch_data_0
    .packed-switch 0xbb9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getPictureFromAlbum(I)V
    .locals 8
    .param p0, "ptr"    # I

    .prologue
    .line 37
    sput p0, Lcom/anansimobile/nge/NGImagePicker;->nListener:I

    .line 39
    sget-object v5, Lcom/anansimobile/nge/NGImagePicker;->tempFile:Ljava/io/File;

    if-nez v5, :cond_0

    .line 40
    new-instance v5, Ljava/io/File;

    invoke-static {}, Lcom/anansimobile/nge/NGDevice;->getExternalDocumentRoot()Ljava/io/File;

    move-result-object v6

    const-string/jumbo v7, "__tempCapturePicture.jpg"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v5, Lcom/anansimobile/nge/NGImagePicker;->tempFile:Ljava/io/File;

    .line 43
    :cond_0
    invoke-static {}, Lcom/anansimobile/nge/NGDevice;->getScreenWidth()I

    move-result v4

    .line 44
    .local v4, "sw":I
    invoke-static {}, Lcom/anansimobile/nge/NGDevice;->getScreenHeight()I

    move-result v3

    .line 45
    .local v3, "sh":I
    if-ge v4, v3, :cond_1

    move v0, v4

    .line 47
    .local v0, "crop":I
    :goto_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 49
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v5, "image/*"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    const-string/jumbo v5, "android.intent.action.GET_CONTENT"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    :try_start_0
    sget-object v5, Lcom/anansimobile/nge/NextGenEngine;->sMainActivity:Lcom/anansimobile/nge/RootActivity;

    const/16 v6, 0xbb9

    invoke-virtual {v5, v2, v6}, Lcom/anansimobile/nge/RootActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_1
    return-void

    .end local v0    # "crop":I
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    move v0, v3

    .line 45
    goto :goto_0

    .line 63
    .restart local v0    # "crop":I
    .restart local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 64
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    sget-object v5, Lcom/anansimobile/nge/NextGenEngine;->sMainActivity:Lcom/anansimobile/nge/RootActivity;

    const-string/jumbo v6, "can not open album!"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/anansimobile/nge/RootActivity;->ToastMessage(Ljava/lang/String;I)V

    goto :goto_1
.end method

.method public static getPictureFromCamera(I)V
    .locals 7
    .param p0, "ptr"    # I

    .prologue
    .line 70
    sput p0, Lcom/anansimobile/nge/NGImagePicker;->nListener:I

    .line 72
    sget-object v4, Lcom/anansimobile/nge/NGImagePicker;->tempFile:Ljava/io/File;

    if-nez v4, :cond_0

    .line 73
    new-instance v4, Ljava/io/File;

    invoke-static {}, Lcom/anansimobile/nge/NGDevice;->getExternalDocumentRoot()Ljava/io/File;

    move-result-object v5

    const-string/jumbo v6, "__tempCapturePicture.jpg"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v4, Lcom/anansimobile/nge/NGImagePicker;->tempFile:Ljava/io/File;

    .line 76
    :cond_0
    invoke-static {}, Lcom/anansimobile/nge/NGDevice;->getScreenWidth()I

    move-result v3

    .line 77
    .local v3, "sw":I
    invoke-static {}, Lcom/anansimobile/nge/NGDevice;->getScreenHeight()I

    move-result v2

    .line 78
    .local v2, "sh":I
    if-ge v3, v2, :cond_2

    move v0, v3

    .line 92
    .local v0, "crop":I
    :goto_0
    sget-object v4, Lcom/anansimobile/nge/NextGenEngine;->sMainActivity:Lcom/anansimobile/nge/RootActivity;

    const-string/jumbo v5, "android.permission.CAMERA"

    const-string/jumbo v6, "Please ALLOW the CAMERA permission, or you can\'t set your profile picture."

    invoke-virtual {v4, v5, v6}, Lcom/anansimobile/nge/RootActivity;->TryOpenPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 93
    .local v1, "isOpen":Z
    if-eqz v1, :cond_1

    .line 94
    invoke-static {}, Lcom/anansimobile/nge/NGImagePicker;->TryOpenCamera()V

    .line 102
    :cond_1
    return-void

    .end local v0    # "crop":I
    .end local v1    # "isOpen":Z
    :cond_2
    move v0, v2

    .line 78
    goto :goto_0
.end method

.method public static isEditable()Z
    .locals 1

    .prologue
    .line 32
    sget-boolean v0, Lcom/anansimobile/nge/NGImagePicker;->editable:Z

    return v0
.end method

.method private static limitSrcPicSize(IIII)I
    .locals 1
    .param p0, "sw"    # I
    .param p1, "sh"    # I
    .param p2, "lw"    # I
    .param p3, "lh"    # I

    .prologue
    .line 358
    if-gt p0, p2, :cond_1

    if-gt p1, p3, :cond_1

    .line 359
    const/4 v0, 0x1

    .line 370
    :cond_0
    return v0

    .line 362
    :cond_1
    const/4 v0, 0x1

    .line 363
    .local v0, "limit":I
    :goto_0
    if-gt p0, p2, :cond_2

    if-le p1, p3, :cond_0

    .line 364
    :cond_2
    shr-int/lit8 p0, p0, 0x1

    .line 365
    shr-int/lit8 p1, p1, 0x1

    .line 367
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static limitSrcPicSize(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 11
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "lw"    # I
    .param p2, "lh"    # I

    .prologue
    const/4 v1, 0x0

    .line 340
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 341
    .local v3, "sw":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 343
    .local v4, "sh":I
    if-gt v3, p1, :cond_0

    if-gt v4, p2, :cond_0

    .line 354
    .end local p0    # "src":Landroid/graphics/Bitmap;
    :goto_0
    return-object p0

    .line 347
    .restart local p0    # "src":Landroid/graphics/Bitmap;
    :cond_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 348
    .local v5, "m":Landroid/graphics/Matrix;
    int-to-float v0, p1

    int-to-float v2, v3

    div-float v8, v0, v2

    .line 349
    .local v8, "sW":F
    int-to-float v0, p2

    int-to-float v2, v4

    div-float v7, v0, v2

    .line 350
    .local v7, "sH":F
    cmpl-float v0, v8, v7

    if-lez v0, :cond_1

    move v9, v7

    .line 351
    .local v9, "scale":F
    :goto_1
    invoke-virtual {v5, v9, v9}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 353
    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    .local v10, "scaledBitmap":Landroid/graphics/Bitmap;
    move-object p0, v10

    .line 354
    goto :goto_0

    .end local v9    # "scale":F
    .end local v10    # "scaledBitmap":Landroid/graphics/Bitmap;
    :cond_1
    move v9, v8

    .line 350
    goto :goto_1
.end method

.method private static onBitmapDidLoad(Landroid/graphics/Bitmap;)V
    .locals 6
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/16 v4, 0x400

    const/4 v3, -0x1

    const/4 v5, 0x0

    .line 279
    if-nez p0, :cond_0

    .line 280
    sget-object v3, Lcom/anansimobile/nge/NextGenEngine;->sMainActivity:Lcom/anansimobile/nge/RootActivity;

    const-string/jumbo v4, "load picture failed!"

    invoke-virtual {v3, v4, v5}, Lcom/anansimobile/nge/RootActivity;->ToastMessage(Ljava/lang/String;I)V

    .line 301
    :goto_0
    return-void

    .line 284
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 285
    .local v2, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 287
    .local v0, "height":I
    if-eq v2, v3, :cond_2

    if-eq v0, v3, :cond_2

    .line 289
    invoke-static {p0, v4, v4}, Lcom/anansimobile/nge/NGImagePicker;->limitSrcPicSize(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 291
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 292
    .local v1, "scaledBitmap":Landroid/graphics/Bitmap;
    if-nez v1, :cond_1

    .line 293
    sget-object v3, Lcom/anansimobile/nge/NextGenEngine;->sMainActivity:Lcom/anansimobile/nge/RootActivity;

    const-string/jumbo v4, "can not load picture!"

    invoke-virtual {v3, v4, v5}, Lcom/anansimobile/nge/RootActivity;->ToastMessage(Ljava/lang/String;I)V

    .line 296
    :cond_1
    sget v3, Lcom/anansimobile/nge/NGImagePicker;->nListener:I

    invoke-static {v3, v1}, Lcom/anansimobile/nge/NGImagePicker;->bitmapDidLoad(ILandroid/graphics/Bitmap;)V

    .line 297
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 299
    .end local v1    # "scaledBitmap":Landroid/graphics/Bitmap;
    :cond_2
    sget-object v3, Lcom/anansimobile/nge/NextGenEngine;->sMainActivity:Lcom/anansimobile/nge/RootActivity;

    const-string/jumbo v4, "can not load picture!"

    invoke-virtual {v3, v4, v5}, Lcom/anansimobile/nge/RootActivity;->ToastMessage(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private static onBitmapDidLoad(Ljava/lang/String;)V
    .locals 11
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v8, -0x1

    const/4 v10, 0x0

    .line 305
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 306
    .local v0, "bitmapStream":Ljava/io/InputStream;
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v4

    .line 307
    .local v4, "len":I
    new-array v1, v4, [B

    .line 308
    .local v1, "bytedata":[B
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    .line 309
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 311
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 312
    .local v5, "op":Landroid/graphics/BitmapFactory$Options;
    const/4 v7, 0x1

    iput-boolean v7, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 313
    const/4 v7, 0x0

    invoke-static {v1, v7, v4, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 314
    iget v6, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 315
    .local v6, "width":I
    iget v3, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 317
    .local v3, "height":I
    if-eq v6, v8, :cond_0

    if-eq v3, v8, :cond_0

    .line 318
    sget v7, Lcom/anansimobile/nge/NGImagePicker;->nListener:I

    invoke-static {v7, v1, v4, v6, v3}, Lcom/anansimobile/nge/NGImagePicker;->bitmapDataDidLoad(I[BIII)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 329
    .end local v0    # "bitmapStream":Ljava/io/InputStream;
    .end local v1    # "bytedata":[B
    .end local v3    # "height":I
    .end local v4    # "len":I
    .end local v5    # "op":Landroid/graphics/BitmapFactory$Options;
    .end local v6    # "width":I
    :goto_0
    sput v10, Lcom/anansimobile/nge/NGImagePicker;->nListener:I

    .line 330
    return-void

    .line 320
    .restart local v0    # "bitmapStream":Ljava/io/InputStream;
    .restart local v1    # "bytedata":[B
    .restart local v3    # "height":I
    .restart local v4    # "len":I
    .restart local v5    # "op":Landroid/graphics/BitmapFactory$Options;
    .restart local v6    # "width":I
    :cond_0
    :try_start_1
    sget-object v7, Lcom/anansimobile/nge/NextGenEngine;->sMainActivity:Lcom/anansimobile/nge/RootActivity;

    const-string/jumbo v8, "can not load picture!"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/anansimobile/nge/RootActivity;->ToastMessage(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 323
    .end local v0    # "bitmapStream":Ljava/io/InputStream;
    .end local v1    # "bytedata":[B
    .end local v3    # "height":I
    .end local v4    # "len":I
    .end local v5    # "op":Landroid/graphics/BitmapFactory$Options;
    .end local v6    # "width":I
    :catch_0
    move-exception v2

    .line 324
    .local v2, "e":Ljava/io/FileNotFoundException;
    sget-object v7, Lcom/anansimobile/nge/NextGenEngine;->sMainActivity:Lcom/anansimobile/nge/RootActivity;

    const-string/jumbo v8, "load picture failed!"

    invoke-virtual {v7, v8, v10}, Lcom/anansimobile/nge/RootActivity;->ToastMessage(Ljava/lang/String;I)V

    goto :goto_0

    .line 325
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 326
    .local v2, "e":Ljava/io/IOException;
    sget-object v7, Lcom/anansimobile/nge/NextGenEngine;->sMainActivity:Lcom/anansimobile/nge/RootActivity;

    const-string/jumbo v8, "load picture failed!"

    invoke-virtual {v7, v8, v10}, Lcom/anansimobile/nge/RootActivity;->ToastMessage(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static onPicFromAlbum(Landroid/content/Intent;)V
    .locals 5
    .param p0, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 220
    const/4 v0, 0x0

    .line 226
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    sget-object v2, Lcom/anansimobile/nge/NextGenEngine;->sMainActivity:Lcom/anansimobile/nge/RootActivity;

    invoke-virtual {v2}, Lcom/anansimobile/nge/RootActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 234
    invoke-static {v0}, Lcom/anansimobile/nge/NGImagePicker;->onBitmapDidLoad(Landroid/graphics/Bitmap;)V

    .line 236
    sput v4, Lcom/anansimobile/nge/NGImagePicker;->nListener:I

    .line 276
    :goto_0
    return-void

    .line 227
    :catch_0
    move-exception v1

    .line 228
    .local v1, "e":Ljava/io/FileNotFoundException;
    sget-object v2, Lcom/anansimobile/nge/NextGenEngine;->sMainActivity:Lcom/anansimobile/nge/RootActivity;

    const-string/jumbo v3, "load picture failed!"

    invoke-virtual {v2, v3, v4}, Lcom/anansimobile/nge/RootActivity;->ToastMessage(Ljava/lang/String;I)V

    goto :goto_0

    .line 230
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 231
    .local v1, "e":Ljava/io/IOException;
    sget-object v2, Lcom/anansimobile/nge/NextGenEngine;->sMainActivity:Lcom/anansimobile/nge/RootActivity;

    const-string/jumbo v3, "load picture failed!"

    invoke-virtual {v2, v3, v4}, Lcom/anansimobile/nge/RootActivity;->ToastMessage(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static onPicFromCamera(Landroid/content/Intent;)V
    .locals 2
    .param p0, "data"    # Landroid/content/Intent;

    .prologue
    .line 213
    sget-object v1, Lcom/anansimobile/nge/NGImagePicker;->tempFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 214
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/anansimobile/nge/NGImagePicker;->onBitmapDidLoad(Landroid/graphics/Bitmap;)V

    .line 216
    const/4 v1, 0x0

    sput v1, Lcom/anansimobile/nge/NGImagePicker;->nListener:I

    .line 217
    return-void
.end method

.method public static onPicFromEditor(Landroid/content/Intent;)V
    .locals 0
    .param p0, "data"    # Landroid/content/Intent;

    .prologue
    .line 208
    invoke-static {p0}, Lcom/anansimobile/nge/NGImagePicker;->onPicFromAlbum(Landroid/content/Intent;)V

    .line 210
    return-void
.end method

.method public static saveDataToPNGFile([BILjava/lang/String;)V
    .locals 8
    .param p0, "data"    # [B
    .param p1, "len"    # I
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 146
    new-instance v1, Ljava/io/File;

    invoke-static {p2}, Lcom/anansimobile/nge/NGDevice;->getFileWritePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 147
    .local v1, "file":Ljava/io/File;
    const/4 v2, 0x0

    .line 149
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 150
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .local v3, "fos":Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v3, p0, v4, p1}, Ljava/io/FileOutputStream;->write([BII)V

    .line 152
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 153
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v2, v3

    .line 160
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_1
    const-string/jumbo v4, "save data to PNG file failed, %s!~"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/anansimobile/nge/NextGenEngine;->nge_logf(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 156
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 157
    .local v0, "e":Ljava/io/IOException;
    :goto_2
    const-string/jumbo v4, "save data to PNG file failed, %s!~"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/anansimobile/nge/NextGenEngine;->nge_logf(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 156
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v0

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 154
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v0

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method private static scaleBitmap(ILandroid/graphics/Bitmap;Landroid/graphics/Matrix;)V
    .locals 10
    .param p0, "listener"    # I
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "m"    # Landroid/graphics/Matrix;

    .prologue
    const/4 v1, 0x0

    .line 186
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p1

    move v2, v1

    move-object v5, p2

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 189
    .local v9, "scaledBitmap":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 190
    .local v8, "os":Ljava/io/ByteArrayOutputStream;
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x50

    invoke-virtual {v9, v0, v1, v8}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 191
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 192
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {p0, v0, v1, v2, v3}, Lcom/anansimobile/nge/NGImagePicker;->bitmapDataDidScaled(I[BIII)V

    .line 193
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    .end local v8    # "os":Ljava/io/ByteArrayOutputStream;
    :goto_0
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 201
    return-void

    .line 194
    :catch_0
    move-exception v7

    .line 196
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static scaleBitmapToSize(IFF[BI)V
    .locals 6
    .param p0, "listener"    # I
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "data"    # [B
    .param p4, "len"    # I

    .prologue
    .line 164
    const/4 v5, 0x0

    invoke-static {p3, v5, p4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 165
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 166
    .local v1, "m":Landroid/graphics/Matrix;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float v3, p1, v5

    .line 167
    .local v3, "sW":F
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float v2, p2, v5

    .line 168
    .local v2, "sH":F
    cmpl-float v5, v3, v2

    if-lez v5, :cond_0

    move v4, v2

    .line 169
    .local v4, "scale":F
    :goto_0
    invoke-virtual {v1, v4, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 171
    invoke-static {p0, v0, v1}, Lcom/anansimobile/nge/NGImagePicker;->scaleBitmap(ILandroid/graphics/Bitmap;Landroid/graphics/Matrix;)V

    .line 172
    return-void

    .end local v4    # "scale":F
    :cond_0
    move v4, v3

    .line 168
    goto :goto_0
.end method

.method public static scaleBitmapToSize(IFF[III)V
    .locals 12
    .param p0, "listener"    # I
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "colors"    # [I
    .param p4, "toWidth"    # I
    .param p5, "toHeight"    # I

    .prologue
    .line 175
    const/4 v2, 0x0

    float-to-int v3, p1

    float-to-int v4, p1

    float-to-int v5, p2

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object v1, p3

    invoke-static/range {v1 .. v6}, Landroid/graphics/Bitmap;->createBitmap([IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 176
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 177
    .local v8, "m":Landroid/graphics/Matrix;
    move/from16 v0, p4

    int-to-float v1, v0

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v10, v1, v2

    .line 178
    .local v10, "sW":F
    move/from16 v0, p5

    int-to-float v1, v0

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v9, v1, v2

    .line 179
    .local v9, "sH":F
    cmpl-float v1, v10, v9

    if-lez v1, :cond_0

    move v11, v9

    .line 180
    .local v11, "scale":F
    :goto_0
    invoke-virtual {v8, v11, v11}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 182
    invoke-static {p0, v7, v8}, Lcom/anansimobile/nge/NGImagePicker;->scaleBitmap(ILandroid/graphics/Bitmap;Landroid/graphics/Matrix;)V

    .line 183
    return-void

    .end local v11    # "scale":F
    :cond_0
    move v11, v10

    .line 179
    goto :goto_0
.end method
