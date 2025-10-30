.class public Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;
.super Landroid/widget/FrameLayout;
.source "PrimaryShortcutGroup.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogListener;


# instance fields
.field private mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

.field private mBokehShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

.field private mContextualSettingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

.field private mFacingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

.field private mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

.field private mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

.field private mHighSensitivityFusionShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

.field private mPrimaryShortcutClickListener:Landroid/view/View$OnClickListener;

.field private mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

.field private mSemiAutoShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

.field private mVideoHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

.field private mViewFinderAccessor:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 71
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 282
    new-instance p1, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup$1;

    invoke-direct {p1, p0}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup$1;-><init>(Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mPrimaryShortcutClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mViewFinderAccessor:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;

    return-object p0
.end method

.method private getCurrentDisplayFlashSetting([Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;)Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;
    .registers 9

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    if-nez p2, :cond_7

    return-object v0

    .line 1094
    :cond_7
    array-length v1, p1

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_21

    aget-object v3, p1, v2

    if-eqz v3, :cond_1e

    .line 1095
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    return-object v3

    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_21
    return-object v0
.end method

.method private getCurrentFlashSetting([Lcom/sonyericsson/android/camera/configuration/parameters/Flash;Lcom/sonyericsson/android/camera/configuration/parameters/Flash;)Lcom/sonyericsson/android/camera/configuration/parameters/Flash;
    .registers 9

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    if-nez p2, :cond_7

    return-object v0

    .line 1045
    :cond_7
    array-length v1, p1

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_21

    aget-object v3, p1, v2

    if-eqz v3, :cond_1e

    .line 1046
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    return-object v3

    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_21
    return-object v0
.end method

.method private getCurrentFrontFlashSetting([Lcom/sonyericsson/android/camera/configuration/parameters/FrontFlash;Lcom/sonyericsson/android/camera/configuration/parameters/FrontFlash;)Lcom/sonyericsson/android/camera/configuration/parameters/FrontFlash;
    .registers 9

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    if-nez p2, :cond_7

    return-object v0

    .line 1069
    :cond_7
    array-length v1, p1

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_21

    aget-object v3, p1, v2

    if-eqz v3, :cond_1e

    .line 1070
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/FrontFlash;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/FrontFlash;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    return-object v3

    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_21
    return-object v0
.end method

.method private getCurrentPhotoLightSetting([Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;)Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;
    .registers 9

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    if-nez p2, :cond_7

    return-object v0

    .line 1119
    :cond_7
    array-length v1, p1

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_21

    aget-object v3, p1, v2

    if-eqz v3, :cond_1e

    .line 1121
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    return-object v3

    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_21
    return-object v0
.end method

.method private getDisplayFlashOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;
    .registers 6

    .line 1007
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getSupportedFlashModes(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Ljava/util/List;

    move-result-object v0

    .line 1009
    new-instance v1, Lcom/sonyericsson/android/camera/ActionMode;

    .line 1012
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, p1}, Lcom/sonyericsson/android/camera/ActionMode;-><init>(ZILcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    .line 1013
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->getInstance()Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->getDisplayFlashOptions(Lcom/sonyericsson/android/camera/ActionMode;Ljava/util/List;)[Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;

    move-result-object p1

    return-object p1
.end method

.method private getFlashOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/Flash;
    .registers 6

    .line 975
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getSupportedFlashModes(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Ljava/util/List;

    move-result-object v0

    .line 977
    new-instance v1, Lcom/sonyericsson/android/camera/ActionMode;

    .line 980
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, p1}, Lcom/sonyericsson/android/camera/ActionMode;-><init>(ZILcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    .line 981
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->getInstance()Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->getFlashOptions(Lcom/sonyericsson/android/camera/ActionMode;Ljava/util/List;)[Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    move-result-object p1

    return-object p1
.end method

.method private getFrontFlashOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/FrontFlash;
    .registers 6

    .line 991
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getSupportedFlashModes(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Ljava/util/List;

    move-result-object v0

    .line 993
    new-instance v1, Lcom/sonyericsson/android/camera/ActionMode;

    .line 996
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, p1}, Lcom/sonyericsson/android/camera/ActionMode;-><init>(ZILcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    .line 997
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->getInstance()Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->getFrontFlashOptions(Lcom/sonyericsson/android/camera/ActionMode;Ljava/util/List;)[Lcom/sonyericsson/android/camera/configuration/parameters/FrontFlash;

    move-result-object p1

    return-object p1
.end method

.method private getPhotoLightOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;
    .registers 6

    .line 1023
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getSupportedFlashModes(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Ljava/util/List;

    move-result-object v0

    .line 1024
    new-instance v1, Lcom/sonyericsson/android/camera/ActionMode;

    .line 1025
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3, p1}, Lcom/sonyericsson/android/camera/ActionMode;-><init>(ZILcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    .line 1026
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->getInstance()Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->getPhotoLightOptions(Lcom/sonyericsson/android/camera/ActionMode;Ljava/util/List;)[Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    move-result-object p1

    return-object p1
.end method

.method private getString(I)Ljava/lang/String;
    .registers 3

    .line 1134
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sonyericsson/cameracommon/utility/ResourceUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private setSelected(Ljava/lang/Object;Z)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    .line 167
    :cond_3
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getPrimaryShortcutViewMap()Ljava/util/Map;

    move-result-object v0

    .line 168
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_4b

    .line 170
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    const/4 v2, 0x1

    if-ne p2, v2, :cond_41

    .line 172
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_36

    .line 173
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, p2}, Landroid/view/View;->setSelected(Z)V

    goto :goto_17

    .line 175
    :cond_36
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    goto :goto_17

    .line 178
    :cond_41
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, p2}, Landroid/view/View;->setSelected(Z)V

    goto :goto_17

    :cond_4b
    return-void
.end method

.method private updateShortcutLayout()V
    .registers 8

    .line 101
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getAllPrimaryShortcutView()Ljava/util/List;

    move-result-object v0

    .line 102
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 103
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 104
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_d

    .line 105
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 109
    :cond_23
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_79

    const/4 v2, 0x0

    .line 111
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 113
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v4, 0x31

    .line 114
    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 115
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x1

    if-le v0, v2, :cond_79

    .line 118
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 119
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f07010a

    .line 118
    invoke-static {v3, v4, v5}, Lcom/sonyericsson/cameracommon/utility/ResourceUtil;->getDimensionPixelSize(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    .line 122
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getHeight()I

    move-result v4

    mul-int v5, v3, v0

    sub-int/2addr v4, v5

    sub-int/2addr v0, v2

    div-int/2addr v4, v0

    .line 125
    :goto_5c
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_79

    .line 126
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 128
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    add-int v6, v3, v4

    mul-int/2addr v6, v2

    .line 129
    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 130
    invoke-virtual {v0, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5c

    :cond_79
    return-void
.end method


# virtual methods
.method public disable()V
    .registers 3

    .line 267
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 268
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSemiAutoShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mBokehShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHighSensitivityFusionShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mVideoHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFacingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mContextualSettingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public getAllPrimaryShortcutView()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 382
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 384
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mContextualSettingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFacingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mVideoHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 387
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHighSensitivityFusionShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 389
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSemiAutoShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 390
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 391
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 392
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mBokehShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 393
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getPrimaryShortcutViewMap()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/sonyericsson/android/camera/configuration/UserSettingKey;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 357
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 359
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FLASH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FRONT_FLASH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->DISPLAY_FLASH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->PHOTO_LIGHT:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SEMI_AUTO:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSemiAutoShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SELF_TIMER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->BOKEH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mBokehShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ASPECT_RATIO:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FUSION_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHighSensitivityFusionShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mVideoHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FACING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFacingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SETTING_MENU:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mContextualSettingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public hide()V
    .registers 3

    .line 241
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->hide()V

    .line 242
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSemiAutoShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->hide()V

    .line 244
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSemiAutoShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->hide()V

    .line 246
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->hide()V

    .line 248
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mBokehShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->hide()V

    .line 250
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mBokehShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->hide()V

    .line 252
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHighSensitivityFusionShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->hide()V

    .line 254
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHighSensitivityFusionShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mVideoHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->hide()V

    .line 256
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mVideoHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFacingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->hide()V

    .line 258
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFacingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mContextualSettingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->hide()V

    .line 260
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mContextualSettingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCloseSettingDialog(Ljava/lang/Object;)V
    .registers 3

    const/4 v0, 0x0

    .line 153
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->setSelected(Ljava/lang/Object;Z)V

    return-void
.end method

.method protected onFinishInflate()V
    .registers 2

    .line 76
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f090123

    .line 78
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    const v0, 0x7f090128

    .line 79
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSemiAutoShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    const v0, 0x7f090126

    .line 80
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    const v0, 0x7f090127

    .line 81
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    const v0, 0x7f090121

    .line 82
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mBokehShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    const v0, 0x7f090120

    .line 83
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    const v0, 0x7f090124

    .line 84
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHighSensitivityFusionShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    const v0, 0x7f090129

    .line 85
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mVideoHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    const v0, 0x7f090122

    .line 86
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFacingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    const v0, 0x7f09008c

    .line 87
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mContextualSettingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .line 92
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->updateShortcutLayout()V

    .line 93
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    return-void
.end method

.method public onOpenSettingDialog(Ljava/lang/Object;)V
    .registers 3

    const/4 v0, 0x1

    .line 143
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->setSelected(Ljava/lang/Object;Z)V

    return-void
.end method

.method public setUiOrientation(I)V
    .registers 3

    .line 190
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setUiOrientation(I)V

    .line 191
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSemiAutoShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setUiOrientation(I)V

    .line 192
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setUiOrientation(I)V

    .line 193
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setUiOrientation(I)V

    .line 194
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mBokehShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setUiOrientation(I)V

    .line 195
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setUiOrientation(I)V

    .line 196
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHighSensitivityFusionShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setUiOrientation(I)V

    .line 197
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mVideoHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setUiOrientation(I)V

    .line 198
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFacingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setUiOrientation(I)V

    .line 199
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mContextualSettingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setUiOrientation(I)V

    return-void
.end method

.method public setViewFinderAccessor(Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;)V
    .registers 2

    .line 208
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mViewFinderAccessor:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;

    return-void
.end method

.method public show()V
    .registers 3

    .line 215
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->show()V

    .line 216
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mPrimaryShortcutClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSemiAutoShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->show()V

    .line 218
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSemiAutoShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mPrimaryShortcutClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->show()V

    .line 220
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mPrimaryShortcutClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->show()V

    .line 222
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mPrimaryShortcutClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mBokehShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->show()V

    .line 224
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mBokehShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mPrimaryShortcutClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->show()V

    .line 226
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mPrimaryShortcutClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHighSensitivityFusionShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->show()V

    .line 228
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHighSensitivityFusionShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mPrimaryShortcutClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mVideoHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->show()V

    .line 230
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mVideoHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mPrimaryShortcutClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFacingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->show()V

    .line 232
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFacingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mPrimaryShortcutClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mContextualSettingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->show()V

    .line 234
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mContextualSettingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mPrimaryShortcutClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public updatePrimaryShortcutIcon(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;I)V
    .registers 7

    .line 891
    sget-object v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup$2;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const v0, 0x7f080175

    const v1, 0x7f08016e

    const v2, 0x7f080173

    const v3, 0x7f08016d

    packed-switch p1, :pswitch_data_ae

    goto/16 :goto_ad

    .line 956
    :pswitch_19
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->isSelectable()Z

    move-result p1

    if-eqz p1, :cond_28

    .line 957
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mVideoHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    goto/16 :goto_ad

    .line 959
    :cond_28
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mVideoHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->getIconId()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    goto/16 :goto_ad

    .line 948
    :pswitch_35
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FUSION_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->isSelectable()Z

    move-result p1

    if-eqz p1, :cond_44

    .line 949
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHighSensitivityFusionShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    goto/16 :goto_ad

    .line 951
    :cond_44
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHighSensitivityFusionShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;->getIconId()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    goto :goto_ad

    .line 944
    :pswitch_50
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    goto :goto_ad

    :pswitch_56
    const p1, 0x7f080176

    if-ne p2, p1, :cond_64

    .line 936
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    const p2, 0x7f080177

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    goto :goto_ad

    .line 939
    :cond_64
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    goto :goto_ad

    .line 931
    :pswitch_6a
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mBokehShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    goto :goto_ad

    .line 927
    :pswitch_70
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSemiAutoShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    goto :goto_ad

    .line 923
    :pswitch_76
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    goto :goto_ad

    :pswitch_7c
    if-ne p2, v2, :cond_84

    .line 915
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    goto :goto_ad

    .line 918
    :cond_84
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    goto :goto_ad

    :pswitch_8a
    if-ne p2, v3, :cond_92

    .line 907
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    goto :goto_ad

    .line 910
    :cond_92
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    goto :goto_ad

    :pswitch_98
    if-ne p2, v3, :cond_a0

    .line 896
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    goto :goto_ad

    :cond_a0
    if-ne p2, v2, :cond_a8

    .line 899
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    goto :goto_ad

    .line 902
    :cond_a8
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    :goto_ad
    return-void

    :pswitch_data_ae
    .packed-switch 0x1
        :pswitch_98
        :pswitch_98
        :pswitch_8a
        :pswitch_7c
        :pswitch_76
        :pswitch_70
        :pswitch_6a
        :pswitch_56
        :pswitch_50
        :pswitch_35
        :pswitch_19
    .end packed-switch
.end method

.method public updatePrimaryShortcutIcons(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/setting/UserSettings;Z)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 407
    iget-object v2, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mContextualSettingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 409
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v1, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v2

    .line 410
    sget-object v4, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SELF_TIMER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v1, v4}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v4

    .line 411
    sget-object v5, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ASPECT_RATIO:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v1, v5}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v5

    .line 412
    sget-object v6, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FUSION_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v1, v6}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v6

    .line 413
    sget-object v7, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v1, v7}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v7

    .line 415
    sget-object v8, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup$2;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v9

    aget v8, v8, v9

    const v11, 0x7f0f0063

    const v13, 0x7f0f0089

    const v14, 0x7f080175

    const v15, 0x7f08016e

    const v9, 0x7f0f0064

    const v12, 0x7f0f0087

    const/4 v10, 0x0

    packed-switch v8, :pswitch_data_706

    goto/16 :goto_705

    .line 849
    :pswitch_48
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 851
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isAwbAbCompensationSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 852
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSemiAutoShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_62

    .line 854
    :cond_5d
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSemiAutoShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 856
    :goto_62
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    if-eqz v4, :cond_78

    .line 858
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 859
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v4}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getIconId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    goto :goto_7d

    .line 861
    :cond_78
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 863
    :goto_7d
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mBokehShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    if-eqz v5, :cond_93

    .line 865
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v5}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getIconId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    .line 866
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_98

    .line 868
    :cond_93
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 870
    :goto_98
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHighSensitivityFusionShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 871
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mVideoHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 872
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isFrontCameraSupported()Z

    move-result v1

    if-eqz v1, :cond_705

    .line 873
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFacingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    .line 874
    invoke-direct {v0, v13}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 873
    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 875
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFacingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto/16 :goto_705

    .line 819
    :pswitch_b8
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 820
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isAwbAbCompensationSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v1

    if-eqz v1, :cond_cd

    .line 821
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSemiAutoShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_d2

    .line 823
    :cond_cd
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSemiAutoShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 825
    :goto_d2
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 826
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mBokehShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    if-eqz v4, :cond_ed

    .line 828
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v4}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getIconId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    .line 829
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_f2

    .line 831
    :cond_ed
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    :goto_f2
    if-eqz v5, :cond_103

    .line 834
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v5}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getIconId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    .line 835
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_108

    .line 837
    :cond_103
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 839
    :goto_108
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHighSensitivityFusionShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 840
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mVideoHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 841
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isFrontCameraSupported()Z

    move-result v1

    if-eqz v1, :cond_705

    .line 842
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFacingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    .line 843
    invoke-direct {v0, v12}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 842
    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 844
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFacingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto/16 :goto_705

    .line 788
    :pswitch_128
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->PHOTO_LIGHT:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v1, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    .line 790
    invoke-direct/range {p0 .. p1}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getPhotoLightOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    move-result-object v2

    check-cast v2, [Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    .line 789
    invoke-direct {v0, v2, v1}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getCurrentPhotoLightSetting([Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;)Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    move-result-object v1

    if-eqz v1, :cond_15e

    .line 792
    iget-object v2, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    .line 793
    invoke-direct {v0, v11}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 792
    invoke-virtual {v2, v4}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 794
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    if-ne v1, v2, :cond_14f

    .line 795
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v14}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    goto :goto_158

    .line 798
    :cond_14f
    iget-object v2, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;->getIconId()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    .line 800
    :goto_158
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_163

    .line 802
    :cond_15e
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 804
    :goto_163
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isAwbAbCompensationSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v1

    if-eqz v1, :cond_173

    .line 805
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSemiAutoShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_178

    .line 807
    :cond_173
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSemiAutoShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 809
    :goto_178
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 810
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 811
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mBokehShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 812
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 813
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHighSensitivityFusionShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 814
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mVideoHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 815
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFacingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto/16 :goto_705

    .line 767
    :pswitch_19d
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 769
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isAwbAbCompensationSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v1

    if-eqz v1, :cond_1b2

    .line 770
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSemiAutoShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_1b7

    .line 772
    :cond_1b2
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSemiAutoShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 774
    :goto_1b7
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 775
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 776
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mBokehShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 777
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 778
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHighSensitivityFusionShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 779
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mVideoHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 780
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isFrontCameraSupported()Z

    move-result v1

    if-eqz v1, :cond_705

    .line 781
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFacingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    .line 782
    invoke-direct {v0, v13}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 781
    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 783
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFacingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto/16 :goto_705

    .line 700
    :pswitch_1eb
    sget-object v6, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->DISPLAY_FLASH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v1, v6}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;

    .line 702
    invoke-direct/range {p0 .. p1}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getDisplayFlashOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;

    move-result-object v6

    check-cast v6, [Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;

    .line 701
    invoke-direct {v0, v6, v1}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getCurrentDisplayFlashSetting([Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;)Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;

    move-result-object v1

    if-eqz v1, :cond_221

    .line 704
    iget-object v6, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    .line 705
    invoke-direct {v0, v9}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 704
    invoke-virtual {v6, v7}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 706
    sget-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;->DISPLAY_ON:Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;

    if-ne v1, v6, :cond_212

    .line 707
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v15}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    goto :goto_21b

    .line 710
    :cond_212
    iget-object v6, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;->getIconId()I

    move-result v1

    invoke-virtual {v6, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    .line 712
    :goto_21b
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_226

    .line 714
    :cond_221
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 717
    :goto_226
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isAwbAbCompensationSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v1

    if-eqz v1, :cond_236

    .line 718
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSemiAutoShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_23b

    .line 720
    :cond_236
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSemiAutoShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 722
    :goto_23b
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    if-eqz v4, :cond_251

    .line 724
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 725
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v4}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getIconId()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    goto :goto_256

    .line 727
    :cond_251
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 729
    :goto_256
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mBokehShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 730
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isAutoHDRSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v1

    if-eqz v1, :cond_2ac

    if-eqz v2, :cond_2a1

    .line 732
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    const v4, 0x7f0f0228

    .line 733
    invoke-direct {v0, v4}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 732
    invoke-virtual {v1, v4}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 734
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;->HDR_ON:Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;

    if-ne v2, v1, :cond_280

    .line 735
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    const v2, 0x7f080177

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    goto :goto_296

    .line 737
    :cond_280
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;->HDR_AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;

    if-ne v2, v1, :cond_28d

    .line 738
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    const v2, 0x7f080178

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    goto :goto_296

    .line 741
    :cond_28d
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getIconId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    .line 743
    :goto_296
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 744
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_2c2

    .line 746
    :cond_2a1
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 747
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_2c2

    :cond_2ac
    if-eqz v5, :cond_2bd

    .line 751
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v5}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getIconId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    .line 752
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_2c2

    .line 754
    :cond_2bd
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 758
    :goto_2c2
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHighSensitivityFusionShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 759
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mVideoHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 760
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isFrontCameraSupported()Z

    move-result v1

    if-eqz v1, :cond_705

    .line 761
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFacingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    .line 762
    invoke-direct {v0, v13}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 761
    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 763
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFacingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto/16 :goto_705

    .line 653
    :pswitch_2e2
    sget-object v6, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->DISPLAY_FLASH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v1, v6}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;

    .line 656
    invoke-direct/range {p0 .. p1}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getDisplayFlashOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;

    move-result-object v6

    check-cast v6, [Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;

    .line 655
    invoke-direct {v0, v6, v1}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getCurrentDisplayFlashSetting([Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;)Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;

    move-result-object v1

    if-eqz v1, :cond_318

    .line 658
    iget-object v6, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    .line 659
    invoke-direct {v0, v9}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 658
    invoke-virtual {v6, v7}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 660
    sget-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;->DISPLAY_ON:Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;

    if-ne v1, v6, :cond_309

    .line 661
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v15}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    goto :goto_312

    .line 664
    :cond_309
    iget-object v6, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;->getIconId()I

    move-result v1

    invoke-virtual {v6, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    .line 666
    :goto_312
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_31d

    .line 668
    :cond_318
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 671
    :goto_31d
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSemiAutoShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    if-eqz v2, :cond_333

    .line 673
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getIconId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    .line 674
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_338

    .line 676
    :cond_333
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    :goto_338
    if-eqz v4, :cond_349

    .line 679
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v4}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getIconId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    .line 680
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_34e

    .line 682
    :cond_349
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 684
    :goto_34e
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mBokehShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    if-eqz v5, :cond_364

    .line 686
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v5}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getIconId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    .line 687
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_369

    .line 689
    :cond_364
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 691
    :goto_369
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHighSensitivityFusionShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 692
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mVideoHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 693
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isFrontCameraSupported()Z

    move-result v1

    if-eqz v1, :cond_705

    .line 694
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFacingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    .line 695
    invoke-direct {v0, v13}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 694
    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 696
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFacingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto/16 :goto_705

    .line 633
    :pswitch_389
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 634
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isAwbAbCompensationSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v1

    if-eqz v1, :cond_39e

    .line 635
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSemiAutoShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_3a3

    .line 637
    :cond_39e
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSemiAutoShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 639
    :goto_3a3
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 640
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 641
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mBokehShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 642
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 643
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mVideoHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 644
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHighSensitivityFusionShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 645
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isFrontCameraSupported()Z

    move-result v1

    if-eqz v1, :cond_705

    .line 646
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFacingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    .line 647
    invoke-direct {v0, v12}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 646
    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 648
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFacingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto/16 :goto_705

    .line 578
    :pswitch_3d7
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->PHOTO_LIGHT:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v1, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    .line 580
    invoke-direct/range {p0 .. p1}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getPhotoLightOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    move-result-object v2

    check-cast v2, [Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    .line 579
    invoke-direct {v0, v2, v1}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getCurrentPhotoLightSetting([Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;)Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    move-result-object v1

    if-eqz v1, :cond_40d

    .line 582
    iget-object v2, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    .line 583
    invoke-direct {v0, v11}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 582
    invoke-virtual {v2, v4}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 584
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    if-ne v1, v2, :cond_3fe

    .line 585
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v14}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    goto :goto_407

    .line 588
    :cond_3fe
    iget-object v2, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;->getIconId()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    .line 590
    :goto_407
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_412

    .line 592
    :cond_40d
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 594
    :goto_412
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isAwbAbCompensationSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v1

    if-eqz v1, :cond_422

    .line 595
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSemiAutoShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_427

    .line 597
    :cond_422
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSemiAutoShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 599
    :goto_427
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 600
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 601
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mBokehShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 602
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    if-eqz v6, :cond_46a

    .line 604
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isHighSensitivityFusionSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v1

    if-eqz v1, :cond_46a

    .line 605
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FUSION_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->isSelectable()Z

    move-result v1

    if-eqz v1, :cond_459

    .line 606
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHighSensitivityFusionShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    .line 607
    invoke-interface {v6}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getIconId()I

    move-result v2

    .line 606
    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    goto :goto_464

    .line 609
    :cond_459
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHighSensitivityFusionShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;->getIconId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    .line 611
    :goto_464
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHighSensitivityFusionShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_46f

    .line 613
    :cond_46a
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHighSensitivityFusionShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    :goto_46f
    if-nez p3, :cond_4a0

    if-eqz v7, :cond_4a0

    .line 616
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isVideoHdrSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v1

    if-eqz v1, :cond_4a0

    .line 617
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->isSelectable()Z

    move-result v1

    if-eqz v1, :cond_48f

    .line 618
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mVideoHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v7}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getIconId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    goto :goto_49a

    .line 620
    :cond_48f
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mVideoHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->getIconId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    .line 622
    :goto_49a
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mVideoHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_4a5

    .line 624
    :cond_4a0
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mVideoHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 626
    :goto_4a5
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isFrontCameraSupported()Z

    move-result v1

    if-eqz v1, :cond_705

    .line 627
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFacingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    .line 628
    invoke-direct {v0, v12}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 627
    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 629
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFacingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto/16 :goto_705

    .line 548
    :pswitch_4bb
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 549
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isAwbAbCompensationSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v1

    if-eqz v1, :cond_4d0

    .line 550
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSemiAutoShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_4d5

    .line 552
    :cond_4d0
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSemiAutoShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 554
    :goto_4d5
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    if-eqz v4, :cond_4eb

    .line 556
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v4}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getIconId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    .line 557
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_4f0

    .line 559
    :cond_4eb
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 561
    :goto_4f0
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mBokehShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    if-eqz v5, :cond_506

    .line 563
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v5}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getIconId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    .line 564
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_50b

    .line 566
    :cond_506
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 568
    :goto_50b
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHighSensitivityFusionShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 569
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mVideoHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 570
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isFrontCameraSupported()Z

    move-result v1

    if-eqz v1, :cond_705

    .line 571
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFacingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    .line 572
    invoke-direct {v0, v12}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 571
    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 573
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFacingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto/16 :goto_705

    .line 472
    :pswitch_52b
    sget-object v6, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FLASH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v1, v6}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    .line 473
    invoke-direct/range {p0 .. p1}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getFlashOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    move-result-object v6

    check-cast v6, [Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    invoke-direct {v0, v6, v1}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getCurrentFlashSetting([Lcom/sonyericsson/android/camera/configuration/parameters/Flash;Lcom/sonyericsson/android/camera/configuration/parameters/Flash;)Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    move-result-object v1

    if-eqz v1, :cond_56b

    .line 475
    iget-object v6, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    .line 476
    invoke-direct {v0, v9}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 475
    invoke-virtual {v6, v7}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 477
    sget-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    if-ne v1, v6, :cond_552

    .line 478
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v15}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    goto :goto_565

    .line 480
    :cond_552
    sget-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->LED_ON:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    if-ne v1, v6, :cond_55c

    .line 481
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v14}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    goto :goto_565

    .line 484
    :cond_55c
    iget-object v6, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->getIconId()I

    move-result v1

    invoke-virtual {v6, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    .line 486
    :goto_565
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_570

    .line 488
    :cond_56b
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 490
    :goto_570
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isAwbAbCompensationSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v1

    if-eqz v1, :cond_580

    .line 491
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSemiAutoShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_585

    .line 493
    :cond_580
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSemiAutoShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 495
    :goto_585
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 497
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isBokehSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v1

    if-eqz v1, :cond_5a7

    .line 498
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mBokehShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    const v4, 0x7f0800f1

    invoke-virtual {v1, v4}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    .line 499
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mBokehShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 500
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_5c2

    .line 502
    :cond_5a7
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mBokehShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    if-eqz v4, :cond_5bd

    .line 504
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v4}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getIconId()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    .line 505
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_5c2

    .line 507
    :cond_5bd
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 511
    :goto_5c2
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isAutoHDRSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v1

    if-eqz v1, :cond_613

    if-eqz v2, :cond_608

    .line 513
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    const v4, 0x7f0f0228

    .line 514
    invoke-direct {v0, v4}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 513
    invoke-virtual {v1, v4}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 515
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;->HDR_ON:Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;

    if-ne v2, v1, :cond_5e7

    .line 516
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    const v2, 0x7f080177

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    goto :goto_5fd

    .line 518
    :cond_5e7
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;->HDR_AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;

    if-ne v2, v1, :cond_5f4

    .line 519
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    const v2, 0x7f080178

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    goto :goto_5fd

    .line 522
    :cond_5f4
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getIconId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    .line 524
    :goto_5fd
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 525
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_629

    .line 527
    :cond_608
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 528
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_629

    :cond_613
    if-eqz v5, :cond_624

    .line 532
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v5}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getIconId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    .line 533
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_629

    .line 535
    :cond_624
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 538
    :goto_629
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHighSensitivityFusionShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 539
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mVideoHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 540
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isFrontCameraSupported()Z

    move-result v1

    if-eqz v1, :cond_705

    .line 541
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFacingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    .line 542
    invoke-direct {v0, v12}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 541
    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 543
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFacingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto/16 :goto_705

    .line 417
    :pswitch_649
    sget-object v6, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FLASH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v1, v6}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    .line 418
    invoke-direct/range {p0 .. p1}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getFlashOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    move-result-object v6

    check-cast v6, [Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    invoke-direct {v0, v6, v1}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getCurrentFlashSetting([Lcom/sonyericsson/android/camera/configuration/parameters/Flash;Lcom/sonyericsson/android/camera/configuration/parameters/Flash;)Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    move-result-object v1

    if-eqz v1, :cond_689

    .line 420
    iget-object v6, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    .line 421
    invoke-direct {v0, v9}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 420
    invoke-virtual {v6, v7}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 422
    sget-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    if-ne v1, v6, :cond_670

    .line 423
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v15}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    goto :goto_683

    .line 425
    :cond_670
    sget-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->LED_ON:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    if-ne v1, v6, :cond_67a

    .line 426
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v14}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    goto :goto_683

    .line 429
    :cond_67a
    iget-object v6, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->getIconId()I

    move-result v1

    invoke-virtual {v6, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    .line 431
    :goto_683
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_68e

    .line 433
    :cond_689
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 436
    :goto_68e
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSemiAutoShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    if-eqz v2, :cond_6b1

    .line 438
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;->HDR_ON:Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;

    if-ne v2, v1, :cond_6a2

    .line 439
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    const v2, 0x7f080177

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    goto :goto_6ab

    .line 442
    :cond_6a2
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getIconId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    .line 444
    :goto_6ab
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_6b6

    .line 446
    :cond_6b1
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    :goto_6b6
    if-eqz v4, :cond_6c7

    .line 450
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v4}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getIconId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    .line 451
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_6cc

    .line 453
    :cond_6c7
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    :goto_6cc
    if-eqz v5, :cond_6dd

    .line 456
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v5}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getIconId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    .line 457
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_6e2

    .line 459
    :cond_6dd
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 461
    :goto_6e2
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mBokehShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 462
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHighSensitivityFusionShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 463
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mVideoHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 464
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isFrontCameraSupported()Z

    move-result v1

    if-eqz v1, :cond_705

    .line 465
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFacingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    .line 466
    invoke-direct {v0, v12}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 465
    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 467
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFacingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    :cond_705
    :goto_705
    return-void

    :pswitch_data_706
    .packed-switch 0x1
        :pswitch_649
        :pswitch_52b
        :pswitch_4bb
        :pswitch_3d7
        :pswitch_389
        :pswitch_2e2
        :pswitch_1eb
        :pswitch_19d
        :pswitch_128
        :pswitch_b8
        :pswitch_48
    .end packed-switch
.end method
