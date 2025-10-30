.class public Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;
.super Ljava/lang/Object;
.source "LayoutOrientationResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "LayoutOrientationResolver"

.field private static final sInstance:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;


# instance fields
.field private mLayoutOrientation:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 26
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    invoke-direct {v0}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;-><init>()V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->sInstance:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    sget-object v0, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->PORTRAIT:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->mLayoutOrientation:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    return-void
.end method

.method public static getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;
    .registers 1

    .line 42
    sget-object v0, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->sInstance:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    return-object v0
.end method


# virtual methods
.method public getConfigurationOrientation()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public getOrientation()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;
    .registers 2

    .line 46
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->mLayoutOrientation:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    return-object v0
.end method

.method public getPointAccordingToLayoutOrientation(Landroid/graphics/Point;)Landroid/graphics/Point;
    .registers 4

    if-nez p1, :cond_3

    return-object p1

    .line 107
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->mLayoutOrientation:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    sget-object v1, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->PORTRAIT:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    if-ne v0, v1, :cond_13

    .line 108
    new-instance v0, Landroid/graphics/Point;

    iget v1, p1, Landroid/graphics/Point;->y:I

    iget p1, p1, Landroid/graphics/Point;->x:I

    invoke-direct {v0, v1, p1}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_18

    .line 110
    :cond_13
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    :goto_18
    return-object v0
.end method

.method public getRectAccordingToLayoutOrientation(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 5

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 68
    :cond_4
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->mLayoutOrientation:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    sget-object v1, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->PORTRAIT:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    if-ne v0, v1, :cond_19

    .line 69
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_1e

    .line 71
    :cond_19
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    :goto_1e
    return-object v0
.end method

.method public getSizeAccordingToLayoutOrientation(Landroid/util/Size;)Landroid/util/Size;
    .registers 4

    .line 85
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->mLayoutOrientation:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    sget-object v1, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->PORTRAIT:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    if-ne v0, v1, :cond_f

    .line 86
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v0

    .line 87
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    goto :goto_17

    .line 89
    :cond_f
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    .line 90
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    .line 92
    :goto_17
    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, v0, p1}, Landroid/util/Size;-><init>(II)V

    return-object v1
.end method
