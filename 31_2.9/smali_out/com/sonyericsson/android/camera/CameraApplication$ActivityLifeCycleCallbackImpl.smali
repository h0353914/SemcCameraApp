.class Lcom/sonyericsson/android/camera/CameraApplication$ActivityLifeCycleCallbackImpl;
.super Ljava/lang/Object;
.source "CameraApplication.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/CameraApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActivityLifeCycleCallbackImpl"
.end annotation


# instance fields
.field mForegroundActivity:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field mPausables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/CameraApplication$Pausable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/CameraApplication$Pausable;",
            ">;)V"
        }
    .end annotation

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraApplication$ActivityLifeCycleCallbackImpl;->mForegroundActivity:Ljava/util/List;

    .line 202
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraApplication$ActivityLifeCycleCallbackImpl;->mPausables:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 3

    .line 237
    instance-of v0, p1, Lcom/sonyericsson/android/camera/CameraActivity;

    if-nez v0, :cond_9

    instance-of v0, p1, Lcom/sonyericsson/android/camera/CameraSettingsActivity;

    if-nez v0, :cond_9

    return-void

    .line 242
    :cond_9
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraApplication$ActivityLifeCycleCallbackImpl;->mForegroundActivity:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 243
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraApplication$ActivityLifeCycleCallbackImpl;->mForegroundActivity:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2c

    .line 244
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraApplication$ActivityLifeCycleCallbackImpl;->mPausables:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/CameraApplication$Pausable;

    .line 245
    invoke-interface {v0}, Lcom/sonyericsson/android/camera/CameraApplication$Pausable;->pause()V

    goto :goto_1c

    :cond_2c
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 4

    .line 217
    instance-of v0, p1, Lcom/sonyericsson/android/camera/CameraActivity;

    if-nez v0, :cond_9

    instance-of v0, p1, Lcom/sonyericsson/android/camera/CameraSettingsActivity;

    if-nez v0, :cond_9

    return-void

    .line 222
    :cond_9
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraApplication$ActivityLifeCycleCallbackImpl;->mForegroundActivity:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 223
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraApplication$ActivityLifeCycleCallbackImpl;->mPausables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/CameraApplication$Pausable;

    .line 224
    invoke-interface {v1}, Lcom/sonyericsson/android/camera/CameraApplication$Pausable;->resume()V

    goto :goto_17

    .line 232
    :cond_27
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraApplication$ActivityLifeCycleCallbackImpl;->mForegroundActivity:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method
