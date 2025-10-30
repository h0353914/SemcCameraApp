.class Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView$2;
.super Ljava/lang/Object;
.source "FaultDetectionNotificationView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;)V
    .registers 2

    .line 67
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView$2;->this$0:Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    const/4 p1, 0x1

    return p1
.end method
