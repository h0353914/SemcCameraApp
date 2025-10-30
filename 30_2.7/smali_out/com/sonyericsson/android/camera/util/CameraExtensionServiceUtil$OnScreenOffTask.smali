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

    .line 112
    iput-object p1, p0, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil$OnScreenOffTask;->this$0:Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil$1;)V
    .registers 3

    .line 112
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil$OnScreenOffTask;-><init>(Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 115
    iget-object v0, p0, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil$OnScreenOffTask;->this$0:Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;

    # invokes: Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;->getService()Lcom/sonymobile/cameracommon/ICameraExtensionService;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;->access$400(Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;)Lcom/sonymobile/cameracommon/ICameraExtensionService;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 118
    :try_start_8
    invoke-interface {v0}, Lcom/sonymobile/cameracommon/ICameraExtensionService;->screenOff()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_b} :catch_c

    goto :goto_15

    :catch_c
    const-string v0, "Camera extension service screenOff failed"

    .line 120
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    :cond_15
    :goto_15
    return-void
.end method
