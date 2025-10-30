.class public Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;
.super Ljava/lang/Object;
.source "CapturingModePluginsPMLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;
    }
.end annotation


# static fields
.field private static final FINGERPRINT:Ljava/lang/String; = "android.os.Build.FINGERPRINT"

.field private static final INTENT_FILTER_ACTION_NAME_FOR_QUERY:Ljava/lang/String; = "com.sonymobile.camera.addon.action.REGISTER_MODE"

.field private static final META_DATA_NAME:Ljava/lang/String; = "com.sonymobile.camera.addon.MODE_ATTRIBUTES"

.field private static final MODES_TAG:Ljava/lang/String; = "modes"

.field private static final MODE_ATTRIBUTE_DESCRIPTION_LABEL:Ljava/lang/String; = "descriptionLabel"

.field private static final MODE_ATTRIBUTE_NAME:Ljava/lang/String; = "name"

.field private static final MODE_ATTRIBUTE_SELECTOR_ICON:Ljava/lang/String; = "selectorIcon"

.field private static final MODE_ATTRIBUTE_SELECTOR_LABEL:Ljava/lang/String; = "selectorLabel"

.field private static final MODE_ATTRIBUTE_SHORTCUT_ICON:Ljava/lang/String; = "shortcutIcon"

.field private static final MODE_ATTRIBUTE_SHORTCUT_LABEL:Ljava/lang/String; = "shortcutLabel"

.field private static final MODE_DESCRIPTION_LABEL:Ljava/lang/String; = "com.sonymobile.camera.addon.MODE_DESCRIPTION_LABEL"

.field private static final MODE_SELECTOR_ICON:Ljava/lang/String; = "com.sonymobile.camera.addon.MODE_SELECTOR_ICON"

.field private static final MODE_SELECTOR_LABEL:Ljava/lang/String; = "com.sonymobile.camera.addon.MODE_SELECTOR_LABEL"

.field private static final MODE_SELECTOR_NAME:Ljava/lang/String; = "com.sonymobile.camera.addon.MODE_NAME"

.field private static final MODE_SHORTCUT_ICON:Ljava/lang/String; = "com.sonymobile.camera.addon.MODE_SHORTCUT_ICON"

.field private static final MODE_SHORTCUT_LABEL:Ljava/lang/String; = "com.sonymobile.camera.addon.MODE_SHORTCUT_LABEL"

.field private static final MODE_TAG:Ljava/lang/String; = "mode"

