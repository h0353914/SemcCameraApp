.class Lcom/sonyericsson/android/camera/CameraActivity$ScreenOffReceiver;
.super Lcom/sonyericsson/android/camera/ScreenOffReceiverBase;
.source "CameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenOffReceiver"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ScreenOffReceiver"


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/CameraActivity;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/CameraActivity;)V
    .registers 2

    .line 644
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$ScreenOffReceiver;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/ScreenOffReceiverBase;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/CameraActivity$1;)V
    .registers 3

    .line 644
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraActivity$ScreenOffReceiver;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;)V

    return-void
.end method


# virtual methods
.method public onScreenOff()V
    .registers 2

    .line 650
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "Received SCREEN_OFF"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 652
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$ScreenOffReceiver;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->onScreenOff()V

    return-void
.end method
