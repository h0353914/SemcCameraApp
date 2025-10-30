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

    .line 24
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

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static vibrate(Landroid/content/Context;Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;)V
    .registers 6

    const-string v0, "vibrator"

    .line 61
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    .line 63
    invoke-virtual {p0}, Landroid/os/Vibrator;->hasAmplitudeControl()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p1, Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;->mVibrationEffect:Landroid/os/VibrationEffect;

    if-eqz v0, :cond_18

    .line 64
    iget-object p1, p1, Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;->mVibrationEffect:Landroid/os/VibrationEffect;

    invoke-virtual {p0, p1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    goto :goto_4a

    .line 66
    :cond_18
    sget-object p1, Lcom/sonyericsson/android/camera/controller/VibrationManager;->DEFAULT_VIBRATION_PATTERN:[J

    .line 68
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "config_longPressVibePattern"

    const-string v2, "array"

    const-string v3, "android"

    .line 69
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_46

    .line 72
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    if-eqz v0, :cond_46

    .line 74
    array-length v1, v0

    if-lez v1, :cond_46

    .line 75
    array-length p1, v0

    new-array p1, p1, [J

    const/4 v1, 0x0

    .line 77
    :goto_3b
    array-length v2, v0

    if-ge v1, v2, :cond_46

    .line 78
    aget v2, v0, v1

    int-to-long v2, v2

    aput-wide v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    :cond_46
    const/4 v0, -0x1

    .line 82
    invoke-virtual {p0, p1, v0}, Landroid/os/Vibrator;->vibrate([JI)V

    :goto_4a
    return-void
.end method
