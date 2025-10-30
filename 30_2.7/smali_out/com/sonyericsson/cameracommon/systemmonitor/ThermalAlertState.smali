.class public final enum Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;
.super Ljava/lang/Enum;
.source "ThermalAlertState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

.field public static final enum CRITICAL_STATE:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

.field public static final enum FIX_LOW_TEMP_BURN_STATE:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

.field public static final enum NORMAL_STATE:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

.field public static final TAG:Ljava/lang/String; = "ThermalAlertState"

.field public static final enum VARIABLE_LOW_TEMP_BURN_RESET_STATE:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

.field public static final enum VARIABLE_LOW_TEMP_BURN_SET_STATE:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

.field public static final enum WARNING_EXTRA_STATE:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

.field public static final enum WARNING_STATE:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

.field private static volatile m4kTempOptions:[I

.field private static mCurrentTempOptions:[I

.field private static volatile mNormalTempOptions:[I


# instance fields
.field private final mAction:Ljava/lang/String;

.field private volatile mTemperatureThreshold:I


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 20
    new-instance v0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

    const-string v1, "NORMAL_STATE"

    const-string v2, "com.sonyericsson.psm.action.CAMERA_COOLED_DOWN_NORMAL"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->NORMAL_STATE:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

    .line 22
    new-instance v0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

    const-string v1, "WARNING_EXTRA_STATE"

    const-string v2, "com.sonyericsson.psm.action.CAMERA_HEATED_OVER_WARNING_EXTRA_FUNC"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->WARNING_EXTRA_STATE:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

    .line 24
    new-instance v0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

    const-string v1, "WARNING_STATE"

    const-string v2, "com.sonyericsson.psm.action.CAMERA_HEATED_CLOSE_TO_SHUTDOWN"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->WARNING_STATE:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

    .line 26
    new-instance v0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

    const-string v1, "FIX_LOW_TEMP_BURN_STATE"

    const-string v2, "com.sonyericsson.psm.action.CAMERA_HEATED_OVER_LOW_TEMP_BURN"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->FIX_LOW_TEMP_BURN_STATE:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

    .line 28
    new-instance v0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

    const-string v1, "VARIABLE_LOW_TEMP_BURN_RESET_STATE"

    const-string v2, "com.sonyericsson.psm.action.CAMERA_LOW_TEMP_BURN_TIMER_RESET"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->VARIABLE_LOW_TEMP_BURN_RESET_STATE:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

    .line 30
    new-instance v0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

    const-string v1, "VARIABLE_LOW_TEMP_BURN_SET_STATE"

    const-string v2, "com.sonyericsson.psm.action.CAMERA_LOW_TEMP_BURN_TIMER_SET"

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v2}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->VARIABLE_LOW_TEMP_BURN_SET_STATE:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

    .line 32
    new-instance v0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

    const-string v1, "CRITICAL_STATE"

    const-string v2, "com.sonyericsson.psm.action.CAMERA_HEATED_OVER_CRITICAL"

    const/4 v9, 0x6

    invoke-direct {v0, v1, v9, v2}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->CRITICAL_STATE:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

    const/4 v0, 0x7

    .line 19
    new-array v0, v0, [Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

    sget-object v1, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->NORMAL_STATE:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->WARNING_EXTRA_STATE:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->WARNING_STATE:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->FIX_LOW_TEMP_BURN_STATE:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->VARIABLE_LOW_TEMP_BURN_RESET_STATE:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->VARIABLE_LOW_TEMP_BURN_SET_STATE:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

    aput-object v1, v0, v8

    sget-object v1, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->CRITICAL_STATE:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

    aput-object v1, v0, v9

    sput-object v0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->$VALUES:[Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 44
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->mAction:Ljava/lang/String;

    return-void
.end method

.method public static getThermalAlertAction(I)Ljava/lang/String;
    .registers 2

    .line 48
    sget-object v0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->NORMAL_STATE:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

    iget v0, v0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->mTemperatureThreshold:I

    if-ge p0, v0, :cond_b

    .line 49
    sget-object p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->NORMAL_STATE:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->mAction:Ljava/lang/String;

    return-object p0

    .line 50
    :cond_b
    sget-object v0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->WARNING_EXTRA_STATE:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

    iget v0, v0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->mTemperatureThreshold:I

    if-ge p0, v0, :cond_16

    .line 51
    sget-object p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->WARNING_EXTRA_STATE:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->mAction:Ljava/lang/String;

    return-object p0

    .line 52
    :cond_16
    sget-object v0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->WARNING_STATE:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

    iget v0, v0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->mTemperatureThreshold:I

    if-ge p0, v0, :cond_21

    .line 53
    sget-object p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->WARNING_STATE:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->mAction:Ljava/lang/String;

    return-object p0

    .line 54
    :cond_21
    sget-object v0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->FIX_LOW_TEMP_BURN_STATE:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

    iget v0, v0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->mTemperatureThreshold:I

    if-ge p0, v0, :cond_2c

    .line 55
    sget-object p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->FIX_LOW_TEMP_BURN_STATE:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->mAction:Ljava/lang/String;

    return-object p0

    .line 56
    :cond_2c
    sget-object v0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->VARIABLE_LOW_TEMP_BURN_RESET_STATE:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

    iget v0, v0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->mTemperatureThreshold:I

    if-ge p0, v0, :cond_37

    .line 57
    sget-object p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->VARIABLE_LOW_TEMP_BURN_RESET_STATE:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->mAction:Ljava/lang/String;

    return-object p0

    .line 58
    :cond_37
    sget-object v0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->VARIABLE_LOW_TEMP_BURN_SET_STATE:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

    iget v0, v0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->mTemperatureThreshold:I

    if-ge p0, v0, :cond_42

    .line 59
    sget-object p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->VARIABLE_LOW_TEMP_BURN_SET_STATE:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->mAction:Ljava/lang/String;

    return-object p0

    .line 61
    :cond_42
    sget-object p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->CRITICAL_STATE:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->mAction:Ljava/lang/String;

    return-object p0
.end method

.method public static set4KRecordingTemperatureThreshold(Landroid/content/Context;)V
    .registers 2

    .line 87
    sget-object v0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->m4kTempOptions:[I

    if-nez v0, :cond_10

    .line 88
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/high16 v0, 0x7f030000

    .line 89
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p0

    sput-object p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->m4kTempOptions:[I

    .line 91
    :cond_10
    sget-object p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->mCurrentTempOptions:[I

    sget-object v0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->m4kTempOptions:[I

    invoke-static {p0, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p0

    if-nez p0, :cond_23

    .line 92
    sget-object p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->m4kTempOptions:[I

    sput-object p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->mCurrentTempOptions:[I

    .line 93
    sget-object p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->mCurrentTempOptions:[I

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->updateTemperatureThreshold([I)V

    :cond_23
    return-void
.end method

.method public static setNormalTemperatureThreshold(Landroid/content/Context;)V
    .registers 2

    .line 76
    sget-object v0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->mNormalTempOptions:[I

    if-nez v0, :cond_11

    .line 77
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f030002

    .line 78
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p0

    sput-object p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->mNormalTempOptions:[I

    .line 80
    :cond_11
    sget-object p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->mCurrentTempOptions:[I

    sget-object v0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->mNormalTempOptions:[I

    invoke-static {p0, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p0

    if-nez p0, :cond_24

    .line 81
    sget-object p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->mNormalTempOptions:[I

    sput-object p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->mCurrentTempOptions:[I

    .line 82
    sget-object p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->mCurrentTempOptions:[I

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->updateTemperatureThreshold([I)V

    :cond_24
    return-void
.end method

.method private static updateTemperatureThreshold([I)V
    .registers 7

    .line 66
    invoke-static {}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->values()[Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 67
    :goto_6
    array-length v3, v0

    if-ge v2, v3, :cond_42

    .line 68
    sget-boolean v3, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v3, :cond_39

    const/4 v3, 0x2

    .line 69
    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "ThermalAlertState"

    aput-object v4, v3, v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "action:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v0, v2

    iget-object v5, v5, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->mAction:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", maxTemp:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, p0, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 71
    :cond_39
    aget-object v3, v0, v2

    aget v4, p0, v2

    iput v4, v3, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->mTemperatureThreshold:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_42
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;
    .registers 2

    .line 19
    const-class v0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;
    .registers 1

    .line 19
    sget-object v0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->$VALUES:[Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

    return-object v0
.end method
