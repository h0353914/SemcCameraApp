.class Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil$OnScreenOffTask;
.super Ljava/lang/Object;
.source "CameraExtensionServiceUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnScreenOffTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;)V
    .registers 2

    .line 113
    iput-object p1, p0, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil$OnScreenOffTask;->this$0:Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil$1;)V
    .registers 3

    .line 113
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil$OnScreenOffTask;-><init>(Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .line 116
    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil$OnScreenOffTask;->this$0:Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;

    # invokes: Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;->getService()Lcom/sonymobile/cameracommon/ICameraExtensionService;
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;->access$400(Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;)Lcom/sonymobile/cameracommon/ICameraExtensionService;

    move-result-object p0

    if-eqz p0, :cond_15

    .line 119
    :try_start_8
    invoke-interface {p0}, Lcom/sonymobile/cameracommon/ICameraExtensionService;->screenOff()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_b} :catch_c

    goto :goto_15

    :catch_c
    const-string p0, "Camera extension service screenOff failed"

    .line 121
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    :cond_15
    :goto_15
    return-void
.end method
