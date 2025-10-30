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

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ".JPG"

    const-string v1, ".3gp"

    const-string v2, ".mp4"

    .line 60
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->CONTENT_EXTENSIONS:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mParam:Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    .line 164
    iput p1, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mRequestId:I

    .line 166
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

    .line 168
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    .line 170
    :goto_28
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mContext:Landroid/content/Context;

    .line 171
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mResolver:Landroid/content/ContentResolver;

    .line 172
    iput-object p4, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mDataLoadCallback:Lcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;

    .line 173
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

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ".JPG"

    const-string v1, ".3gp"

    const-string v2, ".mp4"

    .line 60
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->CONTENT_EXTENSIONS:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mParam:Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    const/4 v0, -0x1

    .line 186
    iput v0, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mRequestId:I

    .line 187
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mContext:Landroid/content/Context;

    .line 188
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mResolver:Landroid/content/ContentResolver;

    .line 189
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mMediaUris:Ljava/util/ArrayList;

    .line 190
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mDataLoadCallback:Lcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;

    .line 191
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

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ".JPG"

    const-string v1, ".3gp"

    const-string v2, ".mp4"

    .line 60
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->CONTENT_EXTENSIONS:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mParam:Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    .line 145
    iput p3, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mRequestId:I

    .line 146
    invoke-static {p2, p4, p3}, Lcom/sonyericsson/cameracommon/contentsview/PhotoStackQueryHelper;->setupQueryParam(Ljava/util/List;II)Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    move-result-object p2

    iput-object p2, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mParam:Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    .line 147
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mContext:Landroid/content/Context;

    .line 148
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mResolver:Landroid/content/ContentResolver;

    .line 149
    iput-object p5, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mDataLoadCallback:Lcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;

    .line 150
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

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ".JPG"

    const-string v1, ".3gp"

    const-string v2, ".mp4"

    .line 60
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->CONTENT_EXTENSIONS:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mParam:Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    const/4 v0, -0x1

    .line 126
    iput v0, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mRequestId:I

    .line 127
    invoke-static {p2, p3, v0}, Lcom/sonyericsson/cameracommon/contentsview/PhotoStackQueryHelper;->setupQueryParam(Ljava/util/List;II)Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    move-result-object p2

    iput-object p2, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mParam:Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    .line 128
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mContext:Landroid/content/Context;

    .line 129
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mResolver:Landroid/content/ContentResolver;

    .line 130
    iput-object p4, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mDataLoadCallback:Lcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;

    .line 131
    iput-boolean p5, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mIsRegisterCache:Z

    return-void
.end method

.method private createAntiAliasBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 10

    if-eqz p1, :cond_14

    .line 337
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

    .line 338
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_14
    const/4 p0, 0x0

    return-object p0
.end method

