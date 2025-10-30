.class Lcom/sonyericsson/android/camera/CameraActivity$10;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/CameraActivity;->checkAndRequestSelfPermissions(I[Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/CameraActivity;

.field final synthetic val$permissions:[Ljava/lang/String;

.field final synthetic val$requestCode:I


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/CameraActivity;I[Ljava/lang/String;)V
    .registers 4

    .line 3362
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$10;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    iput p2, p0, Lcom/sonyericsson/android/camera/CameraActivity$10;->val$requestCode:I

    iput-object p3, p0, Lcom/sonyericsson/android/camera/CameraActivity$10;->val$permissions:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    const-string v0, "CheckAndRequestSelfPermissionsTask run"

    .line 3365
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3366
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$10;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    iget v1, p0, Lcom/sonyericsson/android/camera/CameraActivity$10;->val$requestCode:I

    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity$10;->val$permissions:[Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera/CameraActivity;->checkAndRequestSelfPermissions(I[Ljava/lang/String;Lcom/sonyericsson/android/camera/CameraActivity$PermissionCheckCallback;)Z

    return-void
.end method
