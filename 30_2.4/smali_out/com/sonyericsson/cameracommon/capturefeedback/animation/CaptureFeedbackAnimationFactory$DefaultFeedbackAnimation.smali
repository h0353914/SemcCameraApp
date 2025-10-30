.class Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimationFactory$DefaultFeedbackAnimation;
.super Ljava/lang/Object;
.source "CaptureFeedbackAnimationFactory.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimationFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultFeedbackAnimation"
.end annotation


# static fields
.field private static final BLUE:F = 0.0f

.field private static final CONTROL_X1:F = 0.95f

.field private static final CONTROL_X2:F = 0.795f

.field private static final CONTROL_Y1:F = 0.05f

.field private static final CONTROL_Y2:F = 0.035f

.field private static final DURATION_MILLIS:J = 0xc8L

.field private static final END_ALPHA:F = 0.0f

.field private static final GREEN:F = 0.0f

.field private static final RED:F = 0.0f

.field private static final START_ALPHA:F = 0.75f


# instance fields
.field private final mInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method private constructor <init>()V
    .registers 6

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f733333    # 0.95f

    const v2, 0x3d4ccccd    # 0.05f

    const v3, 0x3f4b851f    # 0.795f

    const v4, 0x3d0f5c29    # 0.035f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimationFactory$DefaultFeedbackAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimationFactory$1;)V
    .registers 2

    .line 25
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimationFactory$DefaultFeedbackAnimation;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimationCanvas;J)Z
    .registers 12

    long-to-float v0, p2

    const/high16 v1, 0x43480000    # 200.0f

    div-float/2addr v0, v1

    .line 51
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimationFactory$DefaultFeedbackAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 52
    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 51
    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/high16 v2, -0x40c00000    # -0.75f

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f400000    # 0.75f

    add-float/2addr v1, v2

    .line 54
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_41

    new-array v2, v4, [Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v6, "time:%d progress:%f alpha:%f"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    .line 56
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v7, v3

    .line 57
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, v7, v4

    const/4 p2, 0x2

    .line 58
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    aput-object p3, v7, p2

    .line 55
    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v3

    .line 54
    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_41
    float-to-double p2, v0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpl-double p2, p2, v5

    if-lez p2, :cond_49

    return v3

    :cond_49
    const/4 p2, 0x0

    .line 63
    invoke-interface {p1, v1, p2, p2, p2}, Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimationCanvas;->drawColor(FFFF)V

    return v4
.end method
