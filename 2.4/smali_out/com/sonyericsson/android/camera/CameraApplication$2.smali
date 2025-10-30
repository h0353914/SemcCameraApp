.class Lcom/sonyericsson/android/camera/CameraApplication$2;
.super Ljava/lang/Object;
.source "CameraApplication.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/CameraApplication;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/CameraApplication;

.field final synthetic val$previousHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/CameraApplication;Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .registers 3

    .line 155
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraApplication$2;->this$0:Lcom/sonyericsson/android/camera/CameraApplication;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/CameraApplication$2;->val$previousHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 4

    const/4 v0, 0x1

    .line 158
    invoke-static {v0, v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->setDeviceError(ZZ)V

    .line 159
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraApplication$2;->val$previousHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method
