.class public Lcom/anansimobile/nge/NGDevice;
.super Ljava/lang/Object;
.source "NGDevice.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x400

.field public static final documentRoot:Ljava/lang/String; = "Documents"

.field private static mClsAdfaGetter:Ljava/lang/Class;

.field private static sDeviceAdfa:Ljava/lang/String;

.field private static sDeviceId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-string/jumbo v0, "00112234455667"

    sput-object v0, Lcom/anansimobile/nge/NGDevice;->sDeviceId:Ljava/lang/String;

    .line 33
    const-string/jumbo v0, " "

    sput-object v0, Lcom/anansimobile/nge/NGDevice;->sDeviceAdfa:Ljava/lang/String;

    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/anansimobile/nge/NGDevice;->mClsAdfaGetter:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static InitDeviceId()V
    .locals 5

    .prologue
    .line 46
    sget-object v1, Lcom/anansimobile/nge/NextGenEngine;->sMainActivity:Lcom/anansimobile/nge/RootActivity;

    .line 47
    invoke-virtual {v1}, Lcom/anansimobile/nge/RootActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "android_id"

    .line 46
    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/anansimobile/nge/NGDevice;->sDeviceId:Ljava/lang/String;

    .line 56
    const-string/jumbo v1, "device id: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/anansimobile/nge/NGDevice;->sDeviceId:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/anansimobile/nge/NextGenEngine;->nge_logf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    :try_start_0
    const-string/jumbo v1, "com.anansimobile.extra.googleAdFaGetter.GoogleAdfaGetter"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/anansimobile/nge/NGDevice;->mClsAdfaGetter:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    :goto_0
    return-void

    .line 60
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_0
    move-exception v0

    .line 61
    .restart local v0    # "e":Ljava/lang/ClassNotFoundException;
    const/4 v1, 0x0

    sput-object v1, Lcom/anansimobile/nge/NGDevice;->mClsAdfaGetter:Ljava/lang/Class;

    goto :goto_0
.end method

.method public static getCurrentTimeMS()J
    .locals 2

    .prologue
    .line 284
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getDeviceAdfa()Ljava/lang/String;
    .locals 5

    .prologue
    .line 66
    sget-object v2, Lcom/anansimobile/nge/NGDevice;->mClsAdfaGetter:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 69
    :try_start_0
    sget-object v2, Lcom/anansimobile/nge/NGDevice;->mClsAdfaGetter:Ljava/lang/Class;

    const-string/jumbo v3, "getAdfa"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 70
    .local v1, "mtGetter":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sput-object v2, Lcom/anansimobile/nge/NGDevice;->sDeviceAdfa:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    .line 85
    :cond_0
    :goto_0
    sget-object v2, Lcom/anansimobile/nge/NGDevice;->sDeviceAdfa:Ljava/lang/String;

    return-object v2

    .line 71
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 74
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 77
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 80
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/anansimobile/nge/NGDevice;->sDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public static getDeviceSDKVersion()I
    .locals 1

    .prologue
    .line 116
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public static getDeviceVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public static getDocumentRoot()Ljava/io/File;
    .locals 3

    .prologue
    .line 246
    sget-object v2, Lcom/anansimobile/nge/NextGenEngine;->sMainActivity:Lcom/anansimobile/nge/RootActivity;

    invoke-virtual {v2}, Lcom/anansimobile/nge/RootActivity;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 247
    .local v1, "packageRoot":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string/jumbo v2, "Documents"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 249
    .local v0, "docRoot":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 250
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 253
    :cond_0
    return-object v0
.end method