.method private decodeThumbnail(Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;)Landroid/graphics/Bitmap;
    .registers 6

    .line 316
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "decodeThumbnail() has been called."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_d
    const/4 v0, 0x0

    if-eqz p1, :cond_53

    .line 320
    iget-object v0, p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mOriginalPath:Ljava/lang/String;

    if-nez v0, :cond_20

    .line 321
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mResolver:Landroid/content/ContentResolver;

    iget-wide v1, p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mId:J

    iget v3, p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mType:I

    invoke-static {v0, v1, v2, v3}, Lcom/sonyericsson/cameracommon/contentsview/PhotoStackQueryHelper;->getMediaPath(Landroid/content/ContentResolver;JI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mOriginalPath:Ljava/lang/String;

    .line 324
    :cond_20
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/sonyericsson/cameracommon/contentsview/ThumbnailFactory;->createMicroThumbnail(Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_32

    .line 327
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/cameracommon/storage/DataLoader;->createAntiAliasBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p0

    move-object v0, p0

    goto :goto_33

    :cond_32
    move-object v0, p1

    .line 330
    :goto_33
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_53

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/String;

    const/4 p1, 0x0

    .line 331
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "decodeThumbnail(): thumbnail = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, p1

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_53
    return-object v0
.end method

.method private isSupportedFileExtension(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    const/4 p0, 0x0

    if-nez p2, :cond_4

    return p0

    .line 353
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    const/4 p0, 0x1

    :cond_13
    return p0
.end method


# virtual methods
.method public call()Ljava/lang/Long;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 203
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "call() has been called."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_d
    const-wide/16 v0, 0x0

    .line 209
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 213
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mParam:Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    if-eqz v3, :cond_1f

    .line 214
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v4, v3}, Lcom/sonyericsson/cameracommon/contentsview/PhotoStackQueryHelper;->getLatestImageInfo(Landroid/content/ContentResolver;Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;)Landroid/database/Cursor;

    move-result-object v3

    goto :goto_32

    .line 215
    :cond_1f
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mMediaUris:Ljava/util/ArrayList;

    if-eqz v3, :cond_2a

    .line 216
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v4, v3}, Lcom/sonyericsson/cameracommon/contentsview/PhotoStackQueryHelper;->getImagesInfo(Landroid/content/ContentResolver;Ljava/util/ArrayList;)Landroid/database/Cursor;

    move-result-object v3

    goto :goto_32

    .line 218
    :cond_2a
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mResolver:Landroid/content/ContentResolver;

    iget v4, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mMediaId:I

    invoke-static {v3, v4}, Lcom/sonyericsson/cameracommon/contentsview/PhotoStackQueryHelper;->getCoverImageInfo(Landroid/content/ContentResolver;I)Landroid/database/Cursor;

    move-result-object v3

    :goto_32
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v3, :cond_74

    .line 222
    invoke-static {}, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;->getInstance()Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;->getMediaDeque()Ljava/util/Deque;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;

    .line 223
    sget-boolean v8, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v8, :cond_63

    new-array v8, v5, [Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ProcessingMedia peekLast:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-static {v8}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_63
    if-eqz v7, :cond_74

    .line 225
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v7}, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;->getStoreUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v3, v7, v6, v6, v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_74

    .line 227
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_74
    if-eqz v3, :cond_126

    .line 234
    :try_start_76
    sget-boolean v7, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v7, :cond_98

    new-array v7, v5, [Ljava/lang/String;

    .line 235
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cursor count = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-static {v7}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 238
    :cond_98
    iget-object v7, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mMediaUris:Ljava/util/ArrayList;

    if-eqz v7, :cond_b1

    .line 239
    :goto_9c
    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v7

    if-nez v7, :cond_126

    .line 240
    iget-object v7, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mResolver:Landroid/content/ContentResolver;

    .line 241
    invoke-static {v7, v3}, Lcom/sonyericsson/cameracommon/contentsview/PhotoStackQueryHelper;->createContentInfoForMediaUris(Landroid/content/ContentResolver;Landroid/database/Cursor;)Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    move-result-object v7

    if-eqz v7, :cond_ad

    .line 244
    invoke-virtual {v2, v7}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 246
    :cond_ad
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_9c

    .line 250
    :cond_b1
    iget-object v7, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v7, v3}, Lcom/sonyericsson/cameracommon/contentsview/PhotoStackQueryHelper;->createContentInfo(Landroid/content/ContentResolver;Landroid/database/Cursor;)Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    move-result-object v7

    if-eqz v7, :cond_114

    .line 252
    iget-object v8, v7, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mOriginalPath:Ljava/lang/String;

    .line 253
    invoke-static {v8}, Lcom/sonyericsson/cameracommon/storage/PredictiveCapturePathBuilder;->isPredictiveCaptureImage(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_ea

    .line 254
    iget-object v8, v7, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mOriginalPath:Ljava/lang/String;

    .line 255
    invoke-static {v8}, Lcom/sonyericsson/cameracommon/storage/PredictiveCapturePathBuilder;->getTimeStamp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 256
    iget-object v9, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mResolver:Landroid/content/ContentResolver;

    iget v10, v7, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mBucketId:I

    .line 257
    invoke-static {v9, v8, v10}, Lcom/sonyericsson/cameracommon/contentsview/PhotoStackQueryHelper;->getPredictiveCaptureImageInfo(Landroid/content/ContentResolver;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v8
    :try_end_cf
    .catchall {:try_start_76 .. :try_end_cf} :catchall_11a

    if-eqz v8, :cond_e4

    .line 260
    :try_start_d1
    iget-object v7, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v7, v8}, Lcom/sonyericsson/cameracommon/contentsview/PhotoStackQueryHelper;->createContentInfo(Landroid/content/ContentResolver;Landroid/database/Cursor;)Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    move-result-object v7
    :try_end_d7
    .catchall {:try_start_d1 .. :try_end_d7} :catchall_d8

    goto :goto_e4

    :catchall_d8
    move-exception v7

    if-eqz v8, :cond_e3

    .line 256
    :try_start_db
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_de
    .catchall {:try_start_db .. :try_end_de} :catchall_df

    goto :goto_e3

    :catchall_df
    move-exception v8

    :try_start_e0
    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_e3
    :goto_e3
    throw v7

    :cond_e4
    :goto_e4
    if-eqz v8, :cond_114

    .line 263
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_114

    .line 264
    :cond_ea
    iget-object v8, v7, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mOriginalPath:Ljava/lang/String;

    .line 265
    invoke-static {v8}, Lcom/sonyericsson/cameracommon/storage/ManualBurstPathBuilder;->isBurstCaptureImage(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_114

    .line 266
    iget-object v8, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mResolver:Landroid/content/ContentResolver;

    iget v9, v7, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mBucketId:I

    .line 267
    invoke-static {v8, v9}, Lcom/sonyericsson/cameracommon/contentsview/PhotoStackQueryHelper;->getBurstCaptureImageInfo(Landroid/content/ContentResolver;I)Landroid/database/Cursor;

    move-result-object v8
    :try_end_fa
    .catchall {:try_start_e0 .. :try_end_fa} :catchall_11a

    if-eqz v8, :cond_10f

    .line 270
    :try_start_fc
    iget-object v7, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v7, v8}, Lcom/sonyericsson/cameracommon/contentsview/PhotoStackQueryHelper;->createContentInfo(Landroid/content/ContentResolver;Landroid/database/Cursor;)Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    move-result-object v7
    :try_end_102
    .catchall {:try_start_fc .. :try_end_102} :catchall_103

    goto :goto_10f

    :catchall_103
    move-exception v7

    if-eqz v8, :cond_10e

    .line 266
    :try_start_106
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_109
    .catchall {:try_start_106 .. :try_end_109} :catchall_10a

    goto :goto_10e

    :catchall_10a
    move-exception v8

    :try_start_10b
    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_10e
    :goto_10e
    throw v7

    :cond_10f
    :goto_10f
    if-eqz v8, :cond_114

    .line 273
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_114
    :goto_114
    if-eqz v7, :cond_126

    .line 277
    invoke-virtual {v2, v7}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V
    :try_end_119
    .catchall {:try_start_10b .. :try_end_119} :catchall_11a

    goto :goto_126

    :catchall_11a
    move-exception v7

    if-eqz v3, :cond_125

    .line 232
    :try_start_11d
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_120
    .catchall {:try_start_11d .. :try_end_120} :catchall_121

    goto :goto_125

    :catchall_121
    move-exception v3

    :try_start_122
    invoke-virtual {v7, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_125
    :goto_125
    throw v7

    :cond_126
    :goto_126
    if-eqz v3, :cond_138

    .line 281
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_12b
    .catch Ljava/lang/Exception; {:try_start_122 .. :try_end_12b} :catch_12e
    .catchall {:try_start_122 .. :try_end_12b} :catchall_12c

    goto :goto_138

    :catchall_12c
    move-exception v0

    goto :goto_133

    :catch_12e
    move-exception v3

    .line 282
    :try_start_12f
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_132
    .catchall {:try_start_12f .. :try_end_132} :catchall_12c

    goto :goto_138

    .line 284
    :goto_133
    iput-object v6, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mParam:Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    .line 285
    iput-object v6, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mMediaUris:Ljava/util/ArrayList;

    .line 286
    throw v0

    .line 284
    :cond_138
    :goto_138
    iput-object v6, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mParam:Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    .line 285
    iput-object v6, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mMediaUris:Ljava/util/ArrayList;

    .line 288
    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_16a

    .line 289
    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    iget-wide v0, v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mId:J

    .line 290
    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    iget-boolean v3, v3, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mIsContainDetails:Z

    if-eqz v3, :cond_169

    .line 291
    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    invoke-direct {p0, v3}, Lcom/sonyericsson/cameracommon/storage/DataLoader;->decodeThumbnail(Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_168

    .line 293
    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    iput-boolean v5, v4, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mIsMediaDataVerified:Z

    :cond_168
    move-object v6, v3

    :cond_169
    move v4, v5

    :cond_16a
    if-eqz v4, :cond_176

    .line 300
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mDataLoadCallback:Lcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;

    iget v4, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mRequestId:I

    iget-boolean p0, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mIsRegisterCache:Z

    invoke-interface {v3, v4, p0, v2, v6}, Lcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;->onDataLoadCompleted(IZLjava/util/LinkedList;Landroid/graphics/Bitmap;)V

    goto :goto_17d

    .line 303
    :cond_176
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mDataLoadCallback:Lcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;

    iget p0, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mRequestId:I

    invoke-interface {v2, p0}, Lcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;->onDataLoadFailed(I)V

    .line 305
    :goto_17d
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

    .line 50
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/DataLoader;->call()Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method
