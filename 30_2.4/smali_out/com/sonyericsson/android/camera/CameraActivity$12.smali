.class Lcom/sonyericsson/android/camera/CameraActivity$12;
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

    .line 3515
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$12;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/CameraActivity$12;->val$permissions:[Ljava/lang/String;

    iput-object p3, p0, Lcom/sonyericsson/android/camera/CameraActivity$12;->val$callback:Lcom/sonyericsson/android/camera/CameraActivity$PermissionCheckCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)Z
    .registers 7

    const/4 p3, 0x1

    .line 3523
    new-array v0, p3, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RequestPermissionActivity requestCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_50

    goto :goto_46

    :pswitch_26
    const/4 p1, -0x1

    if-ne p2, p1, :cond_46

    .line 3531
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$12;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/CameraActivity$12;->val$permissions:[Ljava/lang/String;

    .line 3532
    invoke-static {p1, p2}, Lcom/sonyericsson/cameracommon/utility/PermissionsUtil;->arePermissionsGranted(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_39

    .line 3533
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$12;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/CameraActivity;->finish()V

    goto :goto_46

    .line 3535
    :cond_39
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$12;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    # getter for: Lcom/sonyericsson/android/camera/CameraActivity;->mIsSetupCompleted:Z
    invoke-static {p1}, Lcom/sonyericsson/android/camera/CameraActivity;->access$4800(Lcom/sonyericsson/android/camera/CameraActivity;)Z

    move-result p1

    if-nez p1, :cond_46

    .line 3536
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$12;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    # invokes: Lcom/sonyericsson/android/camera/CameraActivity;->setup()V
    invoke-static {p1}, Lcom/sonyericsson/android/camera/CameraActivity;->access$4900(Lcom/sonyericsson/android/camera/CameraActivity;)V

    .line 3548
    :cond_46
    :goto_46
    :pswitch_46
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$12;->val$callback:Lcom/sonyericsson/android/camera/CameraActivity$PermissionCheckCallback;

    if-eqz p1, :cond_4f

    .line 3549
    iget-object p2, p0, Lcom/sonyericsson/android/camera/CameraActivity$12;->val$permissions:[Ljava/lang/String;

    invoke-interface {p1, p2}, Lcom/sonyericsson/android/camera/CameraActivity$PermissionCheckCallback;->onPermissionChecked([Ljava/lang/String;)Z

    :cond_4f
    return p3

    :pswitch_data_50
    .packed-switch 0xc
        :pswitch_26
        :pswitch_46
    .end packed-switch
.end method
