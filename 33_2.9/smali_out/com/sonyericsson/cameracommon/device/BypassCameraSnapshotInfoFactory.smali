.class public Lcom/sonyericsson/cameracommon/device/BypassCameraSnapshotInfoFactory;
.super Ljava/lang/Object;
.source "BypassCameraSnapshotInfoFactory.java"


# static fields
.field private static final EXIF_THUMBNAIL_HEIGHT:I = 0x78

.field private static final EXIF_THUMBNAIL_QUALITY:I = 0x50

.field private static final EXIF_THUMBNAIL_WIDTH:I = 0xa0

.field private static final QUALITY:I = 0x2

.field private static final QUALITY_AUTO_CONTROL_ENABLED:Z = true


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;I)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo;
    .registers 11

    .line 36
    new-instance v8, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo;

    .line 38
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/device/BypassCameraSnapshotInfoFactory;->createExifGpsInfo(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifGpsInfo;

    move-result-object v2

    .line 39
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/device/BypassCameraSnapshotInfoFactory;->createExifOrientationInfo(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifOrientationInfo;

    move-result-object v3

    .line 40
    invoke-static {}, Lcom/sonyericsson/cameracommon/device/BypassCameraSnapshotInfoFactory;->createExifThumbnailInfo()Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifThumbnailInfo;

    move-result-object v4

    const/4 p0, 0x2

    .line 41
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingConstants$JpegQuality;->getPlatformQualityFromCameraProfile(I)I

    move-result v5

    const/4 v1, 0x1

    const/4 v6, 0x1

    move-object v0, v8

    move v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo;-><init>(ZLcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifGpsInfo;Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifOrientationInfo;Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifThumbnailInfo;IZI)V

    return-object v8
.end method

.method public static createExifGpsInfo(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifGpsInfo;
    .registers 25

    move-object/from16 v0, p0

    .line 56
    iget-object v1, v0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->location:Landroid/location/Location;

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const-string v6, ""

    if-eqz v1, :cond_9f

    .line 57
    iget-object v1, v0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->location:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v7

    .line 58
    iget-object v1, v0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->location:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v9

    cmpl-double v1, v7, v3

    if-nez v1, :cond_29

    cmpl-double v1, v9, v3

    if-eqz v1, :cond_27

    goto :goto_29

    :cond_27
    move v1, v5

    goto :goto_2a

    :cond_29
    :goto_29
    move v1, v2

    :goto_2a
    if-eqz v1, :cond_96

    .line 69
    iget-object v11, v0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v11, v11, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->location:Landroid/location/Location;

    invoke-virtual {v11}, Landroid/location/Location;->hasAltitude()Z

    move-result v11

    if-eqz v11, :cond_3e

    .line 70
    iget-object v3, v0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v3, v3, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->location:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getAltitude()D

    move-result-wide v3

    .line 74
    :cond_3e
    iget-object v11, v0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v11, v11, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->location:Landroid/location/Location;

    invoke-virtual {v11}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_52

    .line 76
    iget-object v6, v0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v6, v6, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->location:Landroid/location/Location;

    invoke-virtual {v6}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v6

    move v11, v2

    goto :goto_53

    :cond_52
    move v11, v5

    .line 85
    :goto_53
    iget-object v12, v0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v12, v12, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->location:Landroid/location/Location;

    invoke-virtual {v12}, Landroid/location/Location;->getTime()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-eqz v12, :cond_87

    .line 87
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v12

    iget-object v5, v0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v5, v5, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->location:Landroid/location/Location;

    .line 88
    invoke-virtual {v5}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v14

    sub-long/2addr v12, v14

    const-wide/32 v14, 0xf4240

    div-long/2addr v12, v14

    .line 89
    iget-object v0, v0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->location:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v14

    add-long/2addr v14, v12

    const-wide/16 v12, 0x3e8

    div-long/2addr v14, v12

    long-to-int v5, v14

    move v13, v1

    move/from16 v22, v2

    move-wide/from16 v18, v3

    move/from16 v23, v5

    goto :goto_8e

    :cond_87
    move v13, v1

    move-wide/from16 v18, v3

    move/from16 v22, v5

    move/from16 v23, v22

    :goto_8e
    move-object/from16 v21, v6

    move-wide v14, v7

    move-wide/from16 v16, v9

    move/from16 v20, v11

    goto :goto_ad

    :cond_96
    move v13, v1

    move-wide v14, v3

    move-wide/from16 v16, v14

    move-wide/from16 v18, v16

    move/from16 v20, v5

    goto :goto_a7

    :cond_9f
    move-wide v14, v3

    move-wide/from16 v16, v14

    move-wide/from16 v18, v16

    move v13, v5

    move/from16 v20, v13

    :goto_a7
    move/from16 v22, v20

    move/from16 v23, v22

    move-object/from16 v21, v6

    .line 95
    :goto_ad
    new-instance v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifGpsInfo;

    move-object v12, v0

    invoke-direct/range {v12 .. v23}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifGpsInfo;-><init>(ZDDDZLjava/lang/String;ZI)V

    return-object v0
.end method

.method private static createExifOrientationInfo(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifOrientationInfo;
    .registers 3

    .line 107
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget v0, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->orientation:I

    if-eqz v0, :cond_19

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_19

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_19

    const/16 v1, 0x10e

    if-eq v0, v1, :cond_19

    .line 117
    new-instance p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifOrientationInfo;

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifOrientationInfo;-><init>(ZI)V

    return-object p0

    .line 115
    :cond_19
    new-instance v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifOrientationInfo;

    const/4 v1, 0x1

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget p0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->orientation:I

    invoke-direct {v0, v1, p0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifOrientationInfo;-><init>(ZI)V

    return-object v0
.end method

.method private static createExifThumbnailInfo()Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifThumbnailInfo;
    .registers 5

    .line 122
    new-instance v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifThumbnailInfo;

    const/4 v1, 0x1

    const/16 v2, 0xa0

    const/16 v3, 0x78

    const/16 v4, 0x50

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifThumbnailInfo;-><init>(ZIII)V

    return-object v0
.end method
