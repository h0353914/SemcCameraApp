.class Lcom/sonyericsson/android/camera/CameraSettingsActivity$4;
.super Ljava/lang/Object;
.source "CameraSettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/CameraSettingsActivity;->onActivityResult(IILandroid/content/Intent;)V
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

    .line 415
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$4;->this$0:Lcom/sonyericsson/android/camera/CameraSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .line 419
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$4;->this$0:Lcom/sonyericsson/android/camera/CameraSettingsActivity;

    # invokes: Lcom/sonyericsson/android/camera/CameraSettingsActivity;->reInitGeoTag()V
    invoke-static {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->access$400(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)V

    return-void
.end method
