.class public Lcom/sonyericsson/cameracommon/utility/ProductConfig;
.super Ljava/lang/Object;
.source "ProductConfig.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ProductConfig"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMountAngle(Landroid/content/Context;)I
    .registers 6

    .line 46
    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/16 v1, 0x10e

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_16

    if-eq v0, v2, :cond_1e

    const/4 v4, 0x2

    if-eq v0, v4, :cond_1b

    const/4 v4, 0x3

    if-eq v0, v4, :cond_18

    :cond_16
    move v0, v3

    goto :goto_1f

    :cond_18
    const/16 v0, 0x5a

    goto :goto_1f

    :cond_1b
    const/16 v0, 0xb4

    goto :goto_1f

    :cond_1e
    move v0, v1

    .line 65
    :goto_1f
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/utility/ViewUtility;->getDisplayRectSize(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object p0

    .line 66
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    if-le v4, p0, :cond_2e

    goto :goto_2f

    :cond_2e
    move v2, v3

    :goto_2f
    if-eqz v2, :cond_32

    return v0

    :cond_32
    add-int/2addr v0, v1

    return v0
.end method

.method public static isPhone(Landroid/content/Context;)Z
    .registers 1

    .line 36
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/utility/ProductConfig;->isTablet(Landroid/content/Context;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static isTablet(Landroid/content/Context;)Z
    .registers 2

    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f05000b

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public static shouldReverseZoomDirection(Landroid/content/Context;Z)Z
    .registers 3

    .line 75
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/utility/ProductConfig;->isTablet(Landroid/content/Context;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    return v0

    :cond_8
    if-eqz p1, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    return v0
.end method
