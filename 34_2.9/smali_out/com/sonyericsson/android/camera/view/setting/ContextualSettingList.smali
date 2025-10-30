.class public Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;
.super Ljava/lang/Object;
.source "ContextualSettingList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;,
        Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;
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
    .registers 22

    move-object/from16 v0, p0

    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->GEO_TAG:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->TOUCH_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->GRID_LINE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FRAME_LINES:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v5, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->AUTO_REVIEW:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v6, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAMERA_KEY:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VOLUME_KEY:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v8, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SHUTTER_SOUND:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->DESTINATION_TO_SAVE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->PREDICTIVE_LAUNCH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v11, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FAST_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ACCESSIBILITY:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->RESET_SETTINGS:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    filled-new-array/range {v1 .. v13}, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v1

    const v2, 0x7f0f02d7

    invoke-static {v2, v1}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->category(I[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    move-result-object v1

    const/4 v3, 0x0

    .line 56
    new-array v3, v3, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-static {v2, v3}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->category(I[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    move-result-object v2

    const v3, 0x7f0f00ea

    if-eqz p2, :cond_d4

    .line 62
    sget-object v4, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ISO:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v5, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->RESOLUTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v6, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->PREDICTIVE_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->OBJECT_TRACKING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v8, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->METERING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SHUTTER_TRIGGER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->BACK_SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v11, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FRONT_SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->LENS_CORRECTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FUSION_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v15, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SIDE_SENSE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v16, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SUPER_RESOLUTION_ZOOM:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v17, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ZOOM_ASSIST:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v18, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->QR_CODE_DETECTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    filled-new-array/range {v4 .. v18}, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v4

    .line 63
    invoke-static {v3, v4}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->category(I[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    move-result-object v4

    .line 62
    invoke-static {v4, v1}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->group(Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    move-result-object v4

    iput-object v4, v0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mAuto:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    .line 81
    sget-object v5, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ISO:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v6, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->RESOLUTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->PREDICTIVE_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v8, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->OBJECT_TRACKING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->METERING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SHUTTER_TRIGGER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v11, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->BACK_SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FRONT_SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SKIN_NR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v15, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FUSION_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v16, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SIDE_SENSE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v17, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->QR_CODE_DETECTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    filled-new-array/range {v5 .. v17}, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v4

    .line 82
    invoke-static {v3, v4}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->category(I[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    move-result-object v4

    .line 81
    invoke-static {v4, v1}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->group(Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    move-result-object v4

    iput-object v4, v0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mFrontAuto:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    .line 98
    sget-object v5, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ISO:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v6, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->RESOLUTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->OBJECT_TRACKING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v8, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->METERING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SHUTTER_TRIGGER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->BACK_SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v11, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FRONT_SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->LENS_CORRECTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FUSION_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v15, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SIDE_SENSE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    filled-new-array/range {v5 .. v15}, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v4

    .line 99
    invoke-static {v3, v4}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->category(I[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    move-result-object v4

    .line 98
    invoke-static {v4, v2}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->group(Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    move-result-object v4

    iput-object v4, v0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mOneShotPhoto:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    .line 113
    sget-object v5, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ISO:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v6, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->RESOLUTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->OBJECT_TRACKING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v8, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->METERING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SHUTTER_TRIGGER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->BACK_SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v11, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FRONT_SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SKIN_NR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FUSION_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v15, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SIDE_SENSE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    filled-new-array/range {v5 .. v15}, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v4

    .line 114
    invoke-static {v3, v4}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->category(I[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    move-result-object v3

    .line 113
    invoke-static {v3, v2}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->group(Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    move-result-object v3

    iput-object v3, v0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mFrontOneShotPhoto:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    goto/16 :goto_170

    .line 128
    :cond_d4
    sget-object v4, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ISO:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v5, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->RESOLUTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v6, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->PREDICTIVE_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->OBJECT_TRACKING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v8, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->METERING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SHUTTER_TRIGGER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->BACK_SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v11, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FRONT_SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->LENS_CORRECTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FUSION_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v15, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SUPER_RESOLUTION_ZOOM:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v16, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ZOOM_ASSIST:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v17, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->QR_CODE_DETECTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v18, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SIDE_SENSE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    filled-new-array/range {v4 .. v18}, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v4

    .line 129
    invoke-static {v3, v4}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->category(I[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    move-result-object v4

    .line 128
    invoke-static {v4, v1}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->group(Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    move-result-object v4

    iput-object v4, v0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mAuto:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    .line 147
    sget-object v5, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ISO:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v6, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->RESOLUTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->PREDICTIVE_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v8, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->OBJECT_TRACKING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->METERING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SHUTTER_TRIGGER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v11, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->BACK_SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FRONT_SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SKIN_NR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v15, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FUSION_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v16, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->QR_CODE_DETECTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v17, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SIDE_SENSE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    filled-new-array/range {v5 .. v17}, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v4

    .line 148
    invoke-static {v3, v4}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->category(I[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    move-result-object v4

    .line 147
    invoke-static {v4, v1}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->group(Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    move-result-object v4

    iput-object v4, v0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mFrontAuto:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    .line 164
    sget-object v5, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ISO:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v6, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->RESOLUTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->OBJECT_TRACKING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v8, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->METERING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SHUTTER_TRIGGER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->BACK_SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v11, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FRONT_SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->LENS_CORRECTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FUSION_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v15, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SIDE_SENSE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    filled-new-array/range {v5 .. v15}, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v4

    .line 165
    invoke-static {v3, v4}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->category(I[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    move-result-object v4

    .line 164
    invoke-static {v4, v2}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->group(Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    move-result-object v4

    iput-object v4, v0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mOneShotPhoto:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    .line 179
    sget-object v5, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ISO:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v6, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->RESOLUTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->OBJECT_TRACKING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v8, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->METERING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SHUTTER_TRIGGER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->BACK_SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v11, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FRONT_SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SKIN_NR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FUSION_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v15, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SIDE_SENSE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    filled-new-array/range {v5 .. v15}, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v4

    .line 180
    invoke-static {v3, v4}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->category(I[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    move-result-object v3

    .line 179
    invoke-static {v3, v2}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->group(Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    move-result-object v3

    iput-object v3, v0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mFrontOneShotPhoto:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    .line 195
    :goto_170
    sget-object v4, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ISO:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v5, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->RESOLUTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v6, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->METERING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SHUTTER_TRIGGER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v8, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->BACK_SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FRONT_SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->LENS_CORRECTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v11, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SIDE_SENSE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SUPER_RESOLUTION_ZOOM:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->QR_CODE_DETECTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    filled-new-array/range {v4 .. v14}, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v3

    const v4, 0x7f0f03ba

    .line 196
    invoke-static {v4, v3}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->category(I[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    move-result-object v3

    .line 195
    invoke-static {v3, v1}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->group(Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    move-result-object v3

    iput-object v3, v0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mWidePhoto:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    .line 210
    sget-object v5, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ISO:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v6, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->RESOLUTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SHUTTER_TRIGGER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v8, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->BACK_SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FRONT_SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->LENS_CORRECTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v11, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SIDE_SENSE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    filled-new-array/range {v5 .. v12}, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v3

    .line 211
    invoke-static {v4, v3}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->category(I[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    move-result-object v3

    .line 210
    invoke-static {v3, v2}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->group(Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    move-result-object v3

    iput-object v3, v0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mOneShotWidePhoto:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    .line 222
    sget-object v4, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->RESOLUTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v5, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->TOUCH_INTENTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v6, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->METERING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SHUTTER_TRIGGER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v8, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->BACK_SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FRONT_SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    filled-new-array/range {v4 .. v9}, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v3

    const v4, 0x7f0f00f3

    .line 223
    invoke-static {v4, v3}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->category(I[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    move-result-object v3

    .line 222
    invoke-static {v3, v1}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->group(Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    move-result-object v3

    iput-object v3, v0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mFrontManual:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    .line 232
    sget-object v5, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->RESOLUTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v6, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->TOUCH_INTENTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->METERING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v8, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SHUTTER_TRIGGER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->BACK_SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FRONT_SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    filled-new-array/range {v5 .. v10}, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v3

    .line 233
    invoke-static {v4, v3}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->category(I[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    move-result-object v3

    .line 232
    invoke-static {v3, v1}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->group(Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    move-result-object v3

    iput-object v3, v0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mManual:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    const/4 v3, 0x0

    .line 243
    invoke-static {v3, v1}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->group(Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    move-result-object v3

    iput-object v3, v0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mSlowMotion:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    const v3, 0x7f0f03bb

    const v4, 0x7f0f00ae

    if-eqz p1, :cond_26c

    .line 246
    sget-object v5, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v6, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->OBJECT_TRACKING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SHUTTER_TRIGGER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v8, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_STABILIZER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_BRIGHTNESS:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SUPER_RESOLUTION_ZOOM:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v11, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_CODEC:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SIDE_SENSE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    filled-new-array/range {v5 .. v12}, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v5

    .line 247
    invoke-static {v4, v5}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->category(I[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    move-result-object v5

    .line 246
    invoke-static {v5, v1}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->group(Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    move-result-object v5

    iput-object v5, v0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mVideo:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    .line 258
    sget-object v6, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SHUTTER_TRIGGER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v8, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_STABILIZER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_BRIGHTNESS:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SUPER_RESOLUTION_ZOOM:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v11, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_CODEC:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SIDE_SENSE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    filled-new-array/range {v6 .. v12}, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v5

    .line 259
    invoke-static {v3, v5}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->category(I[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    move-result-object v5

    .line 258
    invoke-static {v5, v1}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->group(Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    move-result-object v1

    iput-object v1, v0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mWideVideo:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    .line 269
    sget-object v5, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v6, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->OBJECT_TRACKING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SHUTTER_TRIGGER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v8, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_STABILIZER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_BRIGHTNESS:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_CODEC:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v11, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SIDE_SENSE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    filled-new-array/range {v5 .. v11}, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v1

    .line 270
    invoke-static {v4, v1}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->category(I[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    move-result-object v1

    .line 269
    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->group(Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    move-result-object v1

    iput-object v1, v0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mOneShotVideo:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    .line 280
    sget-object v4, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v5, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SHUTTER_TRIGGER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v6, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_STABILIZER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_BRIGHTNESS:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v8, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_CODEC:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SIDE_SENSE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    filled-new-array/range {v4 .. v9}, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v1

    .line 281
    invoke-static {v3, v1}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->category(I[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    move-result-object v1

    .line 280
    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->group(Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    move-result-object v1

    iput-object v1, v0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mOneShotWideVideo:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    goto :goto_2d4

    .line 291
    :cond_26c
    sget-object v5, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v6, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->OBJECT_TRACKING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SHUTTER_TRIGGER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v8, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_STABILIZER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_BRIGHTNESS:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SUPER_RESOLUTION_ZOOM:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v11, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SIDE_SENSE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    filled-new-array/range {v5 .. v11}, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v5

    .line 292
    invoke-static {v4, v5}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->category(I[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    move-result-object v5

    .line 291
    invoke-static {v5, v1}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->group(Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    move-result-object v5

    iput-object v5, v0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mVideo:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    .line 302
    sget-object v6, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SHUTTER_TRIGGER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v8, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_STABILIZER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_BRIGHTNESS:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SUPER_RESOLUTION_ZOOM:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v11, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SIDE_SENSE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    filled-new-array/range {v6 .. v11}, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v5

    .line 303
    invoke-static {v3, v5}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->category(I[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    move-result-object v5

    .line 302
    invoke-static {v5, v1}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->group(Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    move-result-object v1

    iput-object v1, v0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mWideVideo:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    .line 312
    sget-object v5, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v6, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->OBJECT_TRACKING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SHUTTER_TRIGGER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v8, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_STABILIZER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_BRIGHTNESS:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SIDE_SENSE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    filled-new-array/range {v5 .. v10}, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v1

    .line 313
    invoke-static {v4, v1}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->category(I[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    move-result-object v1

    .line 312
    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->group(Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    move-result-object v1

    iput-object v1, v0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mOneShotVideo:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    .line 322
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SHUTTER_TRIGGER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v5, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_STABILIZER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v6, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_BRIGHTNESS:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SIDE_SENSE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    filled-new-array {v1, v4, v5, v6, v7}, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v1

    .line 323
    invoke-static {v3, v1}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->category(I[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    move-result-object v1

    .line 322
    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->group(Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    move-result-object v1

    iput-object v1, v0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mOneShotWideVideo:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    :goto_2d4
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

    packed-switch v0, :pswitch_data_56

    .line 355
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "The specified mode is not supported. mode:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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
    :pswitch_24
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mSlowMotion:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    return-object p0

    :pswitch_27
    if-eqz p2, :cond_2c

    .line 351
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mOneShotWideVideo:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    goto :goto_2e

    :cond_2c
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mWideVideo:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    :goto_2e
    return-object p0

    :pswitch_2f
    if-eqz p2, :cond_34

    .line 349
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mOneShotVideo:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    goto :goto_36

    :cond_34
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mVideo:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    :goto_36
    return-object p0

    .line 345
    :pswitch_37
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mFrontManual:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    return-object p0

    .line 343
    :pswitch_3a
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mManual:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    return-object p0

    :pswitch_3d
    if-eqz p2, :cond_42

    .line 341
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mOneShotWidePhoto:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    goto :goto_44

    :cond_42
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mWidePhoto:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    :goto_44
    return-object p0

    :pswitch_45
    if-eqz p2, :cond_4a

    .line 339
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mOneShotPhoto:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    goto :goto_4c

    :cond_4a
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mAuto:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    :goto_4c
    return-object p0

    :pswitch_4d
    if-eqz p2, :cond_52

    .line 337
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mFrontOneShotPhoto:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    goto :goto_54

    :cond_52
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->mFrontAuto:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    :goto_54
    return-object p0

    nop

    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_4d
        :pswitch_45
        :pswitch_3d
        :pswitch_3a
        :pswitch_37
        :pswitch_2f
        :pswitch_2f
        :pswitch_27
        :pswitch_24
    .end packed-switch
.end method
