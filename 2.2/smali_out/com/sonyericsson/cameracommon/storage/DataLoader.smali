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
.field private static final COLUMN_INDEX_BUCKETID:I = 0x7

.field private static final COLUMN_INDEX_DATA:I = 0x1

.field private static final COLUMN_INDEX_HEIGHT:I = 0x5

.field private static final COLUMN_INDEX_ID:I = 0x0

.field private static final COLUMN_INDEX_MIME:I = 0x2

.field private static final COLUMN_INDEX_ORIENTATION:I = 0x6

.field private static final COLUMN_INDEX_WIDTH:I = 0x4

.field public static final EXTENDED_FILES_COLUMN_ID:Ljava/lang/String; = "files_id"

.field public static final EXTENDED_FILES_CONTENT_URI:Landroid/net/Uri;

.field public static final PANORAMA_ASPECT_THRESHOLD:F = 1.8777778f

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
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "external"

    .line 115
    invoke-static {v0}, Lcom/sonymobile/media/SomcMediaStore$ExtendedFiles;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->EXTENDED_FILES_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(ILandroid/net/Uri;Landroid/content/Context;Lcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;Z)V
    .registers 9

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ".JPG"

    const-string v1, ".3gp"

    const-string v2, ".mp4"

    .line 69
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->CONTENT_EXTENSIONS:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 83
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mParam:Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    .line 188
    iput p1, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mRequestId:I

    .line 190
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

    .line 192
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    .line 194
    :goto_28
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mContext:Landroid/content/Context;

    .line 195
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mResolver:Landroid/content/ContentResolver;

    .line 196
    iput-object p4, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mDataLoadCallback:Lcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;

    .line 197
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

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ".JPG"

    const-string v1, ".3gp"

    const-string v2, ".mp4"

    .line 69
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->CONTENT_EXTENSIONS:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 83
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mParam:Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    const/4 v0, -0x1

    .line 210
    iput v0, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mRequestId:I

    .line 211
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mContext:Landroid/content/Context;

    .line 212
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mResolver:Landroid/content/ContentResolver;

    .line 213
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mMediaUris:Ljava/util/ArrayList;

    .line 214
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mDataLoadCallback:Lcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;

    .line 215
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

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ".JPG"

    const-string v1, ".3gp"

    const-string v2, ".mp4"

    .line 69
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->CONTENT_EXTENSIONS:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 83
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mParam:Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    .line 169
    iput p3, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mRequestId:I

    .line 170
    invoke-direct {p0, p2, p4}, Lcom/sonyericsson/cameracommon/storage/DataLoader;->setupQueryParam(Ljava/util/List;I)Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    move-result-object p2

    iput-object p2, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mParam:Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    .line 171
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mContext:Landroid/content/Context;

    .line 172
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mResolver:Landroid/content/ContentResolver;

    .line 173
    iput-object p5, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mDataLoadCallback:Lcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;

    .line 174
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

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ".JPG"

    const-string v1, ".3gp"

    const-string v2, ".mp4"

    .line 69
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->CONTENT_EXTENSIONS:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 83
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mParam:Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    const/4 v0, -0x1

    .line 150
    iput v0, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mRequestId:I

    .line 151
    invoke-direct {p0, p2, p3}, Lcom/sonyericsson/cameracommon/storage/DataLoader;->setupQueryParam(Ljava/util/List;I)Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    move-result-object p2

    iput-object p2, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mParam:Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    .line 152
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mContext:Landroid/content/Context;

    .line 153
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mResolver:Landroid/content/ContentResolver;

    .line 154
    iput-object p4, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mDataLoadCallback:Lcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;

    .line 155
    iput-boolean p5, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mIsRegisterCache:Z

    return-void
.end method

.method private createAntiAliasBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 10

    if-eqz p1, :cond_14

    .line 757
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-nez p0, :cond_14

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p1

    move v3, p2

    move v4, p2

    .line 758
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_14
    const/4 p0, 0x0

    return-object p0
.end method

.method private createContentInfo(Landroid/database/Cursor;)Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;
    .registers 3

    const/4 v0, 0x1

    .line 528
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/cameracommon/storage/DataLoader;->createContentInfo(Landroid/database/Cursor;Z)Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    move-result-object p0

    return-object p0
.end method

