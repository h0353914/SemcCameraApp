.class Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;
.super Ljava/lang/Object;
.source "UserEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/UserEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchEventProcedure"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/view/UserEventHandler;)V
    .registers 2

    .line 1197
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$1;)V
    .registers 3

    .line 1197
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;-><init>(Lcom/sonyericsson/android/camera/view/UserEventHandler;)V

    return-void
.end method


# virtual methods
.method doCancel()V
    .registers 1

    return-void
.end method

.method doClick(Landroid/graphics/Point;)V
    .registers 2

    return-void
.end method

.method doLongClick(Landroid/graphics/Point;)V
    .registers 2

    return-void
.end method

.method doTouchAreaScaleReady()V
    .registers 1

    return-void
.end method

.method doTouchAreaScaling(F)V
    .registers 2

    return-void
.end method

.method doTouchDown()V
    .registers 1

    return-void
.end method

.method doTouchUp(Landroid/graphics/Point;)V
    .registers 2

    return-void
.end method
