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
    .registers 12

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->mDependencyGuideInfoMap:Ljava/util/Map;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->mOneshotDependencyGuideInfoMap:Ljava/util/Map;

    .line 36
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->mDependencyGuideInfoMap:Ljava/util/Map;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    const/4 v2, 0x3

    new-array v3, v2, [Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingValueGroup;

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->NINETEEN_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const/4 v5, 0x1

    new-array v6, v5, [Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FUSION_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/4 v8, 0x0

    new-array v9, v8, [Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 38
    invoke-direct {p0, v7, v9}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->settingDependencyGroup(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;

    move-result-object v7

    aput-object v7, v6, v8

    .line 37
    invoke-direct {p0, v4, v6}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->settingValueGroup(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;[Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingValueGroup;

    move-result-object v4

    aput-object v4, v3, v8

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->WIDE_SEVENTEEN_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    new-array v6, v5, [Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FUSION_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    new-array v9, v8, [Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 41
    invoke-direct {p0, v7, v9}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->settingDependencyGroup(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;

    move-result-object v7

    aput-object v7, v6, v8

    .line 40
    invoke-direct {p0, v4, v6}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->settingValueGroup(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;[Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingValueGroup;

    move-result-object v4

    aput-object v4, v3, v5

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/Tagging;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Tagging;

    new-array v6, v5, [Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->BURST:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    new-array v9, v8, [Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 44
    invoke-direct {p0, v7, v9}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->settingDependencyGroup(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;

    move-result-object v7

    aput-object v7, v6, v8

    .line 43
    invoke-direct {p0, v4, v6}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->settingValueGroup(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;[Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingValueGroup;

    move-result-object v4

    const/4 v6, 0x2

    aput-object v4, v3, v6

    .line 36
    invoke-direct {p0, v3}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->modeGroup([Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingValueGroup;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$ModeGroup;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->mDependencyGuideInfoMap:Ljava/util/Map;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    new-array v3, v2, [Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingValueGroup;

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->NINETEEN_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    new-array v7, v5, [Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FUSION_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    new-array v10, v8, [Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 50
    invoke-direct {p0, v9, v10}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->settingDependencyGroup(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;

    move-result-object v9

    aput-object v9, v7, v8

    .line 49
    invoke-direct {p0, v4, v7}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->settingValueGroup(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;[Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingValueGroup;

    move-result-object v4

    aput-object v4, v3, v8

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->WIDE_SEVENTEEN_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    new-array v7, v5, [Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FUSION_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    new-array v10, v8, [Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 53
    invoke-direct {p0, v9, v10}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->settingDependencyGroup(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;

    move-result-object v9

    aput-object v9, v7, v8

    .line 52
    invoke-direct {p0, v4, v7}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->settingValueGroup(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;[Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingValueGroup;

    move-result-object v4

    aput-object v4, v3, v5

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/Tagging;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Tagging;

    new-array v7, v2, [Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->PREDICTIVE_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    new-array v10, v8, [Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 56
    invoke-direct {p0, v9, v10}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->settingDependencyGroup(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;

    move-result-object v9

    aput-object v9, v7, v8

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->BOKEH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    new-array v10, v8, [Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 57
    invoke-direct {p0, v9, v10}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->settingDependencyGroup(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;

    move-result-object v9

    aput-object v9, v7, v5

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->BURST:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    new-array v10, v8, [Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 58
    invoke-direct {p0, v9, v10}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->settingDependencyGroup(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;

    move-result-object v9

    aput-object v9, v7, v6

    .line 55
    invoke-direct {p0, v4, v7}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->settingValueGroup(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;[Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingValueGroup;

    move-result-object v4

    aput-object v4, v3, v6

    .line 48
    invoke-direct {p0, v3}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->modeGroup([Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingValueGroup;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$ModeGroup;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->mDependencyGuideInfoMap:Ljava/util/Map;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    const/4 v3, 0x6

    new-array v3, v3, [Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingValueGroup;

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_H264:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    new-array v7, v6, [Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SMILE_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    new-array v10, v8, [Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 64
    invoke-direct {p0, v9, v10}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->settingDependencyGroup(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;

    move-result-object v9

    aput-object v9, v7, v8

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->OBJECT_TRACKING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    new-array v10, v8, [Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 65
    invoke-direct {p0, v9, v10}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->settingDependencyGroup(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;

    move-result-object v9

    aput-object v9, v7, v5

    .line 63
    invoke-direct {p0, v4, v7}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->settingValueGroup(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;[Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingValueGroup;

    move-result-object v4

    aput-object v4, v3, v8

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_H265:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    new-array v7, v6, [Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SMILE_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    new-array v10, v8, [Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 68
    invoke-direct {p0, v9, v10}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->settingDependencyGroup(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;

    move-result-object v9

    aput-object v9, v7, v8

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->OBJECT_TRACKING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    new-array v10, v8, [Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 69
    invoke-direct {p0, v9, v10}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->settingDependencyGroup(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;

    move-result-object v9

    aput-object v9, v7, v5

    .line 67
    invoke-direct {p0, v4, v7}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->settingValueGroup(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;[Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingValueGroup;

    move-result-object v4

    aput-object v4, v3, v5

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FULL_HD_60FPS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    new-array v7, v5, [Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    new-array v10, v8, [Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 72
    invoke-direct {p0, v9, v10}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->settingDependencyGroup(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;

    move-result-object v9

    aput-object v9, v7, v8

    .line 71
    invoke-direct {p0, v4, v7}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->settingValueGroup(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;[Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingValueGroup;

    move-result-object v4

    aput-object v4, v3, v6

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->HD:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    new-array v7, v5, [Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    new-array v10, v8, [Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 75
    invoke-direct {p0, v9, v10}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->settingDependencyGroup(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;

    move-result-object v9

    aput-object v9, v7, v8

    .line 74
    invoke-direct {p0, v4, v7}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->settingValueGroup(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;[Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingValueGroup;

    move-result-object v4

    aput-object v4, v3, v2

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->VGA:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    new-array v4, v6, [Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_STABILIZER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    new-array v9, v8, [Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 78
    invoke-direct {p0, v7, v9}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->settingDependencyGroup(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;

    move-result-object v7

    aput-object v7, v4, v8

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    new-array v9, v8, [Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 79
    invoke-direct {p0, v7, v9}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->settingDependencyGroup(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;

    move-result-object v7

    aput-object v7, v4, v5

    .line 77
    invoke-direct {p0, v2, v4}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->settingValueGroup(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;[Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingValueGroup;

    move-result-object v2

    const/4 v4, 0x4

    aput-object v2, v3, v4

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;->H264:Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;

    new-array v4, v5, [Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    new-array v9, v8, [Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 82
    invoke-direct {p0, v7, v9}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->settingDependencyGroup(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;

    move-result-object v7

    aput-object v7, v4, v8

    .line 81
    invoke-direct {p0, v2, v4}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->settingValueGroup(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;[Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingValueGroup;

    move-result-object v2

    const/4 v4, 0x5

    aput-object v2, v3, v4

    .line 62
    invoke-direct {p0, v3}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->modeGroup([Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingValueGroup;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$ModeGroup;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->mDependencyGuideInfoMap:Ljava/util/Map;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    new-array v2, v6, [Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingValueGroup;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->HD:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    new-array v4, v5, [Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    new-array v9, v8, [Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 88
    invoke-direct {p0, v7, v9}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->settingDependencyGroup(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;

    move-result-object v7

    aput-object v7, v4, v8

    .line 87
    invoke-direct {p0, v3, v4}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->settingValueGroup(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;[Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingValueGroup;

    move-result-object v3

    aput-object v3, v2, v8

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->VGA:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    new-array v4, v5, [Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_STABILIZER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    new-array v9, v8, [Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 91
    invoke-direct {p0, v7, v9}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->settingDependencyGroup(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;

    move-result-object v7

    aput-object v7, v4, v8

    .line 90
    invoke-direct {p0, v3, v4}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->settingValueGroup(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;[Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingValueGroup;

    move-result-object v3

    aput-object v3, v2, v5

    .line 86
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->modeGroup([Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingValueGroup;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$ModeGroup;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->mDependencyGuideInfoMap:Ljava/util/Map;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->WIDE_VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    new-array v2, v6, [Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingValueGroup;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_H264:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    new-array v4, v5, [Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;

    sget-object v6, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SMILE_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    new-array v7, v8, [Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 97
    invoke-direct {p0, v6, v7}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->settingDependencyGroup(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;

    move-result-object v6

    aput-object v6, v4, v8

    .line 96
    invoke-direct {p0, v3, v4}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->settingValueGroup(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;[Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingValueGroup;

    move-result-object v3

    aput-object v3, v2, v8

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_H265:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    new-array v4, v5, [Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;

    sget-object v6, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SMILE_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    new-array v7, v8, [Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 100
    invoke-direct {p0, v6, v7}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->settingDependencyGroup(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;

    move-result-object v6

    aput-object v6, v4, v8

    .line 99
    invoke-direct {p0, v3, v4}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->settingValueGroup(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;[Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingValueGroup;

    move-result-object v3

    aput-object v3, v2, v5

    .line 95
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->modeGroup([Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingValueGroup;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$ModeGroup;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private varargs modeGroup([Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingValueGroup;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$ModeGroup;
    .registers 3

    .line 143
    new-instance v0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$ModeGroup;

    invoke-direct {v0, p1}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$ModeGroup;-><init>([Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingValueGroup;)V

    return-object v0
.end method

.method private varargs settingDependencyGroup(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;
    .registers 4

    .line 153
    new-instance v0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;

    invoke-direct {v0, p1, p2}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;-><init>(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    return-object v0
.end method

.method private varargs settingValueGroup(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;[Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingValueGroup;
    .registers 4

    .line 148
    new-instance v0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingValueGroup;

    invoke-direct {v0, p1, p2}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingValueGroup;-><init>(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;[Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;)V

    return-object v0
.end method


# virtual methods
.method getModeGroup(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$ModeGroup;
    .registers 3

    if-eqz p2, :cond_b

    .line 107
    iget-object p2, p0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->mOneshotDependencyGuideInfoMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$ModeGroup;

    return-object p1

    .line 109
    :cond_b
    iget-object p2, p0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->mDependencyGuideInfoMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$ModeGroup;

    return-object p1
.end method