.method private createContentInfo(Landroid/database/Cursor;Z)Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 425
    invoke-direct/range {p0 .. p1}, Lcom/sonyericsson/cameracommon/storage/DataLoader;->getMediaId(Landroid/database/Cursor;)I

    move-result v3

    const/4 v4, 0x2

    .line 426
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    .line 427
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x4

    .line 428
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/4 v9, 0x5

    .line 429
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const/4 v10, 0x7

    .line 430
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 431
    invoke-static {v7}, Lcom/sonyericsson/cameracommon/utility/CommonUtility;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "image/jpeg"

    .line 435
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    const/4 v13, 0x0

    if-nez v12, :cond_a9

    const-string v12, ".JPG"

    .line 436
    invoke-direct {v0, v12, v11}, Lcom/sonyericsson/cameracommon/storage/DataLoader;->isSupportedFileExtension(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3a

    goto/16 :goto_a9

    :cond_3a
    const-string v12, "video/mp4"

    .line 441
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_9e

    const-string v12, ".mp4"

    .line 442
    invoke-direct {v0, v12, v11}, Lcom/sonyericsson/cameracommon/storage/DataLoader;->isSupportedFileExtension(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4b

    goto :goto_9e

    :cond_4b
    const-string v12, "video/3gpp"

    .line 447
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_93

    const-string v12, ".3gp"

    .line 448
    invoke-direct {v0, v12, v11}, Lcom/sonyericsson/cameracommon/storage/DataLoader;->isSupportedFileExtension(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5c

    goto :goto_93

    :cond_5c
    const-string v4, "image/mpo"

    .line 453
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_75

    .line 454
    sget-object v4, Lcom/sonyericsson/cameracommon/contentsview/QueryParameterAdapter;->MPO_3DPICTURES_CONTENT_URI:Landroid/net/Uri;

    .line 456
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    .line 454
    invoke-static {v4, v11}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v11, 0x3

    move/from16 v16, v11

    move-object v11, v4

    move/from16 v4, v16

    goto :goto_b5

    .line 459
    :cond_75
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_91

    new-array v0, v6, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "query error : mime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v13

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_91
    const/4 v0, 0x0

    return-object v0

    .line 450
    :cond_93
    :goto_93
    sget-object v11, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 451
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    .line 450
    invoke-static {v11, v12}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    goto :goto_b5

    .line 444
    :cond_9e
    :goto_9e
    sget-object v11, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 445
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    .line 444
    invoke-static {v11, v12}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    goto :goto_b5

    .line 438
    :cond_a9
    :goto_a9
    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 439
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    .line 438
    invoke-static {v4, v11}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-object v11, v4

    move v4, v6

    :goto_b5
    if-ne v4, v6, :cond_bc

    const/4 v6, 0x6

    .line 465
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 470
    :cond_bc
    new-instance v1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    invoke-direct {v1}, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;-><init>()V

    int-to-long v14, v3

    .line 471
    iput-wide v14, v1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mId:J

    .line 472
    iput-object v11, v1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mOriginalUri:Landroid/net/Uri;

    .line 473
    iput-object v7, v1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mOriginalPath:Ljava/lang/String;

    .line 474
    iput v4, v1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mType:I

    .line 475
    iput v8, v1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mWidth:I

    .line 476
    iput v9, v1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mHeight:I

    .line 477
    iput v13, v1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mOrientation:I

    .line 478
    iput-object v5, v1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mMimeType:Ljava/lang/String;

    .line 479
    iput v10, v1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mBucketId:I

    .line 480
    iput-boolean v2, v1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mIsContainDetails:Z

    if-eqz v2, :cond_fc

    .line 482
    invoke-direct {v0, v10}, Lcom/sonyericsson/cameracommon/storage/DataLoader;->getGroupedImageCount(I)I

    move-result v2

    iput v2, v1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mGroupedImage:I

    .line 483
    invoke-direct {v0, v7}, Lcom/sonyericsson/cameracommon/storage/DataLoader;->getSomcType(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mSomcType:I

    .line 484
    invoke-direct {v0, v7}, Lcom/sonyericsson/cameracommon/storage/DataLoader;->isVideoHdr(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mIsVideoHdr:Z

    .line 485
    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/storage/DataLoader;->getContentType(Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;)Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    move-result-object v2

    iput-object v2, v1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mContentType:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    .line 486
    iget-object v2, v1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mContentType:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    sget-object v3, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->BURST:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    if-ne v2, v3, :cond_fc

    .line 487
    invoke-direct {v0, v10, v1}, Lcom/sonyericsson/cameracommon/storage/DataLoader;->getGroupedImageMediaID(ILcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mMediaStoreIds:Ljava/util/List;

    :cond_fc
    return-object v1
.end method

.method private createContentInfoForMediaUris(Landroid/database/Cursor;)Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;
    .registers 3

    const/4 v0, 0x0

    .line 538
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/cameracommon/storage/DataLoader;->createContentInfo(Landroid/database/Cursor;Z)Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    move-result-object p0

    return-object p0
.end method

.method private decodeThumbnail(Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;)Landroid/graphics/Bitmap;
    .registers 5

    .line 737
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "decodeThumbnail() has been called."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_d
    const/4 v0, 0x0

    if-eqz p1, :cond_4d

    .line 741
    iget-object v0, p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mOriginalPath:Ljava/lang/String;

    if-nez v0, :cond_1e

    .line 742
    iget-wide v0, p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mId:J

    iget v2, p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mType:I

    invoke-direct {p0, v0, v1, v2}, Lcom/sonyericsson/cameracommon/storage/DataLoader;->getMediaPath(JI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mOriginalPath:Ljava/lang/String;

    .line 744
    :cond_1e
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/contentsview/ThumbnailFactory;->createMicroThumbnail(Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_2e

    .line 747
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/cameracommon/storage/DataLoader;->createAntiAliasBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p0

    move-object v0, p0

    goto :goto_2f

    :cond_2e
    move-object v0, p1

    .line 750
    :goto_2f
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_4d

    const/4 p0, 0x1

    .line 751
    new-array p0, p0, [Ljava/lang/String;

    const/4 p1, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "decodeThumbnail(): thumbnail = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, p1

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_4d
    return-object v0
.end method

.method private varargs generatePathSelection([Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 399
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "("

    .line 400
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_data"

    .line 401
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " like \'"

    .line 402
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    array-length v0, p1

    const/4 v1, 0x0

    :goto_16
    if-ge v1, v0, :cond_2d

    aget-object v2, p1, v1

    const-string v3, "/"

    .line 404
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_27

    const/16 v3, 0x2f

    .line 405
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 407
    :cond_27
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_2d
    const-string p1, "\'"

    .line 409
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " AND "

    .line 410
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_data NOT LIKE \'%/.%\'"

    .line 411
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    .line 412
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
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

    .line 372
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 373
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/cameracommon/storage/DataLoader;->generateQueryPathForOneStorage(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    goto :goto_4

    :cond_14
    return-object p1
.end method

.method private generateQueryPathForOneStorage(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .registers 12
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

    .line 382
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->CONTENT_EXTENSIONS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_31

    aget-object v4, v0, v3

    const/4 v5, 0x3

    .line 384
    new-array v5, v5, [Ljava/lang/String;

    aput-object p2, v5, v2

    sget-object v6, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const/4 v6, 0x2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v6

    invoke-direct {p0, v5}, Lcom/sonyericsson/cameracommon/storage/DataLoader;->generatePathSelection([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_31
    return-object p1
.end method

.method private getContentType(Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;)Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;
    .registers 4

    .line 668
    iget p0, p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mType:I

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p0, v1, :cond_3a

    .line 669
    iget-object p0, p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mOriginalPath:Ljava/lang/String;

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/storage/PredictiveCapturePathBuilder;->isPredictiveCaptureImage(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_11

    .line 670
    sget-object p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->PREDICTIVE_CAPTURE:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    return-object p0

    .line 674
    :cond_11
    iget p0, p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mSomcType:I

    const/16 v1, 0x81

    if-eq p0, v1, :cond_37

    iget p0, p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mSomcType:I

    if-ne p0, v0, :cond_1c

    goto :goto_37

    .line 677
    :cond_1c
    iget p0, p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mSomcType:I

    const/16 v0, 0x82

    if-eq p0, v0, :cond_34

    iget p0, p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mSomcType:I

    const/4 v0, 0x4

    if-ne p0, v0, :cond_28

    goto :goto_34

    .line 680
    :cond_28
    iget p0, p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mSomcType:I

    const/16 p1, 0x2a

    if-ne p0, p1, :cond_31

    .line 681
    sget-object p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->SOUND_PHOTO:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    return-object p0

    .line 683
    :cond_31
    sget-object p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->PHOTO:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    return-object p0

    .line 679
    :cond_34
    :goto_34
    sget-object p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->TIME_SHIFT:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    return-object p0

    .line 676
    :cond_37
    :goto_37
    sget-object p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->BURST:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    return-object p0

    .line 687
    :cond_3a
    iget p0, p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mType:I

    if-ne p0, v0, :cond_9b

    .line 688
    iget p0, p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mSomcType:I

    const/16 v0, 0xc

    if-ne p0, v0, :cond_47

    .line 689
    sget-object p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->TIME_SHIFT_VIDEO:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    return-object p0

    .line 690
    :cond_47
    iget p0, p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mSomcType:I

    const/16 v0, 0xb

    if-ne p0, v0, :cond_50

    .line 691
    sget-object p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->TIME_SHIFT_VIDEO_120F:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    return-object p0

    .line 693
    :cond_50
    iget-object p0, p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mOriginalPath:Ljava/lang/String;

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/storage/SlowMotionPathBuilder;->isSuperSlowMotionVideo(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5b

    .line 694
    sget-object p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->SUPER_SLOW_MOTION_VIDEO:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    return-object p0

    .line 697
    :cond_5b
    iget-object p0, p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mOriginalPath:Ljava/lang/String;

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/storage/SlowMotionPathBuilder;->isSuperSlowShotVideo(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_66

    .line 698
    sget-object p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->SUPER_SLOW_SHOT_VIDEO:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    return-object p0

    .line 701
    :cond_66
    iget-object p0, p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mOriginalPath:Ljava/lang/String;

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/storage/SlowMotionPathBuilder;->isStandardSlowMotionVideo(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_71

    .line 702
    sget-object p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->STANDARD_SLOW_MOTION_VIDEO:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    return-object p0

    .line 705
    :cond_71
    iget-object p0, p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mOriginalPath:Ljava/lang/String;

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/storage/SlowMotionPathBuilder;->isHFRVideo(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7c

    .line 706
    sget-object p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->HIGH_FRAME_RATE_VIDEO:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    return-object p0

    .line 709
    :cond_7c
    iget p0, p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mWidth:I

    const/16 v0, 0xf00

    if-ge p0, v0, :cond_91

    iget p0, p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mHeight:I

    if-lt p0, v0, :cond_87

    goto :goto_91

    .line 716
    :cond_87
    iget-boolean p0, p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mIsVideoHdr:Z

    if-eqz p0, :cond_8e

    .line 717
    sget-object p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->HDR_VIDEO:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    return-object p0

    .line 719
    :cond_8e
    sget-object p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->VIDEO:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    return-object p0

    .line 711
    :cond_91
    :goto_91
    iget-boolean p0, p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mIsVideoHdr:Z

    if-eqz p0, :cond_98

    .line 712
    sget-object p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->HDR_VIDEO_4K:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    return-object p0

    .line 714
    :cond_98
    sget-object p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->VIDEO_4K:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    return-object p0

    .line 724
    :cond_9b
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_a8

    const-string p0, "Unsupported file type"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 725
    :cond_a8
    sget-object p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->NONE:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    return-object p0
.end method

.method private getCoverImageInfo(I)Landroid/database/Cursor;
    .registers 12

    .line 888
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    invoke-direct {v0}, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;-><init>()V

    const-string v1, "_id"

    const-string v2, "_data"

    const-string v3, "mime_type"

    const-string v4, "datetaken"

    const-string v5, "width"

    const-string v6, "height"

    const-string v7, "orientation"

    const-string v8, "bucket_id"

    const-string v9, "somctype"

    .line 889
    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->projection:[Ljava/lang/String;

    .line 896
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%s like \'%s\'"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "_id"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 897
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v4, 0x1

    aput-object p1, v3, v4

    .line 896
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->where:Ljava/lang/String;

    .line 899
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/sonyericsson/cameracommon/storage/DataLoader;->EXTENDED_FILES_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1, v1, v0}, Lcom/sonyericsson/cameracommon/contentsview/PhotoStackQueryHelper;->crQuery(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;)Landroid/database/Cursor;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_4f

    .line 902
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_4e

    const-string p0, "getCoverImageInfo: null"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_4e
    return-object v0

    .line 904
    :cond_4f
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_66

    .line 905
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_62

    const-string p0, "getCoverImageInfo: row: 0"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 906
    :cond_62
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0

    .line 910
    :cond_66
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_8a

    .line 911
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/storage/DataLoader;->getSomcType(Ljava/lang/String;)I

    move-result p0

    .line 912
    new-array v0, v4, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCoverImageInfo somcType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v5

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_8a
    return-object p1
.end method

.method private getGroupedImageCount(I)I
    .registers 10

    .line 562
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

    .line 565
    :cond_1e
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    invoke-direct {v0}, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;-><init>()V

    const-string v3, "bucket_id"

    .line 566
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->projection:[Ljava/lang/String;

    .line 569
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

    .line 571
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%s like \'%s\'"

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "bucket_id"

    aput-object v6, v5, v1

    .line 572
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v2

    .line 571
    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->where:Ljava/lang/String;

    .line 574
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mResolver:Landroid/content/ContentResolver;

    sget-object p1, Lcom/sonyericsson/cameracommon/storage/DataLoader;->EXTENDED_FILES_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, p1, v0}, Lcom/sonyericsson/cameracommon/contentsview/PhotoStackQueryHelper;->crQuery(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;)Landroid/database/Cursor;

    move-result-object p0

    if-nez p0, :cond_61

    return v2

    .line 582
    :cond_61
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p1

    .line 583
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return p1
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

    .line 495
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 496
    new-instance v1, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    invoke-direct {v1}, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;-><init>()V

    const-string v2, "bucket_id"

    const-string v3, "_id"

    .line 497
    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->projection:[Ljava/lang/String;

    .line 501
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

    .line 503
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%s like \'%s\'"

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "bucket_id"

    aput-object v5, v4, v7

    .line 504
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v8

    .line 503
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->where:Ljava/lang/String;

    .line 506
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mResolver:Landroid/content/ContentResolver;

    sget-object p1, Lcom/sonyericsson/cameracommon/storage/DataLoader;->EXTENDED_FILES_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, p1, v1}, Lcom/sonyericsson/cameracommon/contentsview/PhotoStackQueryHelper;->crQuery(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;)Landroid/database/Cursor;

    move-result-object p0

    if-nez p0, :cond_55

    .line 510
    iget-wide p1, p2, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mId:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_75

    .line 512
    :cond_55
    :goto_55
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_75

    const-string p1, "_id"

    .line 513
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 514
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_55

    .line 517
    :cond_75
    :goto_75
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v0
.end method

.method private getImagesInfo(Ljava/util/ArrayList;)Landroid/database/Cursor;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .line 924
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

    .line 925
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 926
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 927
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 930
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    invoke-direct {v0}, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;-><init>()V

    const-string v4, "_id"

    const-string v5, "_data"

    const-string v6, "mime_type"

    const-string v7, "datetaken"

    const-string v8, "width"

    const-string v9, "height"

    const-string v10, "orientation"

    const-string v11, "bucket_id"

    const-string v12, "somctype"

    .line 931
    filled-new-array/range {v4 .. v12}, [Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->projection:[Ljava/lang/String;

    .line 938
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%s >= \'%s\' AND %s <= \'%s\'"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "_id"

    aput-object v7, v6, v2

    .line 939
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v1

    const-string v1, "_id"

    const/4 v2, 0x2

    aput-object v1, v6, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x3

    aput-object p1, v6, v1

    .line 938
    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->where:Ljava/lang/String;

    .line 941
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mResolver:Landroid/content/ContentResolver;

    sget-object p1, Lcom/sonyericsson/cameracommon/storage/DataLoader;->EXTENDED_FILES_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, p1, v0}, Lcom/sonyericsson/cameracommon/contentsview/PhotoStackQueryHelper;->crQuery(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;)Landroid/database/Cursor;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_84

    .line 944
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_83

    const-string p0, "getImagesInfo: null"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_83
    return-object p1

    .line 946
    :cond_84
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_9b

    .line 947
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_97

    const-string v0, "getImagesInfo: row: 0"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 948
    :cond_97
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1

    :cond_9b
    return-object p0
.end method

.method private getLatestImageInfo()Landroid/database/Cursor;
    .registers 3

    .line 865
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/sonyericsson/cameracommon/storage/DataLoader;->EXTENDED_FILES_CONTENT_URI:Landroid/net/Uri;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mParam:Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    invoke-static {v0, v1, p0}, Lcom/sonyericsson/cameracommon/contentsview/PhotoStackQueryHelper;->crQuery(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;)Landroid/database/Cursor;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_1b

    .line 869
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_1a

    const-string p0, "getLatestImageInfo: null"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1a
    return-object v0

    .line 871
    :cond_1b
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_32

    .line 872
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v1, :cond_2e

    const-string v1, "getLatestImageInfo: row: 0"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 873
    :cond_2e
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v0

    :cond_32
    return-object p0
.end method

.method private getMediaId(Landroid/database/Cursor;)I
    .registers 5

    const/4 p0, 0x0

    .line 548
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    .line 550
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMediaId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_22
    return p1
.end method

.method private getMediaPath(JI)Ljava/lang/String;
    .registers 12

    .line 765
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    invoke-direct {v0}, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;-><init>()V

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    packed-switch p3, :pswitch_data_84

    return-object v3

    .line 779
    :pswitch_d
    sget-object p3, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v5, "_data"

    .line 780
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->projection:[Ljava/lang/String;

    .line 781
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%s=%s"

    new-array v1, v1, [Ljava/lang/Object;

    const-string v7, "_id"

    aput-object v7, v1, v4

    .line 782
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, v2

    .line 781
    invoke-static {v5, v6, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->where:Ljava/lang/String;

    .line 783
    iput v4, v0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->offset:I

    .line 784
    iput v2, v0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->limit:I

    goto :goto_56

    .line 770
    :pswitch_32
    sget-object p3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v5, "_data"

    .line 771
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->projection:[Ljava/lang/String;

    .line 772
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%s=%s"

    new-array v1, v1, [Ljava/lang/Object;

    const-string v7, "_id"

    aput-object v7, v1, v4

    .line 773
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, v2

    .line 772
    invoke-static {v5, v6, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->where:Ljava/lang/String;

    .line 774
    iput v4, v0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->offset:I

    .line 775
    iput v2, v0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->limit:I

    .line 791
    :goto_56
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mResolver:Landroid/content/ContentResolver;

    invoke-static {p0, p3, v0}, Lcom/sonyericsson/cameracommon/contentsview/PhotoStackQueryHelper;->crQuery(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;)Landroid/database/Cursor;

    move-result-object p0

    if-nez p0, :cond_5f

    return-object v3

    .line 797
    :cond_5f
    :try_start_5f
    invoke-interface {p0, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result p1

    if-eqz p1, :cond_6d

    .line 798
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_69
    .catch Ljava/lang/RuntimeException; {:try_start_5f .. :try_end_69} :catch_73
    .catchall {:try_start_5f .. :try_end_69} :catchall_71

    .line 804
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1

    :cond_6d
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v3

    :catchall_71
    move-exception p1

    goto :goto_80

    :catch_73
    :try_start_73
    const-string p1, "The specified column isn\'t found."

    .line 801
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V
    :try_end_7c
    .catchall {:try_start_73 .. :try_end_7c} :catchall_71

    .line 804
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v3

    :goto_80
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 805
    throw p1

    :pswitch_data_84
    .packed-switch 0x1
        :pswitch_32
        :pswitch_d
        :pswitch_32
    .end packed-switch
.end method

.method private getPredictiveCaptureImageInfo(Ljava/lang/String;I)Landroid/database/Cursor;
    .registers 12

    .line 815
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    invoke-direct {v0}, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;-><init>()V

    const-string v1, "_id"

    const-string v2, "_data"

    const-string v3, "mime_type"

    const-string v4, "datetaken"

    const-string v5, "width"

    const-string v6, "height"

    const-string v7, "orientation"

    const-string v8, "bucket_id"

    .line 816
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->projection:[Ljava/lang/String;

    .line 828
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

    .line 831
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 833
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(_data REGEXP \'.*/DSCPDC_\\d{4}_BURST"

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

    .line 841
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 842
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

    .line 843
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->where:Ljava/lang/String;

    .line 844
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mResolver:Landroid/content/ContentResolver;

    sget-object p1, Lcom/sonyericsson/cameracommon/storage/DataLoader;->EXTENDED_FILES_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, p1, v0}, Lcom/sonyericsson/cameracommon/contentsview/PhotoStackQueryHelper;->crQuery(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;)Landroid/database/Cursor;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_92

    .line 847
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_91

    const-string p0, "getPredictiveCaptureImageInfo: null"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_91
    return-object p1

    .line 849
    :cond_92
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-nez p2, :cond_a9

    .line 850
    sget-boolean p2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p2, :cond_a5

    const-string p2, "getPredictiveCaptureImageInfo: row: 0"

    .line 851
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 852
    :cond_a5
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1

    :cond_a9
    return-object p0
.end method

.method private getSomcType(Ljava/lang/String;)I
    .registers 10

    .line 596
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1e

    new-array v0, v1, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSomcType path : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 599
    :cond_1e
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    invoke-direct {v0}, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;-><init>()V

    const-string v3, "_data"

    const-string v4, "somctype"

    .line 600
    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->projection:[Ljava/lang/String;

    .line 604
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%s DESC, %s DESC"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    const-string v7, "datetaken"

    aput-object v7, v6, v2

    const-string v7, "_id"

    aput-object v7, v6, v1

    invoke-static {v3, v4, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->sortOrder:Ljava/lang/String;

    .line 606
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%s like \'%s\'"

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "_data"

    aput-object v6, v5, v2

    aput-object p1, v5, v1

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->where:Ljava/lang/String;

    .line 608
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mResolver:Landroid/content/ContentResolver;

    sget-object p1, Lcom/sonyericsson/cameracommon/storage/DataLoader;->EXTENDED_FILES_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, p1, v0}, Lcom/sonyericsson/cameracommon/contentsview/PhotoStackQueryHelper;->crQuery(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;)Landroid/database/Cursor;

    move-result-object p0

    if-nez p0, :cond_5f

    return v2

    .line 615
    :cond_5f
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_70

    const-string p1, "somctype"

    .line 616
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    goto :goto_71

    :cond_70
    move p1, v2

    .line 619
    :goto_71
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 620
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_90

    new-array p0, v1, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "somcType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p0, v2

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_90
    return p1
.end method

.method private isSupportedFileExtension(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    const/4 p0, 0x0

    if-nez p2, :cond_4

    return p0

    .line 965
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    return p0
.end method

.method private isVideoHdr(Ljava/lang/String;)Z
    .registers 10

    .line 633
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    invoke-direct {v0}, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;-><init>()V

    const-string v1, "_data"

    const-string v2, "is_hdr"

    .line 634
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->projection:[Ljava/lang/String;

    .line 638
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%s DESC, %s DESC"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "datetaken"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, "_id"

    const/4 v7, 0x1

    aput-object v5, v4, v7

    .line 639
    invoke-static {v1, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->sortOrder:Ljava/lang/String;

    .line 641
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%s like \'%s\'"

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "_data"

    aput-object v4, v3, v6

    aput-object p1, v3, v7

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->where:Ljava/lang/String;

    .line 643
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mResolver:Landroid/content/ContentResolver;

    sget-object p1, Lcom/sonyericsson/cameracommon/storage/DataLoader;->EXTENDED_FILES_CONTENT_URI:Landroid/net/Uri;

    .line 644
    invoke-static {p0, p1, v0}, Lcom/sonyericsson/cameracommon/contentsview/PhotoStackQueryHelper;->crQuery(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_5d

    .line 648
    :try_start_42
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_5d

    const-string p1, "is_hdr"

    .line 650
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 649
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1
    :try_end_52
    .catchall {:try_start_42 .. :try_end_52} :catchall_56

    if-ne p1, v7, :cond_5d

    move v6, v7

    goto :goto_5d

    :catchall_56
    move-exception p1

    if-eqz p0, :cond_5c

    .line 655
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 657
    :cond_5c
    throw p1

    :cond_5d
    :goto_5d
    if-eqz p0, :cond_62

    .line 655
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_62
    return v6
.end method

.method private setupQueryParam(Ljava/util/List;I)Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)",
            "Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;"
        }
    .end annotation

    .line 313
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

    .line 315
    :cond_1e
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 317
    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/cameracommon/storage/DataLoader;->generateQueryPathForEachStorage(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    .line 319
    new-instance p0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;-><init>()V

    const-string v3, "_id"

    const-string v4, "_data"

    const-string v5, "mime_type"

    const-string v6, "datetaken"

    const-string v7, "width"

    const-string v8, "height"

    const-string v9, "orientation"

    const-string v10, "bucket_id"

    .line 320
    filled-new-array/range {v3 .. v10}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->projection:[Ljava/lang/String;

    .line 330
    iput p2, p0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->offset:I

    .line 331
    iput v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->limit:I

    .line 332
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string p2, "%s DESC, %s DESC"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "datetaken"

    aput-object v4, v3, v1

    const-string v4, "_id"

    aput-object v4, v3, v2

    invoke-static {p1, p2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->sortOrder:Ljava/lang/String;

    .line 336
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "(somctype!=129)"

    .line 337
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " AND (media_type==1 OR media_type==3)"

    .line 342
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " AND "

    .line 351
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "(somctype!=130)"

    .line 352
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " AND ("

    .line 357
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    :goto_78
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge v1, p2, :cond_91

    if-eqz v1, :cond_85

    const-string p2, " OR "

    .line 360
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    :cond_85
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_78

    :cond_91
    const-string p2, ")"

    .line 364
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->where:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public call()Ljava/lang/Long;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 227
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "call() has been called."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_d
    const-wide/16 v0, 0x0

    .line 233
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 237
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mParam:Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    if-eqz v3, :cond_1d

    .line 238
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/storage/DataLoader;->getLatestImageInfo()Landroid/database/Cursor;

    move-result-object v3

    goto :goto_2e

    .line 239
    :cond_1d
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mMediaUris:Ljava/util/ArrayList;

    if-eqz v3, :cond_28

    .line 240
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mMediaUris:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lcom/sonyericsson/cameracommon/storage/DataLoader;->getImagesInfo(Ljava/util/ArrayList;)Landroid/database/Cursor;

    move-result-object v3

    goto :goto_2e

    .line 242
    :cond_28
    iget v3, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mMediaId:I

    invoke-direct {p0, v3}, Lcom/sonyericsson/cameracommon/storage/DataLoader;->getCoverImageInfo(I)Landroid/database/Cursor;

    move-result-object v3

    :goto_2e
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_ca

    .line 247
    :try_start_33
    sget-boolean v7, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v7, :cond_53

    .line 248
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

    .line 251
    :cond_53
    iget-object v7, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mMediaUris:Ljava/util/ArrayList;

    if-eqz v7, :cond_6a

    .line 252
    :goto_57
    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v7

    if-nez v7, :cond_ca

    .line 253
    invoke-direct {p0, v3}, Lcom/sonyericsson/cameracommon/storage/DataLoader;->createContentInfoForMediaUris(Landroid/database/Cursor;)Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    move-result-object v7

    if-eqz v7, :cond_66

    .line 255
    invoke-virtual {v2, v7}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 257
    :cond_66
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_57

    .line 261
    :cond_6a
    invoke-direct {p0, v3}, Lcom/sonyericsson/cameracommon/storage/DataLoader;->createContentInfo(Landroid/database/Cursor;)Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    move-result-object v7

    if-eqz v7, :cond_aa

    .line 263
    iget-object v8, v7, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mOriginalPath:Ljava/lang/String;

    .line 264
    invoke-static {v8}, Lcom/sonyericsson/cameracommon/storage/PredictiveCapturePathBuilder;->isPredictiveCaptureImage(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_aa

    .line 265
    iget-object v8, v7, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mOriginalPath:Ljava/lang/String;

    .line 266
    invoke-static {v8}, Lcom/sonyericsson/cameracommon/storage/PredictiveCapturePathBuilder;->getTimeStamp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 267
    iget v9, v7, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mBucketId:I

    .line 268
    invoke-direct {p0, v8, v9}, Lcom/sonyericsson/cameracommon/storage/DataLoader;->getPredictiveCaptureImageInfo(Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v8
    :try_end_84
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_84} :catch_b3
    .catchall {:try_start_33 .. :try_end_84} :catchall_b0

    if-eqz v8, :cond_a5

    .line 271
    :try_start_86
    invoke-direct {p0, v8}, Lcom/sonyericsson/cameracommon/storage/DataLoader;->createContentInfo(Landroid/database/Cursor;)Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    move-result-object v7
    :try_end_8a
    .catch Ljava/lang/Throwable; {:try_start_86 .. :try_end_8a} :catch_8e
    .catchall {:try_start_86 .. :try_end_8a} :catchall_8b

    goto :goto_a5

    :catchall_8b
    move-exception v0

    move-object v1, v6

    goto :goto_94

    :catch_8e
    move-exception v0

    .line 267
    :try_start_8f
    throw v0
    :try_end_90
    .catchall {:try_start_8f .. :try_end_90} :catchall_90

    :catchall_90
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    :goto_94
    if-eqz v8, :cond_a4

    if-eqz v1, :cond_a1

    .line 274
    :try_start_98
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_9b
    .catch Ljava/lang/Throwable; {:try_start_98 .. :try_end_9b} :catch_9c
    .catchall {:try_start_98 .. :try_end_9b} :catchall_b0

    goto :goto_a4

    :catch_9c
    move-exception v2

    :try_start_9d
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_a4

    :cond_a1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_a4
    :goto_a4
    throw v0

    :cond_a5
    :goto_a5
    if-eqz v8, :cond_aa

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_aa
    if-eqz v7, :cond_ca

    .line 278
    invoke-virtual {v2, v7}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V
    :try_end_af
    .catch Ljava/lang/Throwable; {:try_start_9d .. :try_end_af} :catch_b3
    .catchall {:try_start_9d .. :try_end_af} :catchall_b0

    goto :goto_ca

    :catchall_b0
    move-exception v0

    move-object v1, v6

    goto :goto_b9

    :catch_b3
    move-exception v0

    .line 245
    :try_start_b4
    throw v0
    :try_end_b5
    .catchall {:try_start_b4 .. :try_end_b5} :catchall_b5

    :catchall_b5
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    :goto_b9
    if-eqz v3, :cond_c9

    if-eqz v1, :cond_c6

    .line 282
    :try_start_bd
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_c0
    .catch Ljava/lang/Throwable; {:try_start_bd .. :try_end_c0} :catch_c1
    .catchall {:try_start_bd .. :try_end_c0} :catchall_d0

    goto :goto_c9

    :catch_c1
    move-exception v2

    :try_start_c2
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_c9

    :cond_c6
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_c9
    :goto_c9
    throw v0

    :cond_ca
    :goto_ca
    if-eqz v3, :cond_d6

    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_cf
    .catchall {:try_start_c2 .. :try_end_cf} :catchall_d0

    goto :goto_d6

    :catchall_d0
    move-exception v0

    .line 283
    iput-object v6, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mParam:Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    .line 284
    iput-object v6, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mMediaUris:Ljava/util/ArrayList;

    .line 285
    throw v0

    .line 283
    :cond_d6
    :goto_d6
    iput-object v6, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mParam:Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    .line 284
    iput-object v6, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mMediaUris:Ljava/util/ArrayList;

    .line 287
    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_108

    .line 288
    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    iget-wide v0, v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mId:J

    .line 289
    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    iget-boolean v3, v3, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mIsContainDetails:Z

    if-eqz v3, :cond_107

    .line 290
    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    invoke-direct {p0, v3}, Lcom/sonyericsson/cameracommon/storage/DataLoader;->decodeThumbnail(Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_106

    .line 292
    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    iput-boolean v5, v4, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mIsMediaDataVerified:Z

    :cond_106
    move-object v6, v3

    :cond_107
    move v4, v5

    :cond_108
    if-eqz v4, :cond_114

    .line 299
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mDataLoadCallback:Lcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;

    iget v4, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mRequestId:I

    iget-boolean p0, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mIsRegisterCache:Z

    invoke-interface {v3, v4, p0, v2, v6}, Lcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;->onDataLoadCompleted(IZLjava/util/LinkedList;Landroid/graphics/Bitmap;)V

    goto :goto_11b

    .line 302
    :cond_114
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mDataLoadCallback:Lcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;

    iget p0, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mRequestId:I

    invoke-interface {v2, p0}, Lcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;->onDataLoadFailed(I)V

    .line 304
    :goto_11b
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 46
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/DataLoader;->call()Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method
