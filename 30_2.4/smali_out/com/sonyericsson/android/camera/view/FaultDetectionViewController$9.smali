.class synthetic Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$9;
.super Ljava/lang/Object;
.source "FaultDetectionViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$CameraActivity$LayoutOrientation:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$faultdetection$DetectionType:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$view$hint$HintTextFaultDetectionPreview$Type:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$view$hint$HintTextFaultDetectionSnapshot$Type:[I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 677
    invoke-static {}, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionSnapshot$Type;->values()[Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionSnapshot$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$9;->$SwitchMap$com$sonyericsson$android$camera$view$hint$HintTextFaultDetectionSnapshot$Type:[I

    const/4 v0, 0x1

    :try_start_a
    sget-object v1, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$9;->$SwitchMap$com$sonyericsson$android$camera$view$hint$HintTextFaultDetectionSnapshot$Type:[I

    sget-object v2, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionSnapshot$Type;->EYE_BLINK:Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionSnapshot$Type;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionSnapshot$Type;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_14} :catch_14

    :catch_14
    const/4 v1, 0x2

    :try_start_15
    sget-object v2, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$9;->$SwitchMap$com$sonyericsson$android$camera$view$hint$HintTextFaultDetectionSnapshot$Type:[I

    sget-object v3, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionSnapshot$Type;->HAND_BLUR:Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionSnapshot$Type;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionSnapshot$Type;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1f} :catch_1f

    :catch_1f
    const/4 v2, 0x3

    :try_start_20
    sget-object v3, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$9;->$SwitchMap$com$sonyericsson$android$camera$view$hint$HintTextFaultDetectionSnapshot$Type:[I

    sget-object v4, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionSnapshot$Type;->FINGER_COVERING:Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionSnapshot$Type;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionSnapshot$Type;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_2a} :catch_2a

    .line 631
    :catch_2a
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->values()[Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$9;->$SwitchMap$com$sonyericsson$android$camera$CameraActivity$LayoutOrientation:[I

    :try_start_33
    sget-object v3, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$9;->$SwitchMap$com$sonyericsson$android$camera$CameraActivity$LayoutOrientation:[I

    sget-object v4, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->Portrait:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_3d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3d} :catch_3d

    :catch_3d
    :try_start_3d
    sget-object v3, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$9;->$SwitchMap$com$sonyericsson$android$camera$CameraActivity$LayoutOrientation:[I

    sget-object v4, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->ReversePortrait:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_47
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_47} :catch_47

    :catch_47
    :try_start_47
    sget-object v3, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$9;->$SwitchMap$com$sonyericsson$android$camera$CameraActivity$LayoutOrientation:[I

    sget-object v4, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->Landscape:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_51
    .catch Ljava/lang/NoSuchFieldError; {:try_start_47 .. :try_end_51} :catch_51

    :catch_51
    const/4 v3, 0x4

    :try_start_52
    sget-object v4, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$9;->$SwitchMap$com$sonyericsson$android$camera$CameraActivity$LayoutOrientation:[I

    sget-object v5, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->ReverseLandscape:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_5c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_52 .. :try_end_5c} :catch_5c

    .line 348
    :catch_5c
    invoke-static {}, Lcom/sonyericsson/android/camera/faultdetection/DetectionType;->values()[Lcom/sonyericsson/android/camera/faultdetection/DetectionType;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$9;->$SwitchMap$com$sonyericsson$android$camera$faultdetection$DetectionType:[I

    :try_start_65
    sget-object v4, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$9;->$SwitchMap$com$sonyericsson$android$camera$faultdetection$DetectionType:[I

    sget-object v5, Lcom/sonyericsson/android/camera/faultdetection/DetectionType;->EYE_BLINK:Lcom/sonyericsson/android/camera/faultdetection/DetectionType;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/faultdetection/DetectionType;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_6f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_65 .. :try_end_6f} :catch_6f

    :catch_6f
    :try_start_6f
    sget-object v4, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$9;->$SwitchMap$com$sonyericsson$android$camera$faultdetection$DetectionType:[I

    sget-object v5, Lcom/sonyericsson/android/camera/faultdetection/DetectionType;->HAND_BLUR:Lcom/sonyericsson/android/camera/faultdetection/DetectionType;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/faultdetection/DetectionType;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_79
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6f .. :try_end_79} :catch_79

    :catch_79
    :try_start_79
    sget-object v4, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$9;->$SwitchMap$com$sonyericsson$android$camera$faultdetection$DetectionType:[I

    sget-object v5, Lcom/sonyericsson/android/camera/faultdetection/DetectionType;->FINGER_COVERING:Lcom/sonyericsson/android/camera/faultdetection/DetectionType;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/faultdetection/DetectionType;->ordinal()I

    move-result v5

    aput v2, v4, v5
    :try_end_83
    .catch Ljava/lang/NoSuchFieldError; {:try_start_79 .. :try_end_83} :catch_83

    :catch_83
    :try_start_83
    sget-object v4, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$9;->$SwitchMap$com$sonyericsson$android$camera$faultdetection$DetectionType:[I

    sget-object v5, Lcom/sonyericsson/android/camera/faultdetection/DetectionType;->NONE:Lcom/sonyericsson/android/camera/faultdetection/DetectionType;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/faultdetection/DetectionType;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_8d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_83 .. :try_end_8d} :catch_8d

    :catch_8d
    :try_start_8d
    sget-object v3, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$9;->$SwitchMap$com$sonyericsson$android$camera$faultdetection$DetectionType:[I

    sget-object v4, Lcom/sonyericsson/android/camera/faultdetection/DetectionType;->OUT_OF_FOCUS_NEAR:Lcom/sonyericsson/android/camera/faultdetection/DetectionType;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/faultdetection/DetectionType;->ordinal()I

    move-result v4

    const/4 v5, 0x5

    aput v5, v3, v4
    :try_end_98
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8d .. :try_end_98} :catch_98

    :catch_98
    :try_start_98
    sget-object v3, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$9;->$SwitchMap$com$sonyericsson$android$camera$faultdetection$DetectionType:[I

    sget-object v4, Lcom/sonyericsson/android/camera/faultdetection/DetectionType;->OUT_OF_FOCUS_DARK:Lcom/sonyericsson/android/camera/faultdetection/DetectionType;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/faultdetection/DetectionType;->ordinal()I

    move-result v4

    const/4 v5, 0x6

    aput v5, v3, v4
    :try_end_a3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_98 .. :try_end_a3} :catch_a3

    :catch_a3
    :try_start_a3
    sget-object v3, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$9;->$SwitchMap$com$sonyericsson$android$camera$faultdetection$DetectionType:[I

    sget-object v4, Lcom/sonyericsson/android/camera/faultdetection/DetectionType;->OUT_OF_FOCUS_NONE:Lcom/sonyericsson/android/camera/faultdetection/DetectionType;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/faultdetection/DetectionType;->ordinal()I

    move-result v4

    const/4 v5, 0x7

    aput v5, v3, v4
    :try_end_ae
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a3 .. :try_end_ae} :catch_ae

    .line 141
    :catch_ae
    invoke-static {}, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview$Type;->values()[Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview$Type;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$9;->$SwitchMap$com$sonyericsson$android$camera$view$hint$HintTextFaultDetectionPreview$Type:[I

    :try_start_b7
    sget-object v3, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$9;->$SwitchMap$com$sonyericsson$android$camera$view$hint$HintTextFaultDetectionPreview$Type:[I

    sget-object v4, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview$Type;->FINGER_COVERING:Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview$Type;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview$Type;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_c1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b7 .. :try_end_c1} :catch_c1

    :catch_c1
    :try_start_c1
    sget-object v0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$9;->$SwitchMap$com$sonyericsson$android$camera$view$hint$HintTextFaultDetectionPreview$Type:[I

    sget-object v3, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview$Type;->OUT_OF_FOCUS_DARK:Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview$Type;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview$Type;->ordinal()I

    move-result v3

    aput v1, v0, v3
    :try_end_cb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c1 .. :try_end_cb} :catch_cb

    :catch_cb
    :try_start_cb
    sget-object v0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$9;->$SwitchMap$com$sonyericsson$android$camera$view$hint$HintTextFaultDetectionPreview$Type:[I

    sget-object v1, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview$Type;->OUT_OF_FOCUS_NEAR:Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview$Type;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview$Type;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_d5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_cb .. :try_end_d5} :catch_d5

    :catch_d5
    return-void
.end method