.field private static final PluginConfigurationList:[Ljava/lang/String;

.field private static final SHARED_PREFERENCE_NAME:Ljava/lang/String; = "com.sonyericsson.cameracommon.appsui.fingerprint_sharedprefs"

.field private static final TAG:Ljava/lang/String; = "CapturingModePluginsPMLoader"

.field private static final USES_FEATURE_ATTRIBUTE_NAME:Ljava/lang/String; = "name"

.field private static final USES_FEATURE_TAG:Ljava/lang/String; = "uses-feature"

.field private static final XMLNS_ANDROID:Ljava/lang/String; = "http://schemas.android.com/apk/res/android"

.field private static mPackageManagerPluginList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-string v0, "HighFrameRateVideoActivity"

    const-string v1, "enable_timeshift_video_rec_app"

    const-string v2, "HighResolutionVideoActivity"

    const-string v3, "enable_4k_video_rec_app"

    .line 44
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->PluginConfigurationList:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mContext:Landroid/content/Context;

    return-void
.end method

.method private addPluginToList()V
    .registers 18

    move-object/from16 v0, p0

    .line 347
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    sget-object v2, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$InternalCaptureType;->Photo:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$InternalCaptureType;

    iput-object v2, v1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mInternalCaptureType:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$InternalCaptureType;

    .line 348
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mIsVisibleNormal:Z

    const/4 v3, 0x0

    .line 350
    iput-boolean v3, v1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mIsVisibleOneshot:Z

    .line 352
    iget v4, v1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mShortcutLabelId:I

    if-eqz v4, :cond_1b

    iget-object v4, v0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget v4, v4, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mShortcutIconId:I

    if-eqz v4, :cond_1b

    goto :goto_1c

    :cond_1b
    move v2, v3

    :goto_1c
    iput-boolean v2, v1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mIsVisibleShortcut:Z

    .line 356
    new-instance v1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;

    iget-object v2, v0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget-object v4, v2, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mPackageName:Ljava/lang/String;

    iget-object v2, v0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget-object v5, v2, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mActivityName:Ljava/lang/String;

    iget-object v2, v0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget-object v6, v2, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mModeName:Ljava/lang/String;

    iget-object v2, v0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget v7, v2, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mSelectorIconId:I

    iget-object v2, v0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget v8, v2, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mSelectorLabelId:I

    iget-object v2, v0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget v9, v2, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mDescriptionLabelId:I

    iget-object v2, v0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget v10, v2, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mShortcutIconId:I

    iget-object v2, v0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget v11, v2, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mShortcutLabelId:I

    iget-object v2, v0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget-object v12, v2, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mInternalCaptureType:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$InternalCaptureType;

    iget-object v2, v0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget-boolean v13, v2, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mIsVisibleNormal:Z

    iget-object v2, v0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget-boolean v14, v2, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mIsVisibleOneshot:Z

    iget-object v2, v0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget-boolean v15, v2, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mIsVisibleShortcut:Z

    const/16 v16, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v16}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$InternalCaptureType;ZZZLjava/lang/Object;)V

    .line 372
    sget-object v2, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mPackageManagerPluginList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearCapturingModes()V
    .registers 4

    .line 147
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/view/modeselector/CameraCommonProviderConstants;->CAPTURINGMODE_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private getPluginsFromPackageManager()V
    .registers 9

    .line 157
    sget-object v0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mPackageManagerPluginList:Ljava/util/List;

    if-nez v0, :cond_b

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mPackageManagerPluginList:Ljava/util/List;

    .line 161
    :cond_b
    sget-object v0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mPackageManagerPluginList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 163
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 165
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sonymobile.camera.addon.action.REGISTER_MODE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 167
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 169
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_173

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 170
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->isPluginConfigurationOn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_41

    goto :goto_26

    .line 176
    :cond_41
    new-instance v4, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;-><init>(Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$1;)V

    iput-object v4, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    .line 177
    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v5, v4, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mPackageName:Ljava/lang/String;

    .line 178
    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v5, v4, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mActivityName:Ljava/lang/String;

    const-string v4, "com.sonymobile.permission.CAMERA_ADDON"

    .line 181
    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget-object v5, v5, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_8c

    .line 186
    new-array v4, v5, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "This application has no CAMERA_ADDON permission: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    const-string v3, "Failed to add plugin for this package."

    .line 188
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    goto :goto_26

    .line 195
    :cond_8c
    :try_start_8c
    new-instance v4, Landroid/content/ComponentName;

    iget-object v6, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget-object v6, v6, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mPackageName:Ljava/lang/String;

    iget-object v7, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget-object v7, v7, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mActivityName:Ljava/lang/String;

    invoke-direct {v4, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iget-object v6, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/16 v7, 0x80

    invoke-virtual {v6, v4, v7}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v4
    :try_end_a5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8c .. :try_end_a5} :catch_14c

    .line 207
    invoke-direct {p0, v3, v4}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->parsePluginFromMetaData(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ActivityInfo;)Z

    move-result v6

    if-eqz v6, :cond_b0

    .line 208
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->addPluginToList()V

    goto/16 :goto_26

    .line 215
    :cond_b0
    :try_start_b0
    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 216
    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v6
    :try_end_b8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b0 .. :try_end_b8} :catch_125

    .line 226
    :try_start_b8
    invoke-direct {p0, v3, v4, v6}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->parseModeAttributesFromMetaData(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ActivityInfo;Landroid/content/res/Resources;)Z

    move-result v7

    if-eqz v6, :cond_fc

    if-eqz v7, :cond_fc

    .line 228
    invoke-direct {p0, v4, v6}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->parsePluginFromModeAttributesXmlFile(Landroid/content/pm/ActivityInfo;Landroid/content/res/Resources;)Z

    move-result v4

    if-eqz v4, :cond_cb

    .line 229
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->addPluginToList()V

    goto/16 :goto_26

    .line 231
    :cond_cb
    new-array v4, v5, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to add plugin for this package: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v2

    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V
    :try_end_e7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b8 .. :try_end_e7} :catch_f3
    .catch Ljava/io/IOException; {:try_start_b8 .. :try_end_e7} :catch_e9

    goto/16 :goto_26

    :catch_e9
    const-string v4, "IOException: Problem when parse mode attributes xml file."

    .line 239
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    goto :goto_fc

    :catch_f3
    const-string v4, "XmlPullParserException: Problem when parse mode attributes xml file."

    .line 237
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 243
    :cond_fc
    :goto_fc
    invoke-direct {p0, v3}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->parsePluginFromApplicationInfo(Landroid/content/pm/ResolveInfo;)Z

    move-result v4

    if-eqz v4, :cond_107

    .line 244
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->addPluginToList()V

    goto/16 :goto_26

    .line 246
    :cond_107
    new-array v4, v5, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to add plugin for this package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    goto/16 :goto_26

    .line 218
    :catch_125
    new-array v4, v5, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NameNotFoundException: Problem when geting Application Resources with packageName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    const-string v3, "Failed to add plugin for this package."

    .line 220
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    goto/16 :goto_26

    .line 200
    :catch_14c
    new-array v4, v5, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NameNotFoundException: Problem when geting Application META_DATA with packageName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    const-string v3, "Failed to add plugin for this package."

    .line 202
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    goto/16 :goto_26

    :cond_173
    return-void
