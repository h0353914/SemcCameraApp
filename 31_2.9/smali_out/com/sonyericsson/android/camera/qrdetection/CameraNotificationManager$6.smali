.class synthetic Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$6;
.super Ljava/lang/Object;
.source "CameraNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$qrdetection$CameraNotificationManager$NetworkType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 578
    invoke-static {}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;->values()[Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$6;->$SwitchMap$com$sonyericsson$android$camera$qrdetection$CameraNotificationManager$NetworkType:[I

    :try_start_9
    sget-object v0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$6;->$SwitchMap$com$sonyericsson$android$camera$qrdetection$CameraNotificationManager$NetworkType:[I

    sget-object v1, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;->WEP:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_14

    :catch_14
    :try_start_14
    sget-object v0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$6;->$SwitchMap$com$sonyericsson$android$camera$qrdetection$CameraNotificationManager$NetworkType:[I

    sget-object v1, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;->WPA:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_1f

    :catch_1f
    return-void
.end method
