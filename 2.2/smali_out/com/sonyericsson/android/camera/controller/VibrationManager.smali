.class public Lcom/sonyericsson/android/camera/controller/VibrationManager;
.super Ljava/lang/Object;
.source "VibrationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;
    }
.end annotation


# static fields
.field private static final DEFAULT_VIBRATION_PATTERN:[J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x4

    .line 25
    new-array v0, v0, [J

    fill-array-data v0, :array_a

    sput-object v0, Lcom/sonyericsson/android/camera/controller/VibrationManager;->DEFAULT_VIBRATION_PATTERN:[J

    return-void

    nop

    :array_a
    .array-data 8
        0x0
        0x1
        0x14
        0x15
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static vibrate(Landroid/content/Context;Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;)V
    .registers 6

    const-string v0, "vibrator"

    .line 50
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    .line 52
    invoke-virtual {p0}, Landroid/os/Vibrator;->hasAmplitudeControl()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 53
    iget-object p1, p1, Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;->mVibrationEffect:Landroid/os/VibrationEffect;

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x5

    .line 54
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v1, 0x4

    .line 55
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 53
    invoke-virtual {p0, p1, v0}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V

    goto :goto_59

    .line 58
    :cond_27
    sget-object p1, Lcom/sonyericsson/android/camera/controller/VibrationManager;->DEFAULT_VIBRATION_PATTERN:[J

    .line 60
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "config_longPressVibePattern"

    const-string v2, "array"

    const-string v3, "android"

    .line 61
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_55

    .line 64
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    if-eqz v0, :cond_55

    .line 66
    array-length v1, v0

    if-lez v1, :cond_55

    .line 67
    array-length p1, v0

    new-array p1, p1, [J

    const/4 v1, 0x0

    .line 69
    :goto_4a
    array-length v2, v0

    if-ge v1, v2, :cond_55

    .line 70
    aget v2, v0, v1

    int-to-long v2, v2

    aput-wide v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4a

    :cond_55
    const/4 v0, -0x1

    .line 74
    invoke-virtual {p0, p1, v0}, Landroid/os/Vibrator;->vibrate([JI)V

    :goto_59
    return-void
.end method