.end method

.method private getResIDFromXmlString(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    .line 450
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 451
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    .line 452
    invoke-virtual {v0, p2, v1, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_f} :catch_10

    goto :goto_1a

    :catch_10
    const-string p1, "Could not get resource id for plugin"

    .line 455
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_1a
    return p1
.end method

.method private isCapturingModeFingerprintModified(Landroid/content/SharedPreferences;)Z
    .registers 8

    const-string v0, "android.os.Build.FINGERPRINT"

    const-string v1, ""

    .line 135
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 136
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 137
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_37

    .line 138
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v3, 0x1

    if-eqz v1, :cond_36

    new-array v1, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "version mismatch: cached: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", current : "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_36
    return v3

    :cond_37
    return v2
.end method

.method private isPluginConfigurationOn(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    .line 469
    :goto_1
    sget-object v1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->PluginConfigurationList:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x1

    if-ge v0, v2, :cond_27

    .line 471
    aget-object v1, v1, v0

    const-string v2, "."

    .line 472
    invoke-virtual {p2, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v2, v3

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 471
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 474
    sget-object p2, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->PluginConfigurationList:[Ljava/lang/String;

    add-int/2addr v0, v3

    aget-object p2, p2, v0

    invoke-direct {p0, p2, p1}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->isValueOn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    goto :goto_27

    :cond_24
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_27
    :goto_27
    return v3
.end method

.method private isValueOn(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 489
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x1

    .line 493
    :try_start_7
    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    const-string v2, "bool"

    .line 494
    invoke-virtual {v0, p1, v2, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_22

    .line 496
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1
    :try_end_17
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_17} :catch_19

    move v1, p1

    goto :goto_22

    :catch_19
    const-string p1, "Error reading out plugin configuration value"

    .line 499
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    :cond_22
    :goto_22
    return v1
.end method

.method private parseModeAttributesFromMetaData(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ActivityInfo;Landroid/content/res/Resources;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 267
    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_23

    .line 269
    new-array p2, v1, [Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "This activity has no meta-data: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v2

    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return v2

    :cond_23
    if-eqz p3, :cond_d5

    .line 274
    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v0, "com.sonymobile.camera.addon.MODE_ATTRIBUTES"

    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    if-eqz p2, :cond_d4

    .line 276
    :try_start_2f
    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p2
    :try_end_33
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2f .. :try_end_33} :catch_ca
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_33} :catch_ca

    const/4 p3, 0x0

    if-nez p2, :cond_45

    :try_start_36
    const-string p1, "Problem when get XmlResourceParser from mode attributes xml resource Id."

    .line 278
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_3f} :catch_b6
    .catchall {:try_start_36 .. :try_end_3f} :catchall_b4

    if-eqz p2, :cond_44

    .line 305
    :try_start_41
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_44
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_41 .. :try_end_44} :catch_ca
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_ca

    :cond_44
    return v2

    .line 284
    :cond_45
    :try_start_45
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    move v3, v1

    :goto_4a
    const/4 v4, 0x3

    if-ne v0, v4, :cond_62

    const-string v4, "mode"

    .line 285
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_57} :catch_b6
    .catchall {:try_start_45 .. :try_end_57} :catchall_b4

    if-nez v4, :cond_5a

    goto :goto_62

    :cond_5a
    if-eqz p2, :cond_5f

    .line 305
    :try_start_5c
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_5f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5c .. :try_end_5f} :catch_ca
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5f} :catch_ca

    :cond_5f
    move v1, v3

    goto/16 :goto_d4

    :cond_62
    :goto_62
    const/4 v4, 0x2

    if-ne v0, v4, :cond_af

    :try_start_65
    const-string v0, "uses-feature"

    .line 290
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_af

    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string v4, "name"

    .line 291
    invoke-interface {p2, v0, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 294
    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_af

    .line 295
    new-array v3, v1, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Mode of \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\" requires \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\" but this platform doesn\'t support the feature."

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    move v3, v2

    .line 286
    :cond_af
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0
    :try_end_b3
    .catch Ljava/lang/Throwable; {:try_start_65 .. :try_end_b3} :catch_b6
    .catchall {:try_start_65 .. :try_end_b3} :catchall_b4

    goto :goto_4a

    :catchall_b4
    move-exception p1

    goto :goto_b9

    :catch_b6
    move-exception p1

    move-object p3, p1

    .line 276
    :try_start_b8
    throw p3
    :try_end_b9
    .catchall {:try_start_b8 .. :try_end_b9} :catchall_b4

    :goto_b9
    if-eqz p2, :cond_c9

    if-eqz p3, :cond_c6

    .line 305
    :try_start_bd
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_c0
    .catch Ljava/lang/Throwable; {:try_start_bd .. :try_end_c0} :catch_c1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_bd .. :try_end_c0} :catch_ca
    .catch Ljava/io/IOException; {:try_start_bd .. :try_end_c0} :catch_ca

    goto :goto_c9

    :catch_c1
    move-exception p2

    :try_start_c2
    invoke-virtual {p3, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_c9

    :cond_c6
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_c9
    :goto_c9
    throw p1
    :try_end_ca
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c2 .. :try_end_ca} :catch_ca
    .catch Ljava/io/IOException; {:try_start_c2 .. :try_end_ca} :catch_ca

    :catch_ca
    const-string p1, "Problem when parse mode attributes xml file"

    .line 306
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return v2

    :cond_d4
    :goto_d4
    return v1

    :cond_d5
    return v2
