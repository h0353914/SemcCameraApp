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

.field private final mFrontAuto:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

.field private final mFrontManual:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

.field private final mFrontOneShotPhoto:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

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
    .registers 24

    move-object/from16 v0, p0

    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0xd

    new-array v2, v1, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 40
    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->GEO_TAG:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->TOUCH_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->GRID_LINE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FRAME_LINES:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/4 v7, 0x3

    aput-object v3, v2, v7

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->AUTO_REVIEW:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/4 v8, 0x4

    aput-object v3, v2, v8

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAMERA_KEY:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/4 v9, 0x5

    aput-object v3, v2, v9

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VOLUME_KEY:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/4 v10, 0x6

    aput-object v3, v2, v10

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SHUTTER_SOUND:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/4 v11, 0x7

    aput-object v3, v2, v11

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->DESTINATION_TO_SAVE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/16 v12, 0x8

    aput-object v3, v2, v12

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->PREDICTIVE_LAUNCH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/16 v13, 0x9

    aput-object v3, v2, v13

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FAST_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/16 v14, 0xa

    aput-object v3, v2, v14

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ACCESSIBILITY:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/16 v15, 0xb

    aput-object v3, v2, v15

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->RESET_SETTINGS:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/16 v16, 0xc

    aput-object v3, v2, v16

    const v3, 0x7f0f02cf

    invoke-static {v3, v2}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->category(I[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    move-result-object v2

    new-array v1, v4, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 56
    invoke-static {v3, v1}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->category(I[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    move-result-object v1

    const/16 v3, 0xf

    const v15, 0x7f0f00e2

    if-eqz p2, :cond_171

    new-array v3, v3, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 62
    sget-object v20, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ISO:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v20, v3, v4

    sget-object v20, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->RESOLUTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v20, v3, v5

    sget-object v20, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->PREDICTIVE_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v20, v3, v6

    sget-object v20, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->OBJECT_TRACKING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v20, v3, v7

    sget-object v20, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->METERING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v20, v3, v8

    sget-object v20, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SHUTTER_TRIGGER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v20, v3, v9

    sget-object v20, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->BACK_SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v20, v3, v10

    sget-object v20, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FRONT_SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v20, v3, v11

    sget-object v20, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->LENS_CORRECTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v20, v3, v12

    sget-object v20, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v20, v3, v13

    sget-object v20, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FUSION_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v20, v3, v14

    sget-object v20, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SIDE_SENSE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/16 v19, 0xb

    aput-object v20, v3, v19

    sget-object v20, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SUPER_RESOLUTION_ZOOM:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v20, v3, v16

    sget-object v20, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ZOOM_ASSIST:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/16 v14, 0xd

    aput-object v20, v3, v14

    sget-object v17, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->QR_CODE_DETECTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/16 v18, 0xe

    aput-object v17, v3, v18

    .line 63
    invoke-static {v15, v3}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->category(I[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    move-result-object v3

    .line 62
    invoke-static {v3, v2}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->group(Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    move-result-object v3

    iput-object v3, v0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mAuto:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    new-array v3, v14, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 81
    sget-object v14, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ISO:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v14, v3, v4

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->RESOLUTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v14, v3, v5

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->PREDICTIVE_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v14, v3, v6

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->OBJECT_TRACKING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v14, v3, v7

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->METERING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v14, v3, v8

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SHUTTER_TRIGGER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v14, v3, v9

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->BACK_SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v14, v3, v10

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FRONT_SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v14, v3, v11

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SKIN_NR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v14, v3, v12

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v14, v3, v13

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FUSION_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/16 v17, 0xa

    aput-object v14, v3, v17

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SIDE_SENSE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/16 v13, 0xb

    aput-object v14, v3, v13

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->QR_CODE_DETECTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v14, v3, v16

    .line 82
    invoke-static {v15, v3}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->category(I[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    move-result-object v3

    .line 81
    invoke-static {v3, v2}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->group(Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    move-result-object v3

    iput-object v3, v0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mFrontAuto:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    new-array v3, v13, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 98
    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ISO:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v13, v3, v4

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->RESOLUTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v13, v3, v5

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->OBJECT_TRACKING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v13, v3, v6

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->METERING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v13, v3, v7

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SHUTTER_TRIGGER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v13, v3, v8

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->BACK_SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v13, v3, v9

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FRONT_SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v13, v3, v10

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->LENS_CORRECTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v13, v3, v11

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v13, v3, v12

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FUSION_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/16 v14, 0x9

    aput-object v13, v3, v14

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SIDE_SENSE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/16 v14, 0xa

    aput-object v13, v3, v14

    .line 99
    invoke-static {v15, v3}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->category(I[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    move-result-object v3

    .line 98
    invoke-static {v3, v1}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->group(Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    move-result-object v3

    iput-object v3, v0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mOneShotPhoto:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    const/16 v3, 0xb

    new-array v13, v3, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 113
    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ISO:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v3, v13, v4

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->RESOLUTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v3, v13, v5

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->OBJECT_TRACKING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v3, v13, v6

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->METERING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v3, v13, v7

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SHUTTER_TRIGGER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v3, v13, v8

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->BACK_SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v3, v13, v9

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FRONT_SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v3, v13, v10

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SKIN_NR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v3, v13, v11

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v3, v13, v12

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FUSION_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/16 v14, 0x9

    aput-object v3, v13, v14

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SIDE_SENSE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/16 v14, 0xa

    aput-object v3, v13, v14

    .line 114
    invoke-static {v15, v13}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->category(I[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    move-result-object v3

    .line 113
    invoke-static {v3, v1}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->group(Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    move-result-object v3

    iput-object v3, v0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mFrontOneShotPhoto:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    goto/16 :goto_283

    :cond_171
    new-array v3, v3, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 128
    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ISO:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v13, v3, v4

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->RESOLUTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v13, v3, v5

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->PREDICTIVE_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v13, v3, v6

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->OBJECT_TRACKING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v13, v3, v7

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->METERING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v13, v3, v8

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SHUTTER_TRIGGER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v13, v3, v9

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->BACK_SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v13, v3, v10

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FRONT_SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v13, v3, v11

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->LENS_CORRECTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v13, v3, v12

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/16 v14, 0x9

    aput-object v13, v3, v14

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FUSION_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/16 v14, 0xa

    aput-object v13, v3, v14

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SUPER_RESOLUTION_ZOOM:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/16 v14, 0xb

    aput-object v13, v3, v14

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ZOOM_ASSIST:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v13, v3, v16

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->QR_CODE_DETECTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/16 v14, 0xd

    aput-object v13, v3, v14

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SIDE_SENSE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/16 v17, 0xe

    aput-object v13, v3, v17

    .line 129
    invoke-static {v15, v3}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->category(I[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    move-result-object v3

    .line 128
    invoke-static {v3, v2}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->group(Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    move-result-object v3

    iput-object v3, v0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mAuto:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    new-array v3, v14, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 147
    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ISO:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v13, v3, v4

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->RESOLUTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v13, v3, v5

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->PREDICTIVE_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v13, v3, v6

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->OBJECT_TRACKING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v13, v3, v7

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->METERING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v13, v3, v8

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SHUTTER_TRIGGER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v13, v3, v9

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->BACK_SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v13, v3, v10

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FRONT_SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v13, v3, v11

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SKIN_NR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v13, v3, v12

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/16 v14, 0x9

    aput-object v13, v3, v14

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FUSION_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/16 v14, 0xa

    aput-object v13, v3, v14

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->QR_CODE_DETECTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/16 v14, 0xb

    aput-object v13, v3, v14

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SIDE_SENSE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v13, v3, v16

    .line 148
    invoke-static {v15, v3}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->category(I[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    move-result-object v3

    .line 147
    invoke-static {v3, v2}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->group(Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    move-result-object v3

    iput-object v3, v0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mFrontAuto:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    new-array v3, v14, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 164
    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ISO:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v13, v3, v4

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->RESOLUTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v13, v3, v5

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->OBJECT_TRACKING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v13, v3, v6

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->METERING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v13, v3, v7

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SHUTTER_TRIGGER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v13, v3, v8

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->BACK_SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v13, v3, v9

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FRONT_SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v13, v3, v10

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->LENS_CORRECTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v13, v3, v11

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v13, v3, v12

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FUSION_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/16 v14, 0x9

    aput-object v13, v3, v14

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SIDE_SENSE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/16 v14, 0xa

    aput-object v13, v3, v14

    .line 165
    invoke-static {v15, v3}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->category(I[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    move-result-object v3

    .line 164
    invoke-static {v3, v1}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->group(Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    move-result-object v3

    iput-object v3, v0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mOneShotPhoto:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    const/16 v3, 0xb

    new-array v13, v3, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 179
    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ISO:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v3, v13, v4

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->RESOLUTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v3, v13, v5

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->OBJECT_TRACKING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v3, v13, v6

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->METERING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v3, v13, v7

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SHUTTER_TRIGGER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v3, v13, v8

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->BACK_SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v3, v13, v9

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FRONT_SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v3, v13, v10

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SKIN_NR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v3, v13, v11

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v3, v13, v12

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FUSION_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/16 v14, 0x9

    aput-object v3, v13, v14

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SIDE_SENSE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/16 v14, 0xa

    aput-object v3, v13, v14

    .line 180
    invoke-static {v15, v13}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->category(I[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    move-result-object v3

    .line 179
    invoke-static {v3, v1}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->group(Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    move-result-object v3

    iput-object v3, v0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mFrontOneShotPhoto:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    :goto_283
    const/16 v3, 0xb

    new-array v3, v3, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 195
    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ISO:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v13, v3, v4

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->RESOLUTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v13, v3, v5

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->METERING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v13, v3, v6

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SHUTTER_TRIGGER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v13, v3, v7

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->BACK_SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v13, v3, v8

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FRONT_SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v13, v3, v9

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->LENS_CORRECTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v13, v3, v10

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v13, v3, v11

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SIDE_SENSE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v13, v3, v12

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SUPER_RESOLUTION_ZOOM:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/16 v14, 0x9

    aput-object v13, v3, v14

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->QR_CODE_DETECTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/16 v14, 0xa

    aput-object v13, v3, v14

    const v13, 0x7f0f03b2

    .line 196
    invoke-static {v13, v3}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->category(I[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    move-result-object v3

    .line 195
    invoke-static {v3, v2}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->group(Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    move-result-object v3

    iput-object v3, v0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mWidePhoto:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    new-array v3, v12, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 210
    sget-object v14, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ISO:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v14, v3, v4

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->RESOLUTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v14, v3, v5

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SHUTTER_TRIGGER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v14, v3, v6

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->BACK_SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v14, v3, v7

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FRONT_SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v14, v3, v8

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->LENS_CORRECTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v14, v3, v9

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v14, v3, v10

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SIDE_SENSE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v14, v3, v11

    .line 211
    invoke-static {v13, v3}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->category(I[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    move-result-object v3

    .line 210
    invoke-static {v3, v1}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->group(Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    move-result-object v3

    iput-object v3, v0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mOneShotWidePhoto:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    new-array v3, v10, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 222
    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->RESOLUTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v13, v3, v4

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->TOUCH_INTENTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v13, v3, v5

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->METERING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v13, v3, v6

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SHUTTER_TRIGGER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v13, v3, v7

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->BACK_SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v13, v3, v8

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FRONT_SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v13, v3, v9

    const v13, 0x7f0f00eb

    .line 223
    invoke-static {v13, v3}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->category(I[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    move-result-object v3

    .line 222
    invoke-static {v3, v2}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->group(Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    move-result-object v3

    iput-object v3, v0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mFrontManual:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    new-array v3, v10, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 232
    sget-object v14, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->RESOLUTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v14, v3, v4

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->TOUCH_INTENTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v14, v3, v5

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->METERING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v14, v3, v6

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SHUTTER_TRIGGER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v14, v3, v7

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->BACK_SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v14, v3, v8

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FRONT_SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v14, v3, v9

    .line 233
    invoke-static {v13, v3}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->category(I[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    move-result-object v3

    .line 232
    invoke-static {v3, v2}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->group(Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    move-result-object v3

    iput-object v3, v0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mManual:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    const/4 v3, 0x0

    .line 243
    invoke-static {v3, v2}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->group(Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    move-result-object v3

    iput-object v3, v0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mSlowMotion:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    const v3, 0x7f0f03b3

    const v13, 0x7f0f00a6

    if-eqz p1, :cond_3ec

    new-array v12, v12, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 246
    sget-object v14, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v14, v12, v4

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->OBJECT_TRACKING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v14, v12, v5

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SHUTTER_TRIGGER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v14, v12, v6

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_STABILIZER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v14, v12, v7

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_BRIGHTNESS:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v14, v12, v8

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SUPER_RESOLUTION_ZOOM:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v14, v12, v9

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_CODEC:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v14, v12, v10

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SIDE_SENSE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v14, v12, v11

    .line 247
    invoke-static {v13, v12}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->category(I[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    move-result-object v12

    .line 246
    invoke-static {v12, v2}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->group(Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    move-result-object v12

    iput-object v12, v0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mVideo:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    new-array v12, v11, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 258
    sget-object v14, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v14, v12, v4

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SHUTTER_TRIGGER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v14, v12, v5

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_STABILIZER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v14, v12, v6

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_BRIGHTNESS:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v14, v12, v7

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SUPER_RESOLUTION_ZOOM:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v14, v12, v8

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_CODEC:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v14, v12, v9

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SIDE_SENSE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v14, v12, v10

    .line 259
    invoke-static {v3, v12}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->category(I[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    move-result-object v12

    .line 258
    invoke-static {v12, v2}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->group(Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    move-result-object v2

    iput-object v2, v0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mWideVideo:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    new-array v2, v11, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 269
    sget-object v11, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v11, v2, v4

    sget-object v11, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->OBJECT_TRACKING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v11, v2, v5

    sget-object v11, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SHUTTER_TRIGGER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v11, v2, v6

    sget-object v11, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_STABILIZER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v11, v2, v7

    sget-object v11, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_BRIGHTNESS:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v11, v2, v8

    sget-object v11, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_CODEC:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v11, v2, v9

    sget-object v11, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SIDE_SENSE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v11, v2, v10

    .line 270
    invoke-static {v13, v2}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->category(I[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    move-result-object v2

    .line 269
    invoke-static {v2, v1}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->group(Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    move-result-object v2

    iput-object v2, v0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mOneShotVideo:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    new-array v2, v10, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 280
    sget-object v10, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v10, v2, v4

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SHUTTER_TRIGGER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v4, v2, v5

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_STABILIZER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v4, v2, v6

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_BRIGHTNESS:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v4, v2, v7

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_CODEC:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v4, v2, v8

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SIDE_SENSE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v4, v2, v9

    .line 281
    invoke-static {v3, v2}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->category(I[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    move-result-object v2

    .line 280
    invoke-static {v2, v1}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->group(Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    move-result-object v1

    iput-object v1, v0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mOneShotWideVideo:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    goto/16 :goto_47c

    :cond_3ec
    new-array v11, v11, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 291
    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v12, v11, v4

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->OBJECT_TRACKING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v12, v11, v5

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SHUTTER_TRIGGER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v12, v11, v6

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_STABILIZER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v12, v11, v7

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_BRIGHTNESS:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v12, v11, v8

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SUPER_RESOLUTION_ZOOM:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v12, v11, v9

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SIDE_SENSE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v12, v11, v10

    .line 292
    invoke-static {v13, v11}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->category(I[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    move-result-object v11

    .line 291
    invoke-static {v11, v2}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->group(Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    move-result-object v11

    iput-object v11, v0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mVideo:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    new-array v11, v10, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 302
    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v12, v11, v4

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SHUTTER_TRIGGER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v12, v11, v5

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_STABILIZER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v12, v11, v6

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_BRIGHTNESS:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v12, v11, v7

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SUPER_RESOLUTION_ZOOM:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v12, v11, v8

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SIDE_SENSE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v12, v11, v9

    .line 303
    invoke-static {v3, v11}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->category(I[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    move-result-object v11

    .line 302
    invoke-static {v11, v2}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->group(Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    move-result-object v2

    iput-object v2, v0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mWideVideo:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    new-array v2, v10, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 312
    sget-object v10, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v10, v2, v4

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->OBJECT_TRACKING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v10, v2, v5

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SHUTTER_TRIGGER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v10, v2, v6

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_STABILIZER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v10, v2, v7

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_BRIGHTNESS:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v10, v2, v8

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SIDE_SENSE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v10, v2, v9

    .line 313
    invoke-static {v13, v2}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->category(I[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    move-result-object v2

    .line 312
    invoke-static {v2, v1}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->group(Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    move-result-object v2

    iput-object v2, v0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mOneShotVideo:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    new-array v2, v9, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 322
    sget-object v9, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v9, v2, v4

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SHUTTER_TRIGGER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v4, v2, v5

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_STABILIZER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v4, v2, v6

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_BRIGHTNESS:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v4, v2, v7

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SIDE_SENSE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v4, v2, v8

    .line 323
    invoke-static {v3, v2}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->category(I[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    move-result-object v2

    .line 322
    invoke-static {v2, v1}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->group(Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    move-result-object v1

    iput-object v1, v0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mOneShotWideVideo:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    :goto_47c
    return-void
.end method

.method private static varargs category(I[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;
    .registers 3

    .line 390
    new-instance v0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;-><init>(I[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)V

    return-object v0
.end method

.method private static group(Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;
    .registers 3

    .line 394
    new-instance v0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;-><init>(Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;)V

    return-object v0
.end method


# virtual methods
.method public get(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;
    .registers 5

    .line 334
    sget-object v0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_5a

    .line 355
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The specified mode is not supported. mode:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 356
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 353
    :pswitch_28
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mSlowMotion:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    return-object p0

    :pswitch_2b
    if-eqz p2, :cond_30

    .line 351
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mOneShotWideVideo:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    goto :goto_32

    :cond_30
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mWideVideo:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    :goto_32
    return-object p0

    :pswitch_33
    if-eqz p2, :cond_38

    .line 349
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mOneShotVideo:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    goto :goto_3a

    :cond_38
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mVideo:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    :goto_3a
    return-object p0

    .line 345
    :pswitch_3b
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mFrontManual:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    return-object p0

    .line 343
    :pswitch_3e
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mManual:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    return-object p0

    :pswitch_41
    if-eqz p2, :cond_46

    .line 341
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mOneShotWidePhoto:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    goto :goto_48

    :cond_46
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mWidePhoto:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    :goto_48
    return-object p0

    :pswitch_49
    if-eqz p2, :cond_4e

    .line 339
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mOneShotPhoto:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    goto :goto_50

    :cond_4e
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mAuto:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    :goto_50
    return-object p0

    :pswitch_51
    if-eqz p2, :cond_56

    .line 337
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mFrontOneShotPhoto:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    goto :goto_58

    :cond_56
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mFrontAuto:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    :goto_58
    return-object p0

    nop

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_51
        :pswitch_49
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_33
        :pswitch_33
        :pswitch_2b
        :pswitch_28
    .end packed-switch
.end method
