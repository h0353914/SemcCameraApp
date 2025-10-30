.class Lcom/sonyericsson/android/camera/CameraActivity$10;
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

    .line 3296
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$10;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/CameraActivity$10;->val$permissions:[Ljava/lang/String;

    iput-object p3, p0, Lcom/sonyericsson/android/camera/CameraActivity$10;->val$callback:Lcom/sonyericsson/android/camera/CameraActivity$PermissionCheckCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)Z
    .registers 8

    .line 3304
    sget-boolean p3, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v0, 0x1

    if-eqz p3, :cond_26

    new-array p3, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RequestPermissionActivity requestCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p3, v1

    invoke-static {p3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_26
    packed-switch p1, :pswitch_data_46

    goto :goto_3c

    :pswitch_2a
    const/4 p1, -0x1

    if-ne p2, p1, :cond_3c

    .line 3313
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$10;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/CameraActivity$10;->val$permissions:[Ljava/lang/String;

    .line 3314
    invoke-static {p1, p2}, Lcom/sonyericsson/cameracommon/utility/PermissionsUtil;->arePermissionsGranted(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3c

    .line 3315
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$10;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/CameraActivity;->finish()V

    .line 3326
    :cond_3c
    :goto_3c
    :pswitch_3c
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$10;->val$callback:Lcom/sonyericsson/android/camera/CameraActivity$PermissionCheckCallback;

    if-eqz p1, :cond_45

    .line 3327
    iget-object p2, p0, Lcom/sonyericsson/android/camera/CameraActivity$10;->val$permissions:[Ljava/lang/String;

    invoke-interface {p1, p2}, Lcom/sonyericsson/android/camera/CameraActivity$PermissionCheckCallback;->onPermissionChecked([Ljava/lang/String;)Z

    :cond_45
    return v0

    :pswitch_data_46
    .packed-switch 0xc
        :pswitch_2a
        :pswitch_3c
    .end packed-switch
.end method