.end method

.method private parsePluginFromApplicationInfo(Landroid/content/pm/ResolveInfo;)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 542
    :try_start_2
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 543
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x21

    if-ge v3, v4, :cond_17

    .line 544
    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    goto :goto_25

    .line 547
    :cond_17
    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-wide/16 v4, 0x0

    .line 549
    invoke-static {v4, v5}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v4

    .line 547
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 551
    :goto_25
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 553
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mContext:Landroid/content/Context;

    .line 554
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 553
    invoke-virtual {v2, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 554
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mModeName:Ljava/lang/String;

    .line 555
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget v4, v2, Landroid/content/pm/ApplicationInfo;->icon:I

    iput v4, v3, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mSelectorIconId:I

    .line 556
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget v4, v2, Landroid/content/pm/ApplicationInfo;->labelRes:I

    iput v4, v3, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mSelectorLabelId:I

    .line 558
    iget v3, v2, Landroid/content/pm/ApplicationInfo;->descriptionRes:I

    if-eqz v3, :cond_50

    .line 559
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->descriptionRes:I

    iput v2, v3, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mDescriptionLabelId:I

    goto :goto_58

    .line 561
    :cond_50
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget v3, v3, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mSelectorLabelId:I

    iput v3, v2, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mDescriptionLabelId:I
    :try_end_58
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_58} :catch_59

    :goto_58
    return v0

    .line 564
    :catch_59
    new-array v0, v0, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NameNotFoundException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return v1
