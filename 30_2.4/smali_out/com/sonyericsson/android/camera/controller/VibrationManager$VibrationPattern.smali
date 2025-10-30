.class public final enum Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;
.super Ljava/lang/Enum;
.source "VibrationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/VibrationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VibrationPattern"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;

.field public static final enum EFFECT_FOR_CAPTURE:Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;

.field public static final enum EFFECT_FOR_FAULT_DETECTOR:Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;

.field public static final enum EFFECT_STANDARD:Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;


# instance fields
.field public final mVibrationEffect:Landroid/os/VibrationEffect;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 35
    new-instance v0, Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;

    const-string v1, "EFFECT_STANDARD"

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;->getEffect(Z)Landroid/os/VibrationEffect;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v3}, Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;-><init>(Ljava/lang/String;ILandroid/os/VibrationEffect;)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;->EFFECT_STANDARD:Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;

    .line 36
    new-instance v0, Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;

    const-string v1, "EFFECT_FOR_CAPTURE"

    invoke-static {v4}, Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;->getEffect(Z)Landroid/os/VibrationEffect;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;-><init>(Ljava/lang/String;ILandroid/os/VibrationEffect;)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;->EFFECT_FOR_CAPTURE:Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;

    .line 37
    new-instance v0, Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;

    const-string v1, "EFFECT_FOR_FAULT_DETECTOR"

    invoke-static {}, Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;->getEffectForFaultDetector()Landroid/os/VibrationEffect;

    move-result-object v3

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v3}, Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;-><init>(Ljava/lang/String;ILandroid/os/VibrationEffect;)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;->EFFECT_FOR_FAULT_DETECTOR:Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;

    const/4 v0, 0x3

    .line 34
    new-array v0, v0, [Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;->EFFECT_STANDARD:Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;->EFFECT_FOR_CAPTURE:Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;->EFFECT_FOR_FAULT_DETECTOR:Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;->$VALUES:[Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILandroid/os/VibrationEffect;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/VibrationEffect;",
            ")V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 43
    iput-object p3, p0, Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;->mVibrationEffect:Landroid/os/VibrationEffect;

    return-void
.end method

.method private static getEffect(Z)Landroid/os/VibrationEffect;
    .registers 3

    if-eqz p0, :cond_11

    .line 48
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isSomcVibrationEffectSupported()Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x2715

    .line 49
    invoke-static {p0}, Lcom/sonymobile/vibrationeffect/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0

    :cond_f
    const/4 p0, 0x0

    return-object p0

    :cond_11
    const-wide/16 v0, 0xa

    const/16 p0, 0x64

    .line 54
    invoke-static {v0, v1, p0}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0
.end method

.method private static getEffectForFaultDetector()Landroid/os/VibrationEffect;
    .registers 3

    .line 59
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isSomcVibrationEffectSupported()Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 v0, 0x2719

    .line 60
    invoke-static {v0}, Lcom/sonymobile/vibrationeffect/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0

    .line 63
    :cond_d
    # getter for: Lcom/sonyericsson/android/camera/controller/VibrationManager;->FAULTDETECTOR_VIBRATION_PATTERN_TIMING:[J
    invoke-static {}, Lcom/sonyericsson/android/camera/controller/VibrationManager;->access$000()[J

    move-result-object v0

    .line 64
    # getter for: Lcom/sonyericsson/android/camera/controller/VibrationManager;->FAULTDETECTOR_VIBRATION_PATTERN_AMPLITUDE:[I
    invoke-static {}, Lcom/sonyericsson/android/camera/controller/VibrationManager;->access$100()[I

    move-result-object v1

    const/4 v2, -0x1

    .line 62
    invoke-static {v0, v1, v2}, Landroid/os/VibrationEffect;->createWaveform([J[II)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;
    .registers 2

    .line 34
    const-class v0, Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;
    .registers 1

    .line 34
    sget-object v0, Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;->$VALUES:[Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;

    return-object v0
.end method
