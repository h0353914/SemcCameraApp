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

.field private final mFrontNightMode:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

.field private final mFrontOneShotPhoto:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

.field private final mManual:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

.field private final mNightMode:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

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

    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0xc

    .line 42
    new-array v2, v1, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->GEO_TAG:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->TOUCH_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->GRID_LINE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->AUTO_REVIEW:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/4 v7, 0x3

    aput-object v3, v2, v7

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAMERA_KEY:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/4 v8, 0x4

    aput-object v3, v2, v8

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VOLUME_KEY:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/4 v9, 0x5

    aput-object v3, v2, v9

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SHUTTER_SOUND:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/4 v10, 0x6

    aput-object v3, v2, v10

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->DESTINATION_TO_SAVE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/4 v11, 0x7

    aput-object v3, v2, v11

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->PREDICTIVE_LAUNCH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/16 v12, 0x8

    aput-object v3, v2, v12

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FAST_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/16 v13, 0x9

    aput-object v3, v2, v13

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ACCESSIBILITY:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/16 v14, 0xa

    aput-object v3, v2, v14

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->RESET_SETTINGS:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/16 v15, 0xb

    aput-object v3, v2, v15

    const v3, 0x7f0f0285

    invoke-static {v3, v2}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->category(I[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    move-result-object v2

    .line 57
    new-array v3, v4, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const v1, 0x7f0f0285

    invoke-static {v1, v3}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->category(I[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    move-result-object v1

    if-eqz p2, :cond_15b

    const/16 v3, 0xd

    .line 63
    new-array v3, v3, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v16, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SELF_TIMER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v16, v3, v4

    sget-object v16, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ISO:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v16, v3, v5

    sget-object v16, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->RESOLUTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v16, v3, v6

    sget-object v16, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->PREDICTIVE_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v16, v3, v7

    sget-object v16, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->OBJECT_TRACKING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v16, v3, v8

    sget-object v16, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->METERING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v16, v3, v9

    sget-object v16, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SHUTTER_TRIGGER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v16, v3, v10

    sget-object v16, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->BACK_SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v16, v3, v11

    sget-object v16, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FRONT_SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v16, v3, v12

    sget-object v16, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->LENS_CORRECTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v16, v3, v13

    sget-object v16, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FUSION_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v16, v3, v14

    sget-object v16, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SIDE_SENSE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v16, v3, v15

    sget-object v16, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->QR_CODE_DETECTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/16 v15, 0xc

    aput-object v16, v3, v15

    const v14, 0x7f0f00d3

    .line 64
    invoke-static {v14, v3}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->category(I[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    move-result-object v3

    .line 63
    invoke-static {v3, v2}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->group(Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    move-result-object v3

    iput-object v3, v0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mAuto:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    .line 80
    new-array v3, v15, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SELF_TIMER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v14, v3, v4

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ISO:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v14, v3, v5

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->RESOLUTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v14, v3, v6

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->PREDICTIVE_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v14, v3, v7

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->OBJECT_TRACKING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v14, v3, v8

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->METERING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v14, v3, v9

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SHUTTER_TRIGGER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v14, v3, v10

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->BACK_SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v14, v3, v11

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FRONT_SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v14, v3, v12

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FUSION_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v14, v3, v13

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SIDE_SENSE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/16 v15, 0xa

    aput-object v14, v3, v15

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->QR_CODE_DETECTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/16 v15, 0xb

    aput-object v14, v3, v15

    const v14, 0x7f0f00d3

    .line 81
    invoke-static {v14, v3}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->category(I[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    move-result-object v3

    .line 80
    invoke-static {v3, v2}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->group(Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    move-result-object v3

    iput-object v3, v0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mFrontAuto:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    .line 96
    new-array v3, v15, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SELF_TIMER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v14, v3, v4

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ISO:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v14, v3, v5

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->RESOLUTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

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

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->LENS_CORRECTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v14, v3, v12

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FUSION_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v14, v3, v13

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SIDE_SENSE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/16 v15, 0xa

    aput-object v14, v3, v15

    const v14, 0x7f0f00d3

    .line 97
    invoke-static {v14, v3}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->category(I[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    move-result-object v3

    .line 96
    invoke-static {v3, v1}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->group(Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    move-result-object v3

    iput-object v3, v0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mOneShotPhoto:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    .line 111
    new-array v3, v15, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SELF_TIMER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v14, v3, v4

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ISO:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v14, v3, v5

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->RESOLUTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

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

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FUSION_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v14, v3, v12

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SIDE_SENSE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v14, v3, v13

    const v14, 0x7f0f00d3

    .line 112
    invoke-static {v14, v3}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->category(I[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    move-result-object v3

    .line 111
    invoke-static {v3, v1}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->group(Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    move-result-object v3

    iput-object v3, v0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mFrontOneShotPhoto:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    goto/16 :goto_247

    :cond_15b
    const/16 v3, 0xc

    .line 125
    new-array v3, v3, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

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

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->LENS_CORRECTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v14, v3, v12

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FUSION_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v14, v3, v13

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->QR_CODE_DETECTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/16 v15, 0xa

    aput-object v14, v3, v15

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SIDE_SENSE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/16 v15, 0xb

    aput-object v14, v3, v15

    const v14, 0x7f0f00d3

    .line 126
    invoke-static {v14, v3}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->category(I[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    move-result-object v3

    .line 125
    invoke-static {v3, v2}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->group(Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    move-result-object v3

    iput-object v3, v0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mAuto:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    .line 141
    new-array v3, v15, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

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

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FUSION_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v14, v3, v12

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->QR_CODE_DETECTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v14, v3, v13

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SIDE_SENSE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/16 v15, 0xa

    aput-object v14, v3, v15

    const v14, 0x7f0f00d3

    .line 142
    invoke-static {v14, v3}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->category(I[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    move-result-object v3

    .line 141
    invoke-static {v3, v2}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->group(Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    move-result-object v3

    iput-object v3, v0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mFrontAuto:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    .line 156
    new-array v3, v15, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ISO:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v14, v3, v4

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->RESOLUTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v14, v3, v5

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->OBJECT_TRACKING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v14, v3, v6

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->METERING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v14, v3, v7

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SHUTTER_TRIGGER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v14, v3, v8

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->BACK_SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v14, v3, v9

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FRONT_SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v14, v3, v10

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->LENS_CORRECTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v14, v3, v11

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FUSION_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v14, v3, v12

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SIDE_SENSE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v14, v3, v13

    const v14, 0x7f0f00d3

    .line 157
    invoke-static {v14, v3}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->category(I[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    move-result-object v3

    .line 156
    invoke-static {v3, v1}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->group(Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    move-result-object v3

    iput-object v3, v0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mOneShotPhoto:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    .line 170
    new-array v3, v13, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ISO:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v14, v3, v4

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->RESOLUTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v14, v3, v5

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->OBJECT_TRACKING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v14, v3, v6

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->METERING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v14, v3, v7

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SHUTTER_TRIGGER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v14, v3, v8

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->BACK_SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v14, v3, v9

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FRONT_SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v14, v3, v10

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FUSION_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v14, v3, v11

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SIDE_SENSE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v14, v3, v12

    const v14, 0x7f0f00d3

    .line 171
    invoke-static {v14, v3}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->category(I[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    move-result-object v3

    .line 170
    invoke-static {v3, v1}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->group(Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    move-result-object v3

    iput-object v3, v0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mFrontOneShotPhoto:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    :goto_247
    const v3, 0x7f0f035e

    .line 184
    new-array v13, v13, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ISO:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v14, v13, v4

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->RESOLUTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v14, v13, v5

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->METERING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v14, v13, v6

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SHUTTER_TRIGGER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v14, v13, v7

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->BACK_SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v14, v13, v8

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FRONT_SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v14, v13, v9

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->LENS_CORRECTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v14, v13, v10

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SIDE_SENSE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v14, v13, v11

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->QR_CODE_DETECTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v14, v13, v12

    .line 185
    invoke-static {v3, v13}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->category(I[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    move-result-object v3

    .line 184
    invoke-static {v3, v2}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->group(Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    move-result-object v3

    iput-object v3, v0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mWidePhoto:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    const v3, 0x7f0f035e

    .line 197
    new-array v11, v11, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ISO:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v12, v11, v4

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->RESOLUTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v12, v11, v5

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SHUTTER_TRIGGER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v12, v11, v6

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->BACK_SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v12, v11, v7

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FRONT_SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v12, v11, v8

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->LENS_CORRECTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v12, v11, v9

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SIDE_SENSE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v12, v11, v10

    .line 198
    invoke-static {v3, v11}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->category(I[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    move-result-object v3

    .line 197
    invoke-static {v3, v1}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->group(Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    move-result-object v3

    iput-object v3, v0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mOneShotWidePhoto:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    const v3, 0x7f0f00dc

    .line 208
    new-array v11, v10, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->RESOLUTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v12, v11, v4

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->TOUCH_INTENTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v12, v11, v5

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->METERING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v12, v11, v6

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SHUTTER_TRIGGER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v12, v11, v7

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->BACK_SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v12, v11, v8

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FRONT_SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v12, v11, v9

    .line 209
    invoke-static {v3, v11}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->category(I[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    move-result-object v3

    .line 208
    invoke-static {v3, v2}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->group(Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    move-result-object v3

    iput-object v3, v0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mFrontManual:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    const v3, 0x7f0f00dc

    .line 218
    new-array v11, v10, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->RESOLUTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v12, v11, v4

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->TOUCH_INTENTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v12, v11, v5

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->METERING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v12, v11, v6

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SHUTTER_TRIGGER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v12, v11, v7

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->BACK_SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v12, v11, v8

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FRONT_SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v12, v11, v9

    .line 219
    invoke-static {v3, v11}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->category(I[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    move-result-object v3

    .line 218
    invoke-static {v3, v2}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->group(Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    move-result-object v3

    iput-object v3, v0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mManual:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    const/4 v3, 0x0

    .line 229
    invoke-static {v3, v2}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->group(Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    move-result-object v3

    iput-object v3, v0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mSlowMotion:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    const v3, 0x7f0f0098

    .line 231
    new-array v11, v10, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->RESOLUTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v12, v11, v4

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->PREDICTIVE_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v12, v11, v5

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SHUTTER_TRIGGER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v12, v11, v6

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->BACK_SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v12, v11, v7

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->LENS_CORRECTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v12, v11, v8

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SIDE_SENSE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v12, v11, v9

    .line 232
    invoke-static {v3, v11}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->category(I[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    move-result-object v3

    .line 231
    invoke-static {v3, v2}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->group(Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    move-result-object v3

    iput-object v3, v0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mNightMode:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    const v3, 0x7f0f0098

    .line 241
    new-array v11, v8, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->RESOLUTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v12, v11, v4

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SHUTTER_TRIGGER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v12, v11, v5

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FRONT_SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v12, v11, v6

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SIDE_SENSE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v12, v11, v7

    .line 242
    invoke-static {v3, v11}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->category(I[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    move-result-object v3

    .line 241
    invoke-static {v3, v2}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->group(Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    move-result-object v3

    iput-object v3, v0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mFrontNightMode:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    const v3, 0x7f0f009d

    if-eqz p1, :cond_3d5

    .line 250
    new-array v11, v10, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v12, v11, v4

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->OBJECT_TRACKING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v12, v11, v5

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SHUTTER_TRIGGER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v12, v11, v6

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_STABILIZER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v12, v11, v7

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_CODEC:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v12, v11, v8

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SIDE_SENSE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v12, v11, v9

    .line 251
    invoke-static {v3, v11}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->category(I[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    move-result-object v11

    .line 250
    invoke-static {v11, v2}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->group(Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    move-result-object v11

    iput-object v11, v0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mVideo:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    const v11, 0x7f0f035f

    .line 260
    new-array v12, v9, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v13, v12, v4

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SHUTTER_TRIGGER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v13, v12, v5

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_STABILIZER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v13, v12, v6

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_CODEC:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v13, v12, v7

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SIDE_SENSE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v13, v12, v8

    .line 261
    invoke-static {v11, v12}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->category(I[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    move-result-object v11

    .line 260
    invoke-static {v11, v2}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->group(Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    move-result-object v2

    iput-object v2, v0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mWideVideo:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    .line 269
    new-array v2, v10, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v10, v2, v4

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->OBJECT_TRACKING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v10, v2, v5

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SHUTTER_TRIGGER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v10, v2, v6

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_STABILIZER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v10, v2, v7

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_CODEC:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v10, v2, v8

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SIDE_SENSE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v10, v2, v9

    .line 270
    invoke-static {v3, v2}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->category(I[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    move-result-object v2

    .line 269
    invoke-static {v2, v1}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->group(Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    move-result-object v2

    iput-object v2, v0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mOneShotVideo:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    const v2, 0x7f0f035f

    .line 279
    new-array v3, v9, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v9, v3, v4

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SHUTTER_TRIGGER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v4, v3, v5

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_STABILIZER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v4, v3, v6

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_CODEC:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v4, v3, v7

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SIDE_SENSE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v4, v3, v8

    .line 280
    invoke-static {v2, v3}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->category(I[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    move-result-object v2

    .line 279
    invoke-static {v2, v1}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->group(Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    move-result-object v1

    iput-object v1, v0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mOneShotWideVideo:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    goto/16 :goto_453

    .line 289
    :cond_3d5
    new-array v10, v9, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v11, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v11, v10, v4

    sget-object v11, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->OBJECT_TRACKING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v11, v10, v5

    sget-object v11, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SHUTTER_TRIGGER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v11, v10, v6

    sget-object v11, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_STABILIZER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v11, v10, v7

    sget-object v11, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SIDE_SENSE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v11, v10, v8

    .line 290
    invoke-static {v3, v10}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->category(I[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    move-result-object v10

    .line 289
    invoke-static {v10, v2}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->group(Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    move-result-object v10

    iput-object v10, v0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mVideo:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    const v10, 0x7f0f035f

    .line 298
    new-array v11, v8, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v12, v11, v4

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SHUTTER_TRIGGER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v12, v11, v5

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_STABILIZER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v12, v11, v6

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SIDE_SENSE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v12, v11, v7

    .line 299
    invoke-static {v10, v11}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->category(I[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    move-result-object v10

    .line 298
    invoke-static {v10, v2}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->group(Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    move-result-object v2

    iput-object v2, v0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mWideVideo:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    .line 306
    new-array v2, v9, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v9, v2, v4

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->OBJECT_TRACKING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v9, v2, v5

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SHUTTER_TRIGGER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v9, v2, v6

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_STABILIZER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v9, v2, v7

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SIDE_SENSE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v9, v2, v8

    .line 307
    invoke-static {v3, v2}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->category(I[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    move-result-object v2

    .line 306
    invoke-static {v2, v1}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->group(Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    move-result-object v2

    iput-object v2, v0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mOneShotVideo:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    const v2, 0x7f0f035f

    .line 315
    new-array v3, v8, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v8, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v8, v3, v4

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SHUTTER_TRIGGER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v4, v3, v5

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_STABILIZER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v4, v3, v6

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SIDE_SENSE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    aput-object v4, v3, v7

    .line 316
    invoke-static {v2, v3}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->category(I[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    move-result-object v2

    .line 315
    invoke-static {v2, v1}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->group(Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    move-result-object v1

    iput-object v1, v0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mOneShotWideVideo:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    :goto_453
    return-void
.end method

.method private static varargs category(I[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;
    .registers 3

    .line 386
    new-instance v0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;-><init>(I[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)V

    return-object v0
.end method

.method private static group(Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;
    .registers 3

    .line 390
    new-instance v0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;-><init>(Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;)V

    return-object v0
.end method


# virtual methods
.method public get(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;
    .registers 5

    .line 326
    sget-object v0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_5e

    .line 351
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The specified mode is not supported. mode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 349
    :pswitch_26
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mFrontNightMode:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    return-object p1

    .line 347
    :pswitch_29
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mNightMode:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    return-object p1

    .line 345
    :pswitch_2c
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mSlowMotion:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    return-object p1

    :pswitch_2f
    if-eqz p2, :cond_34

    .line 343
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mOneShotWideVideo:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    goto :goto_36

    :cond_34
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mWideVideo:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    :goto_36
    return-object p1

    :pswitch_37
    if-eqz p2, :cond_3c

    .line 341
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mOneShotVideo:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    goto :goto_3e

    :cond_3c
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mVideo:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    :goto_3e
    return-object p1

    .line 337
    :pswitch_3f
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mFrontManual:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    return-object p1

    .line 335
    :pswitch_42
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mManual:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    return-object p1

    :pswitch_45
    if-eqz p2, :cond_4a

    .line 333
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mOneShotWidePhoto:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    goto :goto_4c

    :cond_4a
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mWidePhoto:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    :goto_4c
    return-object p1

    :pswitch_4d
    if-eqz p2, :cond_52

    .line 331
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mOneShotPhoto:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    goto :goto_54

    :cond_52
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mAuto:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    :goto_54
    return-object p1

    :pswitch_55
    if-eqz p2, :cond_5a

    .line 329
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mFrontOneShotPhoto:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    goto :goto_5c

    :cond_5a
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mFrontAuto:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    :goto_5c
    return-object p1

    nop

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_55
        :pswitch_4d
        :pswitch_45
        :pswitch_42
        :pswitch_3f
        :pswitch_37
        :pswitch_37
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
    .end packed-switch
.end method