.end method

.method private parsePluginFromMetaData(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ActivityInfo;)Z
    .registers 7

    .line 510
    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_23

    .line 512
    new-array p2, v1, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "This activity has no meta-data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v2

    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return v2

    .line 516
    :cond_23
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "com.sonymobile.camera.addon.MODE_NAME"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mModeName:Ljava/lang/String;

    .line 517
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "com.sonymobile.camera.addon.MODE_SELECTOR_ICON"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mSelectorIconId:I

    .line 518
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "com.sonymobile.camera.addon.MODE_SELECTOR_LABEL"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mSelectorLabelId:I

    .line 519
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "com.sonymobile.camera.addon.MODE_DESCRIPTION_LABEL"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mDescriptionLabelId:I

    .line 520
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "com.sonymobile.camera.addon.MODE_SHORTCUT_ICON"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mShortcutIconId:I

    .line 521
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v0, "com.sonymobile.camera.addon.MODE_SHORTCUT_LABEL"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mShortcutLabelId:I

    .line 523
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mModeName:Ljava/lang/String;

    if-nez p1, :cond_91

    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget p1, p1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mSelectorIconId:I

    if-nez p1, :cond_91

    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget p1, p1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mSelectorLabelId:I

    if-nez p1, :cond_91

    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget p1, p1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mDescriptionLabelId:I

    if-nez p1, :cond_91

    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget p1, p1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mShortcutIconId:I

    if-nez p1, :cond_91

    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget p1, p1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mShortcutLabelId:I

    if-eqz p1, :cond_90

    goto :goto_91

    :cond_90
    move v1, v2

    :cond_91
    :goto_91
    return v1
.end method

.method private parsePluginFromModeAttributesXmlFile(Landroid/content/pm/ActivityInfo;Landroid/content/res/Resources;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_42

    .line 327
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "com.sonymobile.camera.addon.MODE_ATTRIBUTES"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_42

    .line 329
    :try_start_d
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1
    :try_end_11
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d .. :try_end_11} :catch_39
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_11} :catch_39

    const/4 v1, 0x0

    if-eqz p1, :cond_33

    .line 331
    :try_start_14
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->parsePluginXMLData(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_17} :catch_20
    .catchall {:try_start_14 .. :try_end_17} :catchall_1e

    const/4 p2, 0x1

    if-eqz p1, :cond_1d

    .line 334
    :try_start_1a
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_1d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1a .. :try_end_1d} :catch_39
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1d} :catch_39

    :cond_1d
    return p2

    :catchall_1e
    move-exception p2

    goto :goto_22

    :catch_20
    move-exception v1

    .line 329
    :try_start_21
    throw v1
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_1e

    :goto_22
    if-eqz p1, :cond_32

    if-eqz v1, :cond_2f

    .line 334
    :try_start_26
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_29} :catch_2a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_26 .. :try_end_29} :catch_39
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_39

    goto :goto_32

    :catch_2a
    move-exception p1

    :try_start_2b
    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_32

    :cond_2f
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_32
    :goto_32
    throw p2

    :cond_33
    if-eqz p1, :cond_42

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_38
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2b .. :try_end_38} :catch_39
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_38} :catch_39

    goto :goto_42

    :catch_39
    const-string p1, "Problem when parse mode attributes xml file."

    .line 335
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    :cond_42
    :goto_42
    return v0
