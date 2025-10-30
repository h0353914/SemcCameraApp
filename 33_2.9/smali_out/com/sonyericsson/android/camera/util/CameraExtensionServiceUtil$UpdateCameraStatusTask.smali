.class Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil$UpdateCameraStatusTask;
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
    name = "UpdateCameraStatusTask"
.end annotation


# instance fields
.field private mContentValues:Landroid/content/ContentValues;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;Landroid/content/ContentValues;)V
    .registers 3

    .line 134
    iput-object p1, p0, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil$UpdateCameraStatusTask;->this$0:Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput-object p2, p0, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil$UpdateCameraStatusTask;->mContentValues:Landroid/content/ContentValues;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 140
    iget-object v0, p0, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil$UpdateCameraStatusTask;->this$0:Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;

    # invokes: Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;->getService()Lcom/sonymobile/cameracommon/ICameraExtensionService;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;->access$400(Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;)Lcom/sonymobile/cameracommon/ICameraExtensionService;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 143
    :try_start_8
    iget-object v1, p0, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil$UpdateCameraStatusTask;->mContentValues:Landroid/content/ContentValues;

    invoke-interface {v0, v1}, Lcom/sonymobile/cameracommon/ICameraExtensionService;->updateCameraStatus(Landroid/content/ContentValues;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_e

    goto :goto_2c

    :catch_e
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 145
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Camera extension service updateCameraStatus failed ContentValues = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil$UpdateCameraStatusTask;->mContentValues:Landroid/content/ContentValues;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    :cond_2c
    :goto_2c
    return-void
.end method
