.class public Lcom/sonyericsson/android/camera/view/DisplayFlashController;
.super Ljava/lang/Object;
.source "DisplayFlashController.java"


# instance fields
.field private mDisplayed:Z

.field private mIsEnabled:Z

.field private mRootView:Landroid/view/View;

.field private mShieldRectMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mShieldRectScale:Landroid/graphics/PointF;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 5

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/DisplayFlashController;->mShieldRectMap:Ljava/util/Map;

    .line 41
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    if-nez v0, :cond_11

    return-void

    :cond_11
    const v1, 0x7f0b003b

    const/4 v2, 0x0

    .line 45
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/DisplayFlashController;->mRootView:Landroid/view/View;

    .line 46
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 48
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/DisplayFlashController;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/DisplayFlashController;->mRootView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 51
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/utility/ViewUtility;->getDisplayScalePhysicalToReal(Landroid/content/Context;)Landroid/graphics/PointF;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/DisplayFlashController;->mShieldRectScale:Landroid/graphics/PointF;

    return-void
.end method

.method private validateColor(I)Z
    .registers 3

    if-gez p1, :cond_9

    const/16 v0, 0xff

    if-gt p1, v0, :cond_7

    goto :goto_9

    :cond_7
    const/4 p1, 0x0

    goto :goto_a

    :cond_9
    :goto_9
    const/4 p1, 0x1

    :goto_a
    return p1
.end method


# virtual methods
.method enable(Z)V
    .registers 2

    .line 55
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/DisplayFlashController;->mIsEnabled:Z

    return-void
.end method

.method hide()V
    .registers 3

    .line 105
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/DisplayFlashController;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_9

    const/16 v1, 0x8

    .line 106
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    const/4 v0, 0x0

    .line 108
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/DisplayFlashController;->mDisplayed:Z

    return-void
.end method

.method isDisplayed()Z
    .registers 2

    .line 59
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/DisplayFlashController;->mDisplayed:Z

    return v0
.end method

.method setColor(III)V
    .registers 5

    .line 64
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/DisplayFlashController;->validateColor(I)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/view/DisplayFlashController;->validateColor(I)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-direct {p0, p3}, Lcom/sonyericsson/android/camera/view/DisplayFlashController;->validateColor(I)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 65
    invoke-static {p1, p2, p3}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    goto :goto_18

    :cond_17
    const/4 p1, -0x1

    .line 69
    :goto_18
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/DisplayFlashController;->mRootView:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method show(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V
    .registers 10

    .line 73
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/DisplayFlashController;->mShieldRectMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    if-nez v0, :cond_77

    .line 75
    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getDisplayFlashLightShieldingRect(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_6b

    .line 77
    new-instance v2, Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/DisplayFlashController;->mShieldRectScale:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iget v4, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/DisplayFlashController;->mShieldRectScale:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iget v5, v0, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sonyericsson/android/camera/view/DisplayFlashController;->mShieldRectScale:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/sonyericsson/android/camera/view/DisplayFlashController;->mShieldRectScale:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 81
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/DisplayFlashController;->mRootView:Landroid/view/View;

    const v4, 0x7f09009e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 82
    iget v4, v2, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 83
    iget v4, v2, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 84
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 85
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 86
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 87
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/DisplayFlashController;->mShieldRectMap:Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6b
    if-nez v0, :cond_77

    .line 92
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/DisplayFlashController;->mShieldRectMap:Ljava/util/Map;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    :cond_77
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/view/DisplayFlashController;->mIsEnabled:Z

    if-eqz p1, :cond_85

    .line 97
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/DisplayFlashController;->mRootView:Landroid/view/View;

    if-eqz p1, :cond_85

    .line 98
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x1

    .line 99
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/DisplayFlashController;->mDisplayed:Z

    :cond_85
    return-void
.end method
