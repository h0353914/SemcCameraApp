.class public Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;
.super Ljava/lang/Object;
.source "ContextualSettingList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;,
        Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;
    }
.end annotation


# instance fields
.field private final mAuto:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

.field private final mManual:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

.field private final mOneShotPhoto:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

.field private final mOneShotVideo:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

.field private final mOneShotWidePhoto:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

.field private final mOneShotWideVideo:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

.field private final mSlowMotion:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

.field private final mVideo:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

.field private final mWidePhoto:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

.field private final mWideVideo:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;


# direct methods
.method public constructor <init>(ZZ)V
    .registers 20

    move-object/from16 v0, p0

    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0xd

    .line 37
    new-array v1, v1, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FAULT_DETECTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->TAGGING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->GEO_TAG:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->TOUCH_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/4 v6, 0x3

    aput-object v2, v1, v6

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->GRID_LINE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/4 v7, 0x4

    aput-object v2, v1, v7

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->AUTO_REVIEW:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/4 v8, 0x5

    aput-object v2, v1, v8

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAMERA_KEY:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/4 v9, 0x6

    aput-object v2, v1, v9

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VOLUME_KEY:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/4 v10, 0x7

    aput-object v2, v1, v10

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SHUTTER_SOUND:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/16 v11, 0x8

    aput-object v2, v1, v11

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->DESTINATION_TO_SAVE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/16 v12, 0x9

    aput-object v2, v1, v12

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->PREDICTIVE_LAUNCH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/16 v13, 0xa

    aput-object v2, v1, v13

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FAST_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/16 v14, 0xb

    aput-object v2, v1, v14

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->RESET_SETTINGS:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/16 v14, 0xc

    aput-object v2, v1, v14

    const v2, 0x7f0e0252

    invoke-static {v2, v1}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->category(I[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    move-result-object v1

    .line 53
    new-array v14, v3, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-static {v2, v14}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->category(I[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    move-result-object v2

    const v14, 0x7f0e00cd

    if-eqz p2, :cond_d0

    const/16 v15, 0xb

    .line 59
    new-array v15, v15, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v16, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SELF_TIMER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v16, v15, v3

    sget-object v16, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ISO:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v16, v15, v4

    sget-object v16, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->RESOLUTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v16, v15, v5

    sget-object v16, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->PREDICTIVE_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v16, v15, v6

    sget-object v16, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->OBJECT_TRACKING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v16, v15, v7

    sget-object v16, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->METERING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v16, v15, v8

    sget-object v16, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SHUTTER_TRIGGER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v16, v15, v9

    sget-object v16, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->BACK_SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v16, v15, v10

    sget-object v16, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FRONT_SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v16, v15, v11

    sget-object v16, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FUSION_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v16, v15, v12

    sget-object v16, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SIDE_SENSE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v16, v15, v13

    .line 60
    invoke-static {v14, v15}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->category(I[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    move-result-object v15

    .line 59
    invoke-static {v15, v1}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->group(Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    move-result-object v15

    iput-object v15, v0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mAuto:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    .line 74
    new-array v13, v13, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v15, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SELF_TIMER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v15, v13, v3

    sget-object v15, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ISO:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v15, v13, v4

    sget-object v15, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->RESOLUTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v15, v13, v5

    sget-object v15, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->OBJECT_TRACKING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v15, v13, v6

    sget-object v15, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->METERING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v15, v13, v7

    sget-object v15, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SHUTTER_TRIGGER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v15, v13, v8

    sget-object v15, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->BACK_SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v15, v13, v9

    sget-object v15, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FRONT_SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v15, v13, v10

    sget-object v15, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FUSION_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v15, v13, v11

    sget-object v11, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SIDE_SENSE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v11, v13, v12

    .line 75
    invoke-static {v14, v13}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->category(I[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    move-result-object v11

    .line 74
    invoke-static {v11, v2}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->group(Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    move-result-object v11

    iput-object v11, v0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mOneShotPhoto:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    goto :goto_134

    .line 88
    :cond_d0
    new-array v13, v13, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v15, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ISO:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v15, v13, v3

    sget-object v15, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->RESOLUTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v15, v13, v4

    sget-object v15, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->PREDICTIVE_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v15, v13, v5

    sget-object v15, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->OBJECT_TRACKING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v15, v13, v6

    sget-object v15, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->METERING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v15, v13, v7

    sget-object v15, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SHUTTER_TRIGGER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v15, v13, v8

    sget-object v15, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->BACK_SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v15, v13, v9

    sget-object v15, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FRONT_SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v15, v13, v10

    sget-object v15, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FUSION_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v15, v13, v11

    sget-object v15, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SIDE_SENSE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v15, v13, v12

    .line 89
    invoke-static {v14, v13}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->category(I[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    move-result-object v13

    .line 88
    invoke-static {v13, v1}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->group(Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    move-result-object v13

    iput-object v13, v0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mAuto:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    .line 102
    new-array v12, v12, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ISO:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v13, v12, v3

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->RESOLUTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v13, v12, v4

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->OBJECT_TRACKING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v13, v12, v5

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->METERING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v13, v12, v6

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SHUTTER_TRIGGER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v13, v12, v7

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->BACK_SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v13, v12, v8

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FRONT_SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v13, v12, v9

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FUSION_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v13, v12, v10

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SIDE_SENSE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v13, v12, v11

    .line 103
    invoke-static {v14, v12}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->category(I[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    move-result-object v11

    .line 102
    invoke-static {v11, v2}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->group(Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    move-result-object v11

    iput-object v11, v0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mOneShotPhoto:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    :goto_134
    const v11, 0x7f0e030f

    .line 116
    new-array v12, v10, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ISO:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v13, v12, v3

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->RESOLUTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v13, v12, v4

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SHUTTER_TRIGGER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v13, v12, v5

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->BACK_SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v13, v12, v6

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FRONT_SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v13, v12, v7

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->LENS_CORRECTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v13, v12, v8

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SIDE_SENSE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v13, v12, v9

    .line 117
    invoke-static {v11, v12}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->category(I[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    move-result-object v11

    .line 116
    invoke-static {v11, v1}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->group(Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    move-result-object v11

    iput-object v11, v0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mWidePhoto:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    const v11, 0x7f0e030f

    .line 127
    new-array v10, v10, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ISO:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v12, v10, v3

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->RESOLUTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v12, v10, v4

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SHUTTER_TRIGGER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v12, v10, v5

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->BACK_SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v12, v10, v6

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FRONT_SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v12, v10, v7

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->LENS_CORRECTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v12, v10, v8

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SIDE_SENSE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v12, v10, v9

    .line 128
    invoke-static {v11, v10}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->category(I[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    move-result-object v10

    .line 127
    invoke-static {v10, v2}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->group(Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    move-result-object v10

    iput-object v10, v0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mOneShotWidePhoto:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    const v10, 0x7f0e00d6

    .line 138
    new-array v11, v9, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->RESOLUTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v12, v11, v3

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->TOUCH_INTENTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v12, v11, v4

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->METERING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v12, v11, v5

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SHUTTER_TRIGGER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v12, v11, v6

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->BACK_SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v12, v11, v7

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FRONT_SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v12, v11, v8

    .line 139
    invoke-static {v10, v11}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->category(I[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    move-result-object v10

    .line 138
    invoke-static {v10, v1}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->group(Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    move-result-object v10

    iput-object v10, v0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mManual:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    const v10, 0x7f0e00da

    .line 148
    new-array v11, v5, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v12, v11, v3

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v12, v11, v4

    .line 149
    invoke-static {v10, v11}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->category(I[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    move-result-object v10

    .line 148
    invoke-static {v10, v1}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->group(Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    move-result-object v10

    iput-object v10, v0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mSlowMotion:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    const v10, 0x7f0e0310

    const v11, 0x7f0e009c

    if-eqz p1, :cond_259

    .line 155
    new-array v12, v9, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v13, v12, v3

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->OBJECT_TRACKING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v13, v12, v4

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SHUTTER_TRIGGER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v13, v12, v5

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_STABILIZER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v13, v12, v6

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_CODEC:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v13, v12, v7

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SIDE_SENSE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v13, v12, v8

    .line 156
    invoke-static {v11, v12}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->category(I[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    move-result-object v12

    .line 155
    invoke-static {v12, v1}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->group(Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    move-result-object v12

    iput-object v12, v0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mVideo:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    .line 165
    new-array v12, v8, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v13, v12, v3

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SHUTTER_TRIGGER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v13, v12, v4

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_STABILIZER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v13, v12, v5

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_CODEC:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v13, v12, v6

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SIDE_SENSE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v13, v12, v7

    .line 166
    invoke-static {v10, v12}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->category(I[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    move-result-object v12

    .line 165
    invoke-static {v12, v1}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->group(Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    move-result-object v1

    iput-object v1, v0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mWideVideo:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    .line 174
    new-array v1, v9, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v9, v1, v3

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->OBJECT_TRACKING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v9, v1, v4

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SHUTTER_TRIGGER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v9, v1, v5

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_STABILIZER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v9, v1, v6

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_CODEC:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v9, v1, v7

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SIDE_SENSE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v9, v1, v8

    .line 175
    invoke-static {v11, v1}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->category(I[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    move-result-object v1

    .line 174
    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->group(Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    move-result-object v1

    iput-object v1, v0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mOneShotVideo:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    .line 184
    new-array v1, v8, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v8, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v8, v1, v3

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SHUTTER_TRIGGER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v3, v1, v4

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_STABILIZER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v3, v1, v5

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_CODEC:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v3, v1, v6

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SIDE_SENSE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v3, v1, v7

    .line 185
    invoke-static {v10, v1}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->category(I[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    move-result-object v1

    .line 184
    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->group(Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    move-result-object v1

    iput-object v1, v0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mOneShotWideVideo:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    goto :goto_2d1

    .line 194
    :cond_259
    new-array v9, v8, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v12, v9, v3

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->OBJECT_TRACKING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v12, v9, v4

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SHUTTER_TRIGGER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v12, v9, v5

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_STABILIZER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v12, v9, v6

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SIDE_SENSE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v12, v9, v7

    .line 195
    invoke-static {v11, v9}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->category(I[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    move-result-object v9

    .line 194
    invoke-static {v9, v1}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->group(Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    move-result-object v9

    iput-object v9, v0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mVideo:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    .line 203
    new-array v9, v7, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v12, v9, v3

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SHUTTER_TRIGGER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v12, v9, v4

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_STABILIZER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v12, v9, v5

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SIDE_SENSE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v12, v9, v6

    .line 204
    invoke-static {v10, v9}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->category(I[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    move-result-object v9

    .line 203
    invoke-static {v9, v1}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->group(Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    move-result-object v1

    iput-object v1, v0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mWideVideo:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    .line 211
    new-array v1, v8, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v8, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v8, v1, v3

    sget-object v8, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->OBJECT_TRACKING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v8, v1, v4

    sget-object v8, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SHUTTER_TRIGGER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v8, v1, v5

    sget-object v8, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_STABILIZER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v8, v1, v6

    sget-object v8, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SIDE_SENSE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v8, v1, v7

    .line 212
    invoke-static {v11, v1}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->category(I[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    move-result-object v1

    .line 211
    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->group(Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    move-result-object v1

    iput-object v1, v0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mOneShotVideo:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    .line 220
    new-array v1, v7, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v7, v1, v3

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SHUTTER_TRIGGER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v3, v1, v4

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_STABILIZER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v3, v1, v5

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SIDE_SENSE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v3, v1, v6

    .line 221
    invoke-static {v10, v1}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->category(I[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    move-result-object v1

    .line 220
    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->group(Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    move-result-object v1

    iput-object v1, v0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mOneShotWideVideo:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    :goto_2d1
    return-void
.end method

.method private static varargs category(I[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;
    .registers 3

    .line 286
    new-instance v0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;-><init>(I[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)V

    return-object v0
.end method

.method private static group(Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;
    .registers 3

    .line 290
    new-instance v0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;-><init>(Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;)V

    return-object v0
.end method


# virtual methods
.method public get(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;
    .registers 5

    .line 231
    sget-object v0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_4c

    .line 251
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The specified mode is not supported. mode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 249
    :pswitch_26
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mSlowMotion:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    return-object p1

    :pswitch_29
    if-eqz p2, :cond_2e

    .line 247
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mOneShotWideVideo:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    goto :goto_30

    :cond_2e
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mWideVideo:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    :goto_30
    return-object p1

    :pswitch_31
    if-eqz p2, :cond_36

    .line 245
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mOneShotVideo:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    goto :goto_38

    :cond_36
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mVideo:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    :goto_38
    return-object p1

    .line 241
    :pswitch_39
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mManual:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    return-object p1

    :pswitch_3c
    if-eqz p2, :cond_41

    .line 237
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mOneShotWidePhoto:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    goto :goto_43

    :cond_41
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mWidePhoto:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    :goto_43
    return-object p1

    :pswitch_44
    if-eqz p2, :cond_49

    .line 235
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mOneShotPhoto:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    goto :goto_4b

    :cond_49
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mAuto:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    :goto_4b
    return-object p1

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_44
        :pswitch_44
        :pswitch_3c
        :pswitch_39
        :pswitch_39
        :pswitch_31
        :pswitch_31
        :pswitch_29
        :pswitch_26
    .end packed-switch
.end method
