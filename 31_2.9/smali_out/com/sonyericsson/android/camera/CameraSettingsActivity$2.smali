.class Lcom/sonyericsson/android/camera/CameraSettingsActivity$2;
.super Ljava/lang/Object;
.source "CameraSettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/CameraSettingsActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/CameraSettingsActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)V
    .registers 2

    .line 261
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$2;->this$0:Lcom/sonyericsson/android/camera/CameraSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 264
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$2;->this$0:Lcom/sonyericsson/android/camera/CameraSettingsActivity;

    # invokes: Lcom/sonyericsson/android/camera/CameraSettingsActivity;->updateSetting()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->access$300(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)V

    return-void
.end method
