.class Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$5;
.super Ljava/lang/Object;
.source "RequestPermissionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->showPermissionDialog(ILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;)V
    .registers 2

    .line 642
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$5;->this$0:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 646
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_d

    const-string p1, "showPermissionDialog() don\'t show global settings dialog"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 648
    :cond_d
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$5;->this$0:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;

    const/4 p2, 0x0

    # setter for: Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentShownDialog:Landroid/app/AlertDialog;
    invoke-static {p1, p2}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->access$502(Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 649
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$5;->this$0:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;

    # invokes: Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->doNextAction()V
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->access$700(Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;)V

    return-void
.end method
