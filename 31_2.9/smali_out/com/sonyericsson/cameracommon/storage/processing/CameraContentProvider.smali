.class public final Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;
.super Landroid/content/ContentProvider;
.source "CameraContentProvider.java"


# static fields
.field private static final DELETE_BY_ID:I = 0x6

.field private static final EDITOR_ACTIVITY_NAME:Ljava/lang/String; = "com.google.android.apps.photos.api.providersample.SampleEditActivity"

.field private static final EDITOR_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.apps.photos.api.providersample"

.field private static final EDIT_TYPE_HINT:I = 0x3

.field private static final LAUNCH_TYPE_HINT:I = 0x5

.field private static final LOAD_BADGE_ICON:I = 0x3

.field private static final LOAD_DIALOG_ICON:I = 0x5

.field private static final LOAD_EXTERNAL_EDITOR_ICON:I = 0xc

.field private static final LOAD_INTERACT_ICON:I = 0x4

.field private static final LOAD_SEARCH_ICON:I = 0xb

.field private static final MATCH_PATH_DELETE_BY_ID:Ljava/lang/String; = "delete/#"

.field private static final MATCH_PATH_DISCOVER:Ljava/lang/String; = "discover"

.field private static final MATCH_PATH_DISCOVER_TYPE_INFOS:Ljava/lang/String; = "discover/*"

.field private static final MATCH_PATH_SPECIAL_TYPE_ID:Ljava/lang/String; = "type/*"

.field private static final MATCH_PATH_SPECIAL_TYPE_METADATA:Ljava/lang/String; = "data/*"

.field private static final MATCH_PROCESSING_BY_ID:Ljava/lang/String; = "processing/#"

.field private static final MATCH_PROCESSING_METADATA:Ljava/lang/String; = "processing"

.field private static final MATCH_REMAINDER:Ljava/lang/String; = "/*"

.field private static final QUERY_DISCOVER:I = 0x9

.field private static final QUERY_DISCOVER_SPECIAL_TYPES:I = 0xa

.field private static final QUERY_PROCESSING_METADATA:I = 0x7

.field private static final QUERY_PROCESSING_METADATA_BY_ID:I = 0x8

.field private static final QUERY_SPECIAL_TYPE_ID:I = 0x1

.field private static final QUERY_SPECIAL_TYPE_METADATA:I = 0x2

.field private static final RESOURCE_ID_PATH_INDEX:I = 0x1

.field private static final SECURE_TYPE_HINT:I = 0x4

.field private static final STAR_TYPE_HINT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SpecialTypesProvider"