.method public static getExternalDocumentRoot()Ljava/io/File;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 257
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 258
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 259
    .local v1, "externalRoot":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string/jumbo v2, "%s%s%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "data"

    aput-object v4, v3, v6

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    aput-object v4, v3, v7

    const/4 v4, 0x2

    sget-object v5, Lcom/anansimobile/nge/NextGenEngine;->sMainActivity:Lcom/anansimobile/nge/RootActivity;

    .line 263
    invoke-virtual {v5}, Lcom/anansimobile/nge/RootActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 260
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 266
    .local v0, "docRoot":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 267
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 270
    :cond_0
    const-string/jumbo v2, "External: %s"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/anansimobile/nge/NextGenEngine;->nge_logf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 274
    :goto_0
    return-object v0

    .end local v0    # "docRoot":Ljava/io/File;
    .end local v1    # "externalRoot":Ljava/io/File;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 26
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 123
    const/4 v7, 0x0

    .line 125
    .local v7, "file":Ljava/io/File;
    const-string/jumbo v22, ".res"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_0

    const-string/jumbo v22, ".res_"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 127
    :cond_0
    const-string/jumbo v22, ".res"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_2

    const-string/jumbo v14, "main"

    .line 128
    .local v14, "startFlag":Ljava/lang/String;
    :goto_0
    new-instance v6, Ljava/io/File;

    invoke-static {}, Lcom/anansimobile/nge/NGDevice;->getObbPath()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 129
    .local v6, "externalDocRoot":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v22

    if-eqz v22, :cond_4

    .line 130
    new-instance v22, Lcom/anansimobile/nge/NGDevice$1;

    move-object/from16 v0, v22

    invoke-direct {v0, v14}, Lcom/anansimobile/nge/NGDevice$1;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v12

    .line 141
    .local v12, "obbs":[Ljava/lang/String;
    array-length v0, v12

    move/from16 v22, v0

    if-lez v22, :cond_4

    .line 142
    const/16 v22, 0x0

    aget-object v15, v12, v22

    .line 143
    .local v15, "targetObb":Ljava/lang/String;
    const/4 v10, 0x1

    .local v10, "i":I
    :goto_1
    array-length v0, v12

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v10, v0, :cond_3

    .line 144
    const-string/jumbo v22, "."

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v22

    add-int/lit8 v21, v22, 0x1

    .line 145
    .local v21, "vcStart":I
    const-string/jumbo v22, "."

    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v17

    .line 146
    .local v17, "vcEnd":I
    move/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 148
    .local v16, "vc":I
    aget-object v22, v12, v10

    const-string/jumbo v23, "."

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v22

    add-int/lit8 v20, v22, 0x1

    .line 149
    .local v20, "vcNewStart":I
    aget-object v22, v12, v10

    const-string/jumbo v23, "."

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v19

    .line 150
    .local v19, "vcNewEnd":I
    aget-object v22, v12, v10

    move-object/from16 v0, v22

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .line 152
    .local v18, "vcNew":I
    move/from16 v0, v18

    move/from16 v1, v16

    if-le v0, v1, :cond_1

    .line 153
    aget-object v15, v12, v10

    .line 143
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 127
    .end local v6    # "externalDocRoot":Ljava/io/File;
    .end local v10    # "i":I
    .end local v12    # "obbs":[Ljava/lang/String;
    .end local v14    # "startFlag":Ljava/lang/String;
    .end local v15    # "targetObb":Ljava/lang/String;
    .end local v16    # "vc":I
    .end local v17    # "vcEnd":I
    .end local v18    # "vcNew":I
    .end local v19    # "vcNewEnd":I
    .end local v20    # "vcNewStart":I
    .end local v21    # "vcStart":I
    :cond_2
    const-string/jumbo v14, "patch"

    goto/16 :goto_0

    .line 156
    .restart local v6    # "externalDocRoot":Ljava/io/File;
    .restart local v10    # "i":I
    .restart local v12    # "obbs":[Ljava/lang/String;
    .restart local v14    # "startFlag":Ljava/lang/String;
    .restart local v15    # "targetObb":Ljava/lang/String;
    :cond_3
    const-string/jumbo v22, "%s/%s"

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    aput-object v15, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 157
    .local v9, "fullPath":Ljava/lang/String;
    const-string/jumbo v22, "obb file: %s"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v9, v23, v24

    invoke-static/range {v22 .. v23}, Lcom/anansimobile/nge/NextGenEngine;->nge_logf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 203
    .end local v9    # "fullPath":Ljava/lang/String;
    .end local v10    # "i":I
    .end local v12    # "obbs":[Ljava/lang/String;
    .end local v14    # "startFlag":Ljava/lang/String;
    .end local v15    # "targetObb":Ljava/lang/String;
    :goto_2
    return-object v9

    .line 163
    .end local v6    # "externalDocRoot":Ljava/io/File;
    :cond_4
    invoke-static {}, Lcom/anansimobile/nge/NGDevice;->getExternalDocumentRoot()Ljava/io/File;

    move-result-object v6

    .line 164
    .restart local v6    # "externalDocRoot":Ljava/io/File;
    if-eqz v6, :cond_6

    .line 165
    new-instance v7, Ljava/io/File;

    .end local v7    # "file":Ljava/io/File;
    move-object/from16 v0, p0

    invoke-direct {v7, v6, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 166
    .restart local v7    # "file":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v22

    if-eqz v22, :cond_5

    .line 167
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    .line 169
    :cond_5
    const/4 v7, 0x0

    .line 173
    :cond_6
    invoke-static {}, Lcom/anansimobile/nge/NGDevice;->getDocumentRoot()Ljava/io/File;

    move-result-object v4

    .line 174
    .local v4, "docRoot":Ljava/io/File;
    new-instance v7, Ljava/io/File;

    .end local v7    # "file":Ljava/io/File;
    move-object/from16 v0, p0

    invoke-direct {v7, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 175
    .restart local v7    # "file":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v22

    if-eqz v22, :cond_7

    .line 176
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    .line 185
    :cond_7
    :try_start_0
    sget-object v22, Lcom/anansimobile/nge/NextGenEngine;->sMainActivity:Lcom/anansimobile/nge/RootActivity;

    invoke-virtual/range {v22 .. v22}, Lcom/anansimobile/nge/RootActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v11

    .line 186
    .local v11, "is":Ljava/io/InputStream;
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 188
    .local v8, "fos":Ljava/io/FileOutputStream;
    const/16 v22, 0x400

    move/from16 v0, v22

    new-array v3, v0, [B

    .line 189
    .local v3, "buf":[B
    const/4 v13, 0x0

    .line 191
    .local v13, "size":I
    :goto_3
    const/16 v22, -0x1

    invoke-virtual {v11, v3}, Ljava/io/InputStream;->read([B)I

    move-result v13

    move/from16 v0, v22

    if-eq v0, v13, :cond_8

    .line 192
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v8, v3, v0, v13}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 198
    .end local v3    # "buf":[B
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .end local v11    # "is":Ljava/io/InputStream;
    .end local v13    # "size":I
    :catch_0
    move-exception v5

    .line 200
    .local v5, "e":Ljava/io/IOException;
    const-string/jumbo v22, "read file from assets failed!~"

    invoke-static/range {v22 .. v22}, Lcom/anansimobile/nge/NextGenEngine;->nge_log(Ljava/lang/String;)V

    .line 203
    .end local v5    # "e":Ljava/io/IOException;
    :goto_4
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    .line 195
    .restart local v3    # "buf":[B
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v11    # "is":Ljava/io/InputStream;
    .restart local v13    # "size":I
    :cond_8
    :try_start_1
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 196
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method

.method public static getFileWritePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 209
    const-string/jumbo v2, ".obb"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 211
    invoke-static {p0}, Lcom/anansimobile/nge/NGDevice;->getObbFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 217
    :goto_0
    return-object v2

    .line 214
    :cond_0
    invoke-static {}, Lcom/anansimobile/nge/NGDevice;->getDocumentRoot()Ljava/io/File;

    move-result-object v0

    .line 215
    .local v0, "docRoot":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 217
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getFreeMemory()J
    .locals 4

    .prologue
    .line 374
    sget-object v2, Lcom/anansimobile/nge/NextGenEngine;->sMainActivity:Lcom/anansimobile/nge/RootActivity;

    const-string/jumbo v3, "activity"

    invoke-virtual {v2, v3}, Lcom/anansimobile/nge/RootActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 375
    .local v0, "am":Landroid/app/ActivityManager;
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 376
    .local v1, "memInfo":Landroid/app/ActivityManager$MemoryInfo;
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 377
    iget-wide v2, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    return-wide v2
.end method

.method public static getLocaleCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 292
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLocaleLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 288
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLocaleLanguageFull()Ljava/lang/String;
    .locals 3

    .prologue
    .line 296
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 297
    .local v0, "language":Ljava/lang/String;
    return-object v0
.end method

.method public static getMacAddress()Ljava/lang/String;
    .locals 5

    .prologue
    .line 95
    sget-object v3, Lcom/anansimobile/nge/NextGenEngine;->sMainActivity:Lcom/anansimobile/nge/RootActivity;

    const-string/jumbo v4, "wifi"

    invoke-virtual {v3, v4}, Lcom/anansimobile/nge/RootActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 96
    .local v1, "manager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 97
    .local v2, "wifiInfo":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "MACAddress":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 101
    invoke-static {}, Lcom/anansimobile/nge/NGDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 104
    :cond_0
    return-object v0
.end method

.method public static getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static getObbFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "obbfile"    # Ljava/lang/String;

    .prologue
    .line 346
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 347
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 348
    .local v0, "externalRoot":Ljava/io/File;
    const-string/jumbo v1, "%s/Android/obb/%s/%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {}, Lcom/anansimobile/nge/NGDevice;->getPackageName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 350
    .end local v0    # "externalRoot":Ljava/io/File;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getObbPath()Ljava/lang/String;
    .locals 7

    .prologue
    .line 333
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "mounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 334
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 335
    .local v0, "externalRoot":Ljava/io/File;
    const-string/jumbo v3, "%s/Android/obb/%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {}, Lcom/anansimobile/nge/NGDevice;->getPackageName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 336
    .local v1, "obbPath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 337
    .local v2, "obbPathFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 338
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 342
    :cond_0
    :goto_0
    return-object v1

    .end local v0    # "externalRoot":Ljava/io/File;
    .end local v1    # "obbPath":Ljava/lang/String;
    .end local v2    # "obbPathFile":Ljava/io/File;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 329
    sget-object v0, Lcom/anansimobile/nge/NextGenEngine;->sMainActivity:Lcom/anansimobile/nge/RootActivity;

    invoke-virtual {v0}, Lcom/anansimobile/nge/RootActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getScreenHeight()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 312
    invoke-static {}, Lcom/anansimobile/nge/NGDevice;->getDeviceSDKVersion()I

    move-result v2

    const/16 v3, 0xd

    if-ge v2, v3, :cond_0

    .line 313
    sget-object v2, Lcom/anansimobile/nge/NextGenEngine;->sMainActivity:Lcom/anansimobile/nge/RootActivity;

    invoke-virtual {v2}, Lcom/anansimobile/nge/RootActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    .line 314
    .local v1, "wm":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v2

    .line 318
    .end local v1    # "wm":Landroid/view/WindowManager;
    :goto_0
    return v2

    .line 316
    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v4, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 317
    .local v0, "size":Landroid/graphics/Point;
    invoke-static {v0}, Lcom/anansimobile/nge/NGDevice;->getScreenSize(Landroid/graphics/Point;)V

    .line 318
    iget v2, v0, Landroid/graphics/Point;->y:I

    goto :goto_0
.end method

.method private static getScreenSize(Landroid/graphics/Point;)V
    .locals 2
    .param p0, "size"    # Landroid/graphics/Point;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 324
    sget-object v1, Lcom/anansimobile/nge/NextGenEngine;->sMainActivity:Lcom/anansimobile/nge/RootActivity;

    invoke-virtual {v1}, Lcom/anansimobile/nge/RootActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    .line 325
    .local v0, "wm":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 326
    return-void
.end method

.method public static getScreenWidth()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 301
    invoke-static {}, Lcom/anansimobile/nge/NGDevice;->getDeviceSDKVersion()I

    move-result v2

    const/16 v3, 0xd

    if-ge v2, v3, :cond_0

    .line 302
    sget-object v2, Lcom/anansimobile/nge/NextGenEngine;->sMainActivity:Lcom/anansimobile/nge/RootActivity;

    invoke-virtual {v2}, Lcom/anansimobile/nge/RootActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    .line 303
    .local v1, "wm":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    .line 307
    .end local v1    # "wm":Landroid/view/WindowManager;
    :goto_0
    return v2

    .line 305
    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v4, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 306
    .local v0, "size":Landroid/graphics/Point;
    invoke-static {v0}, Lcom/anansimobile/nge/NGDevice;->getScreenSize(Landroid/graphics/Point;)V

    .line 307
    iget v2, v0, Landroid/graphics/Point;->x:I

    goto :goto_0
.end method

.method public static isFileExist(Ljava/lang/String;)Z
    .locals 3
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 221
    invoke-static {}, Lcom/anansimobile/nge/NGDevice;->getDocumentRoot()Ljava/io/File;

    move-result-object v0

    .line 222
    .local v0, "docRoot":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 224
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    return v2
.end method

.method public static launchUrl(Ljava/lang/String;)V
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 363
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 364
    .local v0, "i":Landroid/content/Intent;
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 365
    const-string/jumbo v1, "play.google.com"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 367
    const-string/jumbo v1, "com.android.vending"

    const-string/jumbo v2, "com.android.vending.AssetBrowserActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 369
    :cond_0
    sget-object v1, Lcom/anansimobile/nge/NextGenEngine;->sMainActivity:Lcom/anansimobile/nge/RootActivity;

    invoke-virtual {v1, v0}, Lcom/anansimobile/nge/RootActivity;->intentFilter(Landroid/content/Intent;)V

    .line 370
    sget-object v1, Lcom/anansimobile/nge/NextGenEngine;->sMainActivity:Lcom/anansimobile/nge/RootActivity;

    invoke-virtual {v1, v0}, Lcom/anansimobile/nge/RootActivity;->startActivity(Landroid/content/Intent;)V

    .line 371
    return-void
.end method
