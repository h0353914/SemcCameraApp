.class synthetic Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionSnapshot$1;
.super Ljava/lang/Object;
.source "HintTextFaultDetectionSnapshot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionSnapshot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$view$hint$HintTextFaultDetectionSnapshot$Type:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 74
    invoke-static {}, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionSnapshot$Type;->values()[Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionSnapshot$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionSnapshot$1;->$SwitchMap$com$sonyericsson$android$camera$view$hint$HintTextFaultDetectionSnapshot$Type:[I

    :try_start_9
    sget-object v0, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionSnapshot$1;->$SwitchMap$com$sonyericsson$android$camera$view$hint$HintTextFaultDetectionSnapshot$Type:[I

    sget-object v1, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionSnapshot$Type;->EYE_BLINK:Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionSnapshot$Type;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionSnapshot$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_14

    :catch_14
    :try_start_14
    sget-object v0, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionSnapshot$1;->$SwitchMap$com$sonyericsson$android$camera$view$hint$HintTextFaultDetectionSnapshot$Type:[I

    sget-object v1, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionSnapshot$Type;->HAND_BLUR:Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionSnapshot$Type;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionSnapshot$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_1f
    sget-object v0, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionSnapshot$1;->$SwitchMap$com$sonyericsson$android$camera$view$hint$HintTextFaultDetectionSnapshot$Type:[I

    sget-object v1, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionSnapshot$Type;->FINGER_COVERING:Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionSnapshot$Type;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionSnapshot$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_2a

    :catch_2a
    return-void
.end method
