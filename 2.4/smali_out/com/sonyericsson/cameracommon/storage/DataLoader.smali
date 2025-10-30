.class public Lcom/sonyericsson/cameracommon/storage/DataLoader;
.super Ljava/lang/Object;
.source "DataLoader.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/storage/DataLoader$DataLoadCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "DataLoader"


# instance fields
.field private final CONTENT_EXTENSIONS:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDataLoadCallback:Lcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;

.field private mIsRegisterCache:Z

.field private mMediaId:I

.field private mMediaUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mParam:Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

.field private mRequestId:I

.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(ILandroid/net/Uri;Landroid/content/Context;Lcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;Z)V
    .registers 9

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ".JPG"

    const-string v1, ".3gp"

    const-string v2, ".mp4"

    .line 59
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->CONTENT_EXTENSIONS:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mParam:Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    .line 163
    iput p1, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mRequestId:I

    .line 165
    :try_start_14
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mMediaId:I
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1e} :catch_1f

    goto :goto_28

    :catch_1f
    const-string p1, "mediaId is not corrected."

    .line 167
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    .line 169
    :goto_28
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mContext:Landroid/content/Context;

    .line 170
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mResolver:Landroid/content/ContentResolver;

    .line 171
    iput-object p4, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mDataLoadCallback:Lcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;

    .line 172
    iput-boolean p5, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mIsRegisterCache:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;",
            "Lcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;",
            "Z)V"
        }
    .end annotation

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ".JPG"

    const-string v1, ".3gp"

    const-string v2, ".mp4"

    .line 59
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->CONTENT_EXTENSIONS:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mParam:Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    const/4 v0, -0x1

    .line 185
    iput v0, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mRequestId:I

    .line 186
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mContext:Landroid/content/Context;

    .line 187
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mResolver:Landroid/content/ContentResolver;

    .line 188
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mMediaUris:Ljava/util/ArrayList;

    .line 189
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mDataLoadCallback:Lcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;

    .line 190
    iput-boolean p4, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mIsRegisterCache:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;IILcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II",
            "Lcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;",
            "Z)V"
        }
    .end annotation

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ".JPG"

    const-string v1, ".3gp"

    const-string v2, ".mp4"

    .line 59
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->CONTENT_EXTENSIONS:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mParam:Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    .line 144
    iput p3, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mRequestId:I

    .line 145
    invoke-direct {p0, p2, p4}, Lcom/sonyericsson/cameracommon/storage/DataLoader;->setupQueryParam(Ljava/util/List;I)Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    move-result-object p2

    iput-object p2, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mParam:Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    .line 146
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mContext:Landroid/content/Context;

    .line 147
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mResolver:Landroid/content/ContentResolver;

    .line 148
    iput-object p5, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mDataLoadCallback:Lcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;

    .line 149
    iput-boolean p6, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mIsRegisterCache:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;ILcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;",
            "Z)V"
        }
    .end annotation

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ".JPG"

    const-string v1, ".3gp"

    const-string v2, ".mp4"

    .line 59
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->CONTENT_EXTENSIONS:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mParam:Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    const/4 v0, -0x1

    .line 125
    iput v0, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mRequestId:I

    .line 126
    invoke-direct {p0, p2, p3}, Lcom/sonyericsson/cameracommon/storage/DataLoader;->setupQueryParam(Ljava/util/List;I)Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    move-result-object p2

    iput-object p2, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mParam:Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    .line 127
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mContext:Landroid/content/Context;

    .line 128
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mResolver:Landroid/content/ContentResolver;

    .line 129
    iput-object p4, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mDataLoadCallback:Lcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;

    .line 130
    iput-boolean p5, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mIsRegisterCache:Z

    return-void
.end method

