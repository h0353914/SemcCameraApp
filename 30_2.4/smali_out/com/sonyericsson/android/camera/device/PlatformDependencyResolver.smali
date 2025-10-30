.class public Lcom/sonyericsson/android/camera/device/PlatformDependencyResolver;
.super Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver;
.source "PlatformDependencyResolver.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "PlatformDependencyResolver"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver;-><init>()V

    return-void
.end method

.method private static checkAspectRatio(Landroid/graphics/Rect;II)Z
    .registers 4

    .line 208
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    mul-int/2addr v0, p2

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    mul-int/2addr p0, p1

    if-ne v0, p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public static getDefaultFocusModeForFastCapturePhoto(Lcom/sonyericsson/android/camera/device/CameraParameters;Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Ljava/lang/String;
    .registers 3

    .line 108
    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getSupportedFocusModes(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1c

    const-string v0, "continuous-picture"

    .line 111
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string p0, "continuous-picture"

    return-object p0

    :cond_11
    const-string v0, "auto"

    .line 115
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    const-string p0, "auto"

    return-object p0

    .line 121
    :cond_1c
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getFocusMode()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDefaultVideoSize(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;
    .registers 8

    .line 63
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getSupportedVideoConfigurationMap(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_42

    .line 71
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move v1, v0

    move v2, v1

    :cond_d
    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_44

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera/util/capability/VideoConfigurationMap;

    .line 72
    iget v4, v3, Lcom/sonyericsson/android/camera/util/capability/VideoConfigurationMap;->width:I

    const/16 v5, 0x780

    const/4 v6, 0x1

    if-ne v4, v5, :cond_27

    iget v4, v3, Lcom/sonyericsson/android/camera/util/capability/VideoConfigurationMap;->height:I

    const/16 v5, 0x438

    if-ne v4, v5, :cond_27

    move v0, v6

    .line 76
    :cond_27
    iget v4, v3, Lcom/sonyericsson/android/camera/util/capability/VideoConfigurationMap;->width:I

    const/16 v5, 0x500

    if-ne v4, v5, :cond_34

    iget v4, v3, Lcom/sonyericsson/android/camera/util/capability/VideoConfigurationMap;->height:I

    const/16 v5, 0x2d0

    if-ne v4, v5, :cond_34

    move v1, v6

    .line 80
    :cond_34
    iget v4, v3, Lcom/sonyericsson/android/camera/util/capability/VideoConfigurationMap;->width:I

    const/16 v5, 0x280

    if-ne v4, v5, :cond_d

    iget v3, v3, Lcom/sonyericsson/android/camera/util/capability/VideoConfigurationMap;->height:I

    const/16 v4, 0x1e0

    if-ne v3, v4, :cond_d

    move v2, v6

    goto :goto_d

    :cond_42
    move v1, v0

    move v2, v1

    :cond_44
    if-eqz v0, :cond_49

    .line 89
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FULL_HD:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    return-object p0

    :cond_49
    if-eqz v1, :cond_4e

    .line 92
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->HD:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    return-object p0

    :cond_4e
    if-eqz v2, :cond_53

    .line 95
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->VGA:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    return-object p0

    :cond_53
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getMaxPictureWidth(Landroid/content/Context;Ljava/util/List;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)I"
        }
    .end annotation

    .line 37
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/ResolutionDependence;->isDependOnAspect(Landroid/content/Context;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p1, :cond_36

    .line 42
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v1, v0

    :cond_c
    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    if-eqz p0, :cond_2b

    .line 44
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    mul-int/2addr v3, v4

    if-ge v1, v3, :cond_c

    .line 47
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v0

    move v1, v3

    goto :goto_c

    .line 50
    :cond_2b
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-ge v0, v3, :cond_c

    .line 51
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v0

    goto :goto_c

    :cond_36
    return v0
.end method

.method public static getOptimalPreviewSize(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;ILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 8

    .line 137
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_33

    new-array v0, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "E: Base rect("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " x "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 137
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 140
    :cond_33
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getSupportedPreviewSizes(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x2

    if-ne p1, v3, :cond_6b

    .line 143
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getPreferredPreviewSizeForVideo(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Landroid/graphics/Rect;

    move-result-object p0

    .line 144
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p1

    if-eqz p1, :cond_4a

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p1

    if-nez p1, :cond_66

    .line 145
    :cond_4a
    invoke-static {p2}, Lcom/sonyericsson/android/camera/device/PlatformDependencyResolver;->getPreferredPreviewSizeFromCaptureSize(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p0

    .line 147
    new-array p1, v2, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "preferredPreviewSize is invalid. Get preferredPreviewSize from videoSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    .line 150
    :cond_66
    invoke-static {p2, p0, v0}, Lcom/sonyericsson/android/camera/device/PlatformDependencyResolver;->getOptimalVideoPreviewRect(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/util/List;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    .line 153
    :cond_6b
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getPreferredPreviewSizeForStill(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Landroid/graphics/Rect;

    move-result-object p1

    if-nez p1, :cond_75

    .line 155
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getPreferredPreviewSizeForVideo(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Landroid/graphics/Rect;

    move-result-object p1

    .line 157
    :cond_75
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p0

    if-eqz p0, :cond_81

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p0

    if-nez p0, :cond_9d

    .line 158
    :cond_81
    invoke-static {p2}, Lcom/sonyericsson/android/camera/device/PlatformDependencyResolver;->getPreferredPreviewSizeFromCaptureSize(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    .line 160
    new-array p0, v2, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "preferredPreviewSize is invalid. Get preferredPreviewSize from captureSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p0, v1

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    .line 163
    :cond_9d
    invoke-static {p2, p1, v0}, Lcom/sonyericsson/android/camera/device/PlatformDependencyResolver;->getOptimalStillPreviewRect(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/util/List;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static getPreferredPreviewSizeFromCaptureSize(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 4

    const/4 v0, 0x0

    .line 219
    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera/device/PlatformDependencyResolver;->getSurfaceSize(Landroid/graphics/Rect;Z)Landroid/util/Size;

    move-result-object p0

    .line 220
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    invoke-direct {v1, v0, v0, v2, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method public static getSurfaceSize(Landroid/graphics/Rect;Z)Landroid/util/Size;
    .registers 7

    const/16 v0, 0x9

    const/16 v1, 0x10

    .line 176
    invoke-static {p0, v1, v0}, Lcom/sonyericsson/android/camera/device/PlatformDependencyResolver;->checkAspectRatio(Landroid/graphics/Rect;II)Z

    move-result v1

    const/16 v2, 0x438

    const/16 v3, 0x2d0

    if-eqz v1, :cond_29

    if-eqz p1, :cond_21

    const-string p0, "getSurfaceSize: need to support the full hd."

    .line 178
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 179
    new-instance p0, Landroid/util/Size;

    const/16 p1, 0x780

    invoke-direct {p0, p1, v2}, Landroid/util/Size;-><init>(II)V

    return-object p0

    .line 182
    :cond_21
    new-instance p0, Landroid/util/Size;

    const/16 p1, 0x500

    invoke-direct {p0, p1, v3}, Landroid/util/Size;-><init>(II)V

    return-object p0

    :cond_29
    const/4 v1, 0x4

    const/4 v4, 0x3

    .line 184
    invoke-static {p0, v1, v4}, Lcom/sonyericsson/android/camera/device/PlatformDependencyResolver;->checkAspectRatio(Landroid/graphics/Rect;II)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 185
    new-instance p0, Landroid/util/Size;

    const/16 p1, 0x3c0

    invoke-direct {p0, p1, v3}, Landroid/util/Size;-><init>(II)V

    return-object p0

    :cond_39
    const/4 v1, 0x1

    .line 186
    invoke-static {p0, v1, v1}, Lcom/sonyericsson/android/camera/device/PlatformDependencyResolver;->checkAspectRatio(Landroid/graphics/Rect;II)Z

    move-result v1

    if-eqz v1, :cond_57

    if-eqz p1, :cond_51

    const-string p0, "getSurfaceSize: need to support the square full hd."

    .line 188
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 189
    new-instance p0, Landroid/util/Size;

    invoke-direct {p0, v2, v2}, Landroid/util/Size;-><init>(II)V

    return-object p0

    .line 191
    :cond_51
    new-instance p0, Landroid/util/Size;

    invoke-direct {p0, v3, v3}, Landroid/util/Size;-><init>(II)V

    return-object p0

    :cond_57
    const/16 p1, 0xb

    .line 193
    invoke-static {p0, p1, v0}, Lcom/sonyericsson/android/camera/device/PlatformDependencyResolver;->checkAspectRatio(Landroid/graphics/Rect;II)Z

    move-result p1

    if-eqz p1, :cond_69

    .line 194
    new-instance p0, Landroid/util/Size;

    const/16 p1, 0xb0

    const/16 v0, 0x90

    invoke-direct {p0, p1, v0}, Landroid/util/Size;-><init>(II)V

    return-object p0

    :cond_69
    const/16 p1, 0x15

    .line 195
    invoke-static {p0, p1, v0}, Lcom/sonyericsson/android/camera/device/PlatformDependencyResolver;->checkAspectRatio(Landroid/graphics/Rect;II)Z

    move-result p1

    if-eqz p1, :cond_79

    .line 196
    new-instance p0, Landroid/util/Size;

    const/16 p1, 0x690

    invoke-direct {p0, p1, v3}, Landroid/util/Size;-><init>(II)V

    return-object p0

    .line 198
    :cond_79
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The specified preview size is not supported. ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
