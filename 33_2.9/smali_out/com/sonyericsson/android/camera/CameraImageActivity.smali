.class public Lcom/sonyericsson/android/camera/CameraImageActivity;
.super Landroid/app/Activity;
.source "CameraImageActivity.java"


# static fields
.field private static final FINISH_DELAY_MILLIS:J = 0xc8L


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9

    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "keyguard"

    .line 34
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/CameraImageActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_17

    .line 35
    invoke-virtual {p1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_17

    move v2, v0

    goto :goto_18

    :cond_17
    move v2, v1

    :goto_18
    if-eqz p1, :cond_22

    .line 36
    invoke-virtual {p1}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result p1

    if-eqz p1, :cond_22

    move p1, v0

    goto :goto_23

    :cond_22
    move p1, v1

    :goto_23
    if-nez v2, :cond_2b

    const v3, 0x7f0c001c

    .line 40
    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/camera/CameraImageActivity;->setContentView(I)V

    .line 43
    :cond_2b
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraImageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "android.intent.category.VOICE"

    .line 45
    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v4

    const/high16 v5, 0x10000000

    if-eqz v4, :cond_78

    .line 46
    const-class v4, Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v3, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 47
    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 50
    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v4

    const/high16 v5, 0x800000

    and-int/2addr v5, v4

    if-eqz v5, :cond_51

    const v5, -0x800001

    and-int/2addr v4, v5

    .line 53
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 56
    :cond_51
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraImageActivity;->isVoiceInteraction()Z

    move-result v4

    if-eqz v4, :cond_6b

    .line 58
    new-instance v4, Landroid/app/VoiceInteractor$CompleteVoiceRequest;

    const/4 v5, 0x0

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    invoke-direct {v4, v5, v6}, Landroid/app/VoiceInteractor$CompleteVoiceRequest;-><init>(Landroid/app/VoiceInteractor$Prompt;Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraImageActivity;->getVoiceInteractor()Landroid/app/VoiceInteractor;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/VoiceInteractor;->submitRequest(Landroid/app/VoiceInteractor$Request;)Z

    move v4, v0

    goto :goto_6c

    :cond_6b
    move v4, v1

    .line 65
    :goto_6c
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraImageActivity;->isVoiceInteractionRoot()Z

    move-result v5

    if-eqz v5, :cond_81

    .line 66
    const-class v5, Lcom/sonyericsson/android/camera/InternalCameraActivity;

    invoke-virtual {v3, p0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_81

    .line 69
    :cond_78
    const-class v4, Lcom/sonyericsson/android/camera/CameraGestureTriggerActivity;

    invoke-virtual {v3, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 71
    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move v4, v1

    :cond_81
    :goto_81
    const-string v5, "com.sonyericsson.android.camera.extra.LOCK_MODE"

    if-eqz p1, :cond_91

    if-eqz v2, :cond_91

    .line 75
    sget-object p1, Lcom/sonyericsson/android/camera/LaunchCondition$LockMode;->SECURE:Lcom/sonyericsson/android/camera/LaunchCondition$LockMode;

    .line 76
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/LaunchCondition$LockMode;->ordinal()I

    move-result p1

    .line 75
    invoke-virtual {v3, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_a6

    :cond_91
    if-eqz v2, :cond_9d

    .line 78
    sget-object p1, Lcom/sonyericsson/android/camera/LaunchCondition$LockMode;->SWIPE:Lcom/sonyericsson/android/camera/LaunchCondition$LockMode;

    .line 79
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/LaunchCondition$LockMode;->ordinal()I

    move-result p1

    .line 78
    invoke-virtual {v3, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_a6

    .line 81
    :cond_9d
    sget-object p1, Lcom/sonyericsson/android/camera/LaunchCondition$LockMode;->NONE_OR_DISMISSED:Lcom/sonyericsson/android/camera/LaunchCondition$LockMode;

    .line 82
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/LaunchCondition$LockMode;->ordinal()I

    move-result p1

    .line 81
    invoke-virtual {v3, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 86
    :goto_a6
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraImageActivity;->isVoiceInteractionRoot()Z

    move-result p1

    const-string v2, "is_voice_interaction_root"

    invoke-virtual {v3, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 88
    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/camera/CameraImageActivity;->startActivity(Landroid/content/Intent;)V

    .line 89
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x22

    if-ge p1, v2, :cond_bc

    .line 90
    invoke-virtual {p0, v1, v1}, Lcom/sonyericsson/android/camera/CameraImageActivity;->overridePendingTransition(II)V

    goto :goto_c1

    :cond_bc
    const-string p1, "launch_activity_with_cancel_animation"

    .line 92
    invoke-virtual {v3, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_c1
    if-eqz v4, :cond_c6

    .line 96
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraImageActivity;->finish()V

    :cond_c6
    return-void
.end method

.method protected onResume()V
    .registers 5

    .line 102
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 104
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/sonyericsson/android/camera/CameraImageActivity$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/CameraImageActivity$1;-><init>(Lcom/sonyericsson/android/camera/CameraImageActivity;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
