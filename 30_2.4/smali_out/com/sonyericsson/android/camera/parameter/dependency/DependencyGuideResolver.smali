.class public Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideResolver;
.super Ljava/lang/Object;
.source "DependencyGuideResolver.java"


# instance fields
.field private final mDependencyGuideInfo:Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideResolver;->mDependencyGuideInfo:Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;

    return-void
.end method

.method private generateDependencyGuide(Ljava/util/List;[Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuide;",
            ">;[",
            "Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;",
            "Lcom/sonyericsson/android/camera/setting/UserSettings;",
            "Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_37

    .line 64
    array-length v0, p2

    if-gtz v0, :cond_6

    goto :goto_37

    .line 69
    :cond_6
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_9
    if-ge v2, v0, :cond_36

    aget-object v3, p2, v2

    .line 70
    iget-object v4, v3, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;->mKey:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-direct {p0, v4, p4}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideResolver;->isSupported(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 71
    new-instance v4, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuide;

    iget-object v5, v3, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;->mKey:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-direct {v4, v5}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuide;-><init>(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)V

    .line 72
    iget-object v3, v3, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;->mValues:[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    array-length v5, v3

    move v6, v1

    :goto_20
    if-ge v6, v5, :cond_30

    aget-object v7, v3, v6

    .line 73
    invoke-direct {p0, v7, p3}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideResolver;->isSupported(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonyericsson/android/camera/setting/UserSettings;)Z

    move-result v8

    if-eqz v8, :cond_2d

    .line 74
    invoke-virtual {v4, v7}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuide;->add(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    :cond_2d
    add-int/lit8 v6, v6, 0x1

    goto :goto_20

    .line 77
    :cond_30
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_36
    return-void

    :cond_37
    :goto_37
    return-void
.end method

.method private isSupported(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Z
    .registers 4

    .line 83
    sget-object v0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideResolver$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_20

    const/4 p1, 0x1

    return p1

    .line 88
    :pswitch_d
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isVideoHdrSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result p1

    return p1

    .line 85
    :pswitch_16
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isHighSensitivityFusionSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_16
        :pswitch_d
    .end packed-switch
.end method

.method private isSupported(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonyericsson/android/camera/setting/UserSettings;)Z
    .registers 7

    .line 95
    invoke-interface {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->getOptions(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p2

    .line 96
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_b
    if-ge v2, v0, :cond_16

    aget-object v3, p2, v2

    if-ne v3, p1, :cond_13

    const/4 p1, 0x1

    return p1

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_16
    return v1
.end method


# virtual methods
.method public getDependencyGuideList(Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;ZLcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Ljava/util/ArrayList;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/setting/UserSettings;",
            "Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;",
            "Z",
            "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuide;",
            ">;"
        }
    .end annotation

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 47
    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideResolver;->mDependencyGuideInfo:Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;

    invoke-virtual {v1, p2, p3}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->getModeGroup(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$ModeGroup;

    move-result-object p3

    if-eqz p3, :cond_25

    .line 49
    iget-object v1, p3, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$ModeGroup;->mValueGroup:[Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingValueGroup;

    if-eqz v1, :cond_25

    .line 50
    iget-object p3, p3, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$ModeGroup;->mValueGroup:[Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingValueGroup;

    array-length v1, p3

    const/4 v2, 0x0

    :goto_15
    if-ge v2, v1, :cond_25

    aget-object v3, p3, v2

    .line 51
    iget-object v4, v3, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingValueGroup;->mValue:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    if-ne v4, p4, :cond_22

    .line 52
    iget-object v3, v3, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingValueGroup;->mDependencyGroups:[Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;

    invoke-direct {p0, v0, v3, p1, p2}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideResolver;->generateDependencyGuide(Ljava/util/List;[Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_25
    return-object v0
.end method
