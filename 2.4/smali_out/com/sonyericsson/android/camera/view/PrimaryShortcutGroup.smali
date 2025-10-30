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

    .line 68
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 279
    new-instance p1, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup$1;

    invoke-direct {p1, p0}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup$1;-><init>(Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mPrimaryShortcutClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;
    .registers 1

    .line 50
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

    .line 947
    :cond_7
    array-length v1, p1

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_21

    aget-object v3, p1, v2

    if-eqz v3, :cond_1e

    .line 948
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

    .line 922
    :cond_7
    array-length v1, p1

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_21

    aget-object v3, p1, v2

    if-eqz v3, :cond_1e

    .line 923
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

.method private getCurrentPhotoLightSetting([Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;)Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;
    .registers 9

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    if-nez p2, :cond_7

    return-object v0

    .line 972
    :cond_7
    array-length v1, p1

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_21

    aget-object v3, p1, v2

    if-eqz v3, :cond_1e

    .line 974
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

    .line 884
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getSupportedFlashModes(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Ljava/util/List;

    move-result-object v0

    .line 886
    new-instance v1, Lcom/sonyericsson/android/camera/ActionMode;

    .line 889
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, p1}, Lcom/sonyericsson/android/camera/ActionMode;-><init>(ZILcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    .line 890
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->getInstance()Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->getDisplayFlashOptions(Lcom/sonyericsson/android/camera/ActionMode;Ljava/util/List;)[Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;

    move-result-object p1

    return-object p1
.end method

.method private getFlashOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/Flash;
    .registers 6

    .line 868
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getSupportedFlashModes(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Ljava/util/List;

    move-result-object v0

    .line 870
    new-instance v1, Lcom/sonyericsson/android/camera/ActionMode;

    .line 873
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, p1}, Lcom/sonyericsson/android/camera/ActionMode;-><init>(ZILcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    .line 874
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->getInstance()Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->getFlashOptions(Lcom/sonyericsson/android/camera/ActionMode;Ljava/util/List;)[Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    move-result-object p1

    return-object p1
.end method

.method private getPhotoLightOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;
    .registers 6

    .line 900
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getSupportedFlashModes(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Ljava/util/List;

    move-result-object v0

    .line 901
    new-instance v1, Lcom/sonyericsson/android/camera/ActionMode;

    .line 902
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3, p1}, Lcom/sonyericsson/android/camera/ActionMode;-><init>(ZILcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    .line 903
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->getInstance()Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->getPhotoLightOptions(Lcom/sonyericsson/android/camera/ActionMode;Ljava/util/List;)[Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    move-result-object p1

    return-object p1
.end method

.method private getString(I)Ljava/lang/String;
    .registers 3

    .line 987
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

    .line 164
    :cond_3
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getPrimaryShortcutViewMap()Ljava/util/Map;

    move-result-object v0

    .line 165
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_4b

    .line 167
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

    .line 169
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_36

    .line 170
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, p2}, Landroid/view/View;->setSelected(Z)V

    goto :goto_17

    .line 172
    :cond_36
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    goto :goto_17

    .line 175
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

    .line 98
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getAllPrimaryShortcutView()Ljava/util/List;

    move-result-object v0

    .line 99
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 100
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

    .line 101
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_d

    .line 102
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 106
    :cond_23
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_79

    const/4 v2, 0x0

    .line 108
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 110
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v4, 0x31

    .line 111
    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 112
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x1

    if-le v0, v2, :cond_79

    .line 115
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 116
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0700fd

    .line 115
    invoke-static {v3, v4, v5}, Lcom/sonyericsson/cameracommon/utility/ResourceUtil;->getDimensionPixelSize(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    .line 119
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getHeight()I

    move-result v4

    mul-int v5, v3, v0

    sub-int/2addr v4, v5

    sub-int/2addr v0, v2

    div-int/2addr v4, v0

    .line 122
    :goto_5c
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_79

    .line 123
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 125
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    add-int v6, v3, v4

    mul-int/2addr v6, v2

    .line 126
    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 127
    invoke-virtual {v0, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5c

    :cond_79
    return-void
.end method


# virtual methods
.method public disable()V
    .registers 3

    .line 264
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSemiAutoShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 268
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mBokehShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHighSensitivityFusionShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mVideoHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFacingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
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

    .line 392
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 394
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mContextualSettingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 395
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFacingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 396
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mVideoHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 397
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHighSensitivityFusionShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 398
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 399
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSemiAutoShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 400
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 401
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 402
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mBokehShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 403
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

    .line 368
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 370
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FLASH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->DISPLAY_FLASH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->PHOTO_LIGHT:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SEMI_AUTO:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSemiAutoShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SELF_TIMER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->BOKEH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mBokehShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ASPECT_RATIO:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FUSION_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHighSensitivityFusionShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mVideoHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FACING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFacingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SETTING_MENU:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mContextualSettingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public hide()V
    .registers 3

    .line 238
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->hide()V

    .line 239
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSemiAutoShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->hide()V

    .line 241
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSemiAutoShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->hide()V

    .line 243
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->hide()V

    .line 245
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mBokehShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->hide()V

    .line 247
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mBokehShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->hide()V

    .line 249
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHighSensitivityFusionShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->hide()V

    .line 251
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHighSensitivityFusionShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mVideoHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->hide()V

    .line 253
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mVideoHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFacingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->hide()V

    .line 255
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFacingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mContextualSettingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->hide()V

    .line 257
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mContextualSettingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCloseSettingDialog(Ljava/lang/Object;)V
    .registers 3

    const/4 v0, 0x0

    .line 150
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->setSelected(Ljava/lang/Object;Z)V

    return-void
.end method

.method protected onFinishInflate()V
    .registers 2

    .line 73
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f090132

    .line 75
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    const v0, 0x7f090137

    .line 76
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSemiAutoShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    const v0, 0x7f090135

    .line 77
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    const v0, 0x7f090136

    .line 78
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    const v0, 0x7f090130

    .line 79
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mBokehShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    const v0, 0x7f09012f

    .line 80
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    const v0, 0x7f090133

    .line 81
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHighSensitivityFusionShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    const v0, 0x7f090138

    .line 82
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mVideoHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    const v0, 0x7f090131

    .line 83
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFacingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    const v0, 0x7f09008a

    .line 84
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mContextualSettingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .line 89
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->updateShortcutLayout()V

    .line 90
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    return-void
.end method

.method public onOpenSettingDialog(Ljava/lang/Object;)V
    .registers 3

    const/4 v0, 0x1

    .line 140
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->setSelected(Ljava/lang/Object;Z)V

    return-void
.end method

.method public setUiOrientation(I)V
    .registers 3

    .line 187
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setUiOrientation(I)V

    .line 188
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSemiAutoShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setUiOrientation(I)V

    .line 189
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setUiOrientation(I)V

    .line 190
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setUiOrientation(I)V

    .line 191
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mBokehShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setUiOrientation(I)V

    .line 192
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setUiOrientation(I)V

    .line 193
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHighSensitivityFusionShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setUiOrientation(I)V

    .line 194
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mVideoHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setUiOrientation(I)V

    .line 195
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFacingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setUiOrientation(I)V

    .line 196
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mContextualSettingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setUiOrientation(I)V

    return-void
.end method

.method public setViewFinderAccessor(Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;)V
    .registers 2

    .line 205
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mViewFinderAccessor:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;

    return-void
.end method

.method public show()V
    .registers 3

    .line 212
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->show()V

    .line 213
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mPrimaryShortcutClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSemiAutoShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->show()V

    .line 215
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSemiAutoShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mPrimaryShortcutClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->show()V

    .line 217
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mPrimaryShortcutClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->show()V

    .line 219
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mPrimaryShortcutClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mBokehShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->show()V

    .line 221
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mBokehShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mPrimaryShortcutClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->show()V

    .line 223
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mPrimaryShortcutClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHighSensitivityFusionShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->show()V

    .line 225
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHighSensitivityFusionShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mPrimaryShortcutClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mVideoHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->show()V

    .line 227
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mVideoHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mPrimaryShortcutClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFacingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->show()V

    .line 229
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFacingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mPrimaryShortcutClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mContextualSettingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->show()V

    .line 231
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mContextualSettingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mPrimaryShortcutClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public updatePrimaryShortcutIcon(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;I)V
    .registers 7

    .line 790
    sget-object v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup$2;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const v0, 0x7f080187

    const v1, 0x7f080181

    const v2, 0x7f080185

    const v3, 0x7f080180

    packed-switch p1, :pswitch_data_a0

    goto/16 :goto_9e

    .line 849
    :pswitch_19
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->isSelectable()Z

    move-result p1

    if-eqz p1, :cond_28

    .line 850
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mVideoHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    goto/16 :goto_9e

    .line 852
    :cond_28
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mVideoHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->getIconId()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    goto/16 :goto_9e

    .line 841
    :pswitch_35
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FUSION_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->isSelectable()Z

    move-result p1

    if-eqz p1, :cond_43

    .line 842
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHighSensitivityFusionShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    goto :goto_9e

    .line 844
    :cond_43
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHighSensitivityFusionShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;->getIconId()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    goto :goto_9e

    .line 837
    :pswitch_4f
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    goto :goto_9e

    .line 833
    :pswitch_55
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    goto :goto_9e

    .line 829
    :pswitch_5b
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mBokehShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    goto :goto_9e

    .line 825
    :pswitch_61
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSemiAutoShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    goto :goto_9e

    .line 821
    :pswitch_67
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    goto :goto_9e

    :pswitch_6d
    if-ne p2, v2, :cond_75

    .line 813
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    goto :goto_9e

    .line 816
    :cond_75
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    goto :goto_9e

    :pswitch_7b
    if-ne p2, v3, :cond_83

    .line 805
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    goto :goto_9e

    .line 808
    :cond_83
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    goto :goto_9e

    :pswitch_89
    if-ne p2, v3, :cond_91

    .line 794
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    goto :goto_9e

    :cond_91
    if-ne p2, v2, :cond_99

    .line 797
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    goto :goto_9e

    .line 800
    :cond_99
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    :goto_9e
    return-void

    nop

    :pswitch_data_a0
    .packed-switch 0x1
        :pswitch_89
        :pswitch_7b
        :pswitch_6d
        :pswitch_67
        :pswitch_61
        :pswitch_5b
        :pswitch_55
        :pswitch_4f
        :pswitch_35
        :pswitch_19
    .end packed-switch
.end method

.method public updatePrimaryShortcutIcons(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/setting/UserSettings;Z)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 417
    iget-object v2, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mContextualSettingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 419
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v1, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v2

    .line 420
    sget-object v4, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SELF_TIMER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v1, v4}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v4

    .line 421
    sget-object v5, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ASPECT_RATIO:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v1, v5}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v5

    .line 422
    sget-object v6, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FUSION_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v1, v6}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v6

    .line 423
    sget-object v7, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v1, v7}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v7

    .line 425
    sget-object v8, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup$2;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v9

    aget v8, v8, v9

    const v9, 0x7f0e0063

    const v10, 0x7f0e0089

    const v11, 0x7f080187

    const v12, 0x7f080181

    const v13, 0x7f0e0064

    const v14, 0x7f0e0087

    const/4 v15, 0x0

    packed-switch v8, :pswitch_data_578

    goto/16 :goto_576

    .line 748
    :pswitch_48
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->PHOTO_LIGHT:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v1, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    .line 750
    invoke-direct/range {p0 .. p1}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getPhotoLightOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    move-result-object v2

    check-cast v2, [Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    .line 749
    invoke-direct {v0, v2, v1}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getCurrentPhotoLightSetting([Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;)Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    move-result-object v1

    if-eqz v1, :cond_7e

    .line 752
    iget-object v2, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    .line 753
    invoke-direct {v0, v9}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 752
    invoke-virtual {v2, v4}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 754
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    if-ne v1, v2, :cond_6f

    .line 755
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v11}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    goto :goto_78

    .line 758
    :cond_6f
    iget-object v2, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;->getIconId()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    .line 760
    :goto_78
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_83

    .line 762
    :cond_7e
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v15}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 764
    :goto_83
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isAwbAbCompensationSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v1

    if-eqz v1, :cond_93

    .line 765
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSemiAutoShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_98

    .line 767
    :cond_93
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSemiAutoShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v15}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 769
    :goto_98
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v15}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 770
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v15}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 771
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mBokehShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v15}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 772
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v15}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 773
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHighSensitivityFusionShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v15}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 774
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mVideoHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v15}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 775
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFacingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v15}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto/16 :goto_576

    .line 728
    :pswitch_bd
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v15}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 729
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isAwbAbCompensationSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v1

    if-eqz v1, :cond_d2

    .line 730
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSemiAutoShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_d7

    .line 732
    :cond_d2
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSemiAutoShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v15}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 734
    :goto_d7
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v15}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 735
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v15}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 736
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mBokehShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v15}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 737
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v15}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 738
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHighSensitivityFusionShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v15}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 739
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mVideoHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v15}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 740
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isFrontCameraSupported()Z

    move-result v1

    if-eqz v1, :cond_576

    .line 741
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFacingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    .line 742
    invoke-direct {v0, v10}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 741
    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 743
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFacingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto/16 :goto_576

    .line 683
    :pswitch_10b
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->DISPLAY_FLASH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v1, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;

    .line 685
    invoke-direct/range {p0 .. p1}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getDisplayFlashOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;

    move-result-object v2

    check-cast v2, [Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;

    .line 684
    invoke-direct {v0, v2, v1}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getCurrentDisplayFlashSetting([Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;)Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;

    move-result-object v1

    if-eqz v1, :cond_141

    .line 687
    iget-object v2, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    .line 688
    invoke-direct {v0, v13}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 687
    invoke-virtual {v2, v6}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 689
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;->DISPLAY_ON:Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;

    if-ne v1, v2, :cond_132

    .line 690
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v12}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    goto :goto_13b

    .line 693
    :cond_132
    iget-object v2, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;->getIconId()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    .line 695
    :goto_13b
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_146

    .line 697
    :cond_141
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v15}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 699
    :goto_146
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isAwbAbCompensationSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v1

    if-eqz v1, :cond_156

    .line 700
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSemiAutoShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_15b

    .line 702
    :cond_156
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSemiAutoShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v15}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 704
    :goto_15b
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v15}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    if-eqz v4, :cond_171

    .line 706
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 707
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v4}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getIconId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    goto :goto_176

    .line 709
    :cond_171
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v15}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 711
    :goto_176
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mBokehShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v15}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    if-eqz v5, :cond_18c

    .line 713
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v5}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getIconId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    .line 714
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_191

    .line 716
    :cond_18c
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v15}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 718
    :goto_191
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHighSensitivityFusionShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v15}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 719
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mVideoHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v15}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 720
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isFrontCameraSupported()Z

    move-result v1

    if-eqz v1, :cond_576

    .line 721
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFacingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    .line 722
    invoke-direct {v0, v10}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 721
    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 723
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFacingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto/16 :goto_576

    .line 636
    :pswitch_1b1
    sget-object v6, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->DISPLAY_FLASH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v1, v6}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;

    .line 639
    invoke-direct/range {p0 .. p1}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getDisplayFlashOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;

    move-result-object v6

    check-cast v6, [Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;

    .line 638
    invoke-direct {v0, v6, v1}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getCurrentDisplayFlashSetting([Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;)Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;

    move-result-object v1

    if-eqz v1, :cond_1e7

    .line 641
    iget-object v6, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    .line 642
    invoke-direct {v0, v13}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 641
    invoke-virtual {v6, v7}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 643
    sget-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;->DISPLAY_ON:Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;

    if-ne v1, v6, :cond_1d8

    .line 644
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v12}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    goto :goto_1e1

    .line 647
    :cond_1d8
    iget-object v6, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;->getIconId()I

    move-result v1

    invoke-virtual {v6, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    .line 649
    :goto_1e1
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_1ec

    .line 651
    :cond_1e7
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v15}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 653
    :goto_1ec
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSemiAutoShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v15}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    if-eqz v2, :cond_202

    .line 655
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getIconId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    .line 656
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_207

    .line 658
    :cond_202
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v15}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    :goto_207
    if-eqz v4, :cond_218

    .line 661
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v4}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getIconId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    .line 662
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_21d

    .line 664
    :cond_218
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v15}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 666
    :goto_21d
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mBokehShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v15}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    if-eqz v5, :cond_233

    .line 668
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v5}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getIconId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    .line 669
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_238

    .line 671
    :cond_233
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v15}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 673
    :goto_238
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHighSensitivityFusionShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v15}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 674
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mVideoHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v15}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 675
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isFrontCameraSupported()Z

    move-result v1

    if-eqz v1, :cond_576

    .line 676
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFacingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    .line 677
    invoke-direct {v0, v10}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 676
    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 678
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFacingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto/16 :goto_576

    .line 616
    :pswitch_258
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v15}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 617
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isAwbAbCompensationSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v1

    if-eqz v1, :cond_26d

    .line 618
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSemiAutoShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_272

    .line 620
    :cond_26d
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSemiAutoShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v15}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 622
    :goto_272
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v15}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 623
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v15}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 624
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mBokehShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v15}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 625
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v15}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 626
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mVideoHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v15}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 627
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHighSensitivityFusionShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v15}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 628
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isFrontCameraSupported()Z

    move-result v1

    if-eqz v1, :cond_576

    .line 629
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFacingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    .line 630
    invoke-direct {v0, v14}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 629
    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 631
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFacingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto/16 :goto_576

    .line 560
    :pswitch_2a6
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->PHOTO_LIGHT:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v1, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    .line 562
    invoke-direct/range {p0 .. p1}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getPhotoLightOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    move-result-object v2

    check-cast v2, [Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    .line 561
    invoke-direct {v0, v2, v1}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getCurrentPhotoLightSetting([Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;)Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    move-result-object v1

    if-eqz v1, :cond_2dc

    .line 564
    iget-object v2, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    .line 565
    invoke-direct {v0, v9}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 564
    invoke-virtual {v2, v4}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 566
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    if-ne v1, v2, :cond_2cd

    .line 567
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v11}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    goto :goto_2d6

    .line 570
    :cond_2cd
    iget-object v2, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;->getIconId()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    .line 572
    :goto_2d6
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_2e1

    .line 574
    :cond_2dc
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v15}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 576
    :goto_2e1
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isAwbAbCompensationSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v1

    if-eqz v1, :cond_2f1

    .line 577
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSemiAutoShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_2f6

    .line 579
    :cond_2f1
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSemiAutoShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v15}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 581
    :goto_2f6
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v15}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 582
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v15}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 583
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mBokehShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v15}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 584
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v15}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    if-eqz v6, :cond_339

    .line 586
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isHighSensitivityFusionSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v1

    if-eqz v1, :cond_339

    .line 587
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FUSION_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->isSelectable()Z

    move-result v1

    if-eqz v1, :cond_328

    .line 588
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHighSensitivityFusionShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    .line 589
    invoke-interface {v6}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getIconId()I

    move-result v2

    .line 588
    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    goto :goto_333

    .line 591
    :cond_328
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHighSensitivityFusionShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;->getIconId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    .line 593
    :goto_333
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHighSensitivityFusionShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_33e

    .line 595
    :cond_339
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHighSensitivityFusionShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v15}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    :goto_33e
    if-nez p3, :cond_36f

    if-eqz v7, :cond_36f

    .line 598
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isVideoHdrSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v1

    if-eqz v1, :cond_36f

    .line 599
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->isSelectable()Z

    move-result v1

    if-eqz v1, :cond_35e

    .line 600
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mVideoHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v7}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getIconId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    goto :goto_369

    .line 602
    :cond_35e
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mVideoHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->getIconId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    .line 604
    :goto_369
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mVideoHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_374

    .line 606
    :cond_36f
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mVideoHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v15}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 608
    :goto_374
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isFrontCameraSupported()Z

    move-result v1

    if-eqz v1, :cond_576

    .line 609
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFacingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    .line 610
    invoke-direct {v0, v14}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 609
    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 611
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFacingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto/16 :goto_576

    .line 530
    :pswitch_38a
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v15}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 531
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isAwbAbCompensationSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v1

    if-eqz v1, :cond_39f

    .line 532
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSemiAutoShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_3a4

    .line 534
    :cond_39f
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSemiAutoShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v15}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 536
    :goto_3a4
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v15}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    if-eqz v4, :cond_3ba

    .line 538
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v4}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getIconId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    .line 539
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_3bf

    .line 541
    :cond_3ba
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v15}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 543
    :goto_3bf
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mBokehShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v15}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    if-eqz v5, :cond_3d5

    .line 545
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v5}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getIconId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    .line 546
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_3da

    .line 548
    :cond_3d5
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v15}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 550
    :goto_3da
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHighSensitivityFusionShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v15}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 551
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mVideoHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v15}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 552
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isFrontCameraSupported()Z

    move-result v1

    if-eqz v1, :cond_576

    .line 553
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFacingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    .line 554
    invoke-direct {v0, v14}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 553
    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 555
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFacingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto/16 :goto_576

    .line 476
    :pswitch_3fa
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FLASH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v1, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    .line 477
    invoke-direct/range {p0 .. p1}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getFlashOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    move-result-object v2

    check-cast v2, [Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    invoke-direct {v0, v2, v1}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getCurrentFlashSetting([Lcom/sonyericsson/android/camera/configuration/parameters/Flash;Lcom/sonyericsson/android/camera/configuration/parameters/Flash;)Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    move-result-object v1

    if-eqz v1, :cond_43a

    .line 479
    iget-object v2, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    .line 480
    invoke-direct {v0, v13}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 479
    invoke-virtual {v2, v6}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 481
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    if-ne v1, v2, :cond_421

    .line 482
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v12}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    goto :goto_434

    .line 484
    :cond_421
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->LED_ON:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    if-ne v1, v2, :cond_42b

    .line 485
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v11}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    goto :goto_434

    .line 488
    :cond_42b
    iget-object v2, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->getIconId()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    .line 490
    :goto_434
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_43f

    .line 492
    :cond_43a
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v15}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 494
    :goto_43f
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isAwbAbCompensationSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v1

    if-eqz v1, :cond_44f

    .line 495
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSemiAutoShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_454

    .line 497
    :cond_44f
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSemiAutoShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v15}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 499
    :goto_454
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v15}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 501
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isBokehSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v1

    if-eqz v1, :cond_476

    .line 502
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mBokehShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    const v2, 0x7f0800fe

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    .line 503
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mBokehShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 504
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v15}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_491

    .line 506
    :cond_476
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mBokehShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v15}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    if-eqz v4, :cond_48c

    .line 508
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v4}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getIconId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    .line 509
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_491

    .line 511
    :cond_48c
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v15}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    :goto_491
    if-eqz v5, :cond_4a2

    .line 515
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v5}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getIconId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    .line 516
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_4a7

    .line 518
    :cond_4a2
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v15}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 520
    :goto_4a7
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHighSensitivityFusionShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v15}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 521
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mVideoHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v15}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 522
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isFrontCameraSupported()Z

    move-result v1

    if-eqz v1, :cond_576

    .line 523
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFacingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    .line 524
    invoke-direct {v0, v14}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 523
    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 525
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFacingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto/16 :goto_576

    .line 427
    :pswitch_4c7
    sget-object v6, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FLASH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v1, v6}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    .line 428
    invoke-direct/range {p0 .. p1}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getFlashOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    move-result-object v6

    check-cast v6, [Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    invoke-direct {v0, v6, v1}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getCurrentFlashSetting([Lcom/sonyericsson/android/camera/configuration/parameters/Flash;Lcom/sonyericsson/android/camera/configuration/parameters/Flash;)Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    move-result-object v1

    if-eqz v1, :cond_507

    .line 430
    iget-object v6, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    .line 431
    invoke-direct {v0, v13}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 430
    invoke-virtual {v6, v7}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 432
    sget-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    if-ne v1, v6, :cond_4ee

    .line 433
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v12}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    goto :goto_501

    .line 435
    :cond_4ee
    sget-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->LED_ON:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    if-ne v1, v6, :cond_4f8

    .line 436
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v11}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    goto :goto_501

    .line 439
    :cond_4f8
    iget-object v6, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->getIconId()I

    move-result v1

    invoke-virtual {v6, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    .line 441
    :goto_501
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_50c

    .line 443
    :cond_507
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v15}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 446
    :goto_50c
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSemiAutoShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v15}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    if-eqz v2, :cond_522

    .line 448
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getIconId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    .line 449
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_527

    .line 451
    :cond_522
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v15}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    :goto_527
    if-eqz v4, :cond_538

    .line 454
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v4}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getIconId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    .line 455
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_53d

    .line 457
    :cond_538
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v15}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    :goto_53d
    if-eqz v5, :cond_54e

    .line 460
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v5}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getIconId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    .line 461
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_553

    .line 463
    :cond_54e
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v15}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 465
    :goto_553
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mBokehShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v15}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 466
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHighSensitivityFusionShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v15}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 467
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mVideoHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v15}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 468
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isFrontCameraSupported()Z

    move-result v1

    if-eqz v1, :cond_576

    .line 469
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFacingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    .line 470
    invoke-direct {v0, v14}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 469
    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 471
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFacingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    :cond_576
    :goto_576
    return-void

    nop

    :pswitch_data_578
    .packed-switch 0x1
        :pswitch_4c7
        :pswitch_3fa
        :pswitch_38a
        :pswitch_2a6
        :pswitch_258
        :pswitch_1b1
        :pswitch_10b
        :pswitch_bd
        :pswitch_48
    .end packed-switch
.end method
