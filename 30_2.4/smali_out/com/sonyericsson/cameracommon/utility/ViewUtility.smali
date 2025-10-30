.class public Lcom/sonyericsson/cameracommon/utility/ViewUtility;
.super Ljava/lang/Object;
.source "ViewUtility.java"


# static fields
.field private static final ASPECT_TOLERANCE:F = 0.001f

.field private static sDisplayScalePhysicalToReal:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDisplayRectSize(Landroid/content/Context;)Landroid/graphics/Rect;
    .registers 5

    const-string v0, "window"

    .line 60
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 61
    invoke-interface {p0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object p0

    .line 63
    invoke-virtual {p0}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    .line 65
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v2

    or-int/2addr v1, v2

    .line 64
    invoke-virtual {v0, v1}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    move-result-object v0

    .line 67
    iget v1, v0, Landroid/graphics/Insets;->right:I

    iget v2, v0, Landroid/graphics/Insets;->left:I

    add-int/2addr v1, v2

    .line 68
    iget v2, v0, Landroid/graphics/Insets;->top:I

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    add-int/2addr v2, v0

    .line 69
    invoke-virtual {p0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    .line 71
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v3, v1

    .line 72
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    sub-int/2addr p0, v2

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v3, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public static declared-synchronized getDisplayScalePhysicalToReal(Landroid/content/Context;)Landroid/graphics/PointF;
    .registers 11

    const-class v0, Lcom/sonyericsson/cameracommon/utility/ViewUtility;

    monitor-enter v0

    .line 33
    :try_start_3
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 34
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 36
    sget-object v3, Lcom/sonyericsson/cameracommon/utility/ViewUtility;->sDisplayScalePhysicalToReal:Landroid/graphics/PointF;

    if-nez v3, :cond_66

    .line 37
    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    sput-object v3, Lcom/sonyericsson/cameracommon/utility/ViewUtility;->sDisplayScalePhysicalToReal:Landroid/graphics/PointF;

    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p0

    .line 40
    invoke-virtual {p0}, Landroid/view/Display;->getSupportedModes()[Landroid/view/Display$Mode;

    move-result-object v3

    .line 41
    invoke-virtual {p0}, Landroid/view/Display;->getMode()Landroid/view/Display$Mode;

    move-result-object v4

    .line 43
    array-length v5, v3

    const/4 v6, 0x0

    :goto_26
    if-ge v6, v5, :cond_42

    aget-object v7, v3, v6

    .line 44
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v8

    invoke-virtual {v7}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v9

    if-ge v8, v9, :cond_3f

    .line 45
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v8

    invoke-virtual {v7}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v9

    if-ge v8, v9, :cond_3f

    move-object v4, v7

    :cond_3f
    add-int/lit8 v6, v6, 0x1

    goto :goto_26

    .line 49
    :cond_42
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v3

    invoke-virtual {v4}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Point;->set(II)V

    .line 50
    invoke-virtual {p0, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 52
    sget-object p0, Lcom/sonyericsson/cameracommon/utility/ViewUtility;->sDisplayScalePhysicalToReal:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v4, v1, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, p0, Landroid/graphics/PointF;->x:F

    .line 53
    sget-object p0, Lcom/sonyericsson/cameracommon/utility/ViewUtility;->sDisplayScalePhysicalToReal:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    div-float/2addr v2, v1

    iput v2, p0, Landroid/graphics/PointF;->y:F

    .line 56
    :cond_66
    sget-object p0, Lcom/sonyericsson/cameracommon/utility/ViewUtility;->sDisplayScalePhysicalToReal:Landroid/graphics/PointF;
    :try_end_68
    .catchall {:try_start_3 .. :try_end_68} :catchall_6a

    monitor-exit v0

    return-object p0

    :catchall_6a
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static isSimilarAspect(FF)Z
    .registers 2

    sub-float/2addr p0, p1

    .line 29
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const p1, 0x3a83126f    # 0.001f

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method