.end method

.method private parsePluginXMLData(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 384
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    :goto_4
    const/4 v1, 0x1

    if-eq v0, v1, :cond_37

    .line 389
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    :goto_b
    const/4 v1, 0x3

    if-ne v0, v1, :cond_20

    const-string v1, "modes"

    .line 390
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    goto :goto_20

    .line 386
    :cond_1b
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_4

    :cond_20
    :goto_20
    const/4 v1, 0x2

    if-ne v0, v1, :cond_32

    const-string v0, "mode"

    .line 392
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 394
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->parsePluginXMLModeTag(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)V

    .line 391
    :cond_32
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_b

    :cond_37
    return-void
.end method

.method private parsePluginXMLModeTag(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 410
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result p2

    const/4 v0, 0x0

    :goto_5
    if-ge v0, p2, :cond_80

    .line 412
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    .line 413
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    if-nez v1, :cond_12

    goto :goto_7d

    :cond_12
    const-string v3, "name"

    .line 417
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 418
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iput-object v2, v1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mModeName:Ljava/lang/String;

    goto :goto_7d

    :cond_1f
    const-string v3, "selectorIcon"

    .line 419
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 420
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget-object v3, v1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mPackageName:Ljava/lang/String;

    .line 421
    invoke-direct {p0, v3, v2}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->getResIDFromXmlString(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mSelectorIconId:I

    goto :goto_7d

    :cond_32
    const-string v3, "selectorLabel"

    .line 422
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 423
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget-object v3, v1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mPackageName:Ljava/lang/String;

    .line 424
    invoke-direct {p0, v3, v2}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->getResIDFromXmlString(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mSelectorLabelId:I

    goto :goto_7d

    :cond_45
    const-string v3, "descriptionLabel"

    .line 425
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_58

    .line 426
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget-object v3, v1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mPackageName:Ljava/lang/String;

    .line 427
    invoke-direct {p0, v3, v2}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->getResIDFromXmlString(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mDescriptionLabelId:I

    goto :goto_7d

    :cond_58
    const-string v3, "shortcutIcon"

    .line 428
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 429
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget-object v3, v1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mPackageName:Ljava/lang/String;

    .line 430
    invoke-direct {p0, v3, v2}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->getResIDFromXmlString(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mShortcutIconId:I

    goto :goto_7d

    :cond_6b
    const-string v3, "shortcutLabel"

    .line 431
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 432
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget-object v3, v1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mPackageName:Ljava/lang/String;

    .line 433
    invoke-direct {p0, v3, v2}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->getResIDFromXmlString(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mShortcutLabelId:I

    :cond_7d
    :goto_7d
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_80
    return-void
.end method


# virtual methods
.method public updatePluginsInDB()V
    .registers 4

    .line 117
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mContext:Landroid/content/Context;

    const-string v1, "com.sonyericsson.cameracommon.appsui.fingerprint_sharedprefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 120
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->isCapturingModeFingerprintModified(Landroid/content/SharedPreferences;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 122
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->clearCapturingModes()V

    .line 124
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "android.os.Build.FINGERPRINT"

    .line 125
    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 126
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 128
    :cond_20
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->getPluginsFromPackageManager()V

    .line 129
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mPackageManagerPluginList:Ljava/util/List;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mContext:Landroid/content/Context;

    .line 131
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 129
    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeCollection;->register(Landroid/content/ContentResolver;Ljava/util/List;Landroid/content/pm/PackageManager;)V

    return-void
.end method
