.class Lcom/sonyericsson/android/camera/CameraActivity$11;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/activity/OnActivityResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/CameraActivity;->checkAndRequestSelfPermissions(I[Ljava/lang/String;Lcom/sonyericsson/android/camera/CameraActivity$PermissionCheckCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/CameraActivity;

.field final synthetic val$callback:Lcom/sonyericsson/android/camera/CameraActivity$PermissionCheckCallback;

.field final synthetic val$permissions:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/CameraActivity;[Ljava/lang/String;Lcom/sonyericsson/android/camera/CameraActivity$PermissionCheckCallback;)V
    .registers 4

    .line 3477
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$11;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/CameraActivity$11;->val$permissions:[Ljava/lang/String;

    iput-object p3, p0, Lcom/sonyericsson/android/camera/CameraActivity$11;->val$callback:Lcom/sonyericsson/android/camera/CameraActivity$PermissionCheckCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)Z
    .registers 7

    const/4 p3, 0x1

    new-array v0, p3, [Ljava/lang/String;

    .line 3485
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RequestPermissionActivity requestCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    const/16 v0, 0xc

    if-eq p1, v0, :cond_2b

    goto :goto_4b

    :cond_2b
    const/4 p1, -0x1

    if-ne p2, p1, :cond_4b

    .line 3493
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$11;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/CameraActivity$11;->val$permissions:[Ljava/lang/String;

    .line 3494
    invoke-static {p1, p2}, Lcom/sonyericsson/cameracommon/utility/PermissionsUtil;->arePermissionsGranted(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3e

    .line 3495
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$11;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/CameraActivity;->finish()V

    goto :goto_4b

    .line 3497
    :cond_3e
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$11;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    # getter for: Lcom/sonyericsson/android/camera/CameraActivity;->mIsSetupCompleted:Z
    invoke-static {p1}, Lcom/sonyericsson/android/camera/CameraActivity;->access$4500(Lcom/sonyericsson/android/camera/CameraActivity;)Z

    move-result p1

    if-nez p1, :cond_4b

    .line 3498
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$11;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    # invokes: Lcom/sonyericsson/android/camera/CameraActivity;->setup()V
    invoke-static {p1}, Lcom/sonyericsson/android/camera/CameraActivity;->access$4600(Lcom/sonyericsson/android/camera/CameraActivity;)V

    .line 3510
    :cond_4b
    :goto_4b
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$11;->val$callback:Lcom/sonyericsson/android/camera/CameraActivity$PermissionCheckCallback;

    if-eqz p1, :cond_54

    .line 3511
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity$11;->val$permissions:[Ljava/lang/String;

    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/CameraActivity$PermissionCheckCallback;->onPermissionChecked([Ljava/lang/String;)Z

    :cond_54
    return p3
.end method
