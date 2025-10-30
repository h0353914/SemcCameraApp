.class Lcom/sonyericsson/android/camera/device/CameraParameterValidator;
.super Ljava/lang/Object;
.source "CameraParameterValidator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/device/CameraParameterValidator$KeyValueSet;,
        Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ValidationCase;,
        Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ParameterValidationError;
    }
.end annotation


# static fields
.field private static final BASE_CONDITION_TAG:Ljava/lang/String; = "base-condition"

.field private static final CHECK_CONDITION_TAG:Ljava/lang/String; = "check-condition"

.field private static final KEY_ATTRIBUTE_INDEX:I = 0x0

.field private static final KEY_VALUE_SET_TAG:Ljava/lang/String; = "key-value-set"

.field private static final LOCAL_LOG:Z = false

.field private static final VALIDATION_SET_TAG:Ljava/lang/String; = "validation-set"

.field private static final VALUE_ACTIVE_ARRAY_SIZE:Ljava/lang/String; = "active-array-size"

.field private static final VALUE_ATTRIBUTE_INDEX:I = 0x1

.field private static mActiveArraySizeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private static mInvalidSetList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ValidationCase;",
            ">;"
        }
    .end annotation
.end field

.field private static mKeysMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field private static mValidSetList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ValidationCase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterValidator;->mValidSetList:Ljava/util/List;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterValidator;->mInvalidSetList:Ljava/util/List;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canValidation()Z
    .registers 1

    .line 462
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterValidator;->mKeysMap:Ljava/util/Map;

    if-eqz v0, :cond_16

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterValidator;->mActiveArraySizeMap:Ljava/util/Map;

    if-eqz v0, :cond_16

    .line 463
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method private static loadAvailableKeys(Landroid/content/Context;)V
    .registers 10

    const-string v0, "camera"

    .line 330
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/camera2/CameraManager;

    .line 332
    :try_start_8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterValidator;->mKeysMap:Ljava/util/Map;

    .line 333
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterValidator;->mActiveArraySizeMap:Ljava/util/Map;

    .line 334
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_1d
    if-ge v3, v1, :cond_58

    aget-object v4, v0, v3

    .line 335
    invoke-virtual {p0, v4}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v5

    .line 337
    invoke-virtual {v5}, Landroid/hardware/camera2/CameraCharacteristics;->getAvailableCaptureRequestKeys()Ljava/util/List;

    move-result-object v6

    .line 339
    invoke-static {}, Lcom/sonyericsson/android/camera/device/SomcCameraDeviceInfo;->getAllCaptureRequestKeys()Ljava/util/List;

    move-result-object v7

    .line 341
    invoke-interface {v7, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 342
    sget-object v6, Lcom/sonyericsson/android/camera/device/CameraParameterValidator;->mKeysMap:Ljava/util/Map;

    invoke-interface {v6, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    .line 345
    sget-object v6, Lcom/sonyericsson/android/camera/device/CameraParameterValidator;->mActiveArraySizeMap:Ljava/util/Map;

    new-instance v7, Landroid/graphics/Rect;

    .line 346
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-direct {v7, v2, v2, v8, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 345
    invoke-interface {v6, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4f
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_8 .. :try_end_4f} :catch_52

    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    :catch_52
    move-exception p0

    const-string v0, "Failed in getCameraCharacteristics"

    .line 349
    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_58
    return-void
.end method

.method private static loadBaseCondition(Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ValidationCase;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 415
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    :goto_4
    const/4 v1, 0x3

    if-ne v0, v1, :cond_15

    const-string v1, "base-condition"

    .line 418
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    goto :goto_15

    :cond_14
    return-void

    :cond_15
    :goto_15
    const/4 v1, 0x2

    if-eq v0, v1, :cond_19

    goto :goto_37

    :cond_19
    const-string v0, "key-value-set"

    .line 423
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    const/4 v0, 0x0

    .line 424
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 425
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    .line 426
    new-instance v2, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$KeyValueSet;

    invoke-direct {v2, v0, v1}, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$KeyValueSet;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    # invokes: Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ValidationCase;->addBaseCondition(Lcom/sonyericsson/android/camera/device/CameraParameterValidator$KeyValueSet;)V
    invoke-static {p0, v2}, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ValidationCase;->access$300(Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ValidationCase;Lcom/sonyericsson/android/camera/device/CameraParameterValidator$KeyValueSet;)V

    .line 433
    :cond_37
    :goto_37
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_4
.end method

.method private static loadCheckCondition(Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ValidationCase;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 439
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    :goto_4
    const/4 v1, 0x3

    if-ne v0, v1, :cond_15

    const-string v1, "check-condition"

    .line 442
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    goto :goto_15

    :cond_14
    return-void

    :cond_15
    :goto_15
    const/4 v1, 0x2

    if-eq v0, v1, :cond_19

    goto :goto_37

    :cond_19
    const-string v0, "key-value-set"

    .line 447
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    const/4 v0, 0x0

    .line 448
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 449
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    .line 450
    new-instance v2, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$KeyValueSet;

    invoke-direct {v2, v0, v1}, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$KeyValueSet;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    # invokes: Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ValidationCase;->addCheckCondition(Lcom/sonyericsson/android/camera/device/CameraParameterValidator$KeyValueSet;)V
    invoke-static {p0, v2}, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ValidationCase;->access$400(Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ValidationCase;Lcom/sonyericsson/android/camera/device/CameraParameterValidator$KeyValueSet;)V

    .line 457
    :cond_37
    :goto_37
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_4
.end method

.method public static loadCheckList(Landroid/content/Context;)V
    .registers 3

    .line 312
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_16

    .line 317
    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraParameterValidator;->loadAvailableKeys(Landroid/content/Context;)V

    .line 318
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterValidator;->mInvalidSetList:Ljava/util/List;

    const/high16 v1, 0x7f120000

    invoke-static {p0, v0, v1}, Lcom/sonyericsson/android/camera/device/CameraParameterValidator;->loadCheckList(Landroid/content/Context;Ljava/util/List;I)V

    .line 320
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterValidator;->mValidSetList:Ljava/util/List;

    const v1, 0x7f120001

    invoke-static {p0, v0, v1}, Lcom/sonyericsson/android/camera/device/CameraParameterValidator;->loadCheckList(Landroid/content/Context;Ljava/util/List;I)V

    :cond_16
    return-void
.end method

.method private static loadCheckList(Landroid/content/Context;Ljava/util/List;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ValidationCase;",
            ">;I)V"
        }
    .end annotation

    .line 360
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p0
    :try_end_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_8} :catch_7c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_6e

    if-eqz p0, :cond_68

    const/4 p2, 0x0

    .line 363
    :try_start_b
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v0

    move-object v1, p2

    :goto_10
    const/4 v2, 0x1

    if-eq v0, v2, :cond_68

    .line 366
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    packed-switch v0, :pswitch_data_8a

    goto :goto_4d

    :pswitch_1b
    const-string v0, "validation-set"

    .line 383
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 385
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4d

    :pswitch_27
    const-string v0, "validation-set"

    .line 370
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 372
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ValidationCase;

    invoke-direct {v0, p2}, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ValidationCase;-><init>(Lcom/sonyericsson/android/camera/device/CameraParameterValidator$1;)V

    move-object v1, v0

    goto :goto_4d

    :cond_36
    const-string v0, "base-condition"

    .line 373
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 375
    invoke-static {v1, p0}, Lcom/sonyericsson/android/camera/device/CameraParameterValidator;->loadBaseCondition(Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ValidationCase;Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_4d

    :cond_42
    const-string v0, "check-condition"

    .line 376
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 378
    invoke-static {v1, p0}, Lcom/sonyericsson/android/camera/device/CameraParameterValidator;->loadCheckCondition(Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ValidationCase;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 364
    :cond_4d
    :goto_4d
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_51} :catch_54
    .catchall {:try_start_b .. :try_end_51} :catchall_52

    goto :goto_10

    :catchall_52
    move-exception p1

    goto :goto_57

    :catch_54
    move-exception p1

    move-object p2, p1

    .line 360
    :try_start_56
    throw p2
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_52

    :goto_57
    if-eqz p0, :cond_67

    if-eqz p2, :cond_64

    .line 392
    :try_start_5b
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_5b .. :try_end_5e} :catch_5f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5b .. :try_end_5e} :catch_7c
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5e} :catch_6e

    goto :goto_67

    :catch_5f
    move-exception p0

    :try_start_60
    invoke-virtual {p2, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_67

    :cond_64
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_67
    :goto_67
    throw p1

    :cond_68
    if-eqz p0, :cond_6d

    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_6d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_60 .. :try_end_6d} :catch_7c
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_6d} :catch_6e

    :cond_6d
    return-void

    :catch_6e
    move-exception p0

    const-string p1, "Fail to load of CheckList."

    .line 396
    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 397
    new-instance p0, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ParameterValidationError;

    const-string p1, "loadCheckList():[IOException]"

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ParameterValidationError;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_7c
    move-exception p0

    const-string p1, "Fail to load of CheckList."

    .line 393
    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 394
    new-instance p0, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ParameterValidationError;

    const-string p1, "loadCheckList():[XmlPullParserException]"

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ParameterValidationError;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_8a
    .packed-switch 0x2
        :pswitch_27
        :pswitch_1b
    .end packed-switch
.end method

.method static declared-synchronized validate(Ljava/lang/String;Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;)V
    .registers 7

    const-class v0, Lcom/sonyericsson/android/camera/device/CameraParameterValidator;

    monitor-enter v0

    .line 80
    :try_start_3
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_47

    .line 85
    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraParameterValidator;->mKeysMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 86
    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraParameterValidator;->mActiveArraySizeMap:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Rect;

    if-eqz v1, :cond_3c

    .line 87
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_20

    goto :goto_3c

    .line 93
    :cond_20
    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraParameterValidator;->mInvalidSetList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_26
    :goto_26
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_47

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ValidationCase;

    .line 94
    # invokes: Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ValidationCase;->isBaseCondition(Ljava/util/List;Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;)Z
    invoke-static {v3, v1, p1}, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ValidationCase;->access$000(Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ValidationCase;Ljava/util/List;Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 96
    # invokes: Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ValidationCase;->checkInvalid(Ljava/util/List;Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;Landroid/graphics/Rect;)V
    invoke-static {v3, v1, p1, p0}, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ValidationCase;->access$100(Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ValidationCase;Ljava/util/List;Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;Landroid/graphics/Rect;)V

    goto :goto_26

    :cond_3c
    :goto_3c
    const-string p0, "validate() failed. The keyList is null or keyList size is 0."

    .line 88
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V
    :try_end_45
    .catchall {:try_start_3 .. :try_end_45} :catchall_49

    .line 89
    monitor-exit v0

    return-void

    .line 112
    :cond_47
    monitor-exit v0

    return-void

    :catchall_49
    move-exception p0

    monitor-exit v0

    throw p0
.end method