.field private static final TYPE_URI_PROJECTION:[Ljava/lang/String;

.field private static final VERSION:I = 0x4


# instance fields
.field private authority:Ljava/lang/String;

.field private editorIconUri:Ljava/lang/String;

.field private trustedPartners:Lcom/sonyericsson/cameracommon/storage/processing/TrustedPartners;

.field private uriMatcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "special_type_id"

    .line 102
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;->TYPE_URI_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private static detectSpecialType(J)Lcom/sonyericsson/cameracommon/storage/processing/SpecialType;
    .registers 2

    .line 204
    sget-object p0, Lcom/sonyericsson/cameracommon/storage/processing/SpecialType;->NONE:Lcom/sonyericsson/cameracommon/storage/processing/SpecialType;

    return-object p0
.end method

.method private loadIcon(Landroid/net/Uri;Lcom/google/android/apps/photos/api/IconQuery$Type;)Landroid/os/ParcelFileDescriptor;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 375
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x1

    .line 376
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 377
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 384
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 385
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 386
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 387
    invoke-virtual {p2}, Lcom/google/android/apps/photos/api/IconQuery$Type;->getDimensionResourceId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 389
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {p1, v0, v0, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 395
    sget-object v0, Lcom/google/android/apps/photos/api/IconQuery$Type;->DIALOG:Lcom/google/android/apps/photos/api/IconQuery$Type;

    if-ne p2, v0, :cond_60

    const/16 p2, 0x14

    .line 396
    new-array p2, p2, [F

    fill-array-data p2, :array_68

    .line 402
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 403
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 404
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 405
    new-instance v3, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v3, p2}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    const/4 p2, 0x0

    .line 406
    invoke-virtual {v1, p1, p2, p2, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    move-object p1, v0

    .line 409
    :cond_60
    sget-object p2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;->writeBitmapToFd(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    return-object p1

    nop

    :array_68
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private loadProcessingThumb(J)Landroid/os/ParcelFileDescriptor;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 330
    invoke-static {}, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;->getInstance()Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;

    move-result-object v0

    .line 331
    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;->findByMediaStoreId(J)Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;

    move-result-object v1

    if-nez v1, :cond_e

    .line 333
    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;->findProcessingMediaByMediaStoreId(J)Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;

    move-result-object v1

    :cond_e
    const/4 p1, 0x2

    .line 335
    new-array p1, p1, [Ljava/lang/String;

    const/4 p2, 0x0

    const-string v0, "SpecialTypesProvider"

    aput-object v0, p1, p2

    const/4 p2, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadProcessingThumb media: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, p2

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 336
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;->getTempThumb()Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    return-object p1
.end method

.method private static queryOrScanAndQuery(Landroid/database/sqlite/SQLiteDatabase;J)Landroid/database/Cursor;
    .registers 5

    .line 180
    invoke-static {p0, p1, p2}, Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;->querySpecialTypeId(Landroid/database/sqlite/SQLiteDatabase;J)Lcom/sonyericsson/cameracommon/storage/processing/SpecialType;

    move-result-object v0

    .line 181
    sget-object v1, Lcom/sonyericsson/cameracommon/storage/processing/SpecialType;->UNKNOWN:Lcom/sonyericsson/cameracommon/storage/processing/SpecialType;

    if-ne v0, v1, :cond_f

    .line 182
    invoke-static {p0, p1, p2}, Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;->scanUriAndUpdateDb(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 183
    invoke-static {p0, p1, p2}, Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;->querySpecialTypeId(Landroid/database/sqlite/SQLiteDatabase;J)Lcom/sonyericsson/cameracommon/storage/processing/SpecialType;

    move-result-object v0

    .line 186
    :cond_f
    new-instance p0, Landroid/database/MatrixCursor;

    const-string p1, "special_type_id"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 187
    sget-object p1, Lcom/sonyericsson/cameracommon/storage/processing/SpecialType;->NONE:Lcom/sonyericsson/cameracommon/storage/processing/SpecialType;

    if-eq v0, p1, :cond_2f

    sget-object p1, Lcom/sonyericsson/cameracommon/storage/processing/SpecialType;->UNKNOWN:Lcom/sonyericsson/cameracommon/storage/processing/SpecialType;

    if-eq v0, p1, :cond_2f

    const/4 p1, 0x1

    .line 188
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/processing/SpecialType;->name()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, p2

    invoke-virtual {p0, p1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_2f
    return-object p0
.end method

.method private queryPreferredEditorData()Landroid/os/Bundle;
    .registers 4

    .line 231
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "editor_package_name"

    const-string v2, "com.google.android.apps.photos.api.providersample"

    .line 232
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "editor_activity_name"

    const-string v2, "com.google.android.apps.photos.api.providersample.SampleEditActivity"

    .line 233
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "editor_icon_uri"

    .line 234
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;->editorIconUri:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private queryProcessingMetadata(Ljava/lang/Long;)Landroid/database/Cursor;
    .registers 12

    .line 263
    new-instance v0, Landroid/database/MatrixCursor;

    const-string v1, "media_store_id"

    const-string v2, "progress_status"

    const-string v3, "progress_percentage"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 269
    invoke-static {}, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;->getInstance()Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p1, :cond_19

    move v4, v3

    goto :goto_1a

    :cond_19
    move v4, v2

    .line 271
    :goto_1a
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;->getMediaDeque()Ljava/util/Deque;

    move-result-object v1

    .line 272
    invoke-interface {v1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_22
    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_58

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;

    if-nez v4, :cond_3c

    .line 273
    invoke-virtual {v5}, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;->getMediaStoreId()J

    move-result-wide v6

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_22

    :cond_3c
    const/4 v6, 0x3

    .line 274
    new-array v6, v6, [Ljava/lang/Object;

    .line 275
    invoke-virtual {v5}, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;->getMediaStoreId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v6, v2

    sget-object v5, Lcom/google/android/apps/photos/api/ProcessingMetadataQuery$ProgressStatus;->INDETERMINATE:Lcom/google/android/apps/photos/api/ProcessingMetadataQuery$ProgressStatus;

    aput-object v5, v6, v3

    const/4 v5, 0x2

    .line 277
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v5

    .line 274
    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_22

    :cond_58
    const/4 p1, -0x1

    .line 282
    invoke-virtual {v0, p1}, Landroid/database/MatrixCursor;->moveToPosition(I)Z

    return-object v0
.end method

.method private querySpecialTypeId(Landroid/net/Uri;)Landroid/database/Cursor;
    .registers 4

    .line 173
    invoke-static {p1}, Lcom/google/android/apps/photos/api/PhotosOemApi;->getMediaStoreIdFromQueryTypeUri(Landroid/net/Uri;)J

    move-result-wide v0

    .line 174
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/cameracommon/storage/processing/ProviderDbHelper;->get(Landroid/content/Context;)Lcom/sonyericsson/cameracommon/storage/processing/ProviderDbHelper;

    move-result-object p1

    .line 175
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/processing/ProviderDbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    .line 176
    invoke-static {p1, v0, v1}, Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;->queryOrScanAndQuery(Landroid/database/sqlite/SQLiteDatabase;J)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method private static querySpecialTypeId(Landroid/database/sqlite/SQLiteDatabase;J)Lcom/sonyericsson/cameracommon/storage/processing/SpecialType;
    .registers 13

    .line 208
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/processing/SpecialType;->UNKNOWN:Lcom/sonyericsson/cameracommon/storage/processing/SpecialType;

    const-string v2, "type_uri"

    .line 209
    sget-object v3, Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;->TYPE_URI_PROJECTION:[Ljava/lang/String;

    const-string v4, "media_store_id = ?"

    const/4 v9, 0x1

    new-array v5, v9, [Ljava/lang/String;

    .line 213
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v5, p2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    .line 209
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 217
    :try_start_1a
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_44

    const-string p1, "special_type_id"

    .line 219
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    .line 218
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 220
    new-array v0, v9, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "querySpecialTypeId: specialTypeName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, p2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 221
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/processing/SpecialType;->UNKNOWN:Lcom/sonyericsson/cameracommon/storage/processing/SpecialType;
    :try_end_44
    .catchall {:try_start_1a .. :try_end_44} :catchall_48

    .line 224
    :cond_44
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_48
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 225
    throw p1
.end method

.method private querySpecialTypesVersion()Landroid/os/Bundle;
    .registers 4

    .line 257
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "version"

    const/4 v2, 0x4

    .line 258
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method private static scanUriAndUpdateDb(Landroid/database/sqlite/SQLiteDatabase;J)V
    .registers 6

    .line 194
    invoke-static {p1, p2}, Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;->detectSpecialType(J)Lcom/sonyericsson/cameracommon/storage/processing/SpecialType;

    move-result-object v0

    .line 196
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "media_store_id"

    .line 197
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "special_type_id"

    .line 198
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/processing/SpecialType;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "type_uri"

    const/4 p2, 0x0

    .line 199
    invoke-virtual {p0, p1, p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    return-void
.end method

.method private validateCallingPackage()V
    .registers 3

    .line 429
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;->trustedPartners:Lcom/sonyericsson/cameracommon/storage/processing/TrustedPartners;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/storage/processing/TrustedPartners;->isTrustedApplication(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    .line 430
    :cond_d
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0}, Ljava/lang/SecurityException;-><init>()V

    throw v0
.end method

.method private writeBitmapToFd(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;)Landroid/os/ParcelFileDescriptor;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 345
    :try_start_1
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    const/4 v2, 0x0

    .line 346
    aget-object v2, v1, v2

    const/4 v3, 0x1

    .line 347
    aget-object v1, v1, v3
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_b} :catch_41
    .catchall {:try_start_1 .. :try_end_b} :catchall_34

    .line 348
    :try_start_b
    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_19} :catch_32
    .catchall {:try_start_b .. :try_end_19} :catchall_30

    const/16 v0, 0x64

    .line 349
    :try_start_1b
    invoke-virtual {p1, p2, v0, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 350
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_21} :catch_2d
    .catchall {:try_start_1b .. :try_end_21} :catchall_2a

    if-eqz v1, :cond_26

    .line 357
    :try_start_23
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_26

    .line 364
    :catch_26
    :cond_26
    :try_start_26
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_29

    :catch_29
    return-object v2

    :catchall_2a
    move-exception p1

    move-object v0, v3

    goto :goto_36

    :catch_2d
    move-exception p1

    move-object v0, v3

    goto :goto_43

    :catchall_30
    move-exception p1

    goto :goto_36

    :catch_32
    move-exception p1

    goto :goto_43

    :catchall_34
    move-exception p1

    move-object v1, v0

    :goto_36
    if-eqz v1, :cond_3b

    .line 357
    :try_start_38
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_3b

    :catch_3b
    :cond_3b
    if-eqz v0, :cond_40

    .line 364
    :try_start_3d
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_40

    .line 369
    :catch_40
    :cond_40
    throw p1

    :catch_41
    move-exception p1

    move-object v1, v0

    :goto_43
    if-eqz v1, :cond_4a

    .line 357
    :try_start_45
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_49

    goto :goto_4a

    :catch_49
    move-exception p1

    :cond_4a
    :goto_4a
    if-eqz v0, :cond_51

    .line 364
    :try_start_4c
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_50

    goto :goto_51

    :catch_50
    move-exception p1

    .line 370
    :cond_51
    :goto_51
    new-instance p2, Ljava/io/FileNotFoundException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .registers 6

    .line 113
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    .line 115
    new-instance v0, Ljava/util/HashSet;

    .line 116
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 117
    new-instance v1, Lcom/sonyericsson/cameracommon/storage/processing/TrustedPartners;

    invoke-direct {v1, p1, v0}, Lcom/sonyericsson/cameracommon/storage/processing/TrustedPartners;-><init>(Landroid/content/Context;Ljava/util/Set;)V

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;->trustedPartners:Lcom/sonyericsson/cameracommon/storage/processing/TrustedPartners;

    .line 118
    iget-object p1, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;->authority:Ljava/lang/String;

    .line 119
    new-instance p1, Landroid/content/UriMatcher;

    const/4 p2, -0x1

    invoke-direct {p1, p2}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    .line 120
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    iget-object p2, p0, Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;->authority:Ljava/lang/String;

    const-string v0, "type/*"

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v0, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 121
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    iget-object p2, p0, Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;->authority:Ljava/lang/String;

    const-string v0, "data/*"

    const/4 v1, 0x2

    invoke-virtual {p1, p2, v0, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 122
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    iget-object p2, p0, Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;->authority:Ljava/lang/String;

    const-string v0, "discover"

    const/16 v1, 0x9

    invoke-virtual {p1, p2, v0, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 123
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    iget-object p2, p0, Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;->authority:Ljava/lang/String;

    const-string v0, "discover/*"

    const/16 v1, 0xa

    invoke-virtual {p1, p2, v0, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 124
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    iget-object p2, p0, Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;->authority:Ljava/lang/String;

    const-string v0, "icon/#/badge"

    const/4 v1, 0x3

    invoke-virtual {p1, p2, v0, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 125
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    iget-object p2, p0, Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;->authority:Ljava/lang/String;

    const-string v0, "icon/#/search"

    const/16 v1, 0xb

    invoke-virtual {p1, p2, v0, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 126
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    iget-object p2, p0, Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;->authority:Ljava/lang/String;

    const-string v0, "icon/#/interact"

    const/4 v1, 0x4

    invoke-virtual {p1, p2, v0, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 127
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    iget-object p2, p0, Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;->authority:Ljava/lang/String;

    const-string v0, "icon/#/dialog"

    const/4 v1, 0x5

    invoke-virtual {p1, p2, v0, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 128
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    iget-object p2, p0, Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;->authority:Ljava/lang/String;

    const-string v0, "delete/#"

    const/4 v1, 0x6

    invoke-virtual {p1, p2, v0, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 129
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    iget-object p2, p0, Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;->authority:Ljava/lang/String;

    const-string v0, "processing"

    const/4 v1, 0x7

    invoke-virtual {p1, p2, v0, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 132
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    iget-object p2, p0, Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;->authority:Ljava/lang/String;

    const-string v0, "processing/#"

    const/16 v1, 0x8

    invoke-virtual {p1, p2, v0, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 134
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    iget-object p2, p0, Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;->authority:Ljava/lang/String;

    const-string v0, "icon/#/editor"

    const/16 v1, 0xc

    invoke-virtual {p1, p2, v0, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 7

    const/4 v0, 0x1

    .line 145
    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "method: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",arg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    const-string v0, "version"

    .line 146
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 147
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;->querySpecialTypesVersion()Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 151
    :cond_2f
    invoke-super {p0, p1, p2, p3}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6

    .line 240
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;->validateCallingPackage()V

    .line 241
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_4d

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_12

    move p2, v1

    goto :goto_13

    :cond_12
    move p2, v0

    .line 243
    :goto_13
    invoke-static {p2}, Lcom/google/android/apps/photos/api/Preconditions;->checkArgument(Z)V

    if-nez p3, :cond_1a

    move p2, v1

    goto :goto_1b

    :cond_1a
    move p2, v0

    .line 244
    :goto_1b
    invoke-static {p2}, Lcom/google/android/apps/photos/api/Preconditions;->checkArgument(Z)V

    const-string p2, "SpecialTypesProvider"

    const/4 p3, 0x4

    .line 246
    invoke-static {p2, p3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_4c

    const/4 p2, 0x2

    .line 247
    new-array p2, p2, [Ljava/lang/String;

    const-string p3, "SpecialTypesProvider"

    aput-object p3, p2, v0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Doing dummy delete handling for "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", returning "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v1

    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    :cond_4c
    return v1

    .line 252
    :cond_4d
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unrecognized uri: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 2

    .line 414
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 3

    .line 419
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public onCreate()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 289
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;->validateCallingPackage()V

    const-string v0, "r"

    .line 290
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_110

    const/4 v0, 0x1

    .line 293
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uri "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", mode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 294
    iget-object p2, p0, Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {p2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p2

    const/4 v0, 0x4

    packed-switch p2, :pswitch_data_128

    .line 324
    :pswitch_37
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unrecognized format: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 322
    :pswitch_4e
    sget-object p2, Lcom/google/android/apps/photos/api/IconQuery$Type;->EDITOR:Lcom/google/android/apps/photos/api/IconQuery$Type;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;->loadIcon(Landroid/net/Uri;Lcom/google/android/apps/photos/api/IconQuery$Type;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    return-object p1

    :pswitch_55
    const-string p2, "SpecialTypesProvider"

    .line 301
    invoke-static {p2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_73

    const-string p2, "SpecialTypesProvider"

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loading search icon "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :cond_73
    sget-object p2, Lcom/google/android/apps/photos/api/IconQuery$Type;->SEARCH:Lcom/google/android/apps/photos/api/IconQuery$Type;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;->loadIcon(Landroid/net/Uri;Lcom/google/android/apps/photos/api/IconQuery$Type;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    return-object p1

    :pswitch_7a
    const-string p2, "SpecialTypesProvider"

    .line 316
    invoke-static {p2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_98

    const-string p2, "SpecialTypesProvider"

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loading processing thumb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_98
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide p1

    .line 320
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;->loadProcessingThumb(J)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    return-object p1

    :pswitch_a1
    const-string p2, "SpecialTypesProvider"

    .line 311
    invoke-static {p2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_bf

    const-string p2, "SpecialTypesProvider"

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loading dialog icon "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :cond_bf
    sget-object p2, Lcom/google/android/apps/photos/api/IconQuery$Type;->DIALOG:Lcom/google/android/apps/photos/api/IconQuery$Type;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;->loadIcon(Landroid/net/Uri;Lcom/google/android/apps/photos/api/IconQuery$Type;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    return-object p1

    :pswitch_c6
    const-string p2, "SpecialTypesProvider"

    .line 306
    invoke-static {p2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_e4

    const-string p2, "SpecialTypesProvider"

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loading interact icon "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :cond_e4
    sget-object p2, Lcom/google/android/apps/photos/api/IconQuery$Type;->INTERACT:Lcom/google/android/apps/photos/api/IconQuery$Type;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;->loadIcon(Landroid/net/Uri;Lcom/google/android/apps/photos/api/IconQuery$Type;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    return-object p1

    :pswitch_eb
    const-string p2, "SpecialTypesProvider"

    .line 296
    invoke-static {p2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_109

    const-string p2, "SpecialTypesProvider"

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loading badge icon "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_109
    sget-object p2, Lcom/google/android/apps/photos/api/IconQuery$Type;->BADGE:Lcom/google/android/apps/photos/api/IconQuery$Type;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;->loadIcon(Landroid/net/Uri;Lcom/google/android/apps/photos/api/IconQuery$Type;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    return-object p1

    .line 291
    :cond_110
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_128
    .packed-switch 0x3
        :pswitch_eb
        :pswitch_c6
        :pswitch_a1
        :pswitch_37
        :pswitch_37
        :pswitch_7a
        :pswitch_37
        :pswitch_37
        :pswitch_55
        :pswitch_4e
    .end packed-switch
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 6

    .line 158
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;->validateCallingPackage()V

    const/4 p2, 0x1

    .line 159
    new-array p3, p2, [Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "query uri: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const/4 p5, 0x0

    aput-object p4, p3, p5

    invoke-static {p3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 160
    iget-object p3, p0, Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {p3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p3

    if-eq p3, p2, :cond_52

    packed-switch p3, :pswitch_data_58

    .line 168
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unrecognized uri: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 166
    :pswitch_3f
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;->queryProcessingMetadata(Ljava/lang/Long;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1

    :pswitch_4c
    const/4 p1, 0x0

    .line 164
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;->queryProcessingMetadata(Ljava/lang/Long;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1

    .line 162
    :cond_52
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;->querySpecialTypeId(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_58
    .packed-switch 0x7
        :pswitch_4c
        :pswitch_3f
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5

    .line 425
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
