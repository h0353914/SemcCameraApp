.class Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;
.super Ljava/lang/Object;
.source "DependencyGuideInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;,
        Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingValueGroup;,
        Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$ModeGroup;
    }
.end annotation


# instance fields
.field private final mDependencyGuideInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;",
            "Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$ModeGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final mOneshotDependencyGuideInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;",
            "Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$ModeGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 11

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->mDependencyGuideInfoMap:Ljava/util/Map;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->mOneshotDependencyGuideInfoMap:Ljava/util/Map;

    .line 35
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->mDependencyGuideInfoMap:Ljava/util/Map;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    const/4 v2, 0x2

    new-array v3, v2, [Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingValueGroup;

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->NINETEEN_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const/4 v5, 0x1

    new-array v6, v5, [Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FUSION_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/4 v8, 0x0

    new-array v9, v8, [Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 37
    invoke-direct {p0, v7, v9}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->settingDependencyGroup(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;

    move-result-object v7

    aput-object v7, v6, v8

    .line 36
    invoke-direct {p0, v4, v6}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->settingValueGroup(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;[Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingValueGroup;

    move-result-object v4

    aput-object v4, v3, v8

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->WIDE_SEVENTEEN_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    new-array v6, v5, [Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FUSION_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    new-array v9, v8, [Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 40
    invoke-direct {p0, v7, v9}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->settingDependencyGroup(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;

    move-result-object v7

    aput-object v7, v6, v8

    .line 39
    invoke-direct {p0, v4, v6}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->settingValueGroup(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;[Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingValueGroup;

    move-result-object v4

    aput-object v4, v3, v5

    .line 35
    invoke-direct {p0, v3}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->modeGroup([Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingValueGroup;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$ModeGroup;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->mDependencyGuideInfoMap:Ljava/util/Map;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    new-array v3, v2, [Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingValueGroup;

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->NINETEEN_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    new-array v6, v5, [Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FUSION_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    new-array v9, v8, [Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 46
    invoke-direct {p0, v7, v9}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->settingDependencyGroup(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;

    move-result-object v7

    aput-object v7, v6, v8

    .line 45
    invoke-direct {p0, v4, v6}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->settingValueGroup(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;[Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingValueGroup;

    move-result-object v4

    aput-object v4, v3, v8

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->WIDE_SEVENTEEN_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    new-array v6, v5, [Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FUSION_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    new-array v9, v8, [Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 49
    invoke-direct {p0, v7, v9}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->settingDependencyGroup(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;

    move-result-object v7

    aput-object v7, v6, v8

    .line 48
    invoke-direct {p0, v4, v6}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->settingValueGroup(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;[Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingValueGroup;

    move-result-object v4

    aput-object v4, v3, v5

    .line 44
    invoke-direct {p0, v3}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->modeGroup([Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingValueGroup;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$ModeGroup;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->mDependencyGuideInfoMap:Ljava/util/Map;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    const/16 v3, 0x8

    new-array v3, v3, [Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingValueGroup;

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_H264:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    new-array v6, v2, [Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SMILE_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    new-array v9, v8, [Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 55
    invoke-direct {p0, v7, v9}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->settingDependencyGroup(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;

    move-result-object v7

    aput-object v7, v6, v8

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->OBJECT_TRACKING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    new-array v9, v8, [Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 56
    invoke-direct {p0, v7, v9}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->settingDependencyGroup(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;

    move-result-object v7

    aput-object v7, v6, v5

    .line 54
    invoke-direct {p0, v4, v6}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->settingValueGroup(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;[Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingValueGroup;

    move-result-object v4

    aput-object v4, v3, v8

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_H265:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    new-array v6, v2, [Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SMILE_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    new-array v9, v8, [Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 59
    invoke-direct {p0, v7, v9}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->settingDependencyGroup(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;

    move-result-object v7

    aput-object v7, v6, v8

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->OBJECT_TRACKING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    new-array v9, v8, [Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 60
    invoke-direct {p0, v7, v9}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->settingDependencyGroup(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;

    move-result-object v7

    aput-object v7, v6, v5

    .line 58
    invoke-direct {p0, v4, v6}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->settingValueGroup(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;[Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingValueGroup;

    move-result-object v4

    aput-object v4, v3, v5

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_ULTRA_H264:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    new-array v6, v2, [Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SMILE_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    new-array v9, v8, [Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 63
    invoke-direct {p0, v7, v9}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->settingDependencyGroup(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;

    move-result-object v7

    aput-object v7, v6, v8

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->OBJECT_TRACKING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    new-array v9, v8, [Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 64
    invoke-direct {p0, v7, v9}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->settingDependencyGroup(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;

    move-result-object v7

    aput-object v7, v6, v5

    .line 62
    invoke-direct {p0, v4, v6}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->settingValueGroup(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;[Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingValueGroup;

    move-result-object v4

    aput-object v4, v3, v2

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_ULTRA_H265:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    new-array v2, v2, [Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;

    sget-object v6, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SMILE_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    new-array v7, v8, [Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 67
    invoke-direct {p0, v6, v7}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->settingDependencyGroup(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;

    move-result-object v6

    aput-object v6, v2, v8

    sget-object v6, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->OBJECT_TRACKING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    new-array v7, v8, [Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 68
    invoke-direct {p0, v6, v7}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->settingDependencyGroup(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;

    move-result-object v6

    aput-object v6, v2, v5

    .line 66
    invoke-direct {p0, v4, v2}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->settingValueGroup(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;[Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingValueGroup;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v3, v4

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FULL_HD_60FPS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    new-array v4, v5, [Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;

    sget-object v6, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    new-array v7, v8, [Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 73
    invoke-direct {p0, v6, v7}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->settingDependencyGroup(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;

    move-result-object v6

    aput-object v6, v4, v8

    .line 70
    invoke-direct {p0, v2, v4}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->settingValueGroup(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;[Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingValueGroup;

    move-result-object v2

    const/4 v4, 0x4

    aput-object v2, v3, v4

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->HD:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    new-array v4, v5, [Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;

    sget-object v6, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    new-array v7, v8, [Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 76
    invoke-direct {p0, v6, v7}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->settingDependencyGroup(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;

    move-result-object v6

    aput-object v6, v4, v8

    .line 75
    invoke-direct {p0, v2, v4}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->settingValueGroup(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;[Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingValueGroup;

    move-result-object v2

    const/4 v4, 0x5

    aput-object v2, v3, v4

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->VGA:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    new-array v4, v5, [Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;

    sget-object v6, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    new-array v7, v8, [Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 79
    invoke-direct {p0, v6, v7}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->settingDependencyGroup(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;

    move-result-object v6

    aput-object v6, v4, v8

    .line 78
    invoke-direct {p0, v2, v4}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->settingValueGroup(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;[Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingValueGroup;

    move-result-object v2

    const/4 v4, 0x6

    aput-object v2, v3, v4

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;->H264:Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;

    new-array v4, v5, [Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;

    sget-object v6, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    new-array v7, v8, [Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 82
    invoke-direct {p0, v6, v7}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->settingDependencyGroup(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;

    move-result-object v6

    aput-object v6, v4, v8

    .line 81
    invoke-direct {p0, v2, v4}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->settingValueGroup(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;[Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingValueGroup;

    move-result-object v2

    const/4 v4, 0x7

    aput-object v2, v3, v4

    .line 53
    invoke-direct {p0, v3}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->modeGroup([Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingValueGroup;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$ModeGroup;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->mDependencyGuideInfoMap:Ljava/util/Map;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    new-array v2, v5, [Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingValueGroup;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->HD:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    new-array v4, v5, [Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;

    sget-object v5, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    new-array v6, v8, [Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 88
    invoke-direct {p0, v5, v6}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->settingDependencyGroup(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;

    move-result-object v5

    aput-object v5, v4, v8

    .line 87
    invoke-direct {p0, v3, v4}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->settingValueGroup(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;[Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingValueGroup;

    move-result-object v3

    aput-object v3, v2, v8

    .line 86
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->modeGroup([Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingValueGroup;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$ModeGroup;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private varargs modeGroup([Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingValueGroup;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$ModeGroup;
    .registers 3

    .line 131
    new-instance v0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$ModeGroup;

    invoke-direct {v0, p1}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$ModeGroup;-><init>([Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingValueGroup;)V

    return-object v0
.end method

.method private varargs settingDependencyGroup(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;
    .registers 4

    .line 141
    new-instance v0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;

    invoke-direct {v0, p1, p2}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;-><init>(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    return-object v0
.end method

.method private varargs settingValueGroup(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;[Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingValueGroup;
    .registers 4

    .line 136
    new-instance v0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingValueGroup;

    invoke-direct {v0, p1, p2}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingValueGroup;-><init>(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;[Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;)V

    return-object v0
.end method


# virtual methods
.method getModeGroup(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$ModeGroup;
    .registers 3

    if-eqz p2, :cond_b

    .line 95
    iget-object p2, p0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->mOneshotDependencyGuideInfoMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$ModeGroup;

    return-object p1

    .line 97
    :cond_b
    iget-object p2, p0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->mDependencyGuideInfoMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$ModeGroup;

    return-object p1
.end method
