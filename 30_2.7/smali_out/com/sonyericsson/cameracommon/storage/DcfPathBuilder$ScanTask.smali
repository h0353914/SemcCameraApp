.class Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanTask;
.super Ljava/lang/Object;
.source "DcfPathBuilder.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScanTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanResult;",
        ">;"
    }
.end annotation


# instance fields
.field private mScanDirNo:I

.field private mScanFileNo:I

.field final synthetic this$0:Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;)V
    .registers 2

    .line 243
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanTask;->this$0:Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x64

    .line 245
    iput p1, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanTask;->mScanDirNo:I

    const/4 p1, 0x1

    .line 246
    iput p1, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanTask;->mScanFileNo:I

    return-void
.end method

.method private checkAssignedFileExist()Z
    .registers 13

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%03d"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget v5, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanTask;->mScanDirNo:I

    .line 305
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v1, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ANDRO"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 307
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DSC_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%04d"

    new-array v5, v3, [Ljava/lang/Object;

    iget v7, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanTask;->mScanFileNo:I

    .line 308
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".JPG"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 310
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MOV_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%04d"

    new-array v7, v3, [Ljava/lang/Object;

    iget v8, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanTask;->mScanFileNo:I

    .line 311
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v6

    invoke-static {v4, v5, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".mp4"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 313
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MOV_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "%04d"

    new-array v8, v3, [Ljava/lang/Object;

    iget v9, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanTask;->mScanFileNo:I

    .line 314
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-static {v5, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".3gp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 316
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v7, "image/jpeg"

    .line 317
    invoke-interface {v5, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "video/mp4"

    .line 318
    invoke-interface {v5, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "video/3gpp"

    .line 319
    invoke-interface {v5, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanTask;->this$0:Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;

    # getter for: Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->mStorageType:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->access$000(Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v1

    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->getVolume(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 322
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 325
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_de
    :goto_de
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1af

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 326
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    const-string v9, "_display_name"

    .line 327
    invoke-virtual {v8, v9, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "mime_type"

    .line 328
    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "relative_path"

    .line 329
    invoke-virtual {v8, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "is_pending"

    .line 330
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 333
    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    const-string v10, "image/jpeg"

    if-ne v9, v10, :cond_11a

    .line 334
    invoke-static {v1}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    goto :goto_11e

    .line 336
    :cond_11a
    invoke-static {v1}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 338
    :goto_11e
    invoke-virtual {v2, v9, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v8

    .line 339
    new-instance v9, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    invoke-direct {v9}, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;-><init>()V

    const-string v10, "_display_name"

    const-string v11, "bucket_display_name"

    .line 340
    filled-new-array {v10, v11}, [Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->projection:[Ljava/lang/String;

    .line 344
    invoke-static {v2, v8, v9}, Lcom/sonyericsson/cameracommon/contentsview/PhotoStackQueryHelper;->crQuery(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_de

    const/4 v10, 0x0

    .line 347
    :try_start_138
    invoke-virtual {v2, v8, v10, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 349
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_1a5

    const-string v8, "bucket_display_name"

    .line 350
    invoke-interface {v9, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v9, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v10, "_display_name"

    .line 352
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 354
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1a5

    .line 355
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v10, 0x8

    if-ne v8, v10, :cond_1a5

    .line 356
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0xc

    if-ne v7, v8, :cond_1a5

    .line 357
    iget v0, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanTask;->mScanFileNo:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanTask;->mScanFileNo:I

    .line 358
    iget v0, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanTask;->mScanFileNo:I

    const/16 v1, 0x270f

    if-le v0, v1, :cond_17d

    .line 359
    iget v0, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanTask;->mScanDirNo:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanTask;->mScanDirNo:I

    .line 360
    iput v3, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanTask;->mScanFileNo:I

    .line 362
    :cond_17d
    iget v0, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanTask;->mScanDirNo:I

    const/16 v1, 0x3e7

    if-le v0, v1, :cond_1a1

    .line 363
    new-array v0, v3, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "searchImageNo over max dir. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanTask;->mScanDirNo:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V
    :try_end_19d
    .catchall {:try_start_138 .. :try_end_19d} :catchall_1aa

    .line 371
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    return v3

    :cond_1a1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1b0

    :cond_1a5
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_de

    :catchall_1aa
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 372
    throw v0

    :cond_1af
    move v3, v6

    :goto_1b0
    if-eqz v3, :cond_1b5

    .line 377
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanTask;->checkAssignedFileExist()Z

    :cond_1b5
    return v6
.end method

.method private searchImageDir()Z
    .registers 5

    .line 278
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanTask;->this$0:Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;

    # getter for: Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->mFileNameQuery:Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$DcfFileNameQuery;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->access$200(Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;)Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$DcfFileNameQuery;

    move-result-object v0

    const/16 v1, 0x64

    # setter for: Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$DcfFileNameQuery;->mQueryDirNo:I
    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$DcfFileNameQuery;->access$302(Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$DcfFileNameQuery;I)I

    .line 279
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanTask;->this$0:Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;

    # getter for: Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->mFileNameQuery:Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$DcfFileNameQuery;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->access$200(Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;)Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$DcfFileNameQuery;

    move-result-object v0

    const/4 v1, 0x1

    # setter for: Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$DcfFileNameQuery;->mQueryFileNo:I
    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$DcfFileNameQuery;->access$402(Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$DcfFileNameQuery;I)I

    .line 281
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanTask;->this$0:Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;

    # getter for: Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->mFileNameQuery:Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$DcfFileNameQuery;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->access$200(Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;)Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$DcfFileNameQuery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$DcfFileNameQuery;->query()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 282
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanTask;->this$0:Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;

    # getter for: Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->mFileNameQuery:Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$DcfFileNameQuery;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->access$200(Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;)Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$DcfFileNameQuery;

    move-result-object v0

    # getter for: Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$DcfFileNameQuery;->mQueryDirNo:I
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$DcfFileNameQuery;->access$300(Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$DcfFileNameQuery;)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanTask;->mScanDirNo:I

    .line 283
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanTask;->this$0:Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;

    # getter for: Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->mFileNameQuery:Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$DcfFileNameQuery;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->access$200(Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;)Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$DcfFileNameQuery;

    move-result-object v0

    # getter for: Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$DcfFileNameQuery;->mQueryFileNo:I
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$DcfFileNameQuery;->access$400(Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$DcfFileNameQuery;)I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanTask;->mScanFileNo:I

    .line 286
    :cond_3a
    iget v0, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanTask;->mScanFileNo:I

    const/16 v2, 0x270f

    if-le v0, v2, :cond_47

    .line 287
    iget v0, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanTask;->mScanDirNo:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanTask;->mScanDirNo:I

    .line 288
    iput v1, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanTask;->mScanFileNo:I

    .line 291
    :cond_47
    iget v0, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanTask;->mScanDirNo:I

    const/16 v2, 0x3e7

    const/4 v3, 0x0

    if-le v0, v2, :cond_69

    .line 292
    new-array v0, v1, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "searchImageNo over max dir. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanTask;->mScanDirNo:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return v3

    .line 296
    :cond_69
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanTask;->checkAssignedFileExist()Z

    move-result v0

    if-eqz v0, :cond_70

    return v3

    :cond_70
    return v1
.end method


# virtual methods
.method public call()Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanResult;
    .registers 8

    .line 250
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "ScanTask in."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 251
    :cond_d
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2f

    .line 252
    new-array v0, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 253
    :cond_2f
    sget-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->DCF_PATH_BUILDER_SCAN:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/PerfLog;->begin()V

    .line 255
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanTask;->searchImageDir()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 256
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanResultState;->SCAN_SUCCEEDED:Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanResultState;

    goto :goto_4d

    :cond_3d
    const-string v0, "Scan failed."

    .line 258
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 259
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanResultState;->SCAN_FAILED:Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanResultState;

    const/4 v3, -0x1

    .line 260
    iput v3, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanTask;->mScanDirNo:I

    .line 261
    iput v3, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanTask;->mScanFileNo:I

    .line 263
    :goto_4d
    sget-object v3, Lcom/sonyericsson/android/camera/util/PerfLog;->DCF_PATH_BUILDER_SCAN:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/util/PerfLog;->end()V

    .line 264
    sget-boolean v3, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v3, :cond_72

    .line 265
    new-array v3, v2, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "end  : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 266
    :cond_72
    sget-boolean v3, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v3, :cond_7f

    const-string v3, "ScanTask out."

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 267
    :cond_7f
    sget-boolean v3, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v3, :cond_a7

    new-array v2, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ScanTask result dirNo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanTask;->mScanDirNo:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", fileNo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanTask;->mScanFileNo:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 269
    :cond_a7
    new-instance v1, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanResult;

    iget v2, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanTask;->mScanDirNo:I

    iget v3, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanTask;->mScanFileNo:I

    invoke-direct {v1, v0, v2, v3}, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanResult;-><init>(Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanResultState;II)V

    return-object v1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 243
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanTask;->call()Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanResult;

    move-result-object v0

    return-object v0
.end method
