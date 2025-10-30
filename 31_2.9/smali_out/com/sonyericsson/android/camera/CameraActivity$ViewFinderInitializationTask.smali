.class Lcom/sonyericsson/android/camera/CameraActivity$ViewFinderInitializationTask;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewFinderInitializationTask"
.end annotation


# instance fields
.field private final mViewFinderImpl:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V
    .registers 2

    .line 1204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1205
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$ViewFinderInitializationTask;->mViewFinderImpl:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Lcom/sonyericsson/android/camera/CameraActivity$1;)V
    .registers 3

    .line 1196
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraActivity$ViewFinderInitializationTask;-><init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1210
    sget-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->TASK_VIEW_FINDER_INITIALIZATION:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/PerfLog;->begin()V

    .line 1211
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$ViewFinderInitializationTask;->mViewFinderImpl:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->initialize()V

    .line 1212
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$ViewFinderInitializationTask;->mViewFinderImpl:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->setContentView()V

    .line 1213
    sget-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->TASK_VIEW_FINDER_INITIALIZATION:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/PerfLog;->end()V

    return-void
.end method
