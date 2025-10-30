.class public Lcom/sonyericsson/android/camera/util/capability/PlatformCapabilityList;
.super Ljava/lang/Object;
.source "PlatformCapabilityList.java"


# static fields
.field private static final KEY_CAMERA_IDS:Ljava/lang/String; = "camera_ids_"

.field private static final KEY_SENSOR_CAMERA_LIFT_TRIGGER:Ljava/lang/String; = "sensor_camera_lift_trigger"

.field private static final KEY_SIDE_SENSE:Ljava/lang/String; = "somc_side_sense"

.field private static final SENSOR_CAMERA_LIFT_TRIGGER:Ljava/lang/String; = "com.sonymobile.sensor.camera_lift_trigger"

.field private static final SENSOR_NAME_MONO:Ljava/lang/String; = "AubeMono"

.field private static final TAG:Ljava/lang/String; = "PlatformCapabilityList"


# instance fields
.field public final CAMERA_IDS:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonyericsson/android/camera/util/capability/CapabilityItem<",
            "Ljava/util/Map<",
            "Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public final CAMERA_LIFT_TRIGGER:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonyericsson/android/camera/util/capability/CapabilityItem<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final SIDE_SENSE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonyericsson/android/camera/util/capability/CapabilityItem<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/util/capability/CapabilityItem<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_10

    const-string v0, "loadPlatformCapabilityFromDevice"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 65
    :cond_10
    new-instance v0, Lcom/sonyericsson/android/camera/util/capability/BooleanCapabilityItem;

    .line 66
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapabilityList;->isLiftTriggerSupported(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "sensor_camera_lift_trigger"

    invoke-direct {v0, v2, v1}, Lcom/sonyericsson/android/camera/util/capability/BooleanCapabilityItem;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapabilityList;->CAMERA_LIFT_TRIGGER:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    .line 67
    new-instance v0, Lcom/sonyericsson/android/camera/util/capability/BooleanCapabilityItem;

    .line 68
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapabilityList;->isSideSenseSupported()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string/jumbo v2, "somc_side_sense"

    invoke-direct {v0, v2, v1}, Lcom/sonyericsson/android/camera/util/capability/BooleanCapabilityItem;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapabilityList;->SIDE_SENSE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    .line 69
    new-instance v0, Lcom/sonyericsson/android/camera/util/capability/CameraIdMapCapabilityItem;

    const-string v1, "camera_ids_"

    .line 70
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapabilityList;->initializeCameraIdsPairing(Landroid/content/Context;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/sonyericsson/android/camera/util/capability/CameraIdMapCapabilityItem;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapabilityList;->CAMERA_IDS:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    .line 71
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapabilityList;->createList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapabilityList;->mValues:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .registers 4

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_10

    const-string p1, "loadPlatformCapabilityFromSharedPreferences"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 57
    :cond_10
    new-instance p1, Lcom/sonyericsson/android/camera/util/capability/BooleanCapabilityItem;

    const-string v0, "sensor_camera_lift_trigger"

    invoke-direct {p1, v0, p2}, Lcom/sonyericsson/android/camera/util/capability/BooleanCapabilityItem;-><init>(Ljava/lang/String;Landroid/content/SharedPreferences;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapabilityList;->CAMERA_LIFT_TRIGGER:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    .line 58
    new-instance p1, Lcom/sonyericsson/android/camera/util/capability/BooleanCapabilityItem;

    const-string/jumbo v0, "somc_side_sense"

    invoke-direct {p1, v0, p2}, Lcom/sonyericsson/android/camera/util/capability/BooleanCapabilityItem;-><init>(Ljava/lang/String;Landroid/content/SharedPreferences;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapabilityList;->SIDE_SENSE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    .line 59
    new-instance p1, Lcom/sonyericsson/android/camera/util/capability/CameraIdMapCapabilityItem;

    const-string v0, "camera_ids_"

    invoke-direct {p1, v0, p2}, Lcom/sonyericsson/android/camera/util/capability/CameraIdMapCapabilityItem;-><init>(Ljava/lang/String;Landroid/content/SharedPreferences;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapabilityList;->CAMERA_IDS:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    .line 60
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapabilityList;->createList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapabilityList;->mValues:Ljava/util/List;

    return-void
.end method

.method private createList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/util/capability/CapabilityItem<",
            "*>;>;"
        }
    .end annotation

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 77
    iget-object v1, p0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapabilityList;->CAMERA_LIFT_TRIGGER:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v1, p0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapabilityList;->SIDE_SENSE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapabilityList;->CAMERA_IDS:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private static decideToWhichCameraAssociateId(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;)Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;
    .registers 4

    .line 182
    new-instance v0, Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;

    invoke-direct {v0, p1}, Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;-><init>(Landroid/hardware/camera2/CameraCharacteristics;)V

    .line 183
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;->getSensorName()Ljava/lang/String;

    move-result-object p1

    .line 186
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_2d

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Sensor id: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " name:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 189
    :cond_2d
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    const/4 v0, -0x1

    sparse-switch p0, :sswitch_data_68

    goto :goto_59

    :sswitch_39
    const-string p0, "HI847"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_42

    goto :goto_59

    :cond_42
    const/4 v0, 0x2

    goto :goto_59

    :sswitch_44
    const-string p0, "HI846_BACK"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4d

    goto :goto_59

    :cond_4d
    const/4 v0, 0x1

    goto :goto_59

    :sswitch_4f
    const-string p0, "IMX582_HI846_HI847_MULTI"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_58

    goto :goto_59

    :cond_58
    const/4 v0, 0x0

    :goto_59
    packed-switch v0, :pswitch_data_76

    const/4 p0, 0x0

    return-object p0

    .line 193
    :pswitch_5e
    sget-object p0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->TELE:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    return-object p0

    .line 195
    :pswitch_61
    sget-object p0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->U_WIDE:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    return-object p0

    .line 191
    :pswitch_64
    sget-object p0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->SAT:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    return-object p0

    nop

    :sswitch_data_68
    .sparse-switch
        -0x6443bbf6 -> :sswitch_4f
        -0x2a4f46b3 -> :sswitch_44
        0x418a41a -> :sswitch_39
    .end sparse-switch

    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_64
        :pswitch_61
        :pswitch_5e
    .end packed-switch
.end method

.method private initializeCameraIdsPairing(Landroid/content/Context;)Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 132
    const-string p0, "4"

    .line 0
    const-string v0, "Camera Id list is: "

    .line 132
    const-class v1, Landroid/hardware/camera2/CameraManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CameraManager;

    .line 133
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 134
    const-string v2, "There is no camera id saved in SharedPreferences yet."

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 136
    :try_start_1a
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_3c

    const/4 v2, 0x1

    .line 137
    new-array v2, v2, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 139
    :cond_3c
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    :goto_41
    if-ge v3, v0, :cond_6f

    aget-object v2, p1, v3

    .line 140
    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_53

    .line 141
    sget-object v4, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->BACK:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_60

    .line 142
    :cond_53
    const-string v4, "1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_60

    .line 143
    sget-object v4, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->FRONT:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    :cond_60
    :goto_60
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    invoke-static {}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->values()[Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v4

    array-length v4, v4

    if-lt v2, v4, :cond_6c

    goto :goto_6f

    :cond_6c
    add-int/lit8 v3, v3, 0x1

    goto :goto_41

    .line 161
    :cond_6f
    :goto_6f
    sget-object p1, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->U_WIDE:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    const-string v0, "2"

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object p1, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->TELE:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    const-string v0, "3"

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object p1, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->SAT:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-interface {v1, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object p1, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->BOKEH:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-interface {v1, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_87
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1a .. :try_end_87} :catch_88

    return-object v1

    :catch_88
    move-exception p0

    .line 167
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Application failed to get Camera IDs list from Manager."

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private isLiftTriggerSupported(Landroid/content/Context;)Z
    .registers 3

    .line 97
    const-string p0, "sensor"

    .line 98
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/SensorManager;

    const/4 p1, -0x1

    .line 99
    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object p0

    .line 101
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/Sensor;

    .line 102
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.sonymobile.sensor.camera_lift_trigger"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    const/4 p0, 0x1

    return p0

    :cond_2b
    const/4 p0, 0x0

    return p0
.end method

.method private isSideSenseSupported()Z
    .registers 6

    .line 115
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_7
    if-ge v2, v0, :cond_1c

    aget v3, p0, v2

    .line 116
    invoke-static {v3}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v3

    const/high16 v4, 0x20000000

    .line 117
    invoke-virtual {v3, v4}, Landroid/view/InputDevice;->supportsSource(I)Z

    move-result v3

    if-eqz v3, :cond_19

    const/4 p0, 0x1

    return p0

    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_1c
    return v1
.end method


# virtual methods
.method public values()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/util/capability/CapabilityItem<",
            "*>;>;"
        }
    .end annotation

    .line 85
    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapabilityList;->mValues:Ljava/util/List;

    return-object p0
.end method
