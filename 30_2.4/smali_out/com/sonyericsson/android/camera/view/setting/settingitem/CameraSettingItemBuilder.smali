.class public Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;
.super Ljava/lang/Object;
.source "CameraSettingItemBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;,
        Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingKeyItemBuilder;
    }
.end annotation


# instance fields
.field private final mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

.field private final mContext:Landroid/content/Context;

.field private final mDependencyGuideResolver:Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideResolver;

.field private final mHasExtraOutputPath:Z

.field private final mHasForceSoundCapability:Z

.field private final mIsOneShot:Z

.field private final mSettingGroup:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

.field private final mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/cameracommon/storage/Storage;ZZZ)V
    .registers 7

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->mContext:Landroid/content/Context;

    .line 75
    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 76
    iput-object p3, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    .line 77
    iput-boolean p5, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->mIsOneShot:Z

    .line 78
    iput-boolean p6, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->mHasExtraOutputPath:Z

    .line 79
    new-instance p1, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;

    .line 80
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p3

    invoke-static {p3}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isBokehSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result p3

    invoke-direct {p1, p4, p3}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;-><init>(ZZ)V

    iget-object p3, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 81
    invoke-virtual {p1, p3, p5}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->get(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->mSettingGroup:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    .line 83
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isForceSound(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->mHasForceSoundCapability:Z

    .line 84
    new-instance p1, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideResolver;

    invoke-direct {p1}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideResolver;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->mDependencyGuideResolver:Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideResolver;

    return-void
.end method

.method private checkDependencyGuideList(Ljava/util/List;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;",
            ">;)Z"
        }
    .end annotation

    if-eqz p1, :cond_1e

    .line 239
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;

    .line 240
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->getDependencyGuideList()Ljava/util/List;

    move-result-object v0

    .line 241
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    const/4 p1, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p1, 0x0

    :goto_1f
    return p1
.end method

.method private generateChildrenSettingItem(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/cameracommon/storage/Storage;)Ljava/util/List;
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/configuration/UserSettingKey;",
            "Lcom/sonyericsson/android/camera/setting/UserSettings;",
            "Lcom/sonyericsson/cameracommon/storage/Storage;",
            ")",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 321
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 322
    invoke-interface {v2, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v4

    .line 324
    iget-object v5, v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    const/4 v7, 0x0

    const/4 v9, 0x1

    if-ne v5, v6, :cond_d1

    sget-object v5, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    if-ne v1, v5, :cond_d1

    .line 328
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v2, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    .line 329
    iget-object v5, v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 330
    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v5

    .line 329
    invoke-static {v5}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isSuperSlowFullHdSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v5

    .line 331
    sget-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->STANDARD_SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    if-eq v1, v6, :cond_7f

    if-eqz v5, :cond_7f

    .line 332
    sget-object v5, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FULL_HD:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 334
    iget-object v6, v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->mDependencyGuideResolver:Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideResolver;

    iget-object v10, v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    iget-boolean v11, v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->mIsOneShot:Z

    .line 335
    invoke-virtual {v6, v2, v10, v11, v5}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideResolver;->getDependencyGuideList(Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;ZLcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Ljava/util/ArrayList;

    move-result-object v6

    .line 338
    new-instance v10, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;

    invoke-direct {v10, v7}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;-><init>(Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$1;)V

    .line 339
    invoke-virtual {v10, v5}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;->setUserSettingValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;

    move-result-object v10

    .line 340
    invoke-interface {v5}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getTextId()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;->setNameResId(I)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;

    move-result-object v10

    if-ne v4, v5, :cond_54

    move v5, v9

    goto :goto_55

    :cond_54
    const/4 v5, 0x0

    .line 341
    :goto_55
    invoke-virtual {v10, v5}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;->setIsSelected(Z)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;

    move-result-object v5

    const v10, 0x7f0e038e

    .line 342
    invoke-direct {v0, v10}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;->setSubDescriptionText(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;

    move-result-object v5

    .line 344
    invoke-direct {v0, v10}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;->setAdditionalTextForAccessibility(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;

    move-result-object v5

    .line 346
    invoke-virtual {v5, v9}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;->setIsSelectable(Z)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;

    move-result-object v5

    .line 347
    invoke-virtual {v5, v9}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;->setIsEnable(Z)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;

    move-result-object v5

    .line 348
    invoke-virtual {v5, v6}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;->setDependencyGuideList(Ljava/util/ArrayList;)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;

    move-result-object v5

    .line 349
    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;->build()Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    :cond_7f
    sget-object v5, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->HD:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 354
    iget-object v6, v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->mDependencyGuideResolver:Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideResolver;

    iget-object v10, v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    iget-boolean v11, v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->mIsOneShot:Z

    .line 355
    invoke-virtual {v6, v2, v10, v11, v5}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideResolver;->getDependencyGuideList(Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;ZLcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Ljava/util/ArrayList;

    move-result-object v2

    .line 358
    new-instance v6, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;

    invoke-direct {v6, v7}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;-><init>(Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$1;)V

    .line 359
    invoke-virtual {v6, v5}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;->setUserSettingValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;

    move-result-object v6

    .line 360
    invoke-interface {v5}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getTextId()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;->setNameResId(I)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;

    move-result-object v6

    if-eq v4, v5, :cond_a5

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->STANDARD_SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    if-ne v1, v4, :cond_a3

    goto :goto_a5

    :cond_a3
    const/4 v8, 0x0

    goto :goto_a6

    :cond_a5
    :goto_a5
    move v8, v9

    .line 361
    :goto_a6
    invoke-virtual {v6, v8}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;->setIsSelected(Z)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;

    move-result-object v1

    const v4, 0x7f0e0392

    .line 364
    invoke-direct {v0, v4}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 363
    invoke-virtual {v1, v5}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;->setSubDescriptionText(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;

    move-result-object v1

    .line 366
    invoke-direct {v0, v4}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 365
    invoke-virtual {v1, v4}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;->setAdditionalTextForAccessibility(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;

    move-result-object v1

    .line 367
    invoke-virtual {v1, v9}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;->setIsSelectable(Z)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;

    move-result-object v1

    .line 368
    invoke-virtual {v1, v9}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;->setIsEnable(Z)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;

    move-result-object v1

    .line 369
    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;->setDependencyGuideList(Ljava/util/ArrayList;)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;

    move-result-object v1

    .line 370
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;->build()Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v3

    .line 374
    :cond_d1
    invoke-interface {v2, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->getOptions(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v5

    .line 376
    sget-object v6, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->GEO_TAG:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    if-ne v1, v6, :cond_e6

    .line 378
    move-object v6, v4

    check-cast v6, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    iget-object v10, v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->mContext:Landroid/content/Context;

    invoke-static {v6, v10}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->isGeoTagEnabled(Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_e6

    .line 380
    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    .line 384
    :cond_e6
    sget-object v6, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SIDE_SENSE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    if-ne v1, v6, :cond_f2

    .line 385
    invoke-static {v9}, Lcom/sonyericsson/android/camera/util/SettingUtil;->isSideSenseEnabled(Z)Z

    move-result v6

    if-nez v6, :cond_f2

    .line 386
    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/SideSense;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SideSense;

    .line 390
    :cond_f2
    sget-object v6, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v2, v6}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v6

    check-cast v6, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 391
    sget-object v10, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_CODEC:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v2, v10}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v10

    check-cast v10, Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;

    .line 392
    sget-object v11, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v2, v11}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v11

    check-cast v11, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 393
    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v2, v12}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v12

    check-cast v12, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    .line 395
    array-length v13, v5

    const/4 v14, 0x0

    :goto_114
    if-ge v14, v13, :cond_28b

    aget-object v15, v5, v14

    if-eqz v15, :cond_271

    if-ne v4, v15, :cond_11e

    move v8, v9

    goto :goto_11f

    :cond_11e
    const/4 v8, 0x0

    .line 398
    :goto_11f
    invoke-static {v15, v11, v6, v12}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->isVideoSelectableValues(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)Z

    move-result v16

    .line 402
    sget-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_H264:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    if-ne v15, v7, :cond_137

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;->H265:Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;

    if-ne v10, v7, :cond_137

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-object/from16 v19, v10

    move-object/from16 v20, v11

    goto/16 :goto_27b

    .line 404
    :cond_137
    sget-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_H265:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    if-ne v15, v7, :cond_14b

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;->H264:Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;

    if-ne v10, v7, :cond_14b

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-object/from16 v19, v10

    move-object/from16 v20, v11

    goto/16 :goto_27b

    .line 408
    :cond_14b
    sget-object v7, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->DESTINATION_TO_SAVE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    if-ne v1, v7, :cond_1bd

    .line 409
    move-object v7, v15

    check-cast v7, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    .line 410
    invoke-interface/range {p3 .. p3}, Lcom/sonyericsson/cameracommon/storage/Storage;->getAvailableStorage()Ljava/util/List;

    move-result-object v9

    move-object/from16 v17, v5

    invoke-virtual {v7}, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->getType()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v5

    invoke-interface {v9, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1a8

    .line 415
    invoke-virtual {v7}, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->getType()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v5

    move-object/from16 v18, v6

    sget-object v6, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->INTERNAL:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    if-ne v5, v6, :cond_186

    move-object v5, v4

    check-cast v5, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    .line 417
    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->getType()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v5

    sget-object v6, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->INTERNAL:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    if-ne v5, v6, :cond_186

    .line 418
    invoke-interface/range {p3 .. p3}, Lcom/sonyericsson/cameracommon/storage/Storage;->getAvailableStorage()Ljava/util/List;

    move-result-object v5

    sget-object v6, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_186

    const/16 v16, 0x1

    goto :goto_1ac

    .line 421
    :cond_186
    invoke-virtual {v7}, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->getType()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v5

    sget-object v6, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    if-ne v5, v6, :cond_1aa

    move-object v5, v4

    check-cast v5, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    .line 422
    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->getType()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v5

    sget-object v6, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    if-ne v5, v6, :cond_1aa

    .line 424
    invoke-interface/range {p3 .. p3}, Lcom/sonyericsson/cameracommon/storage/Storage;->getAvailableStorage()Ljava/util/List;

    move-result-object v5

    sget-object v6, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->INTERNAL:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    .line 425
    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1aa

    const/16 v16, 0x1

    goto :goto_1ac

    :cond_1a8
    move-object/from16 v18, v6

    :cond_1aa
    move/from16 v16, v9

    .line 429
    :goto_1ac
    iget-object v5, v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    invoke-virtual {v7}, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->getType()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/sonyericsson/cameracommon/storage/Storage;->getCurrentState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    move-result-object v5

    .line 430
    invoke-virtual {v5}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->isWritable()Z

    move-result v9

    move/from16 v5, v16

    goto :goto_1c4

    :cond_1bd
    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move/from16 v5, v16

    const/4 v9, 0x1

    .line 433
    :goto_1c4
    instance-of v6, v15, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingBooleanValue;

    if-eqz v6, :cond_1d2

    .line 434
    move-object v6, v15

    check-cast v6, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingBooleanValue;

    invoke-interface {v6}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingBooleanValue;->getBooleanValue()Z

    move-result v6

    const/4 v7, 0x1

    xor-int/2addr v6, v7

    goto :goto_1d3

    :cond_1d2
    const/4 v6, 0x0

    .line 437
    :goto_1d3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v4

    .line 438
    invoke-interface {v15}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getTextId()I

    move-result v4

    move-object/from16 v19, v10

    const/4 v10, -0x1

    if-eq v4, v10, :cond_1ee

    .line 439
    invoke-interface {v15}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getTextId()I

    move-result v4

    invoke-direct {v0, v4}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    :cond_1ee
    iget-object v4, v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->mDependencyGuideResolver:Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideResolver;

    iget-object v10, v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-object/from16 v20, v11

    iget-boolean v11, v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->mIsOneShot:Z

    .line 443
    invoke-virtual {v4, v2, v10, v11, v15}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideResolver;->getDependencyGuideList(Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;ZLcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Ljava/util/ArrayList;

    move-result-object v4

    .line 446
    new-instance v10, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;-><init>(Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$1;)V

    .line 447
    invoke-virtual {v10, v15}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;->setUserSettingValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;

    move-result-object v10

    .line 448
    invoke-interface {v15}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getTextId()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;->setNameResId(I)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;

    move-result-object v10

    .line 449
    invoke-virtual {v10, v8}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;->setIsSelected(Z)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;

    move-result-object v8

    .line 450
    invoke-virtual {v8, v5}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;->setIsSelectable(Z)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;

    move-result-object v5

    .line 451
    invoke-virtual {v5, v9}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;->setIsEnable(Z)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;

    move-result-object v5

    .line 452
    invoke-virtual {v5, v6}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;->setIsOffValue(Z)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;

    move-result-object v5

    .line 453
    invoke-virtual {v5, v4}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;->setDependencyGuideList(Ljava/util/ArrayList;)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;

    move-result-object v4

    .line 455
    sget-object v5, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/16 v6, 0xe

    const/16 v8, 0x20

    if-eq v5, v6, :cond_247

    .line 465
    invoke-static {v1, v15}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingResource;->getSubDescriptionResId(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_262

    .line 467
    invoke-direct {v0, v5}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;->setSubDescriptionText(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;

    .line 468
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 469
    invoke-direct {v0, v5}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_262

    .line 457
    :cond_247
    instance-of v5, v15, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    if-eqz v5, :cond_262

    .line 458
    check-cast v15, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    .line 459
    iget-object v5, v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v15, v5}, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->getDescriptionText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;->setSubDescriptionText(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;

    .line 460
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 461
    iget-object v5, v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v15, v5}, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->getDescriptionText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    :cond_262
    :goto_262
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;->setAdditionalTextForAccessibility(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;

    .line 475
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;->build()Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_27b

    :cond_271
    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-object/from16 v19, v10

    move-object/from16 v20, v11

    :goto_27b
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    move-object/from16 v10, v19

    move-object/from16 v11, v20

    const/4 v7, 0x0

    const/4 v9, 0x1

    goto/16 :goto_114

    :cond_28b
    return-object v3
.end method

.method private generateCommonSettingItemList(Lcom/sonyericsson/android/camera/setting/UserSettings;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/setting/UserSettings;",
            ")",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;",
            ">;"
        }
    .end annotation

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 128
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->mSettingGroup:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;->common:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;->keys:[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    array-length v1, v1

    if-lez v1, :cond_2e

    .line 129
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->mSettingGroup:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;->common:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;->keys:[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_16
    if-ge v3, v2, :cond_2e

    aget-object v4, v1, v3

    .line 130
    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->mContext:Landroid/content/Context;

    invoke-direct {p0, v5, p1, v4}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->isVisible(Landroid/content/Context;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 131
    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    invoke-direct {p0, v4, p1, v5}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->generateKeyItem(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/cameracommon/storage/Storage;)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2b
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_2e
    return-object v0
.end method

.method private generateKeyItem(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/cameracommon/storage/Storage;)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;
    .registers 11

    .line 254
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->generateChildrenSettingItem(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/cameracommon/storage/Storage;)Ljava/util/List;

    move-result-object p3

    .line 256
    invoke-direct {p0, p3}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->getSelectedSettingItem(Ljava/util/List;)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;

    move-result-object v0

    .line 257
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->isSelectableKey(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/setting/UserSettings;)Z

    move-result v1

    .line 258
    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->getRestrictMessageDialogId(Lcom/sonyericsson/android/camera/setting/UserSettings;)Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    move-result-object p2

    if-nez v1, :cond_18

    .line 259
    sget-object v2, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->DLG_INVALID:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    if-eq p2, v2, :cond_18

    const/4 v2, 0x1

    goto :goto_19

    :cond_18
    const/4 v2, 0x0

    .line 260
    :goto_19
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-static {v3, p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingResource;->getInformationResId(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_29

    .line 264
    invoke-direct {p0, p3}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->checkDependencyGuideList(Ljava/util/List;)Z

    move-result v5

    if-nez v5, :cond_29

    move v3, v4

    .line 270
    :cond_29
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 271
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->getTitleTextId()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ""

    const/16 v6, 0x20

    if-eqz v0, :cond_5b

    .line 275
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->isSelectable()Z

    move-result v5

    if-eqz v5, :cond_54

    .line 276
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->getNameResId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 277
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 278
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5b

    :cond_54
    const v0, 0x7f0e02b5

    .line 280
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->getString(I)Ljava/lang/String;

    move-result-object v5

    :cond_5b
    :goto_5b
    if-nez v1, :cond_6a

    .line 285
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const v0, 0x7f0e0075

    .line 287
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    :cond_6a
    new-instance v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingKeyItemBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingKeyItemBuilder;-><init>(Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$1;)V

    .line 291
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingKeyItemBuilder;->setUserSettingKey(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingKeyItemBuilder;

    move-result-object v0

    .line 292
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->getTitleTextId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingKeyItemBuilder;->setTitleResId(I)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingKeyItemBuilder;

    move-result-object v0

    .line 293
    invoke-virtual {v0, v5}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingKeyItemBuilder;->setValueText(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingKeyItemBuilder;

    move-result-object v0

    .line 294
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingKeyItemBuilder;->setAdditionalTextForAccessibility(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingKeyItemBuilder;

    move-result-object v0

    .line 295
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingKeyItemBuilder;->setSettingLayoutType(Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingKeyItemBuilder;

    move-result-object v0

    .line 296
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingResource;->getDescriptionResId(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingKeyItemBuilder;->setDescriptionResId(I)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingKeyItemBuilder;

    move-result-object v0

    .line 297
    invoke-static {v3}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingResource;->isExclusiveInformationId(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingKeyItemBuilder;->setIsExclusionInfo(Z)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingKeyItemBuilder;

    move-result-object v0

    .line 298
    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingKeyItemBuilder;->setInformationResId(I)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingKeyItemBuilder;

    move-result-object v0

    .line 299
    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingKeyItemBuilder;->setIsRestricted(Z)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingKeyItemBuilder;

    move-result-object v0

    .line 300
    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingKeyItemBuilder;->setRestrictMessageDialogId(Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingKeyItemBuilder;

    move-result-object p2

    .line 301
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingResource;->getImageResId(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingKeyItemBuilder;->setImageResId(I)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingKeyItemBuilder;

    move-result-object p2

    .line 303
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->isCommon()Z

    move-result v0

    if-eqz v0, :cond_c0

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->isSaved()Z

    move-result p1

    if-eqz p1, :cond_c3

    .line 306
    :cond_c0
    invoke-virtual {p2, p3}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingKeyItemBuilder;->setOptions(Ljava/util/List;)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingKeyItemBuilder;

    .line 309
    :cond_c3
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingKeyItemBuilder;->build()Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    move-result-object p1

    return-object p1
.end method

.method private generateModeSettingItemList(Lcom/sonyericsson/android/camera/setting/UserSettings;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/setting/UserSettings;",
            ")",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;",
            ">;"
        }
    .end annotation

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 116
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->mSettingGroup:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;->priorityHigh:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;->keys:[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v2, :cond_25

    aget-object v4, v1, v3

    .line 117
    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->mContext:Landroid/content/Context;

    invoke-direct {p0, v5, p1, v4}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->isVisible(Landroid/content/Context;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 118
    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    invoke-direct {p0, v4, p1, v5}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->generateKeyItem(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/cameracommon/storage/Storage;)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_25
    return-object v0
.end method

.method private getCommonTitleResId()I
    .registers 2

    .line 144
    invoke-static {}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingResource;->getCommonTitleResId()I

    move-result v0

    return v0
.end method

.method private getModeTitleResId()I
    .registers 2

    .line 140
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingResource;->getModeTitleResId(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)I

    move-result v0

    return v0
.end method

.method private getSelectedSettingItem(Ljava/util/List;)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;",
            ">;)",
            "Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;"
        }
    .end annotation

    .line 493
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 496
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;

    .line 497
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_a

    return-object v0

    .line 501
    :cond_1d
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_2a

    const-string p1, "The specified list doesn\'t have a selected item."

    .line 502
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    :cond_2a
    const/4 p1, 0x0

    return-object p1

    .line 494
    :cond_2c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The specified list is empty."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getString(I)Ljava/lang/String;
    .registers 3

    .line 482
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private isSelectableKey(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/setting/UserSettings;)Z
    .registers 6

    .line 515
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->isSelectable()Z

    move-result v0

    .line 517
    sget-object v1, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v1, :cond_22

    const/16 v1, 0xf

    if-eq p1, v1, :cond_15

    goto :goto_45

    .line 530
    :cond_15
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p2, p1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    .line 531
    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    if-ne p1, p2, :cond_45

    goto :goto_46

    .line 519
    :cond_22
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 520
    invoke-interface {p2, p1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 521
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne p1, v1, :cond_45

    .line 522
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p2, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p2

    check-cast p2, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    .line 523
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->STANDARD_SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    if-eq p2, v1, :cond_46

    .line 524
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isSuperSlowFullHdSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result p1

    if-nez p1, :cond_45

    goto :goto_46

    :cond_45
    :goto_45
    move v2, v0

    :cond_46
    :goto_46
    return v2
.end method

.method private static isVideoSelectableValues(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)Z
    .registers 7

    .line 553
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->is4KVideo()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_10

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;->H265:Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;

    if-ne p0, v0, :cond_10

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    if-eq p3, v0, :cond_10

    return v1

    .line 558
    :cond_10
    invoke-interface {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v0

    .line 559
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_STABILIZER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    if-ne v2, v0, :cond_2e

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->isSelectable()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 560
    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    .line 561
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p1

    .line 562
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    if-ne p0, v0, :cond_29

    return v1

    .line 565
    :cond_29
    invoke-static {p1, p2, p3}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->isVideoStabilizerSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)Z

    move-result p0

    return p0

    .line 568
    :cond_2e
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->isSelectable()Z

    move-result p0

    return p0
.end method

.method private isVisible(Landroid/content/Context;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Z
    .registers 8

    .line 157
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p2, v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 159
    sget-object v1, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_ac

    .line 217
    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->isCommon()Z

    move-result p1

    if-eqz p1, :cond_95

    return v2

    .line 214
    :pswitch_1c
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isVideo()Z

    move-result p1

    if-nez p1, :cond_29

    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isFaultPhotoDetectionSupported()Z

    move-result p1

    if-eqz p1, :cond_29

    goto :goto_2a

    :cond_29
    move v2, v3

    :goto_2a
    return v2

    .line 208
    :pswitch_2b
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isFront()Z

    move-result p1

    if-nez p1, :cond_95

    return v3

    .line 202
    :pswitch_32
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isFront()Z

    move-result p1

    if-eqz p1, :cond_95

    return v3

    .line 199
    :pswitch_39
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isTransferAndTaggingSupported()Z

    move-result p1

    return p1

    .line 196
    :pswitch_3e
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isSideTouchSupported()Z

    move-result p1

    return p1

    .line 193
    :pswitch_43
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isHighSensitivityFusionSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result p1

    return p1

    .line 190
    :pswitch_4c
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isDistortionCorrectionSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result p1

    return p1

    :pswitch_55
    return v3

    .line 182
    :pswitch_56
    sget-object p1, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->BACK:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isManualBurstSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result p1

    if-nez p1, :cond_68

    sget-object p1, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->FRONT:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    .line 183
    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isManualBurstSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result p1

    if-eqz p1, :cond_67

    goto :goto_68

    :cond_67
    move v2, v3

    :cond_68
    :goto_68
    return v2

    .line 175
    :pswitch_69
    iget-boolean p2, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->mHasExtraOutputPath:Z

    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->updateSaveDestinationSelectability(Z)V

    .line 177
    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->getSelectability()Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;

    move-result-object p2

    sget-object p3, Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;->FIXED:Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;

    if-eq p2, p3, :cond_7d

    .line 178
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/utility/CommonUtility;->shouldStorageForceInternal(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_7d

    goto :goto_7e

    :cond_7d
    move v2, v3

    :goto_7e
    return v2

    .line 173
    :pswitch_7f
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isLiftTriggerSupported()Z

    move-result p1

    return p1

    .line 170
    :pswitch_84
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->mHasForceSoundCapability:Z

    xor-int/2addr p1, v2

    return p1

    .line 165
    :pswitch_88
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->mIsOneShot:Z

    if-eqz p1, :cond_95

    invoke-interface {p2, p3}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->MMS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    if-ne p1, v0, :cond_95

    return v3

    .line 224
    :cond_95
    invoke-interface {p2, p3}, Lcom/sonyericsson/android/camera/setting/UserSettings;->getOptions(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p1

    array-length p1, p1

    if-gt p1, v2, :cond_9d

    return v3

    .line 228
    :cond_9d
    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->getSelectability()Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;

    move-result-object p1

    .line 229
    sget-object p2, Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;->SELECTABLE:Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;

    if-eq p1, p2, :cond_ab

    sget-object p2, Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;->UNAVAILABLE:Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;

    if-ne p1, p2, :cond_aa

    goto :goto_ab

    :cond_aa
    move v2, v3

    :cond_ab
    :goto_ab
    return v2

    :pswitch_data_ac
    .packed-switch 0x1
        :pswitch_88
        :pswitch_84
        :pswitch_7f
        :pswitch_69
        :pswitch_56
        :pswitch_55
        :pswitch_4c
        :pswitch_43
        :pswitch_3e
        :pswitch_39
        :pswitch_32
        :pswitch_2b
        :pswitch_1c
    .end packed-switch
.end method

.method private updateSaveDestinationSelectability(Z)V
    .registers 3

    if-eqz p1, :cond_a

    .line 577
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->DESTINATION_TO_SAVE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;->FIXED:Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->setSelectability(Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;)V

    goto :goto_11

    .line 579
    :cond_a
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->DESTINATION_TO_SAVE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;->SELECTABLE:Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;

    .line 580
    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->setSelectability(Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;)V

    :goto_11
    return-void
.end method


# virtual methods
.method public create(Lcom/sonyericsson/android/camera/setting/UserSettings;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/setting/UserSettings;",
            ")",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingCategoryItem;",
            ">;"
        }
    .end annotation

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 96
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->generateModeSettingItemList(Lcom/sonyericsson/android/camera/setting/UserSettings;)Ljava/util/List;

    move-result-object v1

    .line 97
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->generateCommonSettingItemList(Lcom/sonyericsson/android/camera/setting/UserSettings;)Ljava/util/List;

    move-result-object p1

    .line 99
    new-instance v2, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingCategoryItem;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->getModeTitleResId()I

    move-result v3

    invoke-direct {v2, v3, v1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingCategoryItem;-><init>(ILjava/util/List;)V

    .line 101
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2b

    .line 104
    new-instance v1, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingCategoryItem;

    .line 105
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->getCommonTitleResId()I

    move-result v2

    invoke-direct {v1, v2, p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingCategoryItem;-><init>(ILjava/util/List;)V

    .line 107
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2b
    return-object v0
.end method
