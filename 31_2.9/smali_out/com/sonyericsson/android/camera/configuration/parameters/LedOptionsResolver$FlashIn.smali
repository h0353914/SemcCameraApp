.class Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$FlashIn;
.super Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;
.source "LedOptionsResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlashIn"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;)V
    .registers 3

    .line 247
    iput-object p1, p0, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$FlashIn;->this$0:Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;-><init>(Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$1;)V
    .registers 3

    .line 247
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$FlashIn;-><init>(Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;)V

    return-void
.end method


# virtual methods
.method public getDefaultDisplayFlash()Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;
    .registers 2

    .line 319
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;->DISPLAY_OFF:Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;

    return-object v0
.end method

.method public getDefaultFlash()Lcom/sonyericsson/android/camera/configuration/parameters/Flash;
    .registers 2

    .line 311
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    return-object v0
.end method

.method public getDefaultFrontFlash()Lcom/sonyericsson/android/camera/configuration/parameters/FrontFlash;
    .registers 2

    .line 315
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FrontFlash;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/FrontFlash;

    return-object v0
.end method

.method public getDisplayFlashOptions(Lcom/sonyericsson/android/camera/ActionMode;Ljava/util/List;)[Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/ActionMode;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)[",
            "Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;"
        }
    .end annotation

    .line 279
    iget-object p2, p1, Lcom/sonyericsson/android/camera/ActionMode;->mCameraId:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-static {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;->isSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_20

    iget p1, p1, Lcom/sonyericsson/android/camera/ActionMode;->mType:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_f

    goto :goto_20

    :cond_f
    const/4 p1, 0x3

    .line 283
    new-array p1, p1, [Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;->DISPLAY_AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;

    aput-object v1, p1, v0

    const/4 v0, 0x1

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;->DISPLAY_ON:Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;

    aput-object v1, p1, v0

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;->DISPLAY_OFF:Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;

    aput-object v0, p1, p2

    return-object p1

    .line 281
    :cond_20
    :goto_20
    new-array p1, v0, [Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;

    return-object p1
.end method

.method public getFlashOptions(Lcom/sonyericsson/android/camera/ActionMode;Ljava/util/List;)[Lcom/sonyericsson/android/camera/configuration/parameters/Flash;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/ActionMode;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)[",
            "Lcom/sonyericsson/android/camera/configuration/parameters/Flash;"
        }
    .end annotation

    .line 251
    iget p1, p1, Lcom/sonyericsson/android/camera/ActionMode;->mType:I

    const/4 p2, 0x0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_9

    .line 252
    new-array p1, p2, [Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    return-object p1

    :cond_9
    const/4 p1, 0x5

    .line 254
    new-array p1, p1, [Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    aput-object v1, p1, p2

    const/4 p2, 0x1

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    aput-object v1, p1, p2

    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->RED_EYE:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    aput-object p2, p1, v0

    const/4 p2, 0x3

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    aput-object v0, p1, p2

    const/4 p2, 0x4

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->LED_ON:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    aput-object v0, p1, p2

    return-object p1
.end method

.method public getFrontFlashOptions(Lcom/sonyericsson/android/camera/ActionMode;Ljava/util/List;)[Lcom/sonyericsson/android/camera/configuration/parameters/FrontFlash;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/ActionMode;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)[",
            "Lcom/sonyericsson/android/camera/configuration/parameters/FrontFlash;"
        }
    .end annotation

    .line 265
    iget p1, p1, Lcom/sonyericsson/android/camera/ActionMode;->mType:I

    const/4 p2, 0x0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_9

    .line 266
    new-array p1, p2, [Lcom/sonyericsson/android/camera/configuration/parameters/FrontFlash;

    return-object p1

    :cond_9
    const/4 p1, 0x5

    .line 268
    new-array p1, p1, [Lcom/sonyericsson/android/camera/configuration/parameters/FrontFlash;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FrontFlash;->AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/FrontFlash;

    aput-object v1, p1, p2

    const/4 p2, 0x1

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FrontFlash;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/FrontFlash;

    aput-object v1, p1, p2

    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/FrontFlash;->RED_EYE:Lcom/sonyericsson/android/camera/configuration/parameters/FrontFlash;

    aput-object p2, p1, v0

    const/4 p2, 0x3

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FrontFlash;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/FrontFlash;

    aput-object v0, p1, p2

    const/4 p2, 0x4

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FrontFlash;->LED_ON:Lcom/sonyericsson/android/camera/configuration/parameters/FrontFlash;

    aput-object v0, p1, p2

    return-object p1
.end method

.method public getParameterKeyTextId()I
    .registers 2

    const v0, 0x7f0f022b

    return v0
.end method

.method public getParameterKeyTitleTextId()I
    .registers 2

    const v0, 0x7f0f0229

    return v0
.end method

.method public getPhotoLightOptions(Lcom/sonyericsson/android/camera/ActionMode;Ljava/util/List;)[Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/ActionMode;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)[",
            "Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;"
        }
    .end annotation

    .line 292
    iget p1, p1, Lcom/sonyericsson/android/camera/ActionMode;->mType:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_a

    .line 293
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    move-result-object p1

    return-object p1

    :cond_a
    const/4 p1, 0x0

    .line 295
    new-array p1, p1, [Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    return-object p1
.end method
