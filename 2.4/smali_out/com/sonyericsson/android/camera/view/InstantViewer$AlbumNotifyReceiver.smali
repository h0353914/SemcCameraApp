.class Lcom/sonyericsson/android/camera/view/InstantViewer$AlbumNotifyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InstantViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/InstantViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlbumNotifyReceiver"
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "AlbumNotifyReceiver"


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/InstantViewer;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/view/InstantViewer;)V
    .registers 2

    .line 575
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/InstantViewer$AlbumNotifyReceiver;->this$0:Lcom/sonyericsson/android/camera/view/InstantViewer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/view/InstantViewer;Lcom/sonyericsson/android/camera/view/InstantViewer$1;)V
    .registers 3

    .line 575
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/InstantViewer$AlbumNotifyReceiver;-><init>(Lcom/sonyericsson/android/camera/view/InstantViewer;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 581
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.sonyericsson.album.intent.action.FAST_VIEW_MODE_LAUNCHED"

    .line 582
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 583
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_19

    const-string p1, "onReceive()"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 584
    :cond_19
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/InstantViewer$AlbumNotifyReceiver;->this$0:Lcom/sonyericsson/android/camera/view/InstantViewer;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/InstantViewer;->hide()V

    :cond_1e
    return-void
.end method
