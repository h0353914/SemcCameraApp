.class Lcom/sonyericsson/android/camera/view/ViewFinderImpl$SettingMenuExclusiveListener;
.super Ljava/lang/Object;
.source "ViewFinderImpl.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack$ExclusiveViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingMenuExclusiveListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V
    .registers 2

    .line 1682
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$SettingMenuExclusiveListener;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Lcom/sonyericsson/android/camera/view/ViewFinderImpl$1;)V
    .registers 3

    .line 1682
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$SettingMenuExclusiveListener;-><init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V

    return-void
.end method


# virtual methods
.method public isExclusiveView(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4

    .line 1686
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$SettingMenuExclusiveListener;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isExclusiveViewEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    invoke-static {v0, p1, p2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$3800(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    return p1

    :cond_a
    const/4 p1, 0x0

    return p1
.end method
