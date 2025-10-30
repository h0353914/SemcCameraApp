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
    .registers 16

    .line 20
    new-instance v0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

    const-string v1, "NORMAL_STATE"

    const/4 v2, 0x0

    const-string v3, "com.sonyericsson.psm.action.CAMERA_COOLED_DOWN_NORMAL"

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->NORMAL_STATE:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

    .line 22
    new-instance v1, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

    const-string v3, "WARNING_EXTRA_STATE"

    const/4 v4, 0x1

    const-string v5, "com.sonyericsson.psm.action.CAMERA_HEATED_OVER_WARNING_EXTRA_FUNC"

    invoke-direct {v1, v3, v4, v5}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->WARNING_EXTRA_STATE:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

    .line 24
    new-instance v3, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

    const-string v5, "WARNING_STATE"

    const/4 v6, 0x2

    const-string v7, "com.sonyericsson.psm.action.CAMERA_HEATED_CLOSE_TO_SHUTDOWN"

    invoke-direct {v3, v5, v6, v7}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->WARNING_STATE:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

    .line 26
    new-instance v5, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

    const-string v7, "FIX_LOW_TEMP_BURN_STATE"

    const/4 v8, 0x3

    const-string v9, "com.sonyericsson.psm.action.CAMERA_HEATED_OVER_LOW_TEMP_BURN"

    invoke-direct {v5, v7, v8, v9}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->FIX_LOW_TEMP_BURN_STATE:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

    .line 28
    new-instance v7, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

    const-string v9, "VARIABLE_LOW_TEMP_BURN_RESET_STATE"

    const/4 v10, 0x4

    const-string v11, "com.sonyericsson.psm.action.CAMERA_LOW_TEMP_BURN_TIMER_RESET"

    invoke-direct {v7, v9, v10, v11}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->VARIABLE_LOW_TEMP_BURN_RESET_STATE:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

    .line 30
    new-instance v9, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

    const-string v11, "VARIABLE_LOW_TEMP_BURN_SET_STATE"

    const/4 v12, 0x5

    const-string v13, "com.sonyericsson.psm.action.CAMERA_LOW_TEMP_BURN_TIMER_SET"

    invoke-direct {v9, v11, v12, v13}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->VARIABLE_LOW_TEMP_BURN_SET_STATE:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

    .line 32
    new-instance v11, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

    const-string v13, "CRITICAL_STATE"

    const/4 v14, 0x6

    const-string v15, "com.sonyericsson.psm.action.CAMERA_HEATED_OVER_CRITICAL"

    invoke-direct {v11, v13, v14, v15}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->CRITICAL_STATE:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 19
    sput-object v13, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->$VALUES:[Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

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
    .registers 3

    .line 48
    sget-object v0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->NORMAL_STATE:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

    iget v1, v0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->mTemperatureThreshold:I

    if-ge p0, v1, :cond_9

    .line 49
    iget-object p0, v0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->mAction:Ljava/lang/String;

    return-object p0

    .line 50
    :cond_9
    sget-object v0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->WARNING_EXTRA_STATE:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

    iget v1, v0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->mTemperatureThreshold:I

    if-ge p0, v1, :cond_12

    .line 51
    iget-object p0, v0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->mAction:Ljava/lang/String;

    return-object p0

    .line 52
    :cond_12
    sget-object v0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->WARNING_STATE:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

    iget v1, v0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->mTemperatureThreshold:I

    if-ge p0, v1, :cond_1b

    .line 53
    iget-object p0, v0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->mAction:Ljava/lang/String;

    return-object p0

    .line 54
    :cond_1b
    sget-object v0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->FIX_LOW_TEMP_BURN_STATE:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

    iget v1, v0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->mTemperatureThreshold:I

    if-ge p0, v1, :cond_24

    .line 55
    iget-object p0, v0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->mAction:Ljava/lang/String;

    return-object p0

    .line 56
    :cond_24
    sget-object v0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->VARIABLE_LOW_TEMP_BURN_RESET_STATE:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

    iget v1, v0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->mTemperatureThreshold:I

    if-ge p0, v1, :cond_2d

    .line 57
    iget-object p0, v0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->mAction:Ljava/lang/String;

    return-object p0

    .line 58
    :cond_2d
    sget-object v0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->VARIABLE_LOW_TEMP_BURN_SET_STATE:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

    iget v1, v0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->mTemperatureThreshold:I

    if-ge p0, v1, :cond_36

    .line 59
    iget-object p0, v0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->mAction:Ljava/lang/String;

    return-object p0

    .line 61
    :cond_36
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

    if-nez p0, :cond_21

    .line 92
    sget-object p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->m4kTempOptions:[I

    sput-object p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->mCurrentTempOptions:[I

    .line 93
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->updateTemperatureThreshold([I)V

    :cond_21
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

    if-nez p0, :cond_22

    .line 81
    sget-object p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->mNormalTempOptions:[I

    sput-object p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->mCurrentTempOptions:[I

    .line 82
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->updateTemperatureThreshold([I)V

    :cond_22
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

    if-ge v2, v3, :cond_46

    .line 68
    sget-boolean v3, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v3, :cond_3d

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "ThermalAlertState"

    aput-object v4, v3, v1

    .line 69
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "action:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v0, v2

    iget-object v5, v5, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->mAction:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", maxTemp:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, p0, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 71
    :cond_3d
    aget-object v3, v0, v2

    aget v4, p0, v2

    iput v4, v3, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->mTemperatureThreshold:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_46
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