.method private appendWhere(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, " AND ("

    .line 346
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 347
    :goto_6
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    if-eqz v0, :cond_13

    const-string v1, " OR "

    .line 349
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    :cond_13
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_1f
    const-string p2, ")"

    .line 353
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private appendWhere(Ljava/lang/StringBuilder;Ljava/util/List;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p3, :cond_7

    const-string v0, " AND ("

    .line 365
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    const/4 v0, 0x0

    .line 366
    :goto_8
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_21

    if-eqz v0, :cond_15

    const-string v1, " OR "

    .line 368
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    :cond_15
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_21
    if-eqz p3, :cond_28

    const-string p2, ")"

    .line 373
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_28
    return-void
.end method

.method private createAntiAliasBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 11

    if-eqz p1, :cond_14

    .line 719
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p1

    move v4, p2

    move v5, p2

    .line 720
    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_14
    const/4 p1, 0x0

    return-object p1
.end method

.method private createContentInfo(Landroid/database/Cursor;)Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;
    .registers 3

    const/4 v0, 0x1

    .line 542
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/cameracommon/storage/DataLoader;->createContentInfo(Landroid/database/Cursor;Z)Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    move-result-object p1

    return-object p1
.end method

.method private createContentInfo(Landroid/database/Cursor;Z)Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 429
    invoke-direct/range {p0 .. p1}, Lcom/sonyericsson/cameracommon/storage/DataLoader;->getMediaId(Landroid/database/Cursor;)I

    move-result v3

    const-string v4, "mime_type"

    .line 431
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "relative_path"

    .line 433
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "_display_name"

    .line 435
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "volume_name"

    .line 437
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "width"

    .line 438
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const-string v9, "height"

    .line 439
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const-string v10, "bucket_id"

    .line 441
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 442
    invoke-static {v6}, Lcom/sonyericsson/cameracommon/utility/CommonUtility;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "image/jpeg"

    .line 446
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    const/4 v13, 0x2

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-nez v12, :cond_d2

    const-string v12, ".JPG"

    .line 447
    invoke-direct {v0, v12, v11}, Lcom/sonyericsson/cameracommon/storage/DataLoader;->isSupportedFileExtension(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_68

    goto :goto_d2

    :cond_68
    const-string v12, "video/mp4"

    .line 452
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_c7

    const-string v12, ".mp4"

    .line 453
    invoke-direct {v0, v12, v11}, Lcom/sonyericsson/cameracommon/storage/DataLoader;->isSupportedFileExtension(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_79

    goto :goto_c7

    :cond_79
    const-string v12, "video/3gpp"

    .line 458
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_bc

    const-string v12, ".3gp"

    .line 459
    invoke-direct {v0, v12, v11}, Lcom/sonyericsson/cameracommon/storage/DataLoader;->isSupportedFileExtension(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8a

    goto :goto_bc

    :cond_8a
    const-string v11, "image/mpo"

    .line 464
    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9e

    .line 465
    sget-object v11, Lcom/sonyericsson/cameracommon/contentsview/QueryParameterAdapter;->MPO_3DPICTURES_CONTENT_URI:Landroid/net/Uri;

    .line 467
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    .line 465
    invoke-static {v11, v12}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    const/4 v13, 0x3

    goto :goto_dd

    .line 470
    :cond_9e
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v1, :cond_ba

    new-array v1, v15, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "query error : mime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v14

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_ba
    const/4 v1, 0x0

    return-object v1

    .line 461
    :cond_bc
    :goto_bc
    sget-object v11, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 462
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    .line 461
    invoke-static {v11, v12}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    goto :goto_dd

    .line 455
    :cond_c7
    :goto_c7
    sget-object v11, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 456
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    .line 455
    invoke-static {v11, v12}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    goto :goto_dd

    .line 449
    :cond_d2
    :goto_d2
    sget-object v11, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 450
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    .line 449
    invoke-static {v11, v12}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    move v13, v15

    :goto_dd
    if-ne v13, v15, :cond_e9

    const-string v12, "orientation"

    .line 477
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 476
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 482
    :cond_e9
    new-instance v1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    invoke-direct {v1}, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;-><init>()V

    int-to-long v2, v3

    .line 483
    iput-wide v2, v1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mId:J

    .line 484
    iput-object v11, v1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mOriginalUri:Landroid/net/Uri;

    .line 485
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mOriginalPath:Ljava/lang/String;

    .line 486
    iput v13, v1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mType:I

    .line 487
    iput v8, v1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mWidth:I

    .line 488
    iput v9, v1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mHeight:I

    .line 489
    iput v14, v1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mOrientation:I

    .line 490
    iput-object v4, v1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mMimeType:Ljava/lang/String;

    .line 491
    iput v10, v1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mBucketId:I

    move/from16 v2, p2

    .line 492
    iput-boolean v2, v1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mIsContainDetails:Z

    .line 493
    iput-object v7, v1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mVolumeName:Ljava/lang/String;

    if-eqz v2, :cond_138

    .line 496
    invoke-direct {v0, v10}, Lcom/sonyericsson/cameracommon/storage/DataLoader;->getGroupedImageCount(I)I

    move-result v2

    iput v2, v1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mGroupedImage:I

    .line 497
    iget-object v2, v1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mOriginalUri:Landroid/net/Uri;

    invoke-direct {v0, v2, v4}, Lcom/sonyericsson/cameracommon/storage/DataLoader;->isVideoHdr(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mIsVideoHdr:Z

    .line 498
    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/storage/DataLoader;->getContentType(Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;)Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    move-result-object v2

    iput-object v2, v1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mContentType:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    .line 499
    iget-object v2, v1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mContentType:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    sget-object v3, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->BURST:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    if-ne v2, v3, :cond_138

    .line 500
    invoke-direct {v0, v10, v1}, Lcom/sonyericsson/cameracommon/storage/DataLoader;->getGroupedImageMediaID(ILcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mMediaStoreIds:Ljava/util/List;

    :cond_138
    return-object v1
.end method

.method private createContentInfoForMediaUris(Landroid/database/Cursor;)Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;
    .registers 3

    const/4 v0, 0x0

    .line 552
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/cameracommon/storage/DataLoader;->createContentInfo(Landroid/database/Cursor;Z)Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    move-result-object p1

    return-object p1
.end method

.method private decodeThumbnail(Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;)Landroid/graphics/Bitmap;
    .registers 6

    .line 699
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "decodeThumbnail() has been called."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_d
    const/4 v0, 0x0

    if-eqz p1, :cond_4f

    .line 703
    iget-object v0, p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mOriginalPath:Ljava/lang/String;

    if-nez v0, :cond_1e

    .line 704
    iget-wide v0, p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mId:J

    iget v2, p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mType:I

    invoke-direct {p0, v0, v1, v2}, Lcom/sonyericsson/cameracommon/storage/DataLoader;->getMediaPath(JI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mOriginalPath:Ljava/lang/String;

    .line 706
    :cond_1e
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/sonyericsson/cameracommon/contentsview/ThumbnailFactory;->createMicroThumbnail(Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_30

    .line 709
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/cameracommon/storage/DataLoader;->createAntiAliasBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    move-object v0, p1

    goto :goto_31

    :cond_30
    move-object v0, p1

    .line 712
    :goto_31
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_4f

    const/4 p1, 0x1

    .line 713
    new-array p1, p1, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "decodeThumbnail(): thumbnail = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_4f
    return-object v0
.end method

.method private excludeFileSelection()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 887
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 888
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " (_display_name NOT  REGEXP \'.*CINEMA[^/]*\\....\\z\')"

    .line 889
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " AND "

    .line 896
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (_display_name NOT  REGEXP \'.*Screenshot[^/]*\\....\\z\')"

    .line 897
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 904
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private generatePathSelection(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    .line 403
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "volume_name"

    .line 404
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " like \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " AND "

    .line 406
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "relative_path"

    .line 407
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " like \'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/%\'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " AND "

    .line 409
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "relative_path"

    .line 410
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " NOT LIKE \'%/.%\'"

    .line 411
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " AND "

    .line 412
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_display_name"

    .line 414
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " like \'%"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    .line 416
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private generateQueryPathForEachStorage(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 378
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 379
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/cameracommon/storage/DataLoader;->generateQueryPathForOneStorage(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    goto :goto_4

    :cond_14
    return-object p1
.end method

.method private generateQueryPathForOneStorage(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 388
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->CONTENT_EXTENSIONS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 390
    invoke-direct {p0, p2, v3}, Lcom/sonyericsson/cameracommon/storage/DataLoader;->generatePathSelection(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_12
    return-object p1
.end method

.method private getBurstCaptureImageInfo(I)Landroid/database/Cursor;
    .registers 13

    .line 839
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    invoke-direct {v0}, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;-><init>()V

    const-string v1, "_id"

    const-string v2, "relative_path"

    const-string v3, "_display_name"

    const-string v4, "volume_name"

    const-string v5, "mime_type"

    const-string v6, "datetaken"

    const-string v7, "width"

    const-string v8, "height"

    const-string v9, "orientation"

    const-string v10, "bucket_id"

    .line 840
    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->projection:[Ljava/lang/String;

    .line 854
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%s DESC"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "title"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->sortOrder:Ljava/lang/String;

    .line 857
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(_display_name REGEXP \'DSC_\\d{4}_BURST\\d{17}_COVER.[jJ][pP][eE]?[gG]\')"

    .line 859
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " AND "

    .line 867
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 868
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(bucket_id=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 869
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->where:Ljava/lang/String;

    .line 870
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "external"

    .line 871
    invoke-static {v1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 870
    invoke-static {p1, v1, v0}, Lcom/sonyericsson/cameracommon/contentsview/PhotoStackQueryHelper;->crQuery(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;)Landroid/database/Cursor;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_7c

    .line 874
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_7b

    const-string p1, "getBurstCaptureImageInfo: null"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_7b
    return-object v0

    .line 876
    :cond_7c
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_93

    .line 877
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v1, :cond_8f

    const-string v1, "getBurstCaptureImageInfo: row: 0"

    .line 878
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 879
    :cond_8f
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0

    :cond_93
    return-object p1
.end method

.method private getContentType(Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;)Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;
    .registers 4

    .line 648
    iget v0, p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1e

    .line 649
    iget-object v0, p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mOriginalPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/storage/PredictiveCapturePathBuilder;->isPredictiveCaptureImage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 650
    sget-object p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->PREDICTIVE_CAPTURE:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    return-object p1

    .line 651
    :cond_10
    iget-object p1, p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mOriginalPath:Ljava/lang/String;

    invoke-static {p1}, Lcom/sonyericsson/cameracommon/storage/ManualBurstPathBuilder;->isBurstCaptureImage(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 652
    sget-object p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->BURST:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    return-object p1

    .line 654
    :cond_1b
    sget-object p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->PHOTO:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    return-object p1

    .line 656
    :cond_1e
    iget v0, p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6e

    .line 657
    iget-object v0, p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mOriginalPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/storage/SlowMotionPathBuilder;->isSuperSlowMotionVideo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 658
    sget-object p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->SUPER_SLOW_MOTION_VIDEO:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    return-object p1

    .line 661
    :cond_2e
    iget-object v0, p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mOriginalPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/storage/SlowMotionPathBuilder;->isSuperSlowShotVideo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 662
    sget-object p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->SUPER_SLOW_SHOT_VIDEO:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    return-object p1

    .line 665
    :cond_39
    iget-object v0, p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mOriginalPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/storage/SlowMotionPathBuilder;->isStandardSlowMotionVideo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 666
    sget-object p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->STANDARD_SLOW_MOTION_VIDEO:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    return-object p1

    .line 669
    :cond_44
    iget-object v0, p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mOriginalPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/storage/SlowMotionPathBuilder;->isHFRVideo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 670
    sget-object p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->HIGH_FRAME_RATE_VIDEO:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    return-object p1

    .line 673
    :cond_4f
    iget v0, p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mWidth:I

    const/16 v1, 0xf00

    if-ge v0, v1, :cond_64

    iget v0, p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mHeight:I

    if-lt v0, v1, :cond_5a

    goto :goto_64

    .line 680
    :cond_5a
    iget-boolean p1, p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mIsVideoHdr:Z

    if-eqz p1, :cond_61

    .line 681
    sget-object p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->HDR_VIDEO:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    return-object p1

    .line 683
    :cond_61
    sget-object p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->VIDEO:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    return-object p1

    .line 675
    :cond_64
    :goto_64
    iget-boolean p1, p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mIsVideoHdr:Z

    if-eqz p1, :cond_6b

    .line 676
    sget-object p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->HDR_VIDEO_4K:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    return-object p1

    .line 678
    :cond_6b
    sget-object p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->VIDEO_4K:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    return-object p1

    .line 686
    :cond_6e
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_7b

    const-string p1, "Unsupported file type"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 687
    :cond_7b
    sget-object p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->NONE:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    return-object p1
.end method

.method private getCoverImageInfo(I)Landroid/database/Cursor;
    .registers 13

    .line 939
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    invoke-direct {v0}, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;-><init>()V

    const-string v1, "_id"

    const-string v2, "relative_path"

    const-string v3, "_display_name"

    const-string v4, "volume_name"

    const-string v5, "mime_type"

    const-string v6, "datetaken"

    const-string v7, "width"

    const-string v8, "height"

    const-string v9, "orientation"

    const-string v10, "bucket_id"

    .line 940
    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->projection:[Ljava/lang/String;

    .line 952
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%s like \'%s\'"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "_id"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 953
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v4, 0x1

    aput-object p1, v3, v4

    .line 952
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->where:Ljava/lang/String;

    .line 955
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "external"

    .line 956
    invoke-static {v1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 955
    invoke-static {p1, v1, v0}, Lcom/sonyericsson/cameracommon/contentsview/PhotoStackQueryHelper;->crQuery(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;)Landroid/database/Cursor;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_55

    .line 959
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_54

    const-string p1, "getCoverImageInfo: null"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_54
    return-object v0

    .line 961
    :cond_55
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_6c

    .line 962
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v1, :cond_68

    const-string v1, "getCoverImageInfo: row: 0"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 963
    :cond_68
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0

    :cond_6c
    return-object p1
.end method

.method private getGroupedImageCount(I)I
    .registers 10

    .line 576
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1e

    new-array v0, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getGroupedImageCount bucketId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 579
    :cond_1e
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    invoke-direct {v0}, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;-><init>()V

    const-string v3, "bucket_id"

    .line 580
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->projection:[Ljava/lang/String;

    .line 583
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%s DESC, %s DESC"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    const-string v7, "datetaken"

    aput-object v7, v6, v1

    const-string v7, "_id"

    aput-object v7, v6, v2

    invoke-static {v3, v4, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->sortOrder:Ljava/lang/String;

    .line 585
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%s like \'%s\'"

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "bucket_id"

    aput-object v6, v5, v1

    .line 586
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v2

    .line 585
    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->where:Ljava/lang/String;

    .line 588
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "external"

    .line 589
    invoke-static {v1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 588
    invoke-static {p1, v1, v0}, Lcom/sonyericsson/cameracommon/contentsview/PhotoStackQueryHelper;->crQuery(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;)Landroid/database/Cursor;

    move-result-object p1

    if-nez p1, :cond_65

    return v2

    .line 596
    :cond_65
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 597
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return v0
.end method

.method private getGroupedImageMediaID(ILcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 508
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 509
    new-instance v1, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    invoke-direct {v1}, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;-><init>()V

    const-string v2, "bucket_id"

    const-string v3, "_id"

    .line 510
    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->projection:[Ljava/lang/String;

    .line 514
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%s DESC, %s DESC"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "datetaken"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-string v6, "_id"

    const/4 v8, 0x1

    aput-object v6, v5, v8

    invoke-static {v2, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->sortOrder:Ljava/lang/String;

    .line 516
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%s like \'%s\'"

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "bucket_id"

    aput-object v5, v4, v7

    .line 517
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v8

    .line 516
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->where:Ljava/lang/String;

    .line 519
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "external"

    .line 520
    invoke-static {v2}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 519
    invoke-static {p1, v2, v1}, Lcom/sonyericsson/cameracommon/contentsview/PhotoStackQueryHelper;->crQuery(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;)Landroid/database/Cursor;

    move-result-object p1

    if-nez p1, :cond_59

    .line 523
    iget-wide v1, p2, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_79

    .line 525
    :cond_59
    :goto_59
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_79

    const-string p2, "_id"

    .line 526
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 528
    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_59

    .line 531
    :cond_79
    :goto_79
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0
.end method

.method private getImagesInfo(Ljava/util/ArrayList;)Landroid/database/Cursor;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .line 977
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    .line 978
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 979
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 980
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 983
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    invoke-direct {v0}, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;-><init>()V

    const-string v4, "_id"

    const-string v5, "relative_path"

    const-string v6, "_display_name"

    const-string v7, "volume_name"

    const-string v8, "mime_type"

    const-string v9, "datetaken"

    const-string v10, "width"

    const-string v11, "height"

    const-string v12, "orientation"

    const-string v13, "bucket_id"

    .line 984
    filled-new-array/range {v4 .. v13}, [Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->projection:[Ljava/lang/String;

    .line 996
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%s >= \'%s\' AND %s <= \'%s\'"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "_id"

    aput-object v7, v6, v2

    .line 997
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v1

    const-string v1, "_id"

    const/4 v2, 0x2

    aput-object v1, v6, v2

    .line 998
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x3

    aput-object p1, v6, v1

    .line 996
    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->where:Ljava/lang/String;

    .line 1000
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "external"

    .line 1001
    invoke-static {v1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1000
    invoke-static {p1, v1, v0}, Lcom/sonyericsson/cameracommon/contentsview/PhotoStackQueryHelper;->crQuery(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;)Landroid/database/Cursor;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_8a

    .line 1004
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_89

    const-string p1, "getImagesInfo: null"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_89
    return-object v0

    .line 1006
    :cond_8a
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_a1

    .line 1007
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v1, :cond_9d

    const-string v1, "getImagesInfo: row: 0"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1008
    :cond_9d
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0

    :cond_a1
    return-object p1
.end method

.method private getLatestImageInfo()Landroid/database/Cursor;
    .registers 4

    .line 915
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "external"

    .line 916
    invoke-static {v1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mParam:Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    .line 915
    invoke-static {v0, v1, v2}, Lcom/sonyericsson/cameracommon/contentsview/PhotoStackQueryHelper;->crQuery(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1f

    .line 920
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_1e

    const-string v0, "getLatestImageInfo: null"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1e
    return-object v1

    .line 922
    :cond_1f
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_36

    .line 923
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v2, :cond_32

    const-string v2, "getLatestImageInfo: row: 0"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 924
    :cond_32
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v1

    :cond_36
    return-object v0
.end method

.method private getMediaId(Landroid/database/Cursor;)I
    .registers 6

    const-string v0, "_id"

    .line 562
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    .line 564
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_28

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMediaId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_28
    return p1
.end method

.method private getMediaPath(JI)Ljava/lang/String;
    .registers 12

    .line 727
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    invoke-direct {v0}, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;-><init>()V

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    packed-switch p3, :pswitch_data_a8

    return-object v3

    .line 744
    :pswitch_d
    sget-object p3, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v5, "relative_path"

    const-string v6, "_display_name"

    .line 745
    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->projection:[Ljava/lang/String;

    .line 749
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%s=%s"

    new-array v1, v1, [Ljava/lang/Object;

    const-string v7, "_id"

    aput-object v7, v1, v4

    .line 750
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, v2

    .line 749
    invoke-static {v5, v6, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->where:Ljava/lang/String;

    .line 751
    iput v4, v0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->offset:I

    .line 752
    iput v2, v0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->limit:I

    goto :goto_5a

    .line 732
    :pswitch_34
    sget-object p3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v5, "relative_path"

    const-string v6, "_display_name"

    .line 733
    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->projection:[Ljava/lang/String;

    .line 737
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%s=%s"

    new-array v1, v1, [Ljava/lang/Object;

    const-string v7, "_id"

    aput-object v7, v1, v4

    .line 738
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, v2

    .line 737
    invoke-static {v5, v6, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->where:Ljava/lang/String;

    .line 739
    iput v4, v0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->offset:I

    .line 740
    iput v2, v0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->limit:I

    .line 759
    :goto_5a
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mResolver:Landroid/content/ContentResolver;

    invoke-static {p1, p3, v0}, Lcom/sonyericsson/cameracommon/contentsview/PhotoStackQueryHelper;->crQuery(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;)Landroid/database/Cursor;

    move-result-object p1

    if-nez p1, :cond_63

    return-object v3

    .line 765
    :cond_63
    :try_start_63
    invoke-interface {p1, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result p2

    if-eqz p2, :cond_90

    const-string p2, "relative_path"

    .line 767
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    .line 766
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "_display_name"

    .line 769
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    .line 768
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 770
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2
    :try_end_8c
    .catch Ljava/lang/RuntimeException; {:try_start_63 .. :try_end_8c} :catch_96
    .catchall {:try_start_63 .. :try_end_8c} :catchall_94

    .line 776
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p2

    :cond_90
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v3

    :catchall_94
    move-exception p2

    goto :goto_a3

    :catch_96
    :try_start_96
    const-string p2, "The specified column isn\'t found."

    .line 773
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V
    :try_end_9f
    .catchall {:try_start_96 .. :try_end_9f} :catchall_94

    .line 776
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v3

    :goto_a3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 777
    throw p2

    nop

    :pswitch_data_a8
    .packed-switch 0x1
        :pswitch_34
        :pswitch_d
        :pswitch_34
    .end packed-switch
.end method

.method private getPredictiveCaptureImageInfo(Ljava/lang/String;I)Landroid/database/Cursor;
    .registers 14

    .line 787
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    invoke-direct {v0}, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;-><init>()V

    const-string v1, "_id"

    const-string v2, "relative_path"

    const-string v3, "_display_name"

    const-string v4, "volume_name"

    const-string v5, "mime_type"

    const-string v6, "datetaken"

    const-string v7, "width"

    const-string v8, "height"

    const-string v9, "orientation"

    const-string v10, "bucket_id"

    .line 788
    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->projection:[Ljava/lang/String;

    .line 802
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%s DESC"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "title"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->sortOrder:Ljava/lang/String;

    .line 805
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 807
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(_display_name REGEXP \'DSCPDC_\\d{4}_BURST"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "(|_"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "COVER"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ").[jJ][pP][eE]?[gG]\')"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " AND "

    .line 815
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 816
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(bucket_id=="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 817
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->where:Ljava/lang/String;

    .line 818
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mResolver:Landroid/content/ContentResolver;

    const-string p2, "external"

    .line 819
    invoke-static {p2}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 818
    invoke-static {p1, p2, v0}, Lcom/sonyericsson/cameracommon/contentsview/PhotoStackQueryHelper;->crQuery(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;)Landroid/database/Cursor;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_9a

    .line 822
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_99

    const-string p1, "getPredictiveCaptureImageInfo: null"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_99
    return-object p2

    .line 824
    :cond_9a
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_b1

    .line 825
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_ad

    const-string v0, "getPredictiveCaptureImageInfo: row: 0"

    .line 826
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 827
    :cond_ad
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p2

    :cond_b1
    return-object p1
.end method

.method private isSupportedFileExtension(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p2, :cond_4

    return v0

    .line 1025
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    const/4 p1, 0x1

    return p1

    :cond_14
    return v0
.end method

.method private isVideoHdr(Landroid/net/Uri;Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p2, :cond_62

    const-string v1, "video/mp4"

    .line 610
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    const-string v1, "video/mpeg"

    .line 611
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    const-string v1, "video/webm"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1c

    goto :goto_62

    .line 614
    :cond_1c
    new-instance p2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {p2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 616
    :try_start_21
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "r"

    .line 617
    invoke-virtual {v1, p1, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    .line 616
    invoke-virtual {p2, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V

    const/16 p1, 0x3ea

    .line 619
    invoke-virtual {p2, p1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x3eb

    .line 621
    invoke-virtual {p2, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    if-eqz p1, :cond_48

    .line 622
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_49

    :cond_48
    move p1, v2

    :goto_49
    if-eqz v1, :cond_4f

    .line 623
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_4f} :catch_58
    .catchall {:try_start_21 .. :try_end_4f} :catchall_5c

    :cond_4f
    const/4 v1, 0x6

    if-ne v1, p1, :cond_58

    if-eq v1, v2, :cond_57

    const/4 p1, 0x7

    if-ne p1, v2, :cond_58

    :cond_57
    const/4 v0, 0x1

    .line 633
    :catch_58
    :cond_58
    :try_start_58
    invoke-virtual {p2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_5b} :catch_61

    goto :goto_61

    :catchall_5c
    move-exception p1

    :try_start_5d
    invoke-virtual {p2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_60} :catch_60

    .line 637
    :catch_60
    throw p1

    :catch_61
    :goto_61
    return v0

    :cond_62
    :goto_62
    return v0
.end method

.method private setupQueryParam(Ljava/util/List;I)Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)",
            "Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;"
        }
    .end annotation

    .line 297
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1e

    new-array v0, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setupQueryParam() has been called. offset = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 299
    :cond_1e
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 301
    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/cameracommon/storage/DataLoader;->generateQueryPathForEachStorage(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    .line 303
    new-instance p1, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    invoke-direct {p1}, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;-><init>()V

    const-string v3, "_id"

    const-string v4, "relative_path"

    const-string v5, "_display_name"

    const-string v6, "volume_name"

    const-string v7, "mime_type"

    const-string v8, "datetaken"

    const-string v9, "width"

    const-string v10, "height"

    const-string v11, "orientation"

    const-string v12, "bucket_id"

    .line 304
    filled-new-array/range {v3 .. v12}, [Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->projection:[Ljava/lang/String;

    .line 316
    iput p2, p1, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->offset:I

    .line 317
    iput v2, p1, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->limit:I

    .line 318
    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%s DESC, %s DESC"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "datetaken"

    aput-object v5, v4, v1

    const-string v5, "_id"

    aput-object v5, v4, v2

    invoke-static {p2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->sortOrder:Ljava/lang/String;

    .line 322
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 323
    invoke-direct {p0, p2, v0, v1}, Lcom/sonyericsson/cameracommon/storage/DataLoader;->appendWhere(Ljava/lang/StringBuilder;Ljava/util/List;Z)V

    const-string v0, " AND (media_type==1 OR media_type==3)"

    .line 324
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/storage/DataLoader;->excludeFileSelection()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/sonyericsson/cameracommon/storage/DataLoader;->appendWhere(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 334
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->where:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public call()Ljava/lang/Long;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 202
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "call() has been called."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_d
    const-wide/16 v0, 0x0

    .line 208
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 212
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mParam:Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    if-eqz v3, :cond_1d

    .line 213
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/storage/DataLoader;->getLatestImageInfo()Landroid/database/Cursor;

    move-result-object v3

    goto :goto_2c

    .line 214
    :cond_1d
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mMediaUris:Ljava/util/ArrayList;

    if-eqz v3, :cond_26

    .line 215
    invoke-direct {p0, v3}, Lcom/sonyericsson/cameracommon/storage/DataLoader;->getImagesInfo(Ljava/util/ArrayList;)Landroid/database/Cursor;

    move-result-object v3

    goto :goto_2c

    .line 217
    :cond_26
    iget v3, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mMediaId:I

    invoke-direct {p0, v3}, Lcom/sonyericsson/cameracommon/storage/DataLoader;->getCoverImageInfo(I)Landroid/database/Cursor;

    move-result-object v3

    :goto_2c
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_fd

    .line 222
    :try_start_31
    sget-boolean v7, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v7, :cond_51

    .line 223
    new-array v7, v5, [Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cursor count = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-static {v7}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 226
    :cond_51
    iget-object v7, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mMediaUris:Ljava/util/ArrayList;

    if-eqz v7, :cond_68

    .line 227
    :goto_55
    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v7

    if-nez v7, :cond_fd

    .line 228
    invoke-direct {p0, v3}, Lcom/sonyericsson/cameracommon/storage/DataLoader;->createContentInfoForMediaUris(Landroid/database/Cursor;)Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    move-result-object v7

    if-eqz v7, :cond_64

    .line 230
    invoke-virtual {v2, v7}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 232
    :cond_64
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_55

    .line 236
    :cond_68
    invoke-direct {p0, v3}, Lcom/sonyericsson/cameracommon/storage/DataLoader;->createContentInfo(Landroid/database/Cursor;)Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    move-result-object v7

    if-eqz v7, :cond_dd

    .line 238
    iget-object v8, v7, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mOriginalPath:Ljava/lang/String;

    .line 239
    invoke-static {v8}, Lcom/sonyericsson/cameracommon/storage/PredictiveCapturePathBuilder;->isPredictiveCaptureImage(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a9

    .line 240
    iget-object v8, v7, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mOriginalPath:Ljava/lang/String;

    .line 241
    invoke-static {v8}, Lcom/sonyericsson/cameracommon/storage/PredictiveCapturePathBuilder;->getTimeStamp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 242
    iget v9, v7, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mBucketId:I

    .line 243
    invoke-direct {p0, v8, v9}, Lcom/sonyericsson/cameracommon/storage/DataLoader;->getPredictiveCaptureImageInfo(Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v8
    :try_end_82
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_82} :catch_e6
    .catchall {:try_start_31 .. :try_end_82} :catchall_e3

    if-eqz v8, :cond_a3

    .line 246
    :try_start_84
    invoke-direct {p0, v8}, Lcom/sonyericsson/cameracommon/storage/DataLoader;->createContentInfo(Landroid/database/Cursor;)Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    move-result-object v7
    :try_end_88
    .catch Ljava/lang/Throwable; {:try_start_84 .. :try_end_88} :catch_8c
    .catchall {:try_start_84 .. :try_end_88} :catchall_89

    goto :goto_a3

    :catchall_89
    move-exception v0

    move-object v1, v6

    goto :goto_92

    :catch_8c
    move-exception v0

    .line 242
    :try_start_8d
    throw v0
    :try_end_8e
    .catchall {:try_start_8d .. :try_end_8e} :catchall_8e

    :catchall_8e
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    :goto_92
    if-eqz v8, :cond_a2

    if-eqz v1, :cond_9f

    .line 249
    :try_start_96
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_99
    .catch Ljava/lang/Throwable; {:try_start_96 .. :try_end_99} :catch_9a
    .catchall {:try_start_96 .. :try_end_99} :catchall_e3

    goto :goto_a2

    :catch_9a
    move-exception v2

    :try_start_9b
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_a2

    :cond_9f
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_a2
    :goto_a2
    throw v0

    :cond_a3
    :goto_a3
    if-eqz v8, :cond_dd

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_dd

    .line 250
    :cond_a9
    iget-object v8, v7, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mOriginalPath:Ljava/lang/String;

    .line 251
    invoke-static {v8}, Lcom/sonyericsson/cameracommon/storage/ManualBurstPathBuilder;->isBurstCaptureImage(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_dd

    .line 252
    iget v8, v7, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mBucketId:I

    .line 253
    invoke-direct {p0, v8}, Lcom/sonyericsson/cameracommon/storage/DataLoader;->getBurstCaptureImageInfo(I)Landroid/database/Cursor;

    move-result-object v8
    :try_end_b7
    .catch Ljava/lang/Throwable; {:try_start_9b .. :try_end_b7} :catch_e6
    .catchall {:try_start_9b .. :try_end_b7} :catchall_e3

    if-eqz v8, :cond_d8

    .line 255
    :try_start_b9
    invoke-direct {p0, v8}, Lcom/sonyericsson/cameracommon/storage/DataLoader;->createContentInfo(Landroid/database/Cursor;)Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    move-result-object v7
    :try_end_bd
    .catch Ljava/lang/Throwable; {:try_start_b9 .. :try_end_bd} :catch_c1
    .catchall {:try_start_b9 .. :try_end_bd} :catchall_be

    goto :goto_d8

    :catchall_be
    move-exception v0

    move-object v1, v6

    goto :goto_c7

    :catch_c1
    move-exception v0

    .line 252
    :try_start_c2
    throw v0
    :try_end_c3
    .catchall {:try_start_c2 .. :try_end_c3} :catchall_c3

    :catchall_c3
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    :goto_c7
    if-eqz v8, :cond_d7

    if-eqz v1, :cond_d4

    .line 258
    :try_start_cb
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_ce
    .catch Ljava/lang/Throwable; {:try_start_cb .. :try_end_ce} :catch_cf
    .catchall {:try_start_cb .. :try_end_ce} :catchall_e3

    goto :goto_d7

    :catch_cf
    move-exception v2

    :try_start_d0
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_d7

    :cond_d4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_d7
    :goto_d7
    throw v0

    :cond_d8
    :goto_d8
    if-eqz v8, :cond_dd

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_dd
    :goto_dd
    if-eqz v7, :cond_fd

    .line 262
    invoke-virtual {v2, v7}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V
    :try_end_e2
    .catch Ljava/lang/Throwable; {:try_start_d0 .. :try_end_e2} :catch_e6
    .catchall {:try_start_d0 .. :try_end_e2} :catchall_e3

    goto :goto_fd

    :catchall_e3
    move-exception v0

    move-object v1, v6

    goto :goto_ec

    :catch_e6
    move-exception v0

    .line 220
    :try_start_e7
    throw v0
    :try_end_e8
    .catchall {:try_start_e7 .. :try_end_e8} :catchall_e8

    :catchall_e8
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    :goto_ec
    if-eqz v3, :cond_fc

    if-eqz v1, :cond_f9

    .line 266
    :try_start_f0
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_f3
    .catch Ljava/lang/Throwable; {:try_start_f0 .. :try_end_f3} :catch_f4
    .catchall {:try_start_f0 .. :try_end_f3} :catchall_103

    goto :goto_fc

    :catch_f4
    move-exception v2

    :try_start_f5
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_fc

    :cond_f9
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_fc
    :goto_fc
    throw v0

    :cond_fd
    :goto_fd
    if-eqz v3, :cond_109

    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_102
    .catchall {:try_start_f5 .. :try_end_102} :catchall_103

    goto :goto_109

    :catchall_103
    move-exception v0

    .line 267
    iput-object v6, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mParam:Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    .line 268
    iput-object v6, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mMediaUris:Ljava/util/ArrayList;

    .line 269
    throw v0

    .line 267
    :cond_109
    :goto_109
    iput-object v6, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mParam:Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    .line 268
    iput-object v6, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mMediaUris:Ljava/util/ArrayList;

    .line 271
    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_13b

    .line 272
    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    iget-wide v0, v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mId:J

    .line 273
    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    iget-boolean v3, v3, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mIsContainDetails:Z

    if-eqz v3, :cond_13a

    .line 274
    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    invoke-direct {p0, v3}, Lcom/sonyericsson/cameracommon/storage/DataLoader;->decodeThumbnail(Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_139

    .line 276
    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    iput-boolean v5, v4, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mIsMediaDataVerified:Z

    :cond_139
    move-object v6, v3

    :cond_13a
    move v4, v5

    :cond_13b
    if-eqz v4, :cond_147

    .line 283
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mDataLoadCallback:Lcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;

    iget v4, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mRequestId:I

    iget-boolean v5, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mIsRegisterCache:Z

    invoke-interface {v3, v4, v5, v2, v6}, Lcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;->onDataLoadCompleted(IZLjava/util/LinkedList;Landroid/graphics/Bitmap;)V

    goto :goto_14e

    .line 286
    :cond_147
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mDataLoadCallback:Lcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;

    iget v3, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mRequestId:I

    invoke-interface {v2, v3}, Lcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;->onDataLoadFailed(I)V

    .line 288
    :goto_14e
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 49
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/DataLoader;->call()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
